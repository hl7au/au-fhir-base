#!/usr/bin/env bash
#
# local-build.sh — FAST local QA render for tight iteration, using the SAME combined publisher jar
# as CI (KyleOps/fhir-ig-publisher@au-pipeline-combined). Runs the render on the host JDK (no Docker)
# so it's quick; reuses the FHIR package cache (~/.fhir) and the terminology cache
# (input-cache/txcache) across runs. This is the "does it build / what are the real errors+warnings"
# loop — NOT a faithful go-publish (use scripts/local-publish.sh in the container for that).
#
# Why this exists: a stale jar + a stale output/comparison-* dir produces ~15k phantom "Build Errors".
# This script always builds the current combined jar against a CLEAN output/, so qa.txt is truthful.
#
# Usage:
#   scripts/local-build.sh            # render with the committed config (comparison ON if set)
#   scripts/local-build.sh --fast     # also skip cross-version comparison this run (faster, less noise)
#   scripts/local-build.sh --update   # re-download the combined jar first (pick up a new release)
#   TX=https://tx.ontoserver.csiro.au scripts/local-build.sh   # override terminology server
#
# Flags combine, e.g.  scripts/local-build.sh --update --fast
set -euo pipefail

IG="$(cd "$(dirname "$0")/.." && pwd)"
cd "$IG"

JAR_URL="${JAR_URL:-https://github.com/KyleOps/fhir-ig-publisher/releases/download/au-pipeline-combined/publisher.jar}"
JAR="input-cache/publisher.jar"
TX="${TX:-https://tx.fhir.org}"
UPDATE=false
FAST=false
for a in "$@"; do
  case "$a" in
    --update) UPDATE=true ;;
    --fast)   FAST=true ;;
    -h|--help) sed -n '2,20p' "$0"; exit 0 ;;
    *) echo "unknown flag: $a" >&2; exit 2 ;;
  esac
done

# --- pick a working JDK (jenv shim is broken on this host; use java_home directly) ---
if [ -z "${JAVA_HOME:-}" ]; then
  JAVA_HOME="$(/usr/libexec/java_home -v 17 2>/dev/null || /usr/libexec/java_home 2>/dev/null || true)"
fi
[ -n "${JAVA_HOME:-}" ] || { echo "ERROR: no JDK found (need 11+). Install: brew install openjdk@17" >&2; exit 1; }
JAVA="$JAVA_HOME/bin/java"
echo "==> JDK: $("$JAVA" -version 2>&1 | head -1)"

# --- ensure the combined jar (download if missing or --update) ---
mkdir -p input-cache
if [ "$UPDATE" = true ] || [ ! -s "$JAR" ]; then
  echo "==> downloading combined publisher jar from $JAR_URL"
  curl -sSL -o "$JAR" "$JAR_URL"
fi
echo "==> publisher.jar: $(du -h "$JAR" | cut -f1)"

# --- clean stale build state (the #1 cause of phantom errors) ---
echo "==> cleaning stale output/ and temp/pages comparison dirs"
rm -rf output temp/pages/comparison-* 2>/dev/null || true

# --- optionally skip cross-version comparison for this run (restore ig.xml afterwards) ---
RESTORE_IGXML=false
if [ "$FAST" = true ] && grep -q 'version-comparison-master' input/ig.xml; then
  cp input/ig.xml input/ig.xml.localbak
  RESTORE_IGXML=true
  # set the comparison-master value to the literal n/a (empty comparison list → comparator skipped)
  perl -0pi -e 's/(<code value="version-comparison-master"\/>\s*<value value=")[^"]*(")/${1}n\/a${2}/s' input/ig.xml
  echo "==> --fast: cross-version comparison disabled for this run"
fi
restore() { [ "$RESTORE_IGXML" = true ] && mv -f input/ig.xml.localbak input/ig.xml; }
trap restore EXIT

# --- render (host). ~/.fhir = package cache; input-cache/txcache = terminology cache (template sets it) ---
echo "==> rendering (-ig . -tx $TX) ..."
START=$(date +%s)
set +e
"$JAVA" -jar "$JAR" -ig . -tx "$TX"
RC=$?
set -e
echo "==> render exit=$RC in $(( $(date +%s) - START ))s"

# --- summary ---
if [ -f output/qa.txt ]; then
  echo ""
  echo "===================== QA SUMMARY ====================="
  head -3 output/qa.txt
  echo "ERROR/WARNING/INFO line counts (validation):"
  grep -cE '^ERROR:'   output/qa.txt | sed 's/^/  errors:   /'
  grep -cE '^WARNING:' output/qa.txt | sed 's/^/  warnings: /'
  grep -cE '^INFORMATION:' output/qa.txt | sed 's/^/  info:     /'
  echo "Full QA: $IG/output/qa.html   (or qa.txt)"
  echo "======================================================"
fi
exit $RC
