**AU Diagnostic Observation**  *[[FMM Level 0](guidance.html)]*

This profile defines an observation structure that includes core localisation concepts for use as a diagnostic result observation in an Australian context.

For diagnostic imaging the preferred value set for the code element is [https://healthterminologies.gov.au/fhir/ValueSet/imaging-procedure-1](https://healthterminologies.gov.au/fhir/ValueSet/imaging-procedure-1) in SNOMED CT<sup>TM</sup>.

For pathology it is expected the preferred value set for the code element will be the Standard for Pathology Informatics in Australia - Reporting. This value set is being developed. 

Additional value sets for other non-pathology and non-diagnostic imaging diagnostic content e.g. cardiology, sleep studies, etc will be included as guidance for the code element when the content becomes available. 

The bodySite extension may be used when a coded concept does not provide the necessary detail needed for the use case.

#### Extensions
Extensions used in this profile:
* Observation: bodySite (core extension) [<sup>[1]</sup>](https://www.hl7.org/fhir/r4/extension-bodysite.html)
