# New-session prompt: move previews Pages→S3+CloudFront, and the one-time dynamic-placeholder migration

Copy the block below into a fresh session **started in the `publications` repo** (that's where the
Terraform/CloudFront/S3 infra lives: `publications/terraform/cloudfront`). The workflow change is in
`au-fhir-base`; the migration touches the prod S3 bucket. Two related pieces that can share one bucket.

---

I want to (1) evaluate/optionally move the au-fhir-base per-branch **previews** off GitHub Pages onto
**S3 + CloudFront**, and (2) do a **one-time migration** of all already-published au-base versions to the
**dynamic publish-box / page-versions placeholders**, staged safely off-prod. Both can live in one
bucket. Read these first (full context — don't re-derive):
- `au-fhir-base/docs/build-pipeline.md` (the pipeline, lean builds, working vs milestone)
- `au-fhir-base/docs/publisher-A2-prototype-results.md` (the dynamic publish-box + the one-time migration)
- memory `au-publish-pipeline`, `au-publisher-a2-dynamic-publish-box`, `au-canonical-redirect-fix`
- AWS: OIDC role `arn:aws:iam::966489602583:role/ghactions_publications_oidc`, region ap-southeast-2,
  prod bucket `s3://hl7au-fhir-ig` (co-hosts au-base + sibling IGs), CloudFront `E2U6NB1JDLY5NT` +
  the `fhir-canonical` function. **Get fresh AWS creds.**

## Part A — previews: GitHub Pages vs S3+CloudFront (the trade-off, already analysed)
Today previews deploy to `gh-pages` (`previews/<slug>/{working,milestone}/fhir`) via peaceiris. The
question is whether to serve them from S3+CloudFront instead. Findings:

- **The files and per-branch serving work fine on S3.** One CloudFront dist + the S3 bucket as origin
  serves `…/previews/<slug>/working/fhir/<ver>/index.html` by path — functionally identical to Pages.
  **No per-branch dist, no subdomain, no function needed** for basic previews (relative assets resolve).
- **The `fhir-canonical` function is the *only* thing that doesn't extend** to prefixed previews (it
  assumes `/fhir` at the site root). But it's a **non-goal for previews** anyway: canonical/`|version`
  redirects key off the baked `hl7.org.au` canonical, so even at a preview root they'd resolve to *prod*.
  So skip the function for previews. (Per-preview roots via `*.preview.hl7.org.au` wildcard subdomain +
  Host→prefix function is possible but not worth it — still wouldn't be faithful.)
- **Cost: effectively $0.** CloudFront always-free tier (1 TB egress + 10M req + 2M function invocations
  /mo) dwarfs preview traffic; S3 storage for previews is cents. Using the default `dxxxx.cloudfront.net`
  URL needs **no ACM cert and no Route 53**.
- **Overhead:** one-time Terraform (preview bucket + 1 dist + Origin Access Control + bucket policy +
  an S3 lifecycle rule to expire `previews/*` after N days) ≈ 40–60 lines; add the preview bucket to the
  OIDC role's S3 policy; in `au-fhir-base/.github/workflows/build-review-publish.yml` swap the
  `peaceiris/actions-gh-pages` step for `aws s3 sync ./preview s3://<preview-bucket>/previews/<slug>/`
  and report the CloudFront URL. Arguably *cleaner* than gh-pages (no branch bloat; auto-expiry).

**Recommendation:** S3+CloudFront previews are easy and ~free **if** you want previews on your own
infra/domain, to avoid gh-pages bloat, or to unify with the migration bucket. GitHub Pages is fine too
(zero infra, works today). It is **not** a fidelity decision — the function fidelity doesn't apply to
previews either way. **Regardless of choice, fix the asset gap:** the lean build doesn't emit the
history-template root assets, so preview `history.html` 404s `assets-hist/*`, `history.js`, `history.css`,
`dist-hist/*` (they exist on prod). Seed those into the preview (curl/`aws s3 cp` from prod) so it renders.

## Part B — one-time migration to dynamic placeholders (can share the same bucket)
After enabling `dynamic-publish-box`, the FIRST milestone would rewrite every old page once (hardcoded
current-version → placeholder); thereafter milestones are 0-churn. Rather than pay that via a 15 GB
go-publish, do it as a **static batch** — the key finding:

- The rewrite is a **bounded marker swap**: in each `.html`, between `<!--ReleaseHeader--><p id="publish-box">`
  (5 start-marker variants) and `</p><!--EndReleaseHeader-->`, replace the inside with
  `<A2 fragment> + <span class="fhir-pb-page-versions" data-pb-version="<V>"></span>`. Under
  `dynamic-publish-box` the fragment is **`{{fn}}`-free and identical on every page** (the inline script
  resolves current-version + links client-side); the page-versions span is **per-version constant**.
  Markers are preserved → the transform is **idempotent**. (See `IGReleaseVersionUpdater.updateFiles`.)
- So it's a **deterministic per-version transform of HTML only** — no full render, no 15 GB tree. Only
  au-base HTML changes; assets/zips/json/ttl are untouched.

**Approach (local CLI — fine for a one-time op; no S3 Batch/Lambda needed):**
1. **Validate** the static transform == the publisher's own `-publish-update` output on a few real pages
   (byte-identical) before touching anything. Reuse the A2 harness.
2. **Stage off-prod:** server-side `aws s3 sync s3://hl7au-fhir-ig s3://<staging-bucket-or-prefix>`
   (au-base prefix only; exclude `fhir/{core,ps,ereq,rcpa,pd}/*`) — S3→S3, no 15 GB to a runner.
3. **Transform:** `aws s3 sync` **down** just au-base `*.html` (~3–4 GB, the only files with markers, not
   15 GB), run the marker-swap locally, `aws s3 sync` **up** (only changed files re-upload). Parallelise.
4. **Review** at a CloudFront URL over staging. **Migration staging is the one case CloudFront+`fhir-canonical`
   reuse is worth it** — it mirrors prod's `/fhir` root exactly, so redirects behave like prod. (This is
   why it can share the preview bucket but wants its own dist/behaviour served at a `/fhir` root, not under
   `/previews/<slug>/`.)
5. **Promote:** enable **prod bucket versioning** (rollback), then apply the same validated transform to
   **prod in place**, scoped to au-base HTML only. Verify; restore prior object versions if anything's off.

**Safety:** idempotent; scoped to au-base HTML (sibling IGs excluded by prefix); reversible (versioning);
validated vs the publisher first; staged + reviewed before prod. **Optional companion:** the retroactive
**A3** source-viewer batch (same pattern — replace baked `*.json/.xml/.ttl.html` source with shells +
drop `dynamic-source.js` per version; ~1.5 GB reclaimed) while doing a full pass.

## Deliverables
1. Decision: previews stay on Pages, or move to S3+CloudFront (+ Terraform if so).
2. The preview asset-gap fix (either path).
3. The migration: validation harness → staging → review → gated prod (versioned). A writeup of results.

## Notes
- `publish-setup.json` (server=cloud + dynamic-publish-box) currently lives on `KyleOps/publications@au-pipeline-config`
  (TEMP); the combined jar is the KyleOps/fhir-ig-publisher release `au-pipeline-combined`. Port both to
  hl7au once the upstream PRs merge.
- Don't touch sibling IGs. Never blanket `--delete` on the prod bucket.
