**AU Filler Identifier**  *[[FMM Level 0](guidance.html)]*

This identifier profile defines a filler identifier in an Australian context. A filler identifier is a unique identifier for each report and must uniquely identify the report from all other reports in a particular source system (e.g. diagnostic imaging system, clinical laboratory system).

This report identifier is the same concept as the Filler Order Number in the HL7 V2 specifications[<sup>[1]</sup>](https://confluence.hl7australia.com/display/OOADRM20181/5+Observation+Ordering#id-5ObservationOrdering-5.4.1.3ORC-3Fillerordernumber(EI)00217){:target="_blank"}. In some laboratory systems, the report identifier may be a concatenation of a lab number and report panel code (e.g. 19P123456-FBC), where the panel code makes the identifier unique from other reports under the same lab number. In diagnostic imaging and some pathology systems, the report identifier may be called an accession number[<sup>[2]</sup>](http://ns.electronichealth.net.au/id/hpio-scoped/accessionnumber/1.0/index.html){:target="_blank"} as long as there is only a single accession number per report. Usually assigned by the information system of the diagnostic service provider (filler id).