# Observation.category slicing — test matrix

Test-only scaffolding for FHIR-58193. **Not for publication.** Everything here is
confined to this branch (`test-obs-category-slicing-2`).

## What is under test

Both `au-pathologyresult` and `au-imagingresult` slice `Observation.category` with a
single `value` discriminator on `$this`:

| slice | discrimination mechanism |
|---|---|
| `lab` / `diagImg` | `patternCodeableConcept` (system + code), 1..1 |
| `specificDiscipline` / `anatomicRegionOfInterest` | **required binding** to an NCTS value set, no pattern |

The second slice relies on R4 profiling §5.1.0.11, which permits a required binding to an
extensional value set as a discrimination mechanism. The publisher renders this as a
`$this memberOf '<value set>'` discriminator. Both bound value sets are extensional and
small (18 and 13 concepts) and resolve on `tx.hl7.org.au` and `tx.ontoserver.csiro.au`,
but **not** on `tx.fhir.org/r4`. A build without AU terminology routing cannot evaluate
the discriminator and reports every such category as matching no slice — a false
negative, not a profile defect.

## Derived test profiles

The variable slice is 0..* in the real profiles, so a non-matching category is silently
tolerated and the required binding is never reached. These two derived profiles raise it
to 1..1 so the constraint has to engage:

- `au-pathologyresult-test-mandatory` — `category:specificDiscipline` 1..1
- `au-imagingresult-test-mandatory` — `category:anatomicRegionOfInterest` 1..1

Each test case exists twice, once against the real profile and once (`-mand`) against the
derived one, with byte-identical category content. Divergence between the pair is the
measurement.

## Cases — pathology

`observation-catslice-path-NN-*.xml` (+ `-mand` copy)

| # | category content | probes | expected (base) | expected (mandatory) |
|---|---|---|---|---|
| 01 | lab | discipline absent | pass | **error** — specificDiscipline 1..1 unmet |
| 02 | lab ; CH | intended shape | pass | pass |
| 03 | lab + CH in one CC | can one CodeableConcept satisfy two slices? | pass | **unknown** — key case |
| 04 | lab + exam ; CH | additional code, same code system | pass | pass |
| 05 | exam + lab ; CH | as 04, fixed code second | pass | pass |
| 06 | lab + SCT translation ; CH | translation tolerated by pattern | pass | pass |
| 07 | lab ; RAD | real v2-0074 code outside the bound value set | **error** — required binding | **error** |
| 08 | CH | mandatory lab absent | **error** — lab 1..1 unmet | **error** |
| 09 | text only | no coding to discriminate on | **error** — lab 1..1 unmet | **error** |
| 10 | code, no system ; CH | pattern needs both | **error** — lab 1..1 unmet | **error** |
| 11 | system, no code ; CH | pattern needs both | **error** — lab 1..1 unmet | **error** |

## Cases — imaging

`observation-catslice-img-NN-*.xml` (+ `-mand` copy)

| # | category content | probes | expected (base) | expected (mandatory) |
|---|---|---|---|---|
| 01 | imaging | region absent | pass | **error** — anatomicRegionOfInterest 1..1 unmet |
| 02 | imaging ; 51185008 | intended shape | pass | pass |
| 03 | imaging + 51185008 in one CC | one CC, two slices | pass | **unknown** — key case |
| 04 | imaging + exam ; 51185008 | additional code, same code system | pass | pass |
| 05 | exam + imaging ; 51185008 | as 04, fixed code second | pass | pass |
| 06 | imaging ; 39607008 | real SNOMED body structure outside the value set | **error** — required binding | **error** |
| 07 | 51185008 | mandatory imaging absent | **error** — diagImg 1..1 unmet | **error** |
| 08 | text only | no coding to discriminate on | **error** — diagImg 1..1 unmet | **error** |
| 09 | system, no code ; 51185008 | pattern needs both | **error** — diagImg 1..1 unmet | **error** |

Codes: `exam` = `observation-category#exam`; `CH`/`RAD` = `v2-0074`; numerics = SNOMED CT.
`display` is omitted throughout so that wrong-display errors cannot be mistaken for
slicing failures.

## Reading the results

The build must be on a publisher that reaches the AU terminology servers. Confirm
`qa-txservers.html` lists `tx.hl7.org.au` **before** interpreting anything: without it
every discipline/region category reports `does not match any known slice` regardless of
whether the profiles are correct.
