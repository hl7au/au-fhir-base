The purpose of this profile is to provide national level agreement on core localised concepts.

This profile does not force conformance to core localised concepts. It enables implementers and modellers to make their own rules, i.e. profiling, about how to support these concepts for specific implementation needs.

Extensions under consideration:
* Patient: [Ethnicity](StructureDefinition-ethnicity.html)

### Usage Notes
Multiple Individual Healthcare Identifiers are supported particularly to support the recording of IHI values where the status and/or record status varies (e.g. deceased, provisional).

Medicare Number is defined as a 10 or 11 digit number. Whilst 10 digits is not sufficient to uniquely identify an individual it is a supported entry where systems do not support 11 digit content. If required profiles can constrain this slice further to restrict usage to 11 digits only as desired.
Medicare Numbers are not used for uniquely identifying patients, they are identifying information that can be used in conjunction with other elements such as name and date of birth appropriately to confirm identity.

To indicate an interpreter service is required, extension interpreter required=true should be set. If the language for interpreter service is known then it should be included in communication.language with communication.preferred=true. If communication.preferred=true is not set when interpreter required=true then it may be understood that an interpreter is required but the language for the interpreter service is not known.

Gender is supported as administrative gender for identifying patient records and other administrative requirements. The core extension [Gender Identity](http://hl7.org/fhir/R4/extension-patient-genderidentity.html) is not yet supported in AU Base Patient as the terminology is considered inappropriate for use in Australia. 
