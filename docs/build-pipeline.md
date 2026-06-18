# AU Base build & publish pipeline — how it works and the redesign

## TL;DR
- `history.html` is generated **entirely from `package-list.json`** — backlinks to `/fhir/<version>`
  work because those version folders are immutable and already in S3.
- Routine releases are **`working`** mode and only need a few **root** files locally. Milestone
  releases (the R-numbered `trial-use` "current") *used* to need the full 15 GB tree to rewrite every
  past version's publish box — but with `dynamic-publish-box` (below) the publisher renders that box
  client-side and **skips the past-version loop entirely**, so a milestone now needs only root files
  too. **Both modes are GitHub-hosted and lean; the self-hosted EC2 is gone.**
- The current pipeline syncs the whole bucket every run on a hand-started EC2 runner, then leaves
  output for a manual S3 copy. That full sync is unnecessary for working builds — the cause of the
  ~35 min builds and the manual steps.

## How publishing works
The site is assembled by the IG Publisher's `-go-publish`, which integrates a freshly rendered IG
version into the existing web tree and regenerates the cross-version artifacts.

- **Version list / history** — `package-list.json` (in this repo) is the source of truth. On publish,
  `HistoryPageUpdater` embeds it into `history.html` as `var pageJSON='…'`; `history.js` renders the
  table client-side, linking each row to that version's `path`. So `history.html` + backlinks need
  only `package-list.json`; the version folders themselves are immutable in S3.
- **Reading the existing site** — `-go-publish` uses `WebSourceProvider`, which copies from the
  **local `-web` mirror** (it errors if a needed file is missing — there is no on-demand S3 fetch).
  What must be local depends on `publication-request.json` `mode`:
  - **`working`** (all `-preview`/`-ballot`/`-draft`): root files only
    (`package-list.json`, `package-registry.json`, `package-feed.xml`, `publication-feed.xml`,
    index json, `publish-setup.json`) + it renders/writes the **new version** and regenerates the
    root (history, registry, feeds, redirects). Old version folders are **not** touched.
  - **`milestone`** (e.g. 6.0.0): additionally rewrites the in-page "publish box" banner inside
    **every** past version → needs the full tree.

## Per-repo independent publish vs the publications back-to-back script
There are two ways to publish the AU IGs (core + base):
- **publications repo `go-publish.sh`** — one script clones both IGs, builds both, and runs go-publish
  for each, **sequentially into one shared `webroot`**. (Largely unused now; pinned branches, always
  republishes both.)
- **per-repo, independent** — each IG's own workflow publishes just itself into the shared S3 mirror
  (what `build-review-publish*.yml` here do). This is the direction we're going.

**Independent publishing produces the same combined site, with no extra orchestration.** What go-publish
touches splits cleanly:
- **Per-IG, never shared:** the version folder `/fhir[/core]/<ver>/`, that IG's own `package-list.json`,
  its `history.html`, its publish-box. Each IG only ever writes its own — no interaction.
- **Shared root files:** `package-registry.json`, `package-feed.xml`, `publication-feed.xml`, and the
  realm index. go-publish **read-modify-writes** each — it loads the existing file from `-web`, inserts
  this IG's new version entry, and writes it back (`updateFeed` does `fileToString` → insert →
  `stringToFile`; `PackageRegistryBuilder.update` likewise). So a sibling IG's entries **survive** an
  independent publish, *as long as `-web` was seeded with the live shared files* — which the lean
  workflows already do (`curl https://hl7.org.au/fhir/package-feed.xml` etc.) and they never
  `--delete` on upload.

So the publications script's only real advantage was **serialization** (core-then-base in one run, so
base sees core's just-written entries). Independent runs lose that *only* in a concurrency race: if core
and base publish at the exact same time, both read the shared file before the other's entry exists, both
write back, and the later S3 upload silently drops the earlier's new entry.

**That race is negligible here: AU releases happen ~once every couple of months and are operator-driven,
so two IGs publishing within the same minutes-long window is vanishingly unlikely.** No cross-repo
concurrency lock is warranted. (If publishing ever became frequent/automated, a shared
`concurrency.group` across the workflows — or an occasional full `-generate-package-registry` rebuild —
would close it.)

