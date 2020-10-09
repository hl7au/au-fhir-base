**AU Local Report Order Identifier**  *[[FMM Level 0](guidance.html)]*

This identifier profile defines a local report order identifier in an Australian context. A local report identifier is a unique identifier for each report and must uniquely identify the report from all other reports in a particular system (e.g. diagnostic imaging system, clinical laboratory system, document management system, referral systems).

In some laboratory systems, the report identifier may be a concatenation of a lab number and report panel code (e.g. 19P123456-FBC), where the panel code makes the identifier unique from other reports under the same lab number. 

#### Usage Notes
In many systems the report identifier is fulfilled by the concept filler order number in the HL7 V2 specification if there is only a single filler order number per report. When sending a filler order number the xxx is preferred.

In diagnostic imaging and some laboratory systems the report identifier is fulfilled by the concept accession number if there is only a single accession number per report. When sending an accession number the xxx is preferred.

