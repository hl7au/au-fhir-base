### Usage Notes
The observation may represent the result of a simple test such as haemoglobin or it may group the set of results produced by a multi-test study or panel such as a full blood count, or urine specimen study. In the latter cases, the observation carries the code of the study / panel and the overall comments in the note element, or a global interpretation by the producer of the study in the interpretation element. The observation references the individual test results that make up the study / panel as ‘has-member’ child observations.

When sending observations that group the set of results by a multi-test study or panel:
* a study / panel observation is sent with individual component tests in Observation.hasMember
* an individual component test observation is referenced by that study / panel observation (Observation.hasMember) rather than directly at the diagnostic report level (DiagnosticReport.result)

If the pathology laboratory is a discipline specific laboratory then one of the appropriate discipline specific value sets may be more suitable for use than the entire reporting set available in the profile:
* [ValueSet : RCPA - SPIA Chemical Pathology Terminology Reference Set](https://www.healthterminologies.gov.au/integration/R4/fhir/ValueSet/spia-chemical-pathology-refset-3?ui:source=search)
* [ValueSet : RCPA - SPIA Haematology Terminology Reference Set](https://www.healthterminologies.gov.au/integration/R4/fhir/ValueSet/spia-haematology-refset-3?ui:source=search)
* [ValueSet : RCPA - SPIA Immunopathology Terminology Reference Set](https://www.healthterminologies.gov.au/integration/R4/fhir/ValueSet/spia-immunopathology-refset-3?ui:source=search)
* [ValueSet : RCPA - SPIA Microbiology Serology Molecular Pathology Terminology Reference Set](https://www.healthterminologies.gov.au/integration/R4/fhir/ValueSet/spia-microbiology-serology-molecular-refset-3?ui:source=search)
