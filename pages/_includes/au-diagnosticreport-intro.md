**AU Base Diagnostic Report** *[[FMM Level 0](guidance.html)]*

This profile is intended to support all diagnostic reports including, pathology, diagnostic imaging and other diagnostic reports such as electrocardiograms, electroencephalograms, pulmonary function tests, colonoscopies, etc.


There are three preferred value sets when coding DiagnosticReport.code:

*	an imaging diagnostic report code is preferred to be a member of https://healthterminologies.gov.au/fhir/ValueSet/imaging-procedure-1
*	a pathology diagnostic report code is preferred to be a member of set of codes published as the [Standard for Pathology Informatics in Australia - Reporting codes](https://www.rcpa.edu.au/Library/Practising-Pathology/PTIS/APUTS-Downloads) (a value set representation is forthcoming)
*	a specialist or other diagnostic diagnostic report code is preferred to be a member of SNOMED CT-AU (a reference set and value set representation will be published this year)

#### Identifiers
These definitions represent common data held in the DiagnosticReport.identifier element:
* Filler identifier [<sup>[1]</sup>](https://confluence.hl7australia.com/display/OOADRM20181/5+Observation+Ordering#id-5ObservationOrdering-5.4.1.3ORC-3Fillerordernumber(EI)00217) [<sup>[2]</sup>](http://ns.electronichealth.net.au/id/hpio-scoped/accessionnumber/1.0/index.html) [<sup>[3]</sup>](http://ns.electronichealth.net.au/id/hpio-scoped/report/1.0/index.html)
