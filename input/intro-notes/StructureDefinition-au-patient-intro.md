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

**Person Recorded Sex Or Gender implementation guidance**
  This profile supports patient sex and gender information currently in use in various official documents and services using the [Person Recorded Sex Or Gender](https://hl7.org/fhir/extensions/5.1.0-snapshot1/StructureDefinition-individual-recordedSexOrGender.html) extension, as per the guidance in the following table.
  <table border="1">
    <thead>
    <tr>
    <th>Sex and gender information to represent</th>
    <th>extension.value</th>
    <th>extension:type</th>
    <th>extension:sourceDocument</th>
    <th>extension:sourceField</th>
    <th>extension:jurisdiction</th>
    </tr>
    </thead>
    <tbody>
    <tr>
    <td>Sex and gender information in use in documents, e.g. Australian passport or driver's license</td>
    <td> </td>
    <td>'document'</td>
    <td>Use an appropriate value from <a href="ValueSet-common-au-recorded-sex-or-gender-source-document-type.html">Common AU Recorded Sex or Gender (RSG) Source   Document Type</a> value set, e.g. 'passport', '53245-7 Driver license' </td>
    <td>name of the field where this information is   held in the document, e.g. 'Sex'</td>
    <td>Use an appropriate value from <a href="ValueSet-common-au-recorded-sex-or-gender-source-document-jurisdiction.html">Common AU Recorded Sex or Gender (RSG) Source   Document Jurisdiction</a> value set, e.g. 'AU' if representing sex and gender information in an Australia passport</td>
    </tr>
    <tr>
    <td>Sex and gender information in use in   services and infrastructure, e.g. HI Services or My Health Record</td>
    <td></td>
    <td>Use an appropriate value from <a href="ValueSet-common-au-recorded-sex-or-gender-type.html">Common AU Recorded Sex or Gender Type</a> value set, e.g. 'au-hi-service', 'au-my-health-record'</td>
    <td> </td>
    <td> </td>
    <td></td>
    </tr>
    </tbody>
  </table>

**Extensions under consideration:**
* Patient: [Ethnicity](StructureDefinition-ethnicity.html)
