# AU FHIR site — publishing & infrastructure: what changed and why

Summary of work on hl7.org.au/fhir (canonical URLs, CloudFront/S3, Terraform, and the build
pipeline). Companion to the build redesign in [build-pipeline.md](build-pipeline.md) and publisher
PR https://github.com/HL7/fhir-ig-publisher/pull/1327.

> Status legend: ✅ done/live · 🟡 committed locally (not pushed) · ⏸ proposed/pending decision

## 1. Canonical / "official" URLs were broken
**Problem:** `http://hl7.org.au/fhir/ImplementationGuide/hl7.fhir.au.base` (and every canonical
resource URL) returned "Content Not Found".

**Root cause:** the IG publisher emits **PHP** redirect stubs (`index.php`) for canonical URLs, but
the site is **static S3** (behind CloudFront) which can't execute PHP. HL7 International works because
it's served by Apache/IIS with PHP.

**Fixes:**
- ✅ **S3 backfill** — converted all **5,445** `index.php` stubs into equivalent static `index.html`
  redirects and uploaded them. Purely additive (0 collisions), bucket versioning on. Tooling +
  exact key manifest staged in `ops/canonical-backfill/` (revert with `revert_backfill.sh`).
  Verified live: canonical URLs now resolve.
- 🟡 **Publisher fix** PR [#1327](https://github.com/HL7/fhir-ig-publisher/pull/1327): the publisher's
  `ServerType.CLOUD` is meant for static hosts but (a) emitted PHP into `index.html` (template copy-paste
  bug) and (b) was never wired into the `-go-publish` path. PR fixes both so future builds can emit
  static HTML natively. *(open PR — for the team to review/merge upstream)*
- ⏸ Set `"server": "cloud"` in `publish-setup.json` (publications repo) once #1327 lands, so new
  publishes emit `index.html` natively instead of needing the backfill.

## 2. CloudFront canonical routing
The site is CloudFront (`E2U6NB1JDLY5NT`) → S3 website origin, with a viewer-request function
`fhir-canonical` that resolves canonical URLs. We:
- Mapped its behaviour; it already rewrites `StructureDefinition/ValueSet/CodeSystem/CapabilityStatement`
  to the current-version HTML, and appends `/index.html` for everything else (which now exists post-backfill).
- ✅ **Added versioned-canonical handling** (`<RT>/<id>|<version>` and `%7C` → `/fhir/<version>/…`) and
  deployed it (Terraform `apply`). Verified live — these resolve now (they 404 on HL7 International too;
  this is an AU enhancement). Note: it's a routing transform, so it belongs at the edge, not the
  publisher (`|` is an illegal filename char → can't be a static file).

## 3. Infrastructure as code (Terraform)
The CloudFront/S3/IAM was **not** in Terraform (created by hand). 🟡 Adopted into the **publications**
repo `terraform/cloudfront/` (zero-diff import; committed locally):
- `aws_cloudfront_distribution` + `aws_cloudfront_function` (the versioned-canonical code).
- `hl7au-fhir-ig` bucket **settings** (website/versioning/public-access/policy/ownership) — *not* its
  objects (those are the publish pipeline's). `prevent_destroy` on the bucket.
- The `ghactions_publications_oidc` role: scoped its S3 access down from `AmazonS3FullAccess` to just
  the content + state buckets, added least-privilege CloudFront perms, gave it read-only over its own
  role (so the pipeline can plan IAM but **cannot self-escalate**).
- State in dedicated bucket `hl7au-publications-tfstate-ap-southeast-2`. A `terraform plan` pipeline
  (`.github/workflows/infra.yml`) runs on PRs; apply gated on `master`.

## 4. Build pipeline (the 35-min builds + manual steps)
See [build-pipeline.md](build-pipeline.md) for detail. Key points:
- `history.html` is driven entirely by `package-list.json`; version backlinks work because version
  folders are immutable in S3. **Working** releases only need root files locally; **milestone**
  releases (R-numbered, e.g. 6.0.0) rewrite every old version's banner → need the version tree.
- The 15 GB / 216k objects is **multiple co-hosted IGs**; au-base is ~6.3 GB, and a milestone needs
  only ~4.6 GB of it (sibling IGs + download bundles/images excluded).
- 🟡 **Redesign:** GitHub-hosted lean working build → review zip → gated S3 promote (no EC2, no manual
  copy); milestone build against a warm au-base-scoped mirror. Workflows committed locally.
- ✅ **Validated locally** that the lean working build produces a correct site (history.html with all
  28 versions + backlinks) — **must run in the `hl7fhir/ig-publisher-base` container** (the macOS host
  build was broken; the container build is clean and go-publish succeeds, matching CI).
- Helper: `scripts/local-publish.sh` reproduces a publish in that container and emits a review zip.
- 🟡 Removed the broken `au-profile-tag-go-publish.yml` from publications (dead `-tx` host; superseded).

## 5. Staging / preview
- **Today:** `staging.hl7.org.au` → the self-hosted runner EC2 (`hl7au-actions-runner`,
  `54.206.138.138`) running **nginx over its `/webroot`** (HTTP only; HTTPS/ACM not finished). It's
  coupled to the EC2 we want to retire and is nginx (not CloudFront), so it doesn't replicate prod's
  canonical-redirect behaviour.
- ⏸ **Proposed:** a dedicated **S3 + CloudFront staging** reusing the `fhir-canonical` function (prod
  fidelity), with the build→zip→deploy-staging→gated-promote flow. The review **zip / local server**
  covers quick content checks with zero infra. (DNS + an ACM validation record for staging already
  exist — could be repointed to a staging CloudFront.)

## Where things live
- au-fhir-base branch `build-pipeline-redesign` (local): `docs/`, `.github/workflows/build-review-publish*.yml`,
  `scripts/local-publish.sh`. `ops/canonical-backfill/` (untracked) holds the backfill/revert tooling + manifest.
- publications `master` (local): `terraform/cloudfront/`, removed publish workflow.
- Live now: the S3 canonical backfill + the versioned-canonical CloudFront function.
