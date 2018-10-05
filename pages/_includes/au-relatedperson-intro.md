**AU Base RelatedPerson Profile**  *[FMM Level [0](http://build.fhir.org/versions.html#maturity)]*

This profile defines a related person administration details structure that includes core localisation concepts for use in an Australian context.

#### Identifiers
These definitions represent common data held in the RelatedPerson.identifier element:
* Individual Healthcare Identifier - IHI [<sup>[1]</sup>](http://ns.electronichealth.net.au/id/hi/ihi/1.0/index.html){:target="_blank"} [<sup>[2]</sup>](http://meteor.aihw.gov.au/content/index.phtml/itemId/432495){:target="_blank"}
* Medicare Number [<sup>[1]</sup>](http://ns.electronichealth.net.au/id/medicare-number/index.html){:target="_blank"} [<sup>[2]</sup>](http://meteor.aihw.gov.au/content/index.phtml/itemId/270101){:target="_blank"}
* DVA (Department of Veterans' Affairs) Number [<sup>[1]</sup>](http://ns.electronichealth.net.au/id/dva/index.html){:target="_blank"} [<sup>[2]</sup>](http://meteor.aihw.gov.au/content/index.phtml/itemId/339127){:target="_blank"}
* Health Care Card Number, Pensioner Concession Card Number, Commonwealth Seniors Health Card Number [<sup>[1]</sup>](http://ns.electronichealth.net.au/id/centrelink-customer-reference-number/index.html){:target="_blank"} [<sup>[2]</sup>](http://meteor.aihw.gov.au/content/index.phtml/itemId/270098){:target="_blank"}
* Medical Record Number [<sup>[1]</sup>](http://ns.electronichealth.net.au/id/abn-scoped/medicalrecord/1.0/index.html){:target="_blank"} [<sup>[2]</sup>](http://ns.electronichealth.net.au/id/hpio-scoped/medicalrecord/1.0/index.html){:target="_blank"}
* Private Health Insurance Member Number

#### Extensions
Extensions used in this profile:
* RelatedPerson.identifier(IHI): IHI Status [<sup>[1]</sup>](http://hl7.org.au/fhir/StructureDefinition/ihi-status)
* RelatedPerson.identifier(IHI): IHI Record Status [<sup>[1]</sup>](https://healthterminologies.gov.au/fhir/ValueSet/ihi-record-status-1)

**Examples**

[Benedicte du Marche as a next of kin](RelatedPerson-example0.html)

[Mary Smith as a carer](RelatedPerson-example1.html)

[Sarah Simmons as the mother of Suzanne Simmons](RelatedPerson-example2.html)

[Bill Simmons as a father of Suzanne Simmons](RelatedPerson-example3.html)