Two things to keep regardless: always seed `-web` from the **live** shared root files (already done),
and when both IGs change together, publish **base before core** (au-core depends on au-base).

**Recommendation: per-repo independent.** It only republishes what changed, lives with the source, and
the shared registry/feeds stay correct via read-modify-write. The publications back-to-back script gave
orchestration convenience, not extra output, so retiring it is sound.

## Current pipeline (`.github/workflows/pipeline-build.yml`)
Self-hosted EC2 runner (`runs-on: [self-hosted, Linux, X64]`, `/webroot` volume) →
`aws s3 sync s3://hl7au-fhir-ig /webroot` (≈216k objects / 15 GB) → `-go-publish` → **no upload step**
(output left on the EC2 for manual copy to S3). Self-hosted was adopted because GitHub-hosted runners
took too long doing the full sync.

## Redesign — two modes matching the publisher's own model

### Routine working builds (the common case) — fast, GitHub-hosted, reviewable
1. Runner: GitHub-hosted (size up if the publisher needs RAM/disk).
2. `-web` populated with **root files only** (curl `package-list.json` + feeds + `package-registry.json`
   + `publish-setup.json`) — a few MB, not 15 GB.
3. Render the new version + `-go-publish` (working) → new version dir + regenerated root + `history.html`.
4. **Package**: `zip` the output and publish a **GitHub Actions artifact** for review (open
   `<version>/index.html` and `history.html`, confirm backlinks resolve).
5. **Promote** (separate, gated): `aws s3 sync ./webroot s3://hl7au-fhir-ig` (no `--delete`) — behind a
   `workflow_dispatch` job or a GitHub Environment with required reviewers. No manual copy.

Result: minutes instead of ~35; correct history + backlinks; zero risk to live until the gated promote.

### Milestone builds (rare) — now identical to working (no full tree)
**Superseded by the `dynamic-publish-box` skip-loop (implemented this cycle).** A milestone used to
rewrite the publish-box banner in every past version (hence the full tree + self-hosted EC2 + warm
mirror). With `website.dynamic-publish-box: true` the banner + "Page versions" list render client-side
from `package-list.json`, so every old version's pages are byte-identical regardless of which version is
current — the publisher therefore **skips the past-version loop**, and a milestone touches only the new
version + regenerated root. It now runs on the **same GitHub-hosted, root-files-only path as a working
build** — in fact the **same workflow** (`build-review-publish.yml`) renders once and produces both a
working and a milestone build from that one render; a `v*` tag (or dispatch `publish_milestone`) does
the gated milestone promote. No EC2, no warm EBS, no 15 GB sync. Same zip-for-review + gated promote.

## Verifying the new method locally (no S3 writes)
Build a lightweight `-web` (root files only) and run go-publish against an already-built `output/`:
```bash
JAVA_HOME=/path/to/jdk17 java -jar input-cache/publisher.jar -go-publish \
  -source <au-fhir-base> -web ./webroot -history <fhir-ig-history-template> \
  -registry <ig-registry>/fhir-ig-list.json -templates <publications>/templates -temp ./temp
```
Then `zip -r site.zip webroot/fhir` and open `webroot/fhir/<version>/index.html` + `webroot/fhir/history.html`.

## The 15 GB, and the leanest milestone sync
The bucket **co-hosts several IGs**, not just au-base. By prefix: `fhir/core` 4.0 GB/53k,
`fhir/ps`+`fhir/ereq`+`fhir/rcpa`+`fhir/pd` ≈ 3.7 GB/41k (**sibling IGs ≈ 7.7 GB/94k**), and
**au-base's own content ≈ 6.3 GB/121k**. By type it's mostly text: HTML 7.5 GB/73k files (each page
is a big self-contained HTML), download zips 2.9 GB, json/xml/ttl ~1.9 GB, images 0.4 GB.

An **au-base milestone only iterates au-base's package-list versions** — it never touches the sibling
IGs. So the leanest sync:

