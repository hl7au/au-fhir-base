# A2 prototype (dynamic publish-box) — implementation + measured results

Prototype and measurement of **lever A2** from [publisher-size-speed-analysis.md](publisher-size-speed-analysis.md):
make the publish-box "current version" reference dynamic (client-side) so cutting a milestone no
longer rewrites every page of every past version. Companion to [build-pipeline.md](build-pipeline.md).

> TL;DR — A2 works and the headline holds: after a one-time migration, a **second milestone rewrites
> 0 old-version pages** (vs ~3,973/5,153 ≈ 77% on a stock milestone). One honest caveat: a *separate*
> mechanism (`addPageVersions`, the "Page versions: R3 R4 …" line) still churns ~50% of pages **when a
> new milestone folder is published** — that needs the same client-side treatment to reach true zero.

## 1. What was built

Two branches in the local `fhir-ig-publisher` checkout (both cut from `fix/cloud-static-html-redirects`
/ PR #1327; **not pushed, no PR opened**, draft only):
- **`feat/dynamic-publish-box`** — A2 (dynamic current-version) + page-versions. Draft PR text:
  `DYNAMIC-PUBLISH-BOX-PR.md`.
- **`feat/dynamic-source-viewers`** — A3, stacked on the publish-box branch (diff = only A3). Draft PR
  text: `DYNAMIC-SOURCE-VIEWERS-PR.md`.

A3 was split into its own branch (separate PR) because it's orthogonal (render pipeline, not the
publish box) and carries an external dependency the publish-box work doesn't (the `hl7.fhir.uv.tools`
parameter registration). §1–4 below are the publish-box branch; §5a/§8/§9 are the A3 branch.

