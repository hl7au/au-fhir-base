# New-session prompt: roll the au-base pipeline out to au-fhir-ps

Copy the block below into a fresh session **started in the `au-fhir-ps` repo** (hl7.fhir.au.ps).

---

I want to give **au-fhir-ps** the same build/publish pipeline au-fhir-base now has: render once →
working+milestone GitHub Pages previews → gated **milestone-only** prod publish, using the combined
custom IG Publisher jar. Read these first (the au-base work — full context):
- `au-fhir-base/.github/workflows/build-review-publish.yml` (the workflow to replicate)
- `au-fhir-base/docs/build-pipeline.md` (esp. "Per-repo independent publish" — the sibling-IG sharing model)
- memory `au-publish-pipeline`, `au-publisher-a2-dynamic-publish-box`

## What au-ps is
A **sibling IG co-hosted in the same bucket**: `hl7.fhir.au.ps`, canonical `http://hl7.org.au/fhir/ps`,
destination `/fhir/ps` (per the publish-setup.json `layout-rules`). au-base owns the `/fhir` root; au-ps
owns the `/fhir/ps` subtree. au-ps **depends on au-base**.

## Is it "just copying the workflow"? — Mostly, but mind these
**Reused as-is (no change):**
- The combined jar (KyleOps/fhir-ig-publisher release `au-pipeline-combined`).
- `publish-setup.json` from publications — it's **shared** and already has `server=cloud`,
  `dynamic-publish-box`, and the `layout-rules` mapping `hl7.fhir.au.ps → /fhir/ps`. So au-ps inherits
  dynamic-publish-box (its milestones are lean too) and cloud redirects automatically.
- The overall structure: render `-ig . -publish <path>` once → go-publish `-reuse-build` twice
  (working + milestone) → previews → gated publish. The cache step, jar download, checkouts.

**Must change (au-ps-specific):**
1. **`publication-request.json`** — au-ps's own `version`/`path` = `http://hl7.org.au/fhir/ps/<ver>`.
2. **Lean `-web` seeding** — au-ps seeds **its own** `…/fhir/ps/package-list.json` (NOT `/fhir/package-list.json`,
   which is au-base's) **plus the SHARED root files** (`/fhir/package-feed.xml`, `/fhir/publication-feed.xml`,
   `/package-registry.json`) so go-publish read-modify-writes them and au-base's entries survive.
3. **`input/ig.xml`** — add the A3 parameter `dynamic-source-viewers=true` if you want A3 for au-ps
   (and register the code in hl7.fhir.uv.tools, same caveat as au-base).
4. **★ The S3 publish sync — the real difference (don't just copy au-base's).** au-base syncs
   `out/<mode>/fhir → s3://hl7au-fhir-ig/fhir` because au-base **owns the `/fhir` root** (history.html,
   package-list.json, index.html). au-ps does **NOT** own that root — blindly syncing `out/fhir` could
   **clobber au-base's root files**. au-ps must publish:
   - its own subtree: `out/<mode>/fhir/ps → s3://hl7au-fhir-ig/fhir/ps` (additive, no `--delete`), **and**
   - only the **shared, read-modify-written** root files it legitimately updated (`package-feed.xml`,
     `publication-feed.xml`, `package-registry.json`, and possibly the realm index) — uploaded individually,
     NOT a blanket `out/fhir` sync.
   **First task in the session: run a build and inspect exactly what au-ps's go-publish writes to the
   `/fhir` root vs `/fhir/ps`, then scope the sync so it never overwrites an au-base-owned root file.**
   (See build-pipeline.md "Per-IG, never shared" vs "Shared root files".)
5. **Preview paths / Pages** — enable GitHub Pages on au-fhir-ps (source = gh-pages branch). The preview
   structure mirrors au-base (`previews/<slug>/{working,milestone}/fhir/ps/<ver>/…`); fix the same
   history-asset seeding gap.

**Verify:** the dynamic publish box on au-ps resolves **`/fhir/ps/package-list.json`** (its own canonical),
not au-base's — the script uses `data-pb-canonical` = the IG's canonical, so it should be per-IG correct;
confirm in a preview. Skip-loop applies (dynamic-publish-box is shared) so au-ps milestones need no tree.

## Ordering / cross-IG
au-ps depends on au-base — when both change, **publish au-base before au-ps**. Independent publishes
otherwise coexist via the shared registry/feeds read-modify-write (build-pipeline.md). Seed `-web` from
the **live** shared files (already the pattern).

## Scaling note (worth raising, not blocking)
You'll soon have au-base, au-ps, (au-core?) running near-identical workflows. Copy-paste across repos
**drifts** (we hit this within one repo this cycle). Consider extracting the pipeline into a **reusable
`workflow_call`** (in a shared `.github`/publications location) that each IG repo calls with its params
(`canonical`, `destination prefix`, `package-list path`). Recommendation: do au-ps as a **copy + edits
first** (fastest path to a working au-ps), then extract to a reusable workflow once you're maintaining 3+.

## Deliverables
1. `au-fhir-ps/.github/workflows/build-review-publish.yml` (copied + the 5 edits above; sync scoping correct).
2. au-ps `publication-request.json` + `input/ig.xml` (A3 param) set.
3. GitHub Pages enabled on au-fhir-ps; a green PR build showing both previews.
4. Confirm the gated milestone publish targets `/fhir/ps` and leaves au-base's `/fhir` root intact.

## Notes
- Combined jar + `publish-setup.json@au-pipeline-config` are TEMP (revert to released jar +
  hl7au/publications once the upstream PRs merge). **Get fresh AWS creds** before any S3 work.
- The OIDC role's S3 policy must allow writing under `fhir/ps` (it's the same bucket; likely already does).
