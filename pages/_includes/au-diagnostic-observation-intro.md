**AU Diagnostic Observation**  *[[FMM Level 0](guidance.html)]*

This profile defines an observation structure that includes core localisation concepts for use as a diagnostic observation in an Australian context.

There are three preferred value sets when coding Observation.code:

* an imaging observation code is preferred to be a member of [https://healthterminologies.gov.au/fhir/ValueSet/imaging-procedure-1](https://healthterminologies.gov.au/fhir/ValueSet/imaging-procedure-1)
* a pathology observation code is preferred to be a member of set of codes published as the [Standard for Pathology Informatics in Australia - Reporting codes](https://www.rcpa.edu.au/Library/Practising-Pathology/PTIS/APUTS-Downloads). The option exists for individual department codes for [chemical pathology](https://www.healthterminologies.gov.au/integration/R4/fhir/ValueSet/spia-chemical-pathology-refset-3), [haematology](https://www.healthterminologies.gov.au/integration/R4/fhir/ValueSet/spia-haematology-refset-3), [immunopathology](https://www.healthterminologies.gov.au/integration/R4/fhir/ValueSet/spia-immunopathology-refset-3) and [microbiology serology molecular pathology](https://www.healthterminologies.gov.au/integration/R4/fhir/ValueSet/spia-microbiology-serology-molecular-refset-3) or a combined [pathology reporting](https://www.healthterminologies.gov.au/integration/v2/fhir/ValueSet?ui:filter=spia-pathology-reporting-terminology-1) value set comprising of all four department value sets.
* a specialist or other diagnostic observation code is preferred to be a member of [Evaluation Procedure](https://healthterminologies.gov.au/fhir/ValueSet/evaluation-procedure-1)

The bodySite extension may be used when a coded concept does not provide the necessary detail needed for the use case.

#### Extensions
Extensions used in this profile:
* Observation: bodySite (core extension) [<sup>[1]</sup>](https://www.hl7.org/fhir/r4/extension-bodysite.html)

**Examples**

[Measurement of Hepatitis B surface antibody](Observation-observation-specimen-hepatitus-b-serology.html)
