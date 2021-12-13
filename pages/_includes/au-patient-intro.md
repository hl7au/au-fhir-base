**AU Base Patient** *[[FMM Level 3](guidance.html)]*

This profile defines a patient structure that localises core concepts, including identifiers and terminology, for use in an Australian context.

The purpose of this profile is to provide national level agreement on core localised concepts. 

This profile does not force conformance to core localised concepts. It enables implementers and modellers to make their own rules, i.e. [profiling](http://hl7.org/fhir/profiling.html), about how to support these concepts for specific implementation needs.


#### Identifiers
These definitions, defined as profiles of [Identifier](http://hl7.org/fhir/R4/datatypes.html#Identifier), represent common data held in the Patient.identifier element:
* [Individual Healthcare Identifier (IHI)](StructureDefinition-au-ihi.html) [<sup>[1]</sup>](http://ns.electronichealth.net.au/id/hi/ihi/1.0/index.html){:target="_blank"} [<sup>[2]</sup>](http://meteor.aihw.gov.au/content/index.phtml/itemId/699117){:target="_blank"}
* [Medicare Card Number](StructureDefinition-au-medicarecardnumber.html) [<sup>[1]</sup>](http://ns.electronichealth.net.au/id/medicare-number/index.html){:target="_blank"} [<sup>[2]</sup>](http://meteor.aihw.gov.au/content/index.phtml/itemId/270101){:target="_blank"}
* [Department of Veterans' Affairs (DVA) Number](StructureDefinition-au-dvanumber.html) [<sup>[1]</sup>](http://ns.electronichealth.net.au/id/dva/index.html){:target="_blank"} [<sup>[2]</sup>](http://meteor.aihw.gov.au/content/index.phtml/itemId/339127){:target="_blank"}
* Centrelink Customer Reference Number (CRN) [<sup>[1]</sup>](http://ns.electronichealth.net.au/id/centrelink-customer-reference-number/index.html){:target="_blank"} [<sup>[2]</sup>](http://meteor.aihw.gov.au/content/index.phtml/itemId/690579){:target="_blank"} - [Health Care Card Number](StructureDefinition-au-healthcarecardnumber.html), [Pensioner Concession Card Number](StructureDefinition-au-pensionerconcessioncardnumber.html), [Commonwealth Seniors Health Card Number](StructureDefinition-au-cwlthseniorshealthcardnumber.html)
* [Medical Record Number](StructureDefinition-au-medicalrecordnumber.html) - ABN scoped[<sup>[1]</sup>](http://ns.electronichealth.net.au/id/abn-scoped/medicalrecord/1.0/index.html){:target="_blank"}, HPI-O scoped[<sup>[2]</sup>](http://ns.electronichealth.net.au/id/hpio-scoped/medicalrecord/1.0/index.html){:target="_blank"}
* [Private Health Insurance Member Number](StructureDefinition-au-insurernumber.html)

#### Extensions
Extensions used in this profile:
* Patient: [Birth Place](http://hl7.org/fhir/StructureDefinition/patient-birthPlace) (Core extension)
* Patient: [Indigenous Status](StructureDefinition-indigenous-status.html) [<sup>[1]</sup>](http://meteor.aihw.gov.au/content/index.phtml/itemId/602543){:target="_blank"}
* Patient: [Closing the Gap Registration](StructureDefinition-closing-the-gap-registration.html) [<sup>[1]</sup>](http://meteor.aihw.gov.au/content/index.phtml/itemId/603671){:target="_blank"}
* Patient: [Mother's Maiden Name](http://hl7.org/fhir/StructureDefinition/patient-mothersMaidenName) (Core extension)
* Patient: [Interpreter Required](http://hl7.org/fhir/StructureDefinition/patient-interpreterRequired) (Core extension)
* Patient: [Date of Arrival in Australia](StructureDefinition-date-of-arrival.html) [<sup>[1]</sup>](https://www.abs.gov.au/AUSSTATS/abs@.nsf/Lookup/1200.0.55.007Main+Features12014,%20Version%201.5?OpenDocument){:target="_blank"} [<sup>[2]</sup>](https://meteor.aihw.gov.au/content/index.phtml/itemId/269447){:target="_blank"}
* Patient.birthDate: [Birth Time](http://hl7.org/fhir/StructureDefinition/patient-birthTime) (Core extension)
* Patient.birthDate, Patient.deceasedDateTime: [Date Accuracy Indicator](StructureDefinition-date-accuracy-indicator.html) [<sup>[1]</sup>](https://meteor.aihw.gov.au/content/index.phtml/itemId/294418){:target="_blank"}

Extensions under consideration:
* Patient: [Ethnicity](StructureDefinition-ethnicity.html)

#### Usage Notes
Multiple Individual Healthcare Identifiers are supported particularly to support the recording of IHI values where the status and/or record status varies (e.g. deceased, provisional).

Medicare Number is defined as a 10 or 11 digit number. Whilst 10 digits is not sufficient to uniquely identify an individual it is a supported entry where systems do not support 11 digit content. If required profiles can constrain this slice further to restrict usage to 11 digits only as desired.
Medicare Numbers are not used for uniquely identifying patients, they are identifying information that can be used in conjunction with other elements such as name and date of birth appropriately to confirm identity.

To indicate an interpreter service is required, extension interpreter required=true should be set. If the language for interpreter service is known then it should be included in communication.language with communication.preferred=true. If communication.preferred=true is not set when interpreter required=true then it may be understood that an interpreter is required but the language for the interpreter service is not known.

Gender is supported as administrative gender for identifying patient records and other administrative requirements. The core extension [Gender Identity](http://hl7.org/fhir/R4/extension-patient-genderidentity.html) is not yet supported in AU Base Patient as the terminology is considered inappropriate for use in Australia. 

#### Examples

[Patient with IHI, Medicare card, and Health Care Card](Patient-example0.html)

[Patient with IHI and DVA number](Patient-example1.html)

[Patient with no birth date, and eligible for Closing the Gap registration](Patient-example2.html)

[Patient with BirthTime](Patient-example3.html)

[Patient born in 2008, with ethnicity](Patient-example4.html)

[Patient Sarah Simmons linked to related person Sarah Simmons, with mother's maiden name](Patient-example5.html)

[Patient with interpreter required in particular language](Patient-example6.html)

[Patient with interpreter required, language unknown and date of arrival](Patient-example7.html)

