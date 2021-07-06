**AU Local Report Identifier**  *[[FMM Level 0](guidance.html)]*

This identifier profile defines a local report order identifier in an Australian context. A local report identifier is an organisation's identifier for a report in that organisation's local system set of reports.

A report identifier must uniquely identify the report from all other reports in a particular system (e.g. diagnostic imaging system, clinical laboratory system, document management system, referral systems).

In some laboratory systems, the report identifier may be a concatenation of a lab number and report panel code (e.g. 19P123456-FBC), where the panel code makes the identifier unique from other reports under the same lab number. 


#### Extensions

No extensions are used in this profile.


#### Usage Notes

In many systems the report identifier is fulfilled by the concept filler order number in the HL7 V2 specification if there is only a single filler order number per report. When sending a filler order number the [AU Local Order Identifier](StructureDefinition-au-localorderidentifier.html) is the recommended applicable profile.

In diagnostic imaging and some laboratory systems the report identifier is fulfilled by the concept accession number if there is only a single accession number per report. When sending an accession number the [AU Accession Number](StructureDefinition-au-accessionnumber.html) is the recommended applicable profile.

It is preferable that an organisation uses their own local system identifier namespace but if that is not available then an organisation can use their HPI-O to construct a legal globally unique identifier system for their local identifiers. 

See the Australian Digital Health Agency's [R4 FAQ](https://github.com/AuDigitalHealth/ci-fhir-r4/wiki/Frequently-Asked-Questions) for guidance on constructing an HPI-O scoped[<sup>[1]</sup>](http://ns.electronichealth.net.au/id/hpio-scoped/report/1.0/index.html){:target="_blank"} local report identifier.


#### Examples

No examples are available for this profile.