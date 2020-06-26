**AU Base Diagnostic Report** *[[FMM Level 0](guidance.html)]*

This profile is intended to support all diagnostic reports including, pathology, diagnostic imaging and other diagnostic reports such as electrocardiograms, electroencephalograms, pulmonary function tests, colonoscopies, etc.

For diagnostic imaging the preferred value set for the code element is [https://healthterminologies.gov.au/fhir/ValueSet/imaging-procedure-1](https://healthterminologies.gov.au/fhir/ValueSet/imaging-procedure-1) in SNOMED CT<sup>TM</sup>.

For pathology it is expected the preferred value set for the code element will be the Standard for Pathology Informatics in Australia - Requesting. This SNOMED CT<sup>TM</sup> value set is being developed.

Additional value sets for other non-pathology and non-diagnostic imaging diagnostic content e.g. cardiology, sleep studies, etc will be included as guidance for the code element when the content becomes available. These value sets will likely be in SNOMED CT<sup>TM</sup>.

#### Identifiers
These definitions represent common data held in the DiagnosticReport.identifier element:
* Filler identifier [<sup>[1]</sup>](https://confluence.hl7australia.com/display/OOADRM20181/5+Observation+Ordering#id-5ObservationOrdering-5.4.1.3ORC-3Fillerordernumber(EI)00217) [<sup>[2]</sup>](http://ns.electronichealth.net.au/id/hpio-scoped/accessionnumber/1.0/index.html) [<sup>[3]</sup>](http://ns.electronichealth.net.au/id/hpio-scoped/report/1.0/index.html)