Opt-in via `publish-setup.json` → `website.dynamic-publish-box: true` (off by default → safe to land
upstream without changing any existing IG's output). When on, `PublishBoxStatementGenerator` emits a
version-agnostic placeholder for the "current version" reference + a small inline script that, at page
load, reads `package-list.json` same-origin (path derived from the canonical, so it works under HTTPS),
finds the current milestone exactly as the server does (`current===true`, not the ci-build entry, path
under canonical), fills the version number + link, and shows the wording matching **this page's own
version** (superseded / is-current / pre-release). The page's own version is static, so the **emitted
markup is byte-identical on every page of every version regardless of which version is current.**

Files: `PublishBoxStatementGenerator` (markup + JS), `PublicationProcess` (`-go-publish`, flag threaded
through all `updatePublishBox` call sites), `IGWebSiteMaintainer`/`IGReleaseUpdater` (`-publish-update`).
Builds clean with JDK17 (`mvn -pl org.hl7.fhir.publisher.cli -am clean package -DskipTests`); A2 code
verified present in the shaded jar.

## 2. How it was measured

- **Mirror:** real S3 content for 3 AU Base versions — `fhir/4.0.0`, `4.1.0`, `5.0.0` — synced lean
  (no zips/images/ttl), **5,153 HTML files** total, plus root `package-list.json`/feeds. These pages
  carry the real hard-coded banner (`…supersedes this version is 6.0.0`).
- **Driver:** `-publish-update` (IGWebSiteMaintainer). It runs the **identical per-version publish-box
  rewrite loop** a milestone uses (`genFragment` → `IGReleaseVersionUpdater.updateStatement` over every
  version), with **no IG render** — so it isolates and faithfully reproduces the milestone rewrite cost
  cheaply (~20 s/run vs ~25 min for a full `-go-publish`). Run on the host JDK17 (no render → host-safe).
- **Churn metric:** changed HTML counted two independent ways — an md5 manifest diff (ground truth) and
  the publisher's own `countUpdated`. They agree.
- **3-way design** (avoids the trap of comparing baseline vs the one-time migration and wrongly seeing
  "no win"): (1) stock milestone, (2) first A2 milestone = one-time migration, (3) second A2 milestone.
  Scripts: `/tmp/measure.sh`, `/tmp/bump_current.js`, `/tmp/run_cd.sh`, `/tmp/measure_pv.sh`.

## 3. Results — milestone publish-box churn (the headline)

A "milestone" here = the current version changes; the per-version rewrite loop runs over all 3 versions.

| run | publish-box behaviour | old-version HTML rewritten | both metrics |
|-----|----------------------|----------------------------|--------------|
| **Baseline** (flag off), current bumped | hard-coded current version | **3,973 / 5,153 (77%)** | md5=3973, self-report=all |
| **1st A2** (flag on) — one-time migration | hard-coded → placeholder | 3,973 / 5,153 | md5=3973 |
| **2nd A2** (flag on), current bumped again | placeholder (stable) | **0 / 5,153** | md5=0, self-report=0,0,0 |

After the one-time migration, **subsequent milestones rewrite zero old-version pages.** The placeholder
on a 4.0.0 page after the 2nd milestone (no version named; current resolved by JS at load):

```html
<span class="fhir-pb-dynamic" data-pb-version="4.0.0" data-pb-canonical="http://hl7.org.au/fhir">
  <span class="fhir-pb-superseded">The current version which supersedes this version is
    <a class="fhir-pb-current-link" href="http://hl7.org.au/fhir"><span class="fhir-pb-current-version">the current version</span></a></span>
  …is-current / pre-release spans (hidden, toggled by JS)…
</span><script>…reads package-list.json, fills version+link, toggles wording…</script>
```

**Extrapolation to full AU Base (~27 versions, ~45,700 HTML files):** a stock milestone rewrites ~77%
≈ **~35,000 files** (the whole tree must be re-synced — the ~1.5–2 GB milestone zip). With A2, steady-
state ≈ **0** old-version files → the milestone collapses to a working-sized build (new version + root
only), exactly the goal.

## 4. Page-versions made dynamic too (closes the residual) — DONE

A2 only touches the "current version" sentence. The publish box also carries a **"Page versions: R3 R4
R5 …"** cross-link list (`IGReleaseVersionUpdater.addPageVersions`), independent of A2, which changes on
old pages when a **new milestone folder** is published. Before fixing it, that residual was real:

| variant | old-version HTML changed |
|---------|--------------------------|
| A2 on, new milestone folder published — **before** page-versions fix | 2,554 / 5,153 (~50%) |
| A2 on, new milestone folder published — **after** page-versions fix | **0 / 5,153** |

The fix applies the same "render from canonical source" pattern: under `dynamic-publish-box`,
`addPageVersions` emits a placeholder `<span class="fhir-pb-page-versions" data-pb-version="…">` and the
same inline script resolves the list from `package-list.json` milestones at load, HEAD-probing each so
only milestones that actually contain this page are shown (matching the server). The list is no longer
baked, so adding a milestone never rewrites old pages.

**Result: with A2 + page-versions dynamic, milestone churn over old versions is zero in all cases** —
including a brand-new milestone folder. (Aside: the live site shows `Page versions: R5 R4 R3` on 4.0.0,
missing R6 — evidence au-base's recent milestones weren't running this rewrite anyway.)

## 5. Lever B (config/artefact trimming) — measured on `fhir/5.0.0` (280.4 MB / 6,900 files)

| candidate | size | files | % of version |
|-----------|------|-------|--------------|
| escaped viewer pages (`.json.html`+`.xml.html`+`.ttl.html`) → **addressed by A3** | 65.8 MB | 768 | 23.5% |
| numbered clones (`.json1/2`, `.xml1/2`) | 46.7 MB | 1,586 | 16.6% |
| (Turtle `.ttl`+`.ttl.html` — **kept**, per decision) | 32.3 MB | 513 | 11.5% |

Notes:
- **Turtle is kept** (decision) — A3 still trims the `.ttl.html` *viewer* page (rendered client-side
  from the raw `.ttl`, which stays); the raw `.ttl` download is untouched.
- The escaped viewer pages are exactly **lever A3** (the other session's finding: 77 MB/822 files = 27%
  on 6.0.0; these 5.0.0 numbers corroborate). **A3 is now implemented** on `feat/dynamic-source-viewers` (opt-in
  `dynamic-source-viewers`) — see §5a. Since viewer pages also carry the publish box, A3 *also* shrinks
  what a milestone touches.
- **Numbered clones exist despite `clone-xml-json:false`** in publish-setup.json — because
  `IGReleaseVersionUpdater.checkXmlJsonClones()` runs *unconditionally* in the `-publish-update`/release
  path (it's only gated by the flag in `PublicationProcess.updatePublishBox`). That's why ~1.6k clone
  files / 46.7 MB sit in every version. With the CloudFront `fhir-canonical` function handling content
  negotiation, these are likely unnecessary — a config/publisher cleanup (not yet done).

### 5a. A3 — client-side source viewers (implemented, opt-in)

Opt-in IG parameter `dynamic-source-viewers=true`. When set, the `*.json.html`/`*.xml.html`/`*.ttl.html`
"view source" pages are emitted as a small client-side shell (`<pre class="fhir-source-dyn" data-src=
"X.json">`) + a relative `dynamic-source.js` (HTMLInspector rejects inline `<script>`) that fetches the
raw `X.json`/`.xml`/`.ttl` (same dir) and Prism-highlights it (Prism is already loaded). Each viewer page collapses from ~70–90 KB (big resources) to
<1 KB. Off by default. **Trade-off:** the in-source FHIR-reference hyperlinks the server-side renderer
adds are *not* present in the client-side view (syntax highlighting + raw content are). Requires the
raw json/xml/ttl formats to be published (they normally are). Measured result of a container `-ig`
build with the flag: see §8.

## 6. Recommendation — upstream PR (opt-in), not a fork

**Go upstream, opt-in.** Rationale:
- A2 is small, self-contained, and **off by default** — it cannot change any other IG's output, which
  is exactly what upstream maintainers need to accept it. A fork carries permanent rebase/divergence
  cost against a fast-moving repo (org.hl7.fhir.core bumps, releases) for a change that benefits every
  multi-version IG.
- It solves AU Base's milestone size **and** speed at once (milestone → working-sized), removing the
  pipeline's slowest/most fragile step.
- Status (opt-in, off by default; not pushed) — **two stacked branches → two PRs**:
  1. **`feat/dynamic-publish-box`** = A2 (dynamic current-version, `website.dynamic-publish-box`) +
     page-versions dynamic. Done + measured (0 milestone churn). Self-contained, no external deps.
  2. **`feat/dynamic-source-viewers`** = A3 (client-side source viewers, `dynamic-source-viewers` IG
     param), stacked on #1. Done; validated §8. Needs the `hl7.fhir.uv.tools` parameter registration
     (separate small PR) — which is why it's split out.
- **Lever B config** still open (disable the unconditional clone creation; Turtle kept) — lowest-risk
  config/publisher cleanup, do anytime.
- Until this lands upstream and the IG opts in, the pipeline redesign in
  [build-pipeline.md](build-pipeline.md) (lean working builds + warm milestone mirror) carries the cost.

## 7. Reproduce

```bash
# build the modified publisher (host JDK17; compile is platform-independent)
cd fhir-ig-publisher && JAVA_HOME=<jdk17> mvn -pl org.hl7.fhir.publisher.cli -am clean package -DskipTests
# measure (host; -publish-update does no render so it's host-safe):
#   /tmp/run_cd.sh         -> baseline / A2-migrate / A2-steady churn
#   /tmp/measure_pv.sh     -> page-versions residual (adds a new milestone folder)
# mirror at /tmp/au-milestone-mirror (3 real versions), helpers at /tmp/au-ms-helpers
```
A full `-go-publish` milestone (with the IG render) must run in the `hl7fhir/ig-publisher-base`
container per [build-pipeline.md]; the publish-box rewrite measured here is identical in both paths,
so `-publish-update` on the host is the faithful, cheap way to measure it.

## 8. A3 validation — container `-ig` build with `dynamic-source-viewers=true`

Ran a full `-ig` build of AU Base in the `hl7fhir/ig-publisher-base` container with the opt-in
parameter set (`/tmp/a3build`, custom jar). Build clean (0 broken links). Viewer pages collapse to
shells; comparison against the live S3 6.0.0 (same version, baked):

| viewer pages | baked (S3 6.0.0) | A3 shells (this build) | reduction |
|--------------|------------------|------------------------|-----------|
| `.json.html` | 274 files, 19.6 MB | 280 files, 3.4 MB | |
| `.xml.html`  | 274 files, 27.5 MB | 280 files, 3.4 MB | |
| `.ttl.html`  | 274 files, 26.1 MB | 280 files, 3.4 MB | |
| **total**    | **822 files, 73.2 MB** | **840 files, ~10.2 MB** | **~86% (~63 MB/version)** |

Each viewer page drops from up to ~90 KB (big resources) to a flat ~11.8 KB — the remainder is shared
page chrome (nav/header/footer/publish-box), which a publisher-only change can't remove (that would
need template tab changes). Across ~27 au-base versions that is on the order of ~1.5 GB of duplicated
source removed bucket-wide.

Re-validated with the fixed jar: `dynamic-source.js` emitted (664 B), every viewer page references it
via `<script src="dynamic-source.js">`, **0 inline scripts**, 0 broken links.

**Prod-deployment + rendered-behaviour verification (2026-06-19).** Static "files exist" checks aren't
enough — verified the deployed preview actually *renders* and would behave the same at the canonical
root:
- **Executed render (headless Chrome, post-JS DOM):** on the deployed `pr-1074` preview `.json.html`,
  the `Loading source…` placeholder is replaced by the real resource (`{ "resourceType": "ValueSet", … }`,
  3,524 chars ≈ the 3,570-byte raw file); **207 Prism `token` spans** (highlighting ran); no
  console/page errors; no `(unable to load …)`.
- **Lost-links cost confirmed by measurement (same resource):** the baked viewer carries **46 in-source
  `<a href>`** (45 element-name → FHIR-R4-spec defs, 1 external); the dynamic viewer has **0**. So
  content + highlighting are intact; only the element-name → spec convenience links drop.
- **Path/origin-independent → works in prod.** The shell fetches a *relative* `data-src` + uses the
  already-loaded Prism (no absolute paths, no cross-origin). Confirmed against the live published AU
  Base: the raw `…json` resolves same-origin (200) and `prism.js`/`prism.css` are present on the viewer
  page. NB the publish-box (A2) derives its IG root two ways — preview hits the version-in-path branch,
  prod current-version pages hit the canonical fallback (`http://hl7.org.au/fhir` → `/fhir`,
  `package-list.json` present); the preview does not itself exercise that fallback, but it was verified
  separately against prod.
- **See it live:** dynamic = [`…/pr-1074/…/ValueSet-au-v3-ActEncounterCode-extended.json.html`](https://hl7au.github.io/au-fhir-base/previews/pr-1074/working/fhir/6.0.1-ci-build/ValueSet-au-v3-ActEncounterCode-extended.json.html)
  vs baked = [`hl7.org.au/fhir/ValueSet-au-v3-ActEncounterCode-extended.json.html`](https://hl7.org.au/fhir/ValueSet-au-v3-ActEncounterCode-extended.json.html).
- **Caveat (unchanged):** no-JS / offline / downloaded copies show `Loading source…` (or `(unable to
  load …)`) instead of the source — the baked page renders offline.

**Two upstreaming notes surfaced by the QA (both expected, neither a code bug):**
1. **No inline `<script>`** — HTMLInspector forbids inline JS in generated pages (FATAL on the HL7
   ci-build). First attempt inlined the JS → a QA warning; the shipped version puts it in the relative
   `dynamic-source.js` file (allowed) registered in `otherFilesRun`. (The A2/page-versions script is
   exempt: `-go-publish` injects the publish box *after* the inspector runs.)
2. **Register the parameter code** — the QA shows 6 errors: 2 are pre-existing AU Base content errors
   (MIMS/PBS unknown codes; the clean baseline is "2 errors"), and **4 are because `dynamic-source-viewers`
   is not yet in the tooling `ig-parameters` ValueSet** (`hl7.fhir.uv.tools`). Adding a new IG parameter
   code there is the standard step for any new parameter (same as `produce-jekyll-data`); A3 itself adds
   **0** errors. The upstream PR must register the code. (`dynamic-publish-box` needs nothing — there
   is no publish-setup.json schema; the publisher reads `website.*` keys ad-hoc and ignores unknowns.)

## 9. Does A3 speed up the build? + retroactive A3

**Build time (A3 on vs off).** A3 is primarily a **size** lever. At build time it *skips* the
server-side syntax-highlight render of ~822 pages × 3 formats per version
(`XmlXHtmlRenderer`/`JsonXhtmlRenderer`/Turtle), but still writes the raw `.json/.xml/.ttl`. An A/B
`-ig` build of AU Base (A3 off then on, same container) came out **18:25 vs 5:37** — but that is
**cache-confounded, not an A3 result**: the off build ran first (cold terminology cache) and the on
build second (warm), so the big movers were `validation 4:37 → 0:39` and `narrative 0:48 → 0:02`,
which A3 does not touch. **No clean A3 build-time delta was isolated.** A3's genuine render saving
(skipping the highlight passes) is small and was swamped by cache variance. **Treat A3 as a size lever,
not a speed lever.** A controlled measurement would need both runs warm (or the order reversed).

**Publish-box rewrite pass (A2), measured cleanly via `-publish-update` over 3 versions / 5,153 HTML:**
baseline **21 s** (3,973 files rewritten) → A2-steady **6 s** (0 files rewritten). The 0-write steady
pass is the headline; the wall-clock also benefits but partly from a warm tree (the steady run didn't
reset). **The real milestone build-time win is not local CPU at all — it's the S3 full-tree sync**
(the documented reason builds ran ~35 min on a self-hosted EC2), which A2 removes by keeping old
versions byte-identical. That is a pipeline/S3 figure, not a publisher stopwatch, and was **not**
measured end-to-end here.

**Retroactive A3 (no re-render needed).** A3 can be applied to *existing* published versions as a
one-off **static S3 batch** — like the earlier `index.php`→`index.html` canonical backfill — because
the raw `.json/.xml/.ttl` files already exist in the bucket. For each existing `*.json.html`/
`*.xml.html`/`*.ttl.html`: replace the baked `<pre class="json">…source…</pre>` block with the A3
shell (`<pre class="fhir-source-dyn" data-src="X.json">…</pre>` + `<script src="dynamic-source.js">`)
and drop one `dynamic-source.js` per version root. No publisher run, no milestone; bucket versioning
gives rollback.

Measured savings (S3 inventory, 2026-06-18, 215,037 objects under `fhir/`):

| scope | viewer pages now | after A3 (~12 KB/page) | **saving** |
|-------|------------------|------------------------|------------|
| **au-base versions** (excl. sibling IGs) | 17,368 files, **1,733 MB** | ~204 MB | **~1.5 GB (88%)** |
| sibling IGs (core/ps/ereq/rcpa/pd) | 10,785 files, 2,177 MB | ~126 MB | ~2.0 GB |
| **whole bucket** (all co-hosted IGs) | 28,153 files, 3,910 MB | ~330 MB | **~3.5 GB** |

So a retroactive pass over au-base alone reclaims **~1.5 GB**; the whole bucket ~3.5 GB. (Going
forward, normal builds shrink the bucket gradually as new versions land; the batch is the way to get
the win on already-published versions without re-rendering or disturbing A2's stable old pages.)
