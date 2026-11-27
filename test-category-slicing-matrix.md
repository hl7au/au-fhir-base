# Observation.category slicing — test matrix

Test-only scaffolding for FHIR-58193. **Not for publication.** Everything here is confined
to this branch (`test-obs-category-slicing-2`).

## The two designs being compared

| | discrimination mechanism |
|---|---|
| **original** (as published to 6.0.0) | two `value` discriminators on `coding.system` and `coding.code`; `fixedUri`/`fixedCode` on the child elements of the fixed slice; fixed `coding.system` plus an **extensible** binding on the variable slice |
| **replacement** (FHIR-58193) | one `value` discriminator on `$this`; `patternCodeableConcept` on the fixed slice; a **required** binding to an extensional NCTS value set, and no pattern, on the variable slice |

The replacement's variable slice relies on R4 profiling §5.1.0.11, which permits a required
binding to an extensional value set as a discrimination mechanism. The publisher renders it
as a `$this memberOf '<value set>'` discriminator. Both bound value sets are extensional and
small (18 and 13 concepts) and resolve on `tx.hl7.org.au` and `tx.ontoserver.csiro.au`, but
**not** on `tx.fhir.org/r4`.

## Four arms

The variable slice is `0..*` in both published designs, so a category that matches no slice is
silently tolerated under open slicing and the binding is never reached. Each design therefore
also gets a derived profile raising that slice to `1..1`, which forces the discrimination
mechanism to engage. Divergence within a column isolates cardinality; divergence across
columns isolates the design.

| arm | profile | instance suffix |
|---|---|---|
| replacement, as published | `au-pathologyresult` / `au-imagingresult` | *(none)* |
| replacement, slice mandatory | `…-test-mandatory` | `-mand` |
| original, as published | `…-test-original` | `-orig` |
| original, slice mandatory | `…-test-original-mandatory` | `-orig-mand` |

The two `-test-original` profiles are verbatim copies of the pre-FHIR-58193 definitions taken
from `86a2f16f`, with only `id`/`url`/`name`/`title`/`status`/`description` changed. They derive
directly from `Observation`, **not** from the published profiles, so they cannot inherit the
replacement slicing.

Every one of the 20 category shapes exists in all four arms with byte-identical category
content: 80 instances.

## Cases — pathology

`observation-catslice-path-NN-*.xml` (× 4 arms)

| # | category content | probes |
|---|---|---|
| 01 | lab | variable slice absent |
| 02 | lab ; CH | the intended two-CodeableConcept shape |
| 03 | lab + CH in one CC | can one CodeableConcept satisfy two slices? |
| 04 | lab + exam ; CH | additional code from the same code system |
| 05 | exam + lab ; CH | as 04, fixed code second — position independence |
| 06 | lab + SCT translation ; CH | translation alongside the fixed coding |
| 07 | lab ; RAD | real `v2-0074` code outside the bound value set |
| 08 | CH | mandatory fixed category absent |
| 09 | text only | no coding to discriminate on |
| 10 | code, no system ; CH | does the mechanism need both? |
| 11 | system, no code ; CH | does the mechanism need both? |

## Cases — imaging

`observation-catslice-img-NN-*.xml` (× 4 arms)

| # | category content | probes |
|---|---|---|
| 01 | imaging | variable slice absent |
| 02 | imaging ; 51185008 | the intended two-CodeableConcept shape |
| 03 | imaging + 51185008 in one CC | can one CodeableConcept satisfy two slices? |
| 04 | imaging + exam ; 51185008 | additional code from the same code system |
| 05 | exam + imaging ; 51185008 | as 04, fixed code second — position independence |
| 06 | imaging ; 39607008 | real SNOMED body structure outside the bound value set |
| 07 | 51185008 | mandatory fixed category absent |
| 08 | text only | no coding to discriminate on |
| 09 | system, no code ; 51185008 | does the mechanism need both? |

Codes: `exam` = `observation-category#exam`; `CH`/`RAD` = `v2-0074`; numerics are SNOMED CT.
`CH`, `SR` and `51185008` are value set members; `RAD` and `39607008` are real codes that are
**not** members. `display` is omitted throughout so a wrong-display error cannot be mistaken
for a slicing failure.

## What is already measured

From the 26 Nov 2026 build (publisher v3.0.6, AU terminology routing confirmed), replacement
arms only:

- Cases 04, 05 and 06 **pass**. These are the failures the original design produced, and the
  substance of the Firely report: the pattern mechanism tolerates additional codings and is
  position-independent.
- Case 01 passes as published and errors when the slice is mandatory, which is the direct
  evidence that the `memberOf` discriminator is evaluated rather than silently matching
  nothing.
- Case 03 **errors in both replacement arms**: `Element matches more than one slice`. A single
  CodeableConcept carrying both concepts is ambiguous under a `$this` discriminator. This is
  the one shape the change does not fix.
- Case 07 raises **no terminology diagnostic in any arm**. As published it passes silently; with
  the slice mandatory it reports a missing slice, never "code not in the value set".
  Discrimination by binding selects a slice, it does not validate content.

The original arms are what this round adds, to establish the counterfactual rather than
relying on recollection of earlier runs.

## Reading the results

Confirm `qa-txservers.html` lists `tx.hl7.org.au` **before** interpreting anything. Without AU
routing the bound value sets are unresolvable, every discipline/region category reports
`does not match any known slice`, and the run is void regardless of whether the profiles are
correct.
