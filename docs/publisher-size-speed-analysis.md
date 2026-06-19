# IG Publisher size & speed — understanding the space

Analysis of why milestone publishes are large/slow and where the levers are. Companion to
[build-pipeline.md](build-pipeline.md).

> **UPDATE (2026-06-18) — A2, page-versions, and A3 are now implemented and measured.** Prototyped on
> a branch of the publisher (`feat/dynamic-publish-box`, opt-in, off by default) and validated against
> real AU Base content. Headline: after a one-time migration, **milestone builds rewrite 0 old-version
> pages** (was ~35k), and each built version is **~22% smaller** (A3). Full implementation + numbers:
> [publisher-A2-prototype-results.md](publisher-A2-prototype-results.md). Lever status is annotated
> inline below (✅ implemented / ⏸ open).

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
The publish-box hardcodes the current version into every page, e.g.
`…supersedes this version is <a href="http://hl7.org.au/fhir">6.0.0</a>`. Cutting a milestone changes
that literal, forcing a rewrite of every page of every version. Two ways to stop that:

**A2 ✅ IMPLEMENTED — make the banner dynamic (client-side), keeping the "current is vY" text.**
*(opt-in `website.dynamic-publish-box`; measured: 2nd milestone rewrites 0/5,153 old pages vs 3,973
baseline. The companion **"Page versions:" list** is now dynamic the same way — new-milestone-folder
churn 2,554 → 0. Together: zero milestone churn over old versions in all cases.)*
Emit a static placeholder + JS that fills the current version at page load:
`…is <a class="fhir-current-version-link"><span class="fhir-current-version"></span></a>`, with a
small `current-version.js` that fetches `/fhir/package-list.json` (already the source of truth, same
origin, already parsed by `history.js`), finds the current milestone entry, and fills the span + link.
- The injected publish-box is then **identical on every page regardless of milestone** → a new
  milestone only updates `package-list.json` (one file) and every old page's banner updates itself →
  **no rewrite of old versions.** Keeps the UX (names the current version). Pages already load jQuery.
- Fallback when JS is off/fetch fails: show the static "see the version history" link.

