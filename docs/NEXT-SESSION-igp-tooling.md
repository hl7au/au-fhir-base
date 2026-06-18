# New-session prompt: meta-analyse the IG-Publisher sessions → build reusable tooling

Copy the block below into a fresh session. It is a **synthesis + tooling** task, deliberately separate
from the feature/pipeline work (keep those sessions for finishing/verifying their own threads).

---

I've run **5 Claude sessions** on the AU FHIR IG Publisher (features, measurements, infra). I want to
**meta-analyse all five**, extract the recurring work + gotchas, and decide whether to capture them as a
**Claude skill**, a **CLI**, an **MCP**, or some combination — then build the chosen thing. Don't start
building until you've read the sessions and confirmed the form with me.

## Read these first (full context — don't re-derive)

**Session transcripts** (newest last; the newest is the pipeline-wiring session):
- `~/.claude/projects/-Users-pet260-Documents-repos-au-fhir-base/*.jsonl` (5 files)
  Skim each: what was the goal, what commands/harnesses recurred, where did time go, what was painful.

**Distilled docs** (`au-fhir-base/docs/`):
- `build-pipeline.md` — working vs milestone, lean sync, the workflow map, all-GitHub-hosted redesign.
- `publisher-size-speed-analysis.md` — the solution space + levers (A2/A3/B/C).
- `publisher-A2-prototype-results.md` — A2 dynamic publish-box + page-versions + A3 source viewers:
  how they were built **and measured** (3-way churn design, md5 vs `countUpdated`, `-publish-update`
  as a cheap milestone proxy, the `/tmp/measure*.sh` harnesses).
- `publisher-C-double-render-findings.md` + `publisher-C-reuse-build-tradeoffs.md` — lever C
  (`-reuse-build`), the trust-boundary marker, A/B wall-clock + byte-diff method.
- `au-site-publishing-and-infra.md` — CloudFront/S3/Terraform + canonical-redirect work.
- `NEXT-SESSION-publisher-improvements.md` — the prior kickoff (shows the prototype/measure workflow).

**Memory notes** (`~/.claude/projects/-Users-pet260-Documents-repos-au-fhir-base/memory/`):
`au-publish-pipeline`, `au-publisher-a2-dynamic-publish-box`, `au-publisher-c-reuse-build`,
`au-canonical-redirect-fix`.

**Code / artefacts produced**:
- Publisher checkout `~/Documents/repos/fhir-ig-publisher` (remotes: `origin`=HL7, `fork`=KyleOps).
  Branches: `fix/cloud-static-html-redirects` (#1327), `feat/dynamic-publish-box` (A2 + page-versions
  + skip-past-version-tree), `feat/dynamic-source-viewers` (A3), `feat/reuse-build` (#1328, lever C),
  `feat/au-pipeline-combined` (all five). Draft PR texts: `DYNAMIC-PUBLISH-BOX-PR.md`,
  `DYNAMIC-SOURCE-VIEWERS-PR.md`. Combined jar published as KyleOps release `au-pipeline-combined`.
- `au-fhir-base/scripts/local-publish.sh` — validated in-container build → lean-web → go-publish → zip.
- The CI workflows in `au-fhir-base/.github/workflows/` (the realised pipeline).

## What's already done (so you don't rebuild it)
Five opt-in, off-by-default publisher changes (#1327 cloud redirects, A2 dynamic publish-box +
page-versions, skip-past-version-tree, A3 source viewers, C `-reuse-build`) are built + combined into
one jar; the AU pipeline is all-GitHub-hosted and lean. The *work product* is done — this task is about
the *process*: making the next IG-publisher experiment cheap to set up and measure.

## Meta-analysis questions to answer
1. **What recurred across the 5 sessions?** Catalogue the repeated activities: build the modified jar in
   the container; run a working/milestone publish locally; build a lean `-web`; measure churn/size/time;
   diff two builds; look up/validate FHIR codes; stand up a measurement mirror.
2. **What was painful or error-prone each time?** (Re-derived gotchas, slow loops, dead ends.) These are
   the highest-value things to encode so they're never rediscovered.
3. **What's the canonical "prototype + measure an IG-publisher change" loop?** Write it as a recipe.
4. **What knowledge is procedural (→ skill) vs. mechanical (→ CLI) vs. an external service (→ MCP)?**

## Recurring gotchas already known (seed the catalogue; verify against the transcripts)
- Builds MUST run in the `hl7fhir/ig-publisher-base` container — the **macOS host build is broken**
  (hundreds of errors / broken links) and makes go-publish fail. Container has Java 21 + node, **no python3**.
- Build the modified jar with JDK17: `mvn -pl org.hl7.fhir.publisher.cli -am clean package -DskipTests`
  (the `clean` matters); the shaded jar is `org.hl7.fhir.publisher.cli/target/*.jar`.
- `-tx https://tx.fhir.org` (or txdev); mount `~/.fhir` for the warm package cache; cold-tx + `-resetTx`
  dominates wall-clock — measure **render count**, not raw seconds (cache variance swamps deltas).
- Measure churn two ways (md5 manifest + the publisher's `countUpdated`); use a 3-way design
  (baseline / one-time-migration / steady-state) so the one-time migration isn't mistaken for "no win".
- `-publish-update` (host-safe, no render) faithfully reproduces the milestone publish-box rewrite cost
  cheaply — the right tool to measure that loop without a 25-min go-publish.
- New IG params must be registered in `hl7.fhir.uv.tools` (else cosmetic "code not in value set" QA).
- Upstreaming pattern: opt-in flag, **off by default**, additive markers — what gets PRs accepted.

## Candidate tooling + my current leaning (confirm or overturn from the data)
- **Skill (most likely):** capture the prototype/measure loop + all gotchas + the upstreaming pattern,
  bundling `local-publish.sh` and the measurement harnesses. Procedural knowledge is its sweet spot.
- **CLI (complementary):** promote `local-publish.sh` into `igp build-jar | working | milestone | measure`
  if you run these outside Claude too. The "muscle" the skill points at.
- **MCP (probably skip):** no new external service to wrap; FHIR/code validation is already covered by the
  existing `fhir-tools` + `terminology` MCPs. Only build one if the analysis surfaces a real API need.

## Deliverables
1. A short **meta-analysis writeup** (`docs/igp-sessions-retrospective.md`): the recurring loop, the
   gotcha catalogue, where time went, and the skill/CLI/MCP recommendation with rationale.
2. The **chosen tool** (after I confirm): e.g. a skill under `.claude/skills/` (+ folded-in scripts), and/or
   a CLI. Keep it runnable in-container and reproducible.
3. If a skill: make it trigger on "prototype/measure an IG-publisher change" and reference the docs above.

## Notes
- This is process tooling — no S3 writes, no publishing. AWS creds not needed.
- Don't resume the old sessions (they'll be summarised); start from the transcripts + committed docs.
- The combined jar + temporary fork-config are documented in `build-pipeline.md` ("revert-when-merged").
