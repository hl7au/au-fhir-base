**AU Diagnostic Service Request** *[[DRAFT 0](guidance.html)]*

This profile defines a service request structure that includes core localisation concepts for use as a request for a diagnostic investigation in an Australian context. This profile is intended to support ordering for pathology, radiology, and specialist diagnostic investigations.

#### Identifiers

These definitions, defined as profiles of [Identifier](http://hl7.org/fhir/R4/datatypes.html#Identifier), represent common data held in the ServiceRequest.identifier element:
* [Local Order Identifier](StructureDefinition-au-localorderidentifier.html)[<sup>[1]</sup>](http://ns.electronichealth.net.au/id/hpio-scoped/order/1.0/index.html){:target="_blank"}[<sup>[2]</sup>](https://confluence.hl7australia.com/display/OOADRM20181/5+Observation+Ordering#id-5ObservationOrdering-5.4.1.2ORC-2Placerordernumber(EI)00216){:target="_blank"}[<sup>[3]</sup>](https://confluence.hl7australia.com/display/OOADRM20181/5+Observation+Ordering#id-5ObservationOrdering-5.4.1.3ORC-3Fillerordernumber(EI)00217){:target="_blank"}

#### Extensions

Extensions used in this profile:
* ServiceRequest: [procedure-targetBodyStructure](http://hl7.org/fhir/R4/extension-procedure-targetbodystructure.html) (core extension) 


#### Usage Notes
The procedure-targetBodyStructure extension should only be used if not implicit in the code found in ServiceRequest.code. If the use case requires bodySite to be handled as a separate resource instead of an inline coded element (e.g. to identify and track separately) then use the standard extension [procedure-targetBodyStructure](http://hl7.org/fhir/R4/extension-procedure-targetbodystructure.html). 

A pathology order is preferred to be a member of the [RCPA - SPIA Requesting Pathology Terminology Reference Set](https://www.rcpa.edu.au/fhir/ValueSet/spia-requesting-refset-3) [<sup>[1]</sup>](https://www.healthterminologies.gov.au/integration/R4/fhir/ValueSet/spia-requesting-refset-3). 

An imaging order is preferred to be a member of the [Imaging Procedure](https://healthterminologies.gov.au/fhir/ValueSet/imaging-procedure-1) value set.


#### Examples

[Hepatitis B surface antibody measurement order](ServiceRequest-hepatitis-b-antibody.html)