| scope | size | objects |
|-------|------|---------|
| whole bucket (today) | 15 GB | 216k |
| au-base only (drop `fhir/{core,ps,ereq,rcpa,pd}`) | 6.3 GB | 121k |
| + drop zips/images/ttl/misc (leanest) | **4.6 GB** | **88k** |

```bash
aws s3 sync s3://hl7au-fhir-ig ./mirror \
  --exclude "fhir/core/*" --exclude "fhir/ps/*" --exclude "fhir/ereq/*" \
  --exclude "fhir/rcpa/*" --exclude "fhir/pd/*" \
  --exclude "*.zip" --exclude "archive.zip" --exclude "ig-build-zips/*" \
  --exclude "*.png" --exclude "*.jpg" --exclude "*.gif" --exclude "*.svg" \
  --exclude "*.ttl" --exclude "*.csv" --exclude "*.xlsx" --exclude "*.pptx" --exclude "*.db"
```
Keep the mirror **warm** (persistent EBS / local dir) so subsequent milestones sync only deltas.
Verify go-publish tolerates the exclusions first: it edits HTML (publish-box) and reads
`spec.internals`/`.json`/`.xml` for redirects — zips/images/ttl/bundles are not inputs, so excluding
them is expected to be safe; confirm on a dry run.

### Important: lean sync is asymmetric (download vs upload)
The exclusions above apply to what we **download** to build the working mirror — old versions'
immutable bundles aren't needed as *input* to the publish-box/redirect pass. They do **not** apply to
the **upload**:
- The **new version we build** produces its own `full-ig.zip`, `definitions`/`examples` downloads, and
  **npm `package.tgz`** in its output dir — those **must be uploaded** with the new version folder.
