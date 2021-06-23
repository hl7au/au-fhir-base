**AU Base Diagnostic Report** *[[FMM Level 0](guidance.html)]*

This profile is intended to support all diagnostic reports including, pathology, diagnostic imaging and other diagnostic reports such as electrocardiograms, electroencephalograms, pulmonary function tests, colonoscopies, etc.


There are three preferred value sets when coding DiagnosticReport.code:

*	an imaging diagnostic report code is preferred to be a member of [https://healthterminologies.gov.au/fhir/ValueSet/imaging-procedure-1](https://healthterminologies.gov.au/fhir/ValueSet/imaging-procedure-1)
*	a pathology diagnostic report code is preferred to be a member of set of codes published as the [Standard for Pathology Informatics in Australia - Reporting codes](https://www.rcpa.edu.au/Library/Practising-Pathology/PTIS/APUTS-Downloads) (a value set representation is forthcoming)
*	a specialist or other diagnostic report code is preferred to be a member of [Evaluation Procedure](https://healthterminologies.gov.au/fhir/ValueSet/evaluation-procedure-1) 

#### Identifiers
These definitions, defined as profiles of [Identifier](http://hl7.org/fhir/R4/datatypes.html#Identifier), represent common data held in the Organization.identifier element:
* [Accession Number](StructureDefinition-au-accessionnumber.html)
* [Local Order Identifier](StructureDefinition-au-localorderidentifier.html) [<sup>[1]</sup>](http://ns.electronichealth.net.au/id/hpio-scoped/order/1.0/index.html){:target="_blank"}[<sup>[2]</sup>](https://confluence.hl7australia.com/display/OOADRM20181/5+Observation+Ordering#id-5ObservationOrdering-5.4.1.2ORC-2Placerordernumber(EI)00216){:target="_blank"}[<sup>[3]</sup>](https://confluence.hl7australia.com/display/OOADRM20181/5+Observation+Ordering#id-5ObservationOrdering-5.4.1.3ORC-3Fillerordernumber(EI)00217){:target="_blank"}
* [Local Report Identifier](StructureDefinition-au-localreportidentifier.html)[<sup>[1]</sup>](http://ns.electronichealth.net.au/id/hpio-scoped/report/1.0/index.html){:target="_blank"}