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
The publish-box hardcodes the current version into every page, e.g.
`…supersedes this version is <a href="http://hl7.org.au/fhir">6.0.0</a>`. Cutting a milestone changes
that literal, forcing a rewrite of every page of every version. Two ways to stop that:

**A2 (preferred) — make the banner dynamic (client-side), keeping the "current is vY" text.**
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

### A3. Client-side source viewers — same "render from canonical source" pattern as A2
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
instead of baking a duplicate HTML page. Two options:
- a single shared **viewer shell** (`viewer.html?src=…&fmt=json`) that fetches the raw resource and
  highlights it with Prism, or
- render the source **inline in a tab** on the resource page (fetch raw on tab-click, highlight).

Eliminates ~822 files / **~77 MB per version (27%)**, keeps the UX, and since those pages also carry the
publish-box, it **also reduces milestone rewrites**. Same idea as A2 (render from canonical source —
`package-list.json` for the banner, the raw `.json/.xml` for viewers). Change site:
`PublisherGenerator` (stop emitting `*.json/xml/ttl.html`, change the tab links) + a small JS + the
already-present Prism. Upstream-able.

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
1. **A2 — dynamic (JS) publish-box current-version** (upstream PR). Highest leverage: removes the
   milestone rewrite-all → milestone becomes a working-sized build, while **keeping** the "current is
   vY" banner. Solves size *and* speed at once.
2. **A3 — client-side source viewers** (upstream PR). ~27% off every version + fewer milestone
   rewrites; same client-side-render pattern as A2 (Prism is already shipped).
3. **C — go-publish `-reuse-build`** (upstream PR). Halves render time for every build.
4. **B — artefact trimming** (config first to measure: drop ttl, lazy/limit comparison pages, exclude
   bundles from previews, confirm clones).

A2/A3/C are the high-value publisher changes (all "render/compute on demand instead of bake duplicates");
B is incremental. Recommend prototyping A2 first and measuring milestone build size/time (mind the
**one-time migration**: the first A2/A3 build still rewrites old pages once; the *second* milestone is
the cheap one — measure that). Then A3. Decide custom-build vs upstream from the numbers.
