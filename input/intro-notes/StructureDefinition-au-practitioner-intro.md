### Usage Notes

**Profile specific implementation guidance:**

- See [Ahpra Data Guidance](guidance.html#ahpra-data-guidance) for detailed guidance on representing Ahpra-sourced data.
- A tertiary qualification or professional membership (non-Ahpra-sourced data) is represented by `Practitioner.qualification`
  - If none of the codes from the preferred value set are suitable then at least text should be sent in `Practitioner.qualification.code`
- See each Identifier profile page for guidance related to that identifier type.
- This profile supports the practitioner's gender identity aligned to [Australian Bureau of Statics Standard for Sex, Gender, Variations of Sex Characteristics and Sexual Orientation Variables, 2020](https://www.abs.gov.au/statistics/standards/standard-sex-gender-variations-sex-characteristics-and-sexual-orientation-variables/latest-release#gender) using the [Individual Gender Identity extension](http://hl7.org/fhir/StructureDefinition/individual-genderIdentity) and [Gender Identity Response](https://healthterminologies.gov.au/fhir/ValueSet/gender-identity-response-1) value set.
  - _Man or male_ may be represented by sending the SNOMED CT code 446151000124109\|Identifies as male gender\|
  - _Woman or female_ may be represented by sending the SNOMED CT code 446141000124107\|Identifies as female gender\|
  - _Non-binary_ may be represented by sending the SNOMED CT code 33791000087105\|Identifies as nonbinary gender\|
  - _[I/They] use a different term (please specify)_ may be represented by sending only text and no code
  - _Prefer not to answer_ may be represented by sending the code "asked-declined"
  - _Not stated or inadequately described_ may be represented by the code "unknown"
  - Where the workflow does not support obtaining a gender identity value, it may be represented by sending the code "not-asked"
- This profile supports indvidual pronouns using the [Individual Pronouns extension](http://hl7.org/fhir/StructureDefinition/individual-pronouns) and the [Australian Pronouns](https://www.healthterminologies.gov.au/integration/R4/fhir/ValueSet/australian-pronouns-1) value set supplied as the individual pronoun value.
  - *they/them/their/theirs/themselves* may be represented by sending the LOINC Answer (LA) code LA29520-6
  - *she/her/her/hers/herself* may be represented by sending the LOINC Answer (LA) code LA29519-8
  - *he/him/his/his/himself* may be represented by sending the LOINC Answer (LA) code LA29518-0
  - *Prefer not to answer* may be represented by sending the Data Absent Reason code "asked-declined"
  - *Asked but not known* may be represented by sending the Data Absent Reason code "asked-unknown"
  - *Not stated or inadequately described* may be represented by the Data Absent Reason code "unknown"
  - Where the workflow does not support obtaining a pronoun, it may be represented by sending the Data Absent Reason code "not-asked"
  - Where a preferred pronoun is provided but is not one of the [Australian Pronouns](https://www.healthterminologies.gov.au/integration/R4/fhir/ValueSet/australian-pronouns-1) terms then a text only or alternative  specific coded value can be supplied.
- This profile supports a recorded sex or gender (RSG) value using the using the [Person Recorded Sex Or Gender](http://hl7.org/fhir/StructureDefinition/individual-recordedSexOrGender) extension. RSG information includes the various sex and gender concepts that are often used in existing systems but are known NOT to represent a gender identity, sex parameter for clinical use, or attributes related to sexuality, such as sexual orientation, sexual activity, or sexual attraction.
  <table border="1">
    <thead>
    <tr>
    <th>RSG information to represent</th>
    <th>extension:value</th>
    <th>extension:type</th>
    <th>extension:sourceDocument</th>
    <th>extension:sourceField</th>
    <th>extension:jurisdiction</th>
    </tr>
    </thead>
    <tbody>
    <tr>
    <td>Sex and gender information from a document, e.g. Australian passport or driver's license.</td>
    <td>The sex or gender value.</td>
    <td>"document"</td>
    <td>SHALL use an appropriate value from <a href="ValueSet-rsg-source-document-type.html">Common AU Recorded Sex or Gender (RSG) Source Document Type</a> value set if any of the codes within the value set can apply to the concept being communicated, e.g. "passport".</td>
    <td>The name of the field within the source document where this information is recorded, e.g. "Sex".</td>
    <td>SHALL use an appropriate value from <a href="ValueSet-rsg-source-document-jurisdiction.html">Common AU Recorded Sex or Gender (RSG) Source Document Jurisdiction</a> value set if any of the codes within the value set can apply to the concept being communicated. If representing an Australian document use "AU" or the applicable state or territory code.</td>
    </tr>
    <tr>
    <td>Sex and gender information in use in services and infrastructure, e.g. HI Services or My Health Record.</td>
    <td>The sex or gender value.</td>
    <td>SHALL use an appropriate value from <a href="ValueSet-rsg-type.html">Common AU Recorded Sex or Gender Type</a> value set if any of the codes within the value set can apply to the concept being communicated, e.g. "au-hi-service".</td>
    <td></td>
    <td></td>
    <td></td>
    </tr>
    </tbody>
  </table>
- When exchanging concepts of sex or gender, refer to the guidance in the [Gender Harmony Implementation Guide](http://hl7.org/xprod/ig/uv/gender-harmony/).

