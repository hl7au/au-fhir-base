### Usage Notes

**Profile specific implementation guidance:**
- Results that are free text or report form are represented in `DiagnosticReport.presentedForm`.
- Results that are structured in FHIR resources are referenced in `DiagnosticResult.result`. Each referenced Observation resource represents an individual pathology test and result value or component result values, or a study / panel which references other Observations in `Observation.hasMember`.
- When constructing a report for a study / panel:
  - the individual component examinations are referenced by that grouping Observation in `Observation.hasMember` and not directly referenced in `DiagnosticReport.result`
  - `DiagnosticReport.code` and the study / panel Observation `Observation.code` should be the same concept where it is a one-to-one relationship
- See each Identifier profile page for guidance related to that identifier type.
- `effective[x]` is the earliest specimen collection date time.
- The pathology laboratory is sent as a reference to an Organization in `DiagnosticReport.performer`.
- Each pathologist is sent as a reference to a PractitionerRole resource in `DiagnosticReport.performer`.
- When sending a discipline specific laboratory result, one of discipline specific value sets may be more suitable for use than the entire reporting value set bound in this profile to `DiagnosticReport.code`:
  - [ValueSet : RCPA - SPIA Chemical Pathology Terminology Reference Set](https://www.healthterminologies.gov.au/integration/R4/fhir/ValueSet/spia-chemical-pathology-refset-3?ui:source=search)
  - [ValueSet : RCPA - SPIA Haematology Terminology Reference Set](https://www.healthterminologies.gov.au/integration/R4/fhir/ValueSet/spia-haematology-refset-3?ui:source=search)
  - [ValueSet : RCPA - SPIA Immunopathology Terminology Reference Set](https://www.healthterminologies.gov.au/integration/R4/fhir/ValueSet/spia-immunopathology-refset-3?ui:source=search)
  - [ValueSet : RCPA - SPIA Microbiology Serology Molecular Pathology Terminology Reference Set](https://www.healthterminologies.gov.au/integration/R4/fhir/ValueSet/spia-microbiology-serology-molecular-refset-3?ui:source=search)
