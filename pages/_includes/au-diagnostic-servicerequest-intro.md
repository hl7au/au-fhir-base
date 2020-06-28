**AU Diagnostic Service Request** *[[FMM Level 0](guidance.html)]*

This profile defines a service request structure that includes core localisation concepts for use as a diagnostic service request in an Australian context.

Note: The procedure-targetBodyStructure extension should only used if not implicit in the code found in ServiceRequest.code. If the use case requires BodySite to be handled as a separate resource instead of an inline coded element (e.g. to identify and track separately) then use the standard extension [procedure-targetBodyStructure](http://hl7.org/fhir/R4/extension-procedure-targetbodystructure.html). 

There are three preferred value sets when coding ServiceRequest.code:

*	an imaging service request code is preferred to be a member of https://healthterminologies.gov.au/fhir/ValueSet/imaging-procedure-1
*	a pathology service request code is preferred to be a member of set of codes published as the [Standard for Pathology Informatics in Australia - Requesting codes](https://www.rcpa.edu.au/getattachment/2489328b-10f1-41d8-a6e1-1476b77fb386/SPIA-Requesting-Pathology-Terminology-and-Codes.aspx) (a value set representation is forthcoming)
*	a specialist or other diagnostic service request code is preferred to be a member of SNOMED CT-AU (a reference set and value set representation will be published this year)

#### Identifiers
These definitions represent common data held in the ServiceRequest.identifier element:
* Placer order number [<sup>[1]</sup>](https://confluence.hl7australia.com/display/OOADRM20181/5+Observation+Ordering#id-5ObservationOrdering-5.4.1.2ORC-2Placerordernumber(EI)00216)

#### Extensions
Extensions used in this profile:
* ServiceRequest: procedure-targetBodyStructure (core extension) [<sup>[1]</sup>](http://hl7.org/fhir/R4/extension-procedure-targetbodystructure.html)
