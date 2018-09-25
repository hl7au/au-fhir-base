**AU Base Patient Profile** *[FMM Level [1](http://build.fhir.org/versions.html#maturity)]*

This profile defines a patient administration details structure that includes core localisation concepts.

#### Identifiers
These definitions represent common data held in the Patient.identifier element:
* Individual Healthcare Identifier - IHI [<sup>[1]</sup>](http://ns.electronichealth.net.au/id/hi/ihi/1.0/index.html){:target="_blank"} [<sup>[2]</sup>](http://meteor.aihw.gov.au/content/index.phtml/itemId/432495){:target="_blank"}
* Medicare Number [<sup>[1]</sup>](http://ns.electronichealth.net.au/id/medicare-number/index.html){:target="_blank"} [<sup>[2]</sup>](http://meteor.aihw.gov.au/content/index.phtml/itemId/270101){:target="_blank"}
* DVA (Department of Veterans' Affairs) Number [<sup>[1]</sup>](http://ns.electronichealth.net.au/id/dva/index.html){:target="_blank"} [<sup>[2]</sup>](http://meteor.aihw.gov.au/content/index.phtml/itemId/339127){:target="_blank"}
* Health Care Card Number, Pensioner Concession Card Number, Commonwealth Seniors Health Card Number [<sup>[1]</sup>](http://ns.electronichealth.net.au/id/centrelink-customer-reference-number/index.html){:target="_blank"} [<sup>[2]</sup>](http://meteor.aihw.gov.au/content/index.phtml/itemId/270098){:target="_blank"}

#### Extensions
Extensions used in this profile:
* Patient: Indigenous Status [<sup>[1]</sup>](http://hl7.org.au/fhir/StructureDefinition/indigenous-status) [<sup>[2]</sup>](http://meteor.aihw.gov.au/content/index.phtml/itemId/602543){:target="_blank"}
* Patient: Closing the Gap registration [<sup>[1]</sup>](http://hl7.org.au/fhir/StructureDefinition/closing-the-gap-registration) [<sup>[2]</sup>](http://meteor.aihw.gov.au/content/index.phtml/itemId/603679){:target="_blank"}
* Patient: Birth Place (Core Extension) [<sup>[1]</sup>](http://hl7.org/fhir/StructureDefinition/birthPlace)
* Patient: Mother's Maiden Name (Core Extension) [<sup>[1]</sup>](http://hl7.org/fhir/StructureDefinition/patient-mothersMaidenName)
* Patient.birthDate: Birth Time (Core Extension) [<sup>[1]</sup>](http://hl7.org/fhir/STU3/extension-patient-birthtime.html)
* Patient.birthDate, Patient.deceasedDateTime: Date Accuracy Indicator [<sup>[1]</sup>](http://hl7.org.au/fhir/StructureDefinition/date-accuracy-indicator)
* Patient.identifier(IHI): IHI Status [<sup>[1]</sup>](http://hl7.org.au/fhir/StructureDefinition/ihi-status)
* Patient.identifier(IHI): IHI Record Status [<sup>[1]</sup>](http://hl7.org.au/fhir/StructureDefinition/ihi-record-status)


**Examples**

[Patient with IHI, Medicare Number, and Health Care Card](Patient-example0.html)

[Patient with IHI and DVA Number](Patient-example1.html)

[Patient with no birth date, and eligible for Closing the Gap registration](Patient-example2.html)

[Patient with BirthTime](Patient-example3.html)

[Patient born in 2008](Patient-example4.html)

[Patient Sarah Simmons linked to related person Sarah Simmons](Patient-example5.html)

