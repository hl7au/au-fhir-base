**AU Diagnostic Observation**  *[[FMM Level 0](guidance.html)]*

This profile defines an observation structure that includes core localisation concepts for use as a diagnostic result observation in an Australian context.

There are three preferred value sets when coding Observation.code:

*	an imaging observation code is preferred to be a member of [https://healthterminologies.gov.au/fhir/ValueSet/imaging-procedure-1](https://healthterminologies.gov.au/fhir/ValueSet/imaging-procedure-1)
*	a pathology observation code is preferred to be a member of set of codes published as the [Standard for Pathology Informatics in Australia - Reporting codes](https://www.rcpa.edu.au/Library/Practising-Pathology/PTIS/APUTS-Downloads) (a value set representation is forthcoming)
*	a specialist or other diagnostic observation code is preferred to be a member of SNOMED CT-AU (a reference set and value set representation will be published this year)

The bodySite extension may be used when a coded concept does not provide the necessary detail needed for the use case.

#### Extensions
Extensions used in this profile:
* Observation: bodySite (core extension) [<sup>[1]</sup>](https://www.hl7.org/fhir/r4/extension-bodysite.html)
