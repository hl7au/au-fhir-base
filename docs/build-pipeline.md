# AU Base build & publish pipeline — how it works and the redesign

## TL;DR
- `history.html` is generated **entirely from `package-list.json`** — backlinks to `/fhir/<version>`
  work because those version folders are immutable and already in S3.
- Routine releases are **`working`** mode and only need a few **root** files locally; only **milestone**
  releases (the R-numbered `trial-use` "current": 4.0.0=R3 … 6.0.0=R6) need the full 15 GB tree.
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

### Milestone builds (rare) — full-tree regenerate
Needs the whole tree (cross-version banner refresh). Make it painless rather than manual:
- Ephemeral EC2 runner the workflow **starts/stops itself** (e.g. `machulav/ec2-github-runner`),
  backed by a **warm EBS volume** so `s3 sync` pulls only deltas.
- Same zip-for-review + gated promote.

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

### Making milestones cheap: version-agnostic publish box (discuss with Brett)
The only reason a milestone must touch the full tree is to rewrite the in-page **publish-box banner**
inside every past version to say *"the current version is vY"*. If that banner instead linked to
`/fhir/history.html` **without naming the current version**, a new milestone would **never need to
rewrite old versions** — so:

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

Recommended flow: **build → deploy to staging (auto) → review live → gated promote to prod.** The
workflows below include a `staging` job stub; wiring it requires the staging bucket+distribution
(small Terraform addition — pending decision).

## Open items
- Confirm whether GitHub-hosted runners need sizing up for the publisher's RAM/disk (the only real
  reason working builds couldn't be GitHub-hosted).
- Old versions' in-page banners refresh only on milestone builds (the publisher's own behaviour);
  `history.html` stays correct regardless.
- Milestone publishing via the pipeline has historically been flaky ("milestone failing" commits) —
  treat the milestone path as the one needing the most care/testing.
