**AU Individual Healthcare Identifier Profile**  *[[FMM Level 0](guidance.html)]*

This identifier profile defines an Individual Healthcare Identifier - IHI [<sup>[1]</sup>](http://ns.electronichealth.net.au/id/hi/ihi/1.0/index.html){:target="_blank"} [<sup>[2]</sup>](http://meteor.aihw.gov.au/content/index.phtml/itemId/432495){:target="_blank"} in an Australian context.

#### Extensions
Extensions used in this profile:
* Patient.identifier(IHI): IHI Status [<sup>[1]</sup>](http://hl7.org.au/fhir/StructureDefinition/ihi-status)
* Patient.identifier(IHI): IHI Record Status [<sup>[1]</sup>](http://hl7.org.au/fhir/StructureDefinition/ihi-record-status)

#### Usage Notes

Mutiple Individual Healthcare Identifiers are supported particularly to support the recording of IHI values where the status and/or record status varies (e.g. deceased, provisional).
Individual Healthcare Identifier is defined as a 16 digit number.

**Examples**

[Patient with IHI, Medicare Number, and Health Care Card](Patient-example0.html)


