**Extension: Assigning Authority**  *[[FMM Level 2](guidance.html)]*

This extension applies to the [Identifier](http://hl7.org/fhir/datatypes.html#identifier) data type and is used to represent HL7 V2 assigning authority details for HL7 V2 identification for routing.

#### Usage Notes

This content provides the values for a sender to use where assigning authority components should be valued in fields in HL7 messages. 

Example HL7 V2 fields that will use this are:

* PRD-7 Provider Identifiers (CM)
* PV1-9 Consulting Doctor (XCN) field
* OBR-28 Result copies to (XCN)

#### Examples

[Cardiologist with Medicare provider number and vendor directory identifier, with HL7 V2 Assigning Authority](PractitionerRole-example4.html)
