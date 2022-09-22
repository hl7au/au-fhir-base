


### Identifiers
These definitions, defined as profiles of [Identifier](http://hl7.org/fhir/R4/datatypes.html#Identifier), represent common data held in the Patient.identifier element:
* [Individual Healthcare Identifier (IHI)](StructureDefinition-au-ihi.html) [<sup>[1]</sup>](http://ns.electronichealth.net.au/id/hi/ihi/1.0/index.html){:target="_blank"} [<sup>[2]</sup>](http://meteor.aihw.gov.au/content/index.phtml/itemId/699117){:target="_blank"}
* [Medicare Card Number](StructureDefinition-au-medicarecardnumber.html) [<sup>[1]</sup>](http://ns.electronichealth.net.au/id/medicare-number/index.html){:target="_blank"} [<sup>[2]</sup>](http://meteor.aihw.gov.au/content/index.phtml/itemId/270101){:target="_blank"}
* [Department of Veterans' Affairs (DVA) Number](StructureDefinition-au-dvanumber.html) [<sup>[1]</sup>](http://ns.electronichealth.net.au/id/dva/index.html){:target="_blank"} [<sup>[2]</sup>](http://meteor.aihw.gov.au/content/index.phtml/itemId/339127){:target="_blank"}
* Centrelink Customer Reference Number (CRN) [<sup>[1]</sup>](http://ns.electronichealth.net.au/id/centrelink-customer-reference-number/index.html){:target="_blank"} [<sup>[2]</sup>](http://meteor.aihw.gov.au/content/index.phtml/itemId/690579){:target="_blank"} - [Health Care Card Number](StructureDefinition-au-healthcarecardnumber.html), [Pensioner Concession Card Number](StructureDefinition-au-pensionerconcessioncardnumber.html), [Commonwealth Seniors Health Card Number](StructureDefinition-au-cwlthseniorshealthcardnumber.html)
* [Medical Record Number](StructureDefinition-au-medicalrecordnumber.html) - ABN scoped[<sup>[1]</sup>](http://ns.electronichealth.net.au/id/abn-scoped/medicalrecord/1.0/index.html){:target="_blank"}, HPI-O scoped[<sup>[2]</sup>](http://ns.electronichealth.net.au/id/hpio-scoped/medicalrecord/1.0/index.html){:target="_blank"}
* [Insurance Member Number](StructureDefinition-au-insurancemembernumber.html)


Extensions under consideration:
* Patient: [Ethnicity](StructureDefinition-ethnicity.html)

### Usage Notes
Multiple Individual Healthcare Identifiers are supported particularly to support the recording of IHI values where the status and/or record status varies (e.g. deceased, provisional).

Medicare Number is defined as a 10 or 11 digit number. Whilst 10 digits is not sufficient to uniquely identify an individual it is a supported entry where systems do not support 11 digit content. If required profiles can constrain this slice further to restrict usage to 11 digits only as desired.
Medicare Numbers are not used for uniquely identifying patients, they are identifying information that can be used in conjunction with other elements such as name and date of birth appropriately to confirm identity.

To indicate an interpreter service is required, extension interpreter required=true should be set. If the language for interpreter service is known then it should be included in communication.language with communication.preferred=true. If communication.preferred=true is not set when interpreter required=true then it may be understood that an interpreter is required but the language for the interpreter service is not known.

Gender is supported as administrative gender for identifying patient records and other administrative requirements. The core extension [Gender Identity](http://hl7.org/fhir/R4/extension-patient-genderidentity.html) is not yet supported in AU Base Patient as the terminology is considered inappropriate for use in Australia. 
