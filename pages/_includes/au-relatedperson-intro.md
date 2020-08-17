**AU Base Related Person** *[[FMM Level 2](guidance.html)]*

This profile defines a related person structure that localises core concepts, including identifiers and terminology, for use in an Australian context.

The purpose of this profile is to provide national level agreement on core localised concepts. 

This profile does not force conformance to core localised concepts. It enables implementers and modellers to make their own rules, i.e. [profiling](http://hl7.org/fhir/profiling.html), about how to support these concepts for specific implementation needs.


#### Identifiers
These definitions, defined as profiles of [Identifier](http://hl7.org/fhir/R4/datatypes.html#Identifier), represent common data held in the RelatedPerson.identifier element:
* [Individual Healthcare Identifier (IHI)](StructureDefinition-au-ihinumber.html) [<sup>[1]</sup>](http://ns.electronichealth.net.au/id/hi/ihi/1.0/index.html){:target="_blank"} [<sup>[2]</sup>](http://meteor.aihw.gov.au/content/index.phtml/itemId/432495){:target="_blank"}
* [Medicare Card Number](StructureDefinition-au-medicarecardnumber.html) [<sup>[1]</sup>](http://ns.electronichealth.net.au/id/medicare-number/index.html){:target="_blank"} [<sup>[2]</sup>](http://meteor.aihw.gov.au/content/index.phtml/itemId/270101){:target="_blank"}
* [Department of Veterans' Affairs (DVA) Number](StructureDefinition-au-dvanumber.html) [<sup>[1]</sup>](http://ns.electronichealth.net.au/id/dva/index.html){:target="_blank"} [<sup>[2]</sup>](http://meteor.aihw.gov.au/content/index.phtml/itemId/339127){:target="_blank"}
* [Health Care Card Number](StructureDefinition-au-healthcarecardnumber.html), [Pensioner Concession Card Number](StructureDefinition-au-pensionerconcessioncardnumber.html), [Commonwealth Seniors Health Card Number](StructureDefinition-au-cwlthseniorshealthcardnumber.html) [<sup>[1]</sup>](http://ns.electronichealth.net.au/id/centrelink-customer-reference-number/index.html){:target="_blank"} [<sup>[2]</sup>](http://meteor.aihw.gov.au/content/index.phtml/itemId/270098){:target="_blank"}
* [Medical Record Number](StructureDefinition-au-medicalrecordnumber.html) - ABN scoped[<sup>[1]</sup>](http://ns.electronichealth.net.au/id/abn-scoped/medicalrecord/1.0/index.html){:target="_blank"}, HPI-O scoped[<sup>[2]</sup>](http://ns.electronichealth.net.au/id/hpio-scoped/medicalrecord/1.0/index.html){:target="_blank"}
* [Private Health Insurance Member Number](StructureDefinition-au-insurernumber.html)

#### Extensions
No extensions are used in this profile.

#### Usage Notes
Mutiple Individual Healthcare Identifiers are supported particularly to support the recording of IHI values where the status and/or record status varies (e.g. deceased, provisional).

Medicare Number is defined as a 10 or 11 digit number. Whilst 10 digits is not sufficient to uniquely identify an individual it is a supported entry where systems do not support 11 digit content. If required profiles can constrain this slice further to restrict usage to 11 digits only as desired.
Medicare Numbers are not used for uniquely identifying patients,  they are identifying information that can be used in conjunction with other elements such as name and date of birth appropriately to confirm identity.

**Examples**

[Benedicte du Marche as a next of kin](RelatedPerson-example0.html)

[Mary Smith as a carer](RelatedPerson-example1.html)

[Sarah Simmons as the mother of Suzanne Simmons](RelatedPerson-example2.html)

[Bill Simmons as a father of Suzanne Simmons](RelatedPerson-example3.html)
