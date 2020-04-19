**AU Base Patient Profile** *[[FMM Level 3](guidance.html)]*

This profile defines a patient administration details structure that includes core localisation concepts for use in an Australian context.

### Identifiers
These definitions represent common data held in the Patient.identifier element:
* Individual Healthcare Identifier - IHI [<sup>[1]</sup>](http://ns.electronichealth.net.au/id/hi/ihi/1.0/index.html){:target="_blank"} [<sup>[2]</sup>](http://meteor.aihw.gov.au/content/index.phtml/itemId/432495){:target="_blank"}
* Medicare Number [<sup>[1]</sup>](http://ns.electronichealth.net.au/id/medicare-number/index.html){:target="_blank"} [<sup>[2]</sup>](http://meteor.aihw.gov.au/content/index.phtml/itemId/270101){:target="_blank"}
* DVA (Department of Veterans' Affairs) Number [<sup>[1]</sup>](http://ns.electronichealth.net.au/id/dva/index.html){:target="_blank"} [<sup>[2]</sup>](http://meteor.aihw.gov.au/content/index.phtml/itemId/339127){:target="_blank"}
* Health Care Card Number, Pensioner Concession Card Number, Commonwealth Seniors Health Card Number [<sup>[1]</sup>](http://ns.electronichealth.net.au/id/centrelink-customer-reference-number/index.html){:target="_blank"} [<sup>[2]</sup>](http://meteor.aihw.gov.au/content/index.phtml/itemId/270098){:target="_blank"}
* Medical Record Number - ABN scoped[<sup>[1]</sup>](http://ns.electronichealth.net.au/id/abn-scoped/medicalrecord/1.0/index.html){:target="_blank"}, HPI-O scoped[<sup>[2]</sup>](http://ns.electronichealth.net.au/id/hpio-scoped/medicalrecord/1.0/index.html){:target="_blank"}
* Private Health Insurance Member Number

### Extensions
Extensions used in this profile:
* Patient: Indigenous Status [<sup>[1]</sup>](http://hl7.org.au/fhir/StructureDefinition/indigenous-status) [<sup>[2]</sup>](http://meteor.aihw.gov.au/content/index.phtml/itemId/602543){:target="_blank"}
* Patient: Closing the Gap registration [<sup>[1]</sup>](http://hl7.org.au/fhir/StructureDefinition/closing-the-gap-registration) [<sup>[2]</sup>](http://meteor.aihw.gov.au/content/index.phtml/itemId/603679){:target="_blank"}
* Patient: Birth Place (Core Extension) [<sup>[1]</sup>](http://hl7.org/fhir/StructureDefinition/birthPlace)
* Patient: Mother's Maiden Name (Core Extension) [<sup>[1]</sup>](http://hl7.org/fhir/StructureDefinition/patient-mothersMaidenName)
* Patient: interpreterRequired (Core Extension) [<sup>[1]</sup>](http://hl7.org/fhir/StructureDefinition/patient-interpreterRequired)
* Patient.birthDate: Birth Time (Core Extension) [<sup>[1]</sup>](http://hl7.org/fhir/STU3/extension-patient-birthtime.html)
* Patient.birthDate, Patient.deceasedDateTime: Date Accuracy Indicator [<sup>[1]</sup>](http://hl7.org.au/fhir/StructureDefinition/date-accuracy-indicator)
* Patient.identifier(IHI): IHI Status [<sup>[1]</sup>](http://hl7.org.au/fhir/StructureDefinition/ihi-status)
* Patient.identifier(IHI): IHI Record Status [<sup>[1]</sup>](http://hl7.org.au/fhir/StructureDefinition/ihi-record-status)

### Usage Notes
Mutiple Individual Healthcare Identifiers are supported particularly to support the recording of IHI values where the status and/or record status varies (e.g. deceased, provisional).

Medicare Number is defined as a 10 or 11 digit number. Whilst 10 digits is not sufficient to uniquely identify an individual it is a supported entry where systems do not support 11 digit content. If required profiles can constrain this slice further to restrict usage to 11 digits only as desired.
Medicare Numbers are not used for uniquely identifying patients, they are identifying information that can be used in conjunction with other elements such as name and date of birth appropriately to confirm identity.

To indicate an interpreter service is required, extension interpreter required=true should be set. If the language for interpreter service is known then it should be included in communication.language with communication.preferred=true. If communication.preferred=true is not set when interpreter required=true then it may be understood that an interpreter is required but the language for the interpreter service is not known.

**Examples**

[Patient with IHI, Medicare Number, and Health Care Card](Patient-example0.html)

[Patient with IHI and DVA Number](Patient-example1.html)

[Patient with no birth date, and eligible for Closing the Gap registration](Patient-example2.html)

[Patient with BirthTime](Patient-example3.html)

[Patient born in 2008](Patient-example4.html)

[Patient Sarah Simmons linked to related person Sarah Simmons](Patient-example5.html)

[Patient with interpreter required in particular language](Patient-example6.html)

[Patient with interpreter required and language unknown](Patient-example7.html)

