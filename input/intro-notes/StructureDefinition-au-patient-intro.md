
#### Guidance:

- This profile supports patient gender identity aligned to [Australian Bureau of Statics Standard for Sex, Gender, Variations of Sex Characteristics and Sexual Orientation Variables, 2020](https://www.abs.gov.au/statistics/standards/standard-sex-gender-variations-sex-characteristics-and-sexual-orientation-variables/latest-release#gender) using the [genderIdentity extension](http://hl7.org/fhir/StructureDefinition/patient-genderIdentity) and [Gender Identity Response](https://healthterminologies.gov.au/fhir/ValueSet/gender-identity-response-1) value set.
  - *Man or male* may be represented by sending the code "446151000124109" (Identifies as male gender)
  - *Woman or female* may be represented by sending the code "446141000124107" (Identifies as female gender)
  - *Non-binary* may be represented by sending the code "33791000087105" (Identifies as nonbinary gender), see example [Patient/example4](Patient-example4.html)
  - *[I/They] use a different term (please specify)*  may be representing by sending only text and no code, see example [Patient/example7](Patient-example7.html)
  - *Prefer not to answer* may be represented by sending the code `asked-declined`, see example [Patient/example0](Patient-example0.html)
  - *Not stated or inadequately described* may be represented by the code `unknown`