### Usage Notes

In many systems the report identifier is fulfilled by the concept filler order number in the HL7 V2 specification if there is only a single filler order number per report. When sending a filler order number the [AU Local Order Identifier](StructureDefinition-au-localorderidentifier.html) is the recommended applicable profile.

In diagnostic imaging and some laboratory systems the report identifier is fulfilled by the concept accession number if there is only a single accession number per report. When sending an accession number the [AU Accession Number](StructureDefinition-au-accessionnumber.html) is the recommended applicable profile.

It is preferable that an organisation uses their own local system identifier namespace but if that is not available then an organisation can use their HPI-O to construct a legal globally unique identifier system for their local identifiers. 

See the Australian Digital Health Agency's [R4 FAQ](https://github.com/AuDigitalHealth/ci-fhir-r4/wiki/Frequently-Asked-Questions) for guidance on constructing an HPI-O scoped[<sup>[1]</sup>](http://ns.electronichealth.net.au/id/hpio-scoped/report/1.0/index.html){:target="_blank"} local report identifier.
