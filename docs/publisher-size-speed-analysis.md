# IG Publisher size & speed — understanding the space (pre-proposal)

Analysis of why milestone publishes are large/slow and where the levers are, to scope a proposal
(possibly a follow-up session). Companion to [build-pipeline.md](build-pipeline.md).

## The numbers
- **Working build** = 1 version ≈ **289 MB / 5,549 files** uncompressed (~88 MB zipped).
- **Milestone** rewrites the publish-box in **every** au-base version (~27) → output ≈ the whole
  lean au-base tree ≈ **4.6 GB / 88k objects** (3.34 GB / 45,721 of it HTML) ≈ **~1.5–2 GB zipped**.
- So milestone ≈ 27× working, purely because it touches every version.

## Where a version's bytes/files go (fhir/6.0.0, 289 MB / 5,549 files)
| type | size | files | note |
|------|------|-------|------|
| `.html` | 173 MB | 2,708 | **60%** — incl. escaped-format viewer pages (below) |
| `.zip` | 48 MB | 13 | download bundles (full-ig, definitions, examples) |
| `.json`/`.xml`/`.ttl` | ~39 MB | ~1,243 | raw resources in 3 formats |
| `.png`/`.csv`/`.xlsx`/`.db`/`.pack` | ~19 MB | ~1,250 | images + misc artefacts |

**Per resource the publisher emits ~9 files**, and the bloat is the **escaped "view source" HTML**:
`X.json.html` (18 KB), `X.xml.html` (21 KB), `X.ttl.html` (21 KB) — each ~5–8× the raw data — plus
`X.html`, `X.change.history.html`, and raw `X.json/.xml/.ttl`. The viewer HTML (~59 KB/resource) is
mostly boilerplate and dominates.

## Root cause of the milestone cost
The per-version **publish-box banner** names the current version ("the current version which supersedes
this is vY"). Cutting a new milestone changes vY, so **every page of every old version must be
rewritten** — that's why a milestone touches the whole tree.

## Levers (grouped by where the change lives)

### A. Eliminate the rewrite-all — biggest win (publisher/template)
Make the publish-box banner **version-agnostic**: "this is vX — see the version history" linking to
`/fhir/history.html`, **without naming the current version inline**. Then a new milestone **never
rewrites old versions** → the milestone build only produces the new version (≈ working: ~88 MB, fast,
fits GitHub Pages). The authoritative current/version list still lives on history.html.
- Change site: `PublishBoxStatementGenerator` (+ history template). Upstream-able (benefits all IGs).
- Minor UX loss (old pages don't name the latest inline) — decision for Brett.
- **This alone removes the milestone size/speed problem** (you don't touch old versions at all).

### B. Shrink each version's artefacts (config and/or publisher) — smaller working & milestone
- **Drop Turtle** (`.ttl` + `.ttl.html`) if RDF isn't needed (~9% of a version). IG/format config.
- **Drop/trim the escaped-format viewer pages** (`.json.html`/`.xml.html`/`.ttl.html`) — the single
  biggest per-resource cost; raw `.json/.xml` remain for download. Loses in-browser source tabs (UX).
- **Drop numbered clones** (`.json1/.json2/.xml1/.xml2`, ~1 GB bucket-wide) — content-negotiation
  copies; with the CloudFront `fhir-canonical` function they may be unnecessary. (`clone-xml-json` is
  already `false` in publish-setup — worth confirming why they still exist.)

### C. Build speed (publisher)
- **Double render:** go-publish requires a pre-built `output/` (the `-ig` step) **and then re-renders
  the IG itself** in `-publish` mode → ~2× render (~15 min). A flag to make go-publish **reuse the
  `-ig` output** instead of re-rendering would roughly halve build time.
- With **A**, milestones skip the whole per-version rewrite I/O (45k files) → milestone ≈ working speed.

## Custom publisher vs upstream vs config
- **Config-level** (drop ttl / confirm clones / format selection): no code; just IG / `publish-setup`
  settings + a test build to measure. Lowest risk — do first to quantify.
- **Code-level** (A: version-agnostic banner; C: go-publish reuse-output; B: trim viewer HTML): best as
  **upstream PRs** to `HL7/fhir-ig-publisher` (we already have the source checked out + PR #1327 open),
  so they're maintained and benefit every IG. A **custom fork** is possible but carries maintenance +
  divergence cost — last resort.

## Suggested prioritisation for the proposal
1. **A — version-agnostic publish-box** (upstream PR). Highest leverage: removes the milestone
   rewrite-all → milestone becomes a working-sized build. Solves size *and* speed at once.
2. **C — go-publish `-reuse-build`** (upstream PR). Halves render time for every build.
3. **B — artefact trimming** (config first to measure; viewer-HTML/clone trimming as follow-up).

Items 1–2 are the high-value publisher changes; 3 is incremental storage/size. Recommend prototyping A
on a branch of the local publisher (we have it) and measuring milestone build size/time with it, before
deciding custom-build vs upstream-only.
