### Usage Notes

**Profile specific implementation guidance:**
- When sending an observation that represents a study series or panel:
  - the group / panel code is sent in `Observation.code`
  - the overall comments are sent in `Observation.note`
  - the global interpretation by the producer of the study is sent in `Observation.interpretation`
  - individual results may be sent in `Observation.component` or by referencing individual observation results in `Observation.hasMember`
- When sending a discipline specific laboratory result, one of discipline specific value sets may be more suitable for use than the entire reporting value set bound in this profile to `Observation.code`:
  - [ValueSet : RCPA - SPIA Chemical Pathology Terminology Reference Set](https://www.healthterminologies.gov.au/integration/R4/fhir/ValueSet/spia-chemical-pathology-refset-3?ui:source=search)
  - [ValueSet : RCPA - SPIA Haematology Terminology Reference Set](https://www.healthterminologies.gov.au/integration/R4/fhir/ValueSet/spia-haematology-refset-3?ui:source=search)
  - [ValueSet : RCPA - SPIA Immunopathology Terminology Reference Set](https://www.healthterminologies.gov.au/integration/R4/fhir/ValueSet/spia-immunopathology-refset-3?ui:source=search)
  - [ValueSet : RCPA - SPIA Microbiology Serology Molecular Pathology Terminology Reference Set](https://www.healthterminologies.gov.au/integration/R4/fhir/ValueSet/spia-microbiology-serology-molecular-refset-3?ui:source=search)
