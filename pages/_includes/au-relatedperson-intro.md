**AU Base RelatedPerson Profile** *[[FMM Level 2](guidance.html)]*

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

#### Usage Notes
Mutiple Individual Healthcare Identifiers are supported particularly to support the recording of IHI values where the status and/or record status varies (e.g. deceased, provisional).

Medicare Number is defined as a 10 or 11 digit number. Whilst 10 digits is not sufficient to uniquely identify an individual it is a supported entry where systems do not support 11 digit content. If required profiles can constrain this slice further to restrict usage to 11 digits only as desired.
Medicare Numbers are not used for uniquely identifying patients,  they are identifying information that can be used in conjunction with other elements such as name and date of birth appropriately to confirm identity.


**Examples**

[Benedicte du Marche as a next of kin](RelatedPerson-example0.html)

[Mary Smith as a carer](RelatedPerson-example1.html)

[Sarah Simmons as the mother of Suzanne Simmons](RelatedPerson-example2.html)

[Bill Simmons as a father of Suzanne Simmons](RelatedPerson-example3.html)
