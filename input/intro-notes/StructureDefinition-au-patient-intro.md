### Usage Notes

**Profile specific implementation guidance:**
- See [Gender Identity and related concepts](guidance.html#gender-identity-and-related-concepts) for detailed guidance on representing sex and gender identity.
- Need for an interpreter service can be represented with the [interpreterRequired extension](http://hl7.org/fhir/R4/extension-patient-interpreterrequired.html) set to "true" 
  - If the language for interpreter service is known, the language is included in `Patient.communication.language` and `Patient.communication.preferred` is set to "true". 
  - If `Patient.communication.preferred` has not been included, or is set to "false", systems should understand this as the language for the interpreter service is not known.
- See each Identifier profile page for guidance related to that identifier type.

**Extensions under consideration:**
* Patient: [Ethnicity](StructureDefinition-ethnicity.html)
