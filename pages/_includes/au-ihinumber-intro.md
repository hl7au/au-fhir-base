**AU Individual Healthcare Identifier**  *[[FMM Level 0](guidance.html)]*

This identifier profile defines an Individual Healthcare Identifier (IHI)[<sup>[1]</sup>](http://meteor.aihw.gov.au/content/index.phtml/itemId/699117){:target="_blank"}[<sup>[2]</sup>](https://developer.digitalhealth.gov.au/specifications/national-infrastructure/ep-1826-2014/nehta-1163-2010){:target="_blank"} in an Australian context.

#### Extensions
Extensions used in this profile:
* Identifier: IHI Status [<sup>[1]</sup>](http://hl7.org.au/fhir/StructureDefinition/ihi-status)
* Identifier: IHI Record Status [<sup>[1]</sup>](http://hl7.org.au/fhir/StructureDefinition/ihi-record-status)

#### Usage Notes

Mutiple Individual Healthcare Identifiers are supported particularly to support the recording of IHI values where the status and/or record status varies (e.g. deceased, provisional).
Individual Healthcare Identifier is defined as a 16 digit number.

**Examples**

[Patient with IHI, Medicare card, and health care card](Patient-example0.html)

[Patient with IHI and DVA Number](Patient-example1.html)

[Benedicte du Marche as a next of kin](RelatedPerson-example0.html)

[Mary Smith as a carer](RelatedPerson-example1.html)