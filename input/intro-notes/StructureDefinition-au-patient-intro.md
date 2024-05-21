### Usage Notes

**Profile specific implementation guidance:**
- This profile supports patient gender identity aligned to [Australian Bureau of Statics Standard for Sex, Gender, Variations of Sex Characteristics and Sexual Orientation Variables, 2020](https://www.abs.gov.au/statistics/standards/standard-sex-gender-variations-sex-characteristics-and-sexual-orientation-variables/latest-release#gender) using the [Individual Gender Identity extension](http://hl7.org/fhir/StructureDefinition/individual-genderIdentity) and the recommended [Gender Identity Response](https://healthterminologies.gov.au/fhir/ValueSet/gender-identity-response-1) value set.
  - *Man or male* may be represented by sending the SNOMED CT code 446151000124109\|Identifies as male gender\|
  - *Woman or female* may be represented by sending the SNOMED CT code 446141000124107\|Identifies as female gender\|
  - *Non-binary* may be represented by sending the SNOMED CT code 33791000087105\|Identifies as nonbinary gender\|, see example [Patient/example4](Patient-example4.html)
  - *[I/They] use a different term (please specify)*  may be represented by sending only text and no code, see example [Patient/example7](Patient-example7.html)
  - *Prefer not to answer* may be represented by sending the HL7 FHIR code "asked-declined", see example [Patient/example0](Patient-example0.html)
  - *Not stated or inadequately described* may be represented by the HL7 FHIR code "unknown"
  - Where the workflow does not support obtaining a gender identity value, it may be represented by sending the HL7 FHIR code "not-asked"
- This profile supports indvidual pronouns using the [Individual Pronouns extension](http://hl7.org/fhir/StructureDefinition/individual-pronouns) and the recommended [Australian Pronouns](https://www.healthterminologies.gov.au/integration/R4/fhir/ValueSet/australian-pronouns-1) value set supplied as the individual pronoun value.
  - *they/them/their/theirs/themselves* may be represented by sending the LOINC Answer (LA) code LA29520-6
  - *she/her/her/hers/herself* may be represented by sending the LOINC Answer (LA) codeLA29519-8
  - *he/him/his/his/himself* may be represented by sending the LOINC Answer (LA) code LA29518-0
  - *Prefer not to answer* may be represented by sending the HL7 FHIR code "asked-declined"
  - *Asked but not known* may be represented by sending the HL7 FHIR code "asked-unknown"
  - *Not stated or inadequately described* may be represented by the HL7 FHIR code "unknown"
  - Where the workflow does not support obtaining a pronoun, it may be represented by sending the HL7 FHIR code "not-asked"
  - Where a preferred pronoun is provided but is not one of the recommended terms then a text only or alternative specific CodeableConcept value can be supplied.
- When exchanging concepts of sex, gender or pronouns, refer to the guidance in the [Gender Harmony Implementation Guide](http://hl7.org/xprod/ig/uv/gender-harmony/).
- Need for an interpreter service can be represented with the [interpreterRequired extension](http://hl7.org/fhir/R4/extension-patient-interpreterrequired.html) set to "true" 
  - If the language for interpreter service is known, the language is included in `Patient.communication.language` and `Patient.communication.preferred` is set to "true". 
  - If `Patient.communication.preferred` has not been included, or is set to "false", systems should understand this as the language for the interpreter service is not known.
- See each Identifier profile page for guidance related to that identifier type.

**Extensions under consideration:**
* Patient: [Ethnicity](StructureDefinition-ethnicity.html)
