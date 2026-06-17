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

## Open items
- Confirm whether GitHub-hosted runners need sizing up for the publisher's RAM/disk (the only real
  reason working builds couldn't be GitHub-hosted).
- Old versions' in-page banners refresh only on milestone builds (the publisher's own behaviour);
  `history.html` stays correct regardless.
- Milestone publishing via the pipeline has historically been flaky ("milestone failing" commits) —
  treat the milestone path as the one needing the most care/testing.