**A1 (simpler) — version-agnostic banner:** drop naming the current version inline ("this is vX — see
history"). No JS, but a minor UX loss. A2 is preferred since some readers want the inline current version.

Either way: change site is `PublishBoxStatementGenerator` (+ template asset for A2). Upstream-able
(benefits all IGs). **This removes the milestone size/speed problem** — you don't touch old versions.

### A3. ✅ IMPLEMENTED — Client-side source viewers — same "render from canonical source" pattern as A2
*(opt-in IG parameter `dynamic-source-viewers`; measured on an AU Base container build: viewer pages
**73.2 MB → ~10.2 MB per version (~86%)**, each page ~90 KB → flat ~11.8 KB. JS shipped as a relative
`dynamic-source.js` file — inline `<script>` is rejected by HTMLInspector. Trade-off: loses the
in-source FHIR-reference hyperlinks; keeps syntax highlighting + raw content. **Prod-deploy verified
(2026-06-19):** headless-Chrome render of the deployed `pr-1074` preview confirms the viewer fetches +
Prism-highlights the source (207 token spans, 0 errors); the path/origin-independent relative fetch
resolves identically at the canonical root (live `hl7.org.au/fhir`). Lost-links cost quantified on the
same resource: baked 46 in-source links → dynamic 0. Upstream PR
[HL7/fhir-ig-publisher#1329](https://github.com/HL7/fhir-ig-publisher/pull/1329); tools registration
[FHIR/fhir-tools-ig#13](https://github.com/FHIR/fhir-tools-ig/pull/13). See
[publisher-A2-prototype-results.md](publisher-A2-prototype-results.md) §8.)*

**The biggest per-version bloat is duplication, not data.** Measured on `fhir/6.0.0` (289 MB total):

| role | size | files |
|------|------|-------|
| real HTML pages (incl. ~29 MB comparison pages) | 94 MB | 1,717 |
| **escaped-format viewer pages** (`.json.html`/`.xml.html`/`.ttl.html`) | **77 MB** | 822 |
| download bundles (`full-ig.zip` etc.) + misc | ~69 MB | 971 |
| raw data (`json`/`xml`/`ttl`) | 39 MB | 1,243 |
| images + css/js | 7 MB | 627 |

Each resource is materialised ~6× (raw json/xml/ttl **plus** a highlighted `.html` view of each). The
`.json.html`/`.xml.html`/`.ttl.html` pages are **the same data as the raw files, just Prism-highlighted
and wrapped in page chrome** — and **Prism.js is already shipped and loaded on every page**.

**A3:** keep the "JSON/XML/Turtle" source tabs but **render them client-side from the existing raw file**
instead of baking the highlighted source into each page.

**As built (the lowest-risk, publisher-only variant):** keep the per-resource `X.json.html`/`.xml.html`/
`.ttl.html` page (so the existing tab links are unchanged — no template change), but replace its baked
source body with a tiny shell (`<pre class="fhir-source-dyn" data-src="X.json">`) + a relative
`dynamic-source.js` that fetches the raw file and Prism-highlights it. Each page collapses from up to
~90 KB to a flat ~11.8 KB (the remaining bytes are shared page chrome). Measured: **73.2 MB → ~10.2 MB
per version (~86%)** of viewer-page bytes; ~63 MB/version. (A larger win — also dropping the chrome via
a shared `viewer.html` shell or inline tabs — would need template changes; deferred.) Trade-off: loses
the in-source FHIR-reference hyperlinks the server adds. Change site: `PublisherGenerator` +
`dynamic-source.js` + the already-present Prism. Upstream-able; opt-in `dynamic-source-viewers`.

### B. Shrink each version's artefacts (config and/or publisher) — smaller working & milestone
- **Drop Turtle** (`.ttl` + `.ttl.html`) if RDF isn't needed (~9% of a version). IG/format config.
- **Source viewer pages** — see **A3** (the single biggest per-resource cost; ~77 MB/version).
- **Comparison-to-previous-version pages** (~29 MB/version): a build-time structural diff, so not a pure
  client-side render like A3 — but reducible: generate **lazily/on-demand**, **limit scope** to
  current-vs-immediately-previous, or drop if low-value.
- **Download bundles** (`full-ig.zip`/definitions/examples, ~48 MB): only offered on the **Downloads
  page** (`downloads.html`), so a contained feature. Keep for prod if wanted; **exclude `*.zip` from the
  review/preview zip** for an easy ~halving (they're ~half the 88 MB working zip and don't compress
  further) — no publisher change.
- **Drop numbered clones** (`.json1/.json2/.xml1/.xml2`, ~1 GB bucket-wide) — content-negotiation
  copies; with the CloudFront `fhir-canonical` function they may be unnecessary. (`clone-xml-json` is
  already `false` in publish-setup — worth confirming why they still exist.)

> Note on "why a static site is this big": the stored/sync size is **uncompressed**; HTML/JSON compress
> ~5–8× and CloudFront already serves gzip/brotli, so the *over-the-wire* size is a fraction. The 15 GB
> is a storage/sync number, not a transfer one.

### C. ✅ IMPLEMENTED — Build speed: stop the double render (publisher)
*(opt-in `-go-publish -reuse-build`, off by default; prototyped on publisher branch `feat/reuse-build`,
built + validated end-to-end in the `ig-publisher-base` container. Full write-up:
[publisher-C-double-render-findings.md](publisher-C-double-render-findings.md).)*
- **Double render:** go-publish requires a pre-built `output/` (the `-ig` step) **and then re-renders
  the IG itself** in `-publish` mode → working = 2 renders, milestone = 3 (~7–15 min each). The re-render
  exists because the pipeline's `-ig` step renders in **MANUAL** mode (`file://` self-paths, no
  comparison pages) so its output isn't publishable.
- **Fix (two parts, both opt-in):** (1) run the pipeline's `-ig` step in publication mode
  (`-ig . -publish <path>`, where `<path>` = `publication-request.json`'s `path`) — same cost, but the
  pre-built output is now publishable; (2) pass `-reuse-build` to `-go-publish` so it **adopts** that
  output (verified via a new `qa.json` `publication-url` marker) instead of re-rendering. Mismatch →
  falls back to a full render, so default behaviour is untouched.
- **Renders:** working **2 → 1** (~50%); milestone **3 → 1** for au-base (no related IGs, so the
  `-milestone` render is render-identical to `-publish` and is reused too) (~67%).
- ✅ With **A2** (done), milestones skip the whole per-version rewrite I/O (~35k files) → milestone ≈
  working speed for everything except the render itself; lever C then cuts that remaining render.

## Custom publisher vs upstream vs config
- **Config-level** (drop ttl / confirm clones / format selection): no code; just IG / `publish-setup`
  settings + a test build to measure. Lowest risk — do first to quantify.
- **Code-level** (A: version-agnostic banner; C: go-publish reuse-output; B: trim viewer HTML): best as
  **upstream PRs** to `HL7/fhir-ig-publisher` (we already have the source checked out + PR #1327 open),
  so they're maintained and benefit every IG. A **custom fork** is possible but carries maintenance +
  divergence cost — last resort.

## Prioritisation / status
1. ✅ **A2 — dynamic (JS) publish-box current-version** + dynamic **page-versions**. Done, measured:
   milestone rewrite-all → 0; milestone becomes working-sized. Keeps the "current is vY" banner.
2. ✅ **A3 — client-side source viewers**. Done, measured: ~86% off viewer pages (~63 MB/version).
3. ✅ **C — go-publish `-reuse-build`** (prototyped + validated, **PR HL7/fhir-ig-publisher#1328**).
   Skips the redundant `-publish` render when the `-ig` step ran in publication mode: working 2→1 render,
   milestone 3→1 (au-base). Measured: go-publish 725s→100s (~86%), 0 substantive content diffs. The one
   part A2 doesn't touch. See [publisher-C-double-render-findings.md](publisher-C-double-render-findings.md)
   + [publisher-C-reuse-build-tradeoffs.md](publisher-C-reuse-build-tradeoffs.md).
4. ⏸ **B — artefact trimming** (config): the **numbered clones** (`.json1/2`,`.xml1/2`, ~16.6%/version)
   are created **unconditionally** by `IGReleaseVersionUpdater.checkXmlJsonClones` despite
   `clone-xml-json:false` — a cheap publisher/config cleanup. (Turtle is **kept** by decision; bundles
   can be excluded from preview zips with no code.)

A2+page-versions are on `feat/dynamic-publish-box` and A3 on `feat/dynamic-source-viewers` (stacked on
it; split out as its own PR — orthogonal, plus an `hl7.fhir.uv.tools` registration dependency), both
opt-in/off by default — see
[publisher-A2-prototype-results.md](publisher-A2-prototype-results.md). **Recommendation: upstream PR
(opt-in), not a fork** — the changes can't affect any other IG's output, so they're low-risk to land
and benefit every multi-version IG; a fork carries permanent rebase cost. **One-time migration applies:**
the *first* milestone after turning the flags on still rewrites old pages once (hardcoded → placeholder);
the *second* and every milestone after rewrite **zero**.
