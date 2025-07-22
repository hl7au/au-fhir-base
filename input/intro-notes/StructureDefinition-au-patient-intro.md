### Usage Notes

**Profile specific implementation guidance:**
- See each Identifier profile page for guidance related to that identifier type.
- This profile supports the sex, gender, and related concepts of: Name to Use, Gender Identity, Individual Pronouns, Recorded Sex or Gender, Sex Assigned at Birth, and Sex Parameter for Clinical Use:
   - When exchanging concepts of sex or gender, refer to the guidance in [Sex and Gender](sexgender.html) and the [Gender Harmony Implementation Guide](http://hl7.org/xprod/ig/uv/gender-harmony/).
   - The `Patient.gender` value **SHALL** be regarded as a Recorded Sex or Gender (RSG) value. If assertions regarding the nature of the `Patient.gender` value are required, a single instance of the [Person Recorded Sex or Gender](https://hl7.org/fhir/extensions/StructureDefinition-individual-recordedSexOrGender.html) extension can be included with these assertions and its `genderElementQualifier` subelement set to a value of "true".
- When constructing an address:
  - an international address can be represented using the core [Address](http://hl7.org/fhir/R4/datatypes.html#Address) data type
  - an Australian address can be represented using the [Australian Address](StructureDefinition-au-address.html) data type profile
- See [Representing communication preferences](generalguidance.html#representing-communication-preferences) for guidance on how to represent languages that may be used to communicate with the patient about their health including preferred language and if an interpreter is required.

**Extensions under consideration:**
* Patient: [Ethnicity](StructureDefinition-ethnicity.html)
