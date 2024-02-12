<p class="stu-note">We have introduced support for the Person Recorded Sex Or Gender extension. It is published in this guide to pre-adopt the material published in the R5 <a href="http://hl7.org/fhir/extensions/1.0.0">FHIR Extensions Pack</a>. This extension is an R4 (4.0.1) conversion of the canonical extension and may contain forwards incompatible data types when converted to R4 (see the extension page in this guide for information on any  material differences). Implementers are advised to take note that this content may be removed or changed and to take caution if using this extension.</p>

### Usage Notes

**Profile specific implementation guidance:**
- This profile supports patient gender identity aligned to [Australian Bureau of Statics Standard for Sex, Gender, Variations of Sex Characteristics and Sexual Orientation Variables, 2020](https://www.abs.gov.au/statistics/standards/standard-sex-gender-variations-sex-characteristics-and-sexual-orientation-variables/latest-release#gender) using the [Individual Gender Identity extension](http://hl7.org/fhir/StructureDefinition/individual-genderIdentity) and [Gender Identity Response](https://healthterminologies.gov.au/fhir/ValueSet/gender-identity-response-1) value set.
  - *Man or male* may be represented by sending the SNOMED CT code 446151000124109\|Identifies as male gender\|
  - *Woman or female* may be represented by sending the SNOMED CT code 446141000124107\|Identifies as female gender\|
  - *Non-binary* may be represented by sending the SNOMED CT code 33791000087105\|Identifies as nonbinary gender\|, see example [Patient/example4](Patient-example4.html)
  - *[I/They] use a different term (please specify)*  may be represented by sending only text and no code, see example [Patient/example7](Patient-example7.html)
  - *Prefer not to answer* may be represented by sending the code "asked-declined", see example [Patient/example0](Patient-example0.html)
  - *Not stated or inadequately described* may be represented by the code "unknown"
  - Where the workflow does not support obtaining a gender identity value, it may be represented by sending the code "not-asked"
- When exchanging concepts of sex or gender, refer to the guidance in the [Gender Harmony Implementation Guide](http://hl7.org/xprod/ig/uv/gender-harmony/).
- Need for an interpreter service can be represented with the [interpreterRequired extension](http://hl7.org/fhir/R4/extension-patient-interpreterrequired.html) set to "true" 
  - If the language for interpreter service is known, the language is included in `Patient.communication.language` and `Patient.communication.preferred` is set to "true". 
  - If `Patient.communication.preferred` has not been included, or is set to "false", systems should understand this as the language for the interpreter service is not known.
- See each Identifier profile page for guidance related to that identifier type.

**Extensions under consideration:**
* Patient: [Ethnicity](StructureDefinition-ethnicity.html)