- So: `aws s3 sync` **in** with the `--exclude`s (lean), but `aws s3 sync` **out** with **no**
  `--exclude` on the new version dir, and **never `--delete`** (old versions' zips/packages stay put).
- The published **site still works without the old zips present locally** — the HTML pages link to
  download bundles by URL, and those already exist in S3; we never remove them.

This applies per IG repo when rolled out (each IG's build excludes the *other* IGs' folders + bundles
on the way in, and uploads its own new version's bundles + tgz on the way out).

### Making milestones cheap: dynamic publish box — IMPLEMENTED (`dynamic-publish-box`)
**Done.** Rather than the version-agnostic approach below (which dropped the inline "current is vY"),
we kept that wording but fill it **client-side**: under `website.dynamic-publish-box: true` the publisher
emits a placeholder + small script that reads `package-list.json` at page load and fills the current
version + the "Page versions" list. Because the emitted markup is then byte-identical on every page of
every version, a milestone rewrites **0** old-version pages — and the publisher **skips the past-version
loop and the `needFolder` copy altogether**, so the milestone needs **no local version tree**. Measured:
2nd milestone rewrites 0/5,153 old-version files (see `publisher-A2-prototype-results.md`). This is what
lets the milestone path in `build-review-publish.yml` run GitHub-hosted + lean. Off by default; opt-in per IG.
Combined into the custom jar (KyleOps/fhir-ig-publisher release `au-pipeline-combined`) with #1327,
A3, and lever C until the upstream PRs merge.

The original version-agnostic idea (kept for the record / as a fallback if the JS approach is rejected
upstream):

**Benefits**
- Milestones become as cheap/fast as working builds (no full-tree sync, no per-version rewrite).
- Removes the slowest, most fragile step (the "milestone failing" history).
- Old version pages stop churning on every release (stable, fewer S3 writes, cleaner diffs).
- `history.html` already shows the authoritative current/version list, so the info isn't lost.

**The slight loss of function (for Brett to weigh)**
- Today, opening an old version's page shows an inline "current version is vY" pointer. Version-agnostic
  banners would instead say "this is vX — see the version history" (one click to history.html) without
  naming the latest inline. Minor UX change; the authoritative list still lives on history.html.
- This is a **publisher/template change** (the publish-box statement generator / history template),
  not just our pipeline — so it needs sign-off and likely an upstream change. **Decision for Brett.**

## Previewing a build before it goes live
There is **no staging environment today** (buckets: prod `hl7au-fhir-ig`, `…-history`, recordings,
projects, tfstate; CloudFront only the prod `hl7.org.au`). Options, lowest to highest fidelity:

1. **Zip artifact (in place now)** — both workflows upload a `site-<ref>.zip`; download and open
   `<version>/index.html` + `history.html` locally. Zero infra. Caveat: local file:// browsing doesn't
   exercise the CloudFront canonical-redirect function.
2. **GitHub Pages** — push the new version (or whole site) to a Pages site for a real URL. Easy/free,
   good for "does it look right", but no CloudFront function (canonical/`|version` redirects won't
   behave like prod) and size limits (~1 GB) — fine for one version, not the full 15 GB.
3. **Staging S3 + CloudFront (recommended for fidelity)** — a `hl7au-fhir-ig-staging` bucket + a
   CloudFront distribution **reusing the same `fhir-canonical` function**, so canonical/versioned
   redirects behave exactly like prod. New infra, managed in Terraform alongside the prod stack
   (`terraform/cloudfront`). Build → `aws s3 sync` to staging → review at the staging URL → gated
   promote to prod. This is the cleanest "preview then promote" and mirrors prod behaviour.

**Implemented: per-branch/per-PR GitHub Pages preview.** Both `build-review-publish*.yml` deploy the
built site to the repo's `gh-pages` branch under `previews/<slug>/` (slug = branch / `pr-N` / tag), so
each branch's preview gets a stable URL and they coexist:
`https://<owner>.github.io/<repo>/previews/<slug>/fhir/<version>/index.html`. One-time setup: enable
GitHub Pages with source = `gh-pages` branch. **Caveat (option 2 above):** pages bake absolute
`hl7.org.au` canonical URLs and Pages doesn't run the CloudFront `fhir-canonical` function, so
cross-page/version links resolve to **prod**, not the preview — good for "does the new version render",
not for exercising canonical/version redirects. For full-fidelity preview, the staging S3+CloudFront
option (option 3) remains the upgrade path (Terraform addition — pending decision).

Flow now: **build → review zip + live Pages preview → gated promote to prod** (the `production`
environment with required reviewers gates the S3 sync).

## Workflow map (current)
| workflow | trigger | runner | role |
|----------|---------|--------|------|
| `build-review-publish.yml` | push/PR to `master`, tag `v*`, dispatch | GitHub-hosted, lean | THE pipeline. Renders once → go-publish twice (working + milestone) → both deployed side-by-side to Pages (`previews/<slug>/{working,milestone}/fhir`). **Prod publish is milestone-only** (v* tag or dispatch `publish_milestone`), gated by the `production` env. No working→prod path. |
| `pipeline-build.yml` | manual dispatch only | self-hosted (legacy) | LEGACY/reference — superseded by the above. |

Both fetch the combined custom jar (KyleOps/fhir-ig-publisher release `au-pipeline-combined`:
#1327 cloud redirects + A2 dynamic publish-box/page-versions + skip-version-tree + A3 source viewers +
lever C `-reuse-build`) until the upstream PRs merge — then revert to `_updatePublisher.sh -f -y`.
`publish-setup.json` (server=cloud + dynamic-publish-box) is sourced from `KyleOps/publications@au-pipeline-config`
until merged to `hl7au/publications`.

## Open items
- **One-time setup:** enable GitHub Pages (source = `gh-pages` branch) for the previews; configure the
  `production` environment's required reviewers (gates every S3 sync).
- **Revert-when-merged:** once the 5 publisher changes ship in a released jar and the config lands in
  `hl7au/publications`, switch the workflows back to `_updatePublisher.sh -f -y` + `hl7au/publications`.
- Confirm whether GitHub-hosted runners need sizing up for the publisher's RAM/disk.
- Milestone publishing was historically flaky ("milestone failing" commits); it's now the same lean
  path as working, but still warrants a milestone dry-run before the first production milestone.
