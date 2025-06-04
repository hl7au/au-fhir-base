### Usage Notes

In many systems the report identifier is fulfilled by the concept filler order number in the HL7 V2 specification if there is only a single filler order number per report. When sending a filler order number the [AU Local Order Identifier](StructureDefinition-au-localorderidentifier.html) is the recommended applicable profile.

In diagnostic imaging and some laboratory systems the report identifier is fulfilled by the concept accession number if there is only a single accession number per report. When sending an accession number the [AU Accession Number](StructureDefinition-au-accessionnumber.html) is the recommended applicable profile.

**Profile specific implementation guidance:**
- An organisation should use their own local system identifier namespace but if that is not available then see the guidance on [Business Identifiers](generalguidance.html#business-identifiers) on using an HPI-O to construct a legal globally unique identifier system for local identifiers. 