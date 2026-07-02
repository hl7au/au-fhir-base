#!/usr/bin/env bash
#
# local-publish.sh — reproduce a working (or milestone) publish LOCALLY, exactly as CI does,
# and produce a reviewable site zip. NEVER touches S3.
#
# Why a container: go-publish re-renders the IG in `-publish` mode, which is sensitive to the
# build environment. A bare macOS/host JDK can produce a broken build (hundreds of errors) and
# go-publish then fails. The HL7 `ig-publisher-base` Linux container is the faithful CI env, so
# we build + publish inside it. (Validated: clean build, go-publish succeeds, history.html
# regenerated with all versions' backlinks.)
#
# Usage:  scripts/local-publish.sh            # build current checkout, lean -web, produce zip
#         OUT=~/site.zip scripts/local-publish.sh
# Requires: docker. The container has java/node; it does NOT have python3 (so this uses node).
set -euo pipefail

IG_SRC="$(cd "$(dirname "$0")/.." && pwd)"     # this repo = the IG source
WORK="${WORK:-$(mktemp -d)/publish}"
OUT="${OUT:-$IG_SRC/local-site.zip}"
IMAGE="hl7fhir/ig-publisher-base"
TX="${TX:-https://tx.fhir.org}"
PUBLICATIONS_REMOTE="${PUBLICATIONS_REMOTE:-https://github.com/hl7au/publications.git}"

echo "==> work dir: $WORK"
mkdir -p "$WORK"; cd "$WORK"

echo "==> clean checkout of the IG (no stale build state)"
git -C "$IG_SRC" archive --format=tar HEAD | (mkdir -p ig && tar -x -C ig)

echo "==> fetch helpers: latest publisher, publications (publish-setup + templates), history template, registry"
curl -sSL -o publisher.jar https://github.com/HL7/fhir-ig-publisher/releases/latest/download/publisher.jar
git clone -q --depth 1 "$PUBLICATIONS_REMOTE" publications
git clone -q --depth 1 https://github.com/HL7/fhir-ig-history-template.git fhir-history
git clone -q --depth 1 https://github.com/hl7au/ig-registry.git ig-registry
cp publications/publish-setup.json publish-setup.json
cp -R publications/templates templates

cat > run.sh <<'INNER'
set -e
cd /work
echo "container java:"; java -version 2>&1 | head -1
echo "==> 1) build the IG"
java -jar /work/publisher.jar -ig /work/ig -tx '__TX__'
ls -la /work/ig/output/package.tgz
VER=$(tar -xzOf /work/ig/output/package.tgz package/package.json | node -e "let s='';process.stdin.on('data',c=>s+=c).on('end',()=>process.stdout.write(JSON.parse(s).version))")
echo "VER=$VER"
echo "==> 2) lightweight -web (root files only; no full S3 sync)"
rm -f /work/ig/package-list.json
rm -rf /work/webroot; mkdir -p /work/webroot/fhir
cp /work/publish-setup.json /work/webroot/publish-setup.json
curl -sS -o /work/webroot/fhir/package-list.json   https://hl7.org.au/fhir/package-list.json
curl -sS -o /work/webroot/fhir/package-feed.xml      https://hl7.org.au/fhir/package-feed.xml
curl -sS -o /work/webroot/fhir/publication-feed.xml  https://hl7.org.au/fhir/publication-feed.xml
curl -sS -o /work/webroot/package-registry.json      https://hl7.org.au/package-registry.json || true
# treat this build as a fresh publish of its own version
node -e "const fs=require('fs');const p='/work/webroot/fhir/package-list.json';const d=JSON.parse(fs.readFileSync(p,'utf8'));d.list=d.list.filter(e=>e.version!==process.argv[1]);fs.writeFileSync(p,JSON.stringify(d,null,2));" "$VER"
echo "==> 3) go-publish"
rm -rf /work/temp; mkdir -p /work/temp
java -jar /work/publisher.jar -go-publish -source /work/ig -web /work/webroot \
  -history /work/fhir-history -registry /work/ig-registry/fhir-ig-list.json \
  -templates /work/templates -temp /work/temp -tx '__TX__'
echo "==> 4) zip the result for review"
(cd /work/webroot && zip -qr /work/site.zip fhir)
[ -f /work/webroot/fhir/history.html ] && echo "history.html: OK"
echo "DONE VER=$VER"
INNER
sed -i.bak "s#__TX__#$TX#g" run.sh && rm -f run.sh.bak

echo "==> running build + go-publish in $IMAGE (uses ~/.fhir package cache for speed)"
docker run --rm -v "$WORK:/work" -v "$HOME/.fhir:/root/.fhir" "$IMAGE" bash /work/run.sh

cp "$WORK/site.zip" "$OUT"
echo ""
echo "==> review zip: $OUT"
echo "    unzip -d /tmp/review \"$OUT\" && (cd /tmp/review && python3 -m http.server 8901)"
echo "    then open http://localhost:8901/fhir/history.html"
