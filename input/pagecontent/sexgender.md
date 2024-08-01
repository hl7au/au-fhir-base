### Name to Use (NtU)​

AU Base supports representation and exchange of the Name to Use data element (as defined in the [HL7 Cross Paradigm Implementation Guide: Gender Harmony - Sex and Gender Representation, Edition 1](https://hl7.org/xprod/ig/uv/gender-harmony/informative1/)) in:
- [AU Base Patient](StructureDefinition-au-patient.html): [Patient - Transgender Person Example](Patient-example-sex-and-gender.html)
- [AU Base Practitioner](StructureDefinition-au-practitioner.html): [Practitioner - for use in sex and gender](Practitioner-example-sex-and-gender.html)
- [AU Base Related Person](StructureDefinition-au-relatedperson.html): [RelatedPerson - as family member, for use in sex and gender](RelatedPerson-example-sex-and-gender.html)

Name to Use is represented using ‘usual’ in `name.use`. 

Example: Patient resource with Name to Use
~~~
{
  "resourceType" : "Patient",
    ...
    "name" : [
    {
      "use" : "usual",
      "family" : "Franklin",
      "given" : [
        "Stella"
      ]
    }
  ],
  ...
}  
~~~


### Pronouns​
AU Base supports representation and exchange of the Pronouns data element (as defined in the [HL7 Cross Paradigm Implementation Guide: Gender Harmony - Sex and Gender Representation, Edition 1](https://hl7.org/xprod/ig/uv/gender-harmony/informative1/)) in:
- [AU Base Patient](StructureDefinition-au-patient.html): [Patient - Transgender Person Example](Patient-example-sex-and-gender.html)
- [AU Base Practitioner](StructureDefinition-au-practitioner.html): [Practitioner - for use in sex and gender](Practitioner-example-sex-and-gender.html)
- [AU Base Related Person](StructureDefinition-au-relatedperson.html): [RelatedPerson - as family member, for use in sex and gender](RelatedPerson-example-sex-and-gender.html)

Pronouns is represented with the [Individual Pronouns extension](http://hl7.org/fhir/StructureDefinition/individual-pronouns) extension. In AU Base the value element of the [Individual Pronouns extension](http://hl7.org/fhir/StructureDefinition/individual-pronouns) is constrained to be [Australian Pronouns](https://www.healthterminologies.gov.au/integration/R4/fhir/ValueSet/australian-pronouns-1) ([extensible](http://hl7.org/fhir/R4/terminologies.html#extensible)).

When populating the value element of the [Individual Pronouns extension](http://hl7.org/fhir/StructureDefinition/individual-pronouns) extension:
- *they/them/their/theirs/themselves* may be represented by sending the LOINC Answer (LA) code LA29520-6
- *she/her/her/hers/herself* may be represented by sending the LOINC Answer (LA) code LA29519-8
- *he/him/his/his/himself* may be represented by sending the LOINC Answer (LA) code LA29518-0
- *Prefer not to answer* may be represented by sending the Data Absent Reason code "asked-declined"
- *Asked but not known* may be represented by sending the Data Absent Reason code "asked-unknown"
- *Not stated or inadequately described* may be represented by the Data Absent Reason code "unknown"
- Where the workflow does not support obtaining a pronoun, it may be represented by sending the Data Absent Reason code "not-asked"
- Where a preferred pronoun is provided but is not one of the [Australian Pronouns](https://www.healthterminologies.gov.au/integration/R4/fhir/ValueSet/australian-pronouns-1) terms then a text only or alternative specific coded value can be supplied.

Example: Patient resource with Pronouns tbd
~~~
{
  "resourceType" : "Patient",
    ...

  ...
}  
~~~


### Gender Identity (GI)
AU Base supports representation and exchange of the Gender Identity data element (as defined in the [HL7 Cross Paradigm Implementation Guide: Gender Harmony - Sex and Gender Representation, Edition 1](https://hl7.org/xprod/ig/uv/gender-harmony/informative1/)) and aligned to [Australian Bureau of Statics Standard for Sex, Gender, Variations of Sex Characteristics and Sexual Orientation Variables, 2020](https://www.abs.gov.au/statistics/standards/standard-sex-gender-variations-sex-characteristics-and-sexual-orientation-variables/latest-release#gender) in:
- [AU Base Patient](StructureDefinition-au-patient.html): [Patient - Transgender Person Example](Patient-example-sex-and-gender.html)
- [AU Base Practitioner](StructureDefinition-au-practitioner.html): [Practitioner - for use in sex and gender](Practitioner-example-sex-and-gender.html)
- [AU Base Related Person](StructureDefinition-au-relatedperson.html): [RelatedPerson - as family member, for use in sex and gender](RelatedPerson-example-sex-and-gender.html) 

Gender Identity is represented with the [Individual Gender Identity extension](http://hl7.org/fhir/StructureDefinition/individual-genderIdentity) extension. In AU Base the value element of the [Individual Gender Identity extension](http://hl7.org/fhir/StructureDefinition/individual-genderIdentity) is constrained to be [Gender Identity Response](https://healthterminologies.gov.au/fhir/ValueSet/gender-identity-response-1) value set ([extensible](http://hl7.org/fhir/R4/terminologies.html#extensible)).

When populating the value element of the [Individual Gender Identity extension](http://hl7.org/fhir/StructureDefinition/individual-genderIdentity) extension:
  - *Man or male* may be represented by sending the SNOMED CT code 446151000124109\|Identifies as male gender\|
  - *Woman or female* may be represented by sending the SNOMED CT code 446141000124107\|Identifies as female gender\|
  - *Non-binary* may be represented by sending the SNOMED CT code 33791000087105\|Identifies as nonbinary gender\|
  - *[I/They] use a different term (please specify)*  may be represented by sending only `text` and no `coding`
  - *Prefer not to answer* may be represented by sending the code "asked-declined"
  - *Not stated or inadequately described* may be represented by the code "unknown"
  - Where the workflow does not support obtaining a gender identity value, it may be represented by sending the code "not-asked"

Example: Patient resource with Name to Use
~~~
{
  "resourceType" : "Patient",
    ...
    "name" : [
    {
      "use" : "usual",
      "family" : "Franklin",
      "given" : [
        "Stella"
      ]
    }
  ],
  ...
}  
~~~

### Recorded Sex or Gender (RSG)

- This profile supports a recorded sex or gender (RSG) value using the using the [Person Recorded Sex Or Gender](http://hl7.org/fhir/StructureDefinition/individual-recordedSexOrGender) extension in:
- [AU Base Patient](StructureDefinition-au-patient.html): [Patient - Transgender Person Example](Patient-example-sex-and-gender.html)
- [AU Base Practitioner](StructureDefinition-au-practitioner.html): [Practitioner - for use in sex and gender](Practitioner-example-sex-and-gender.html)
- [AU Base Related Person](StructureDefinition-au-relatedperson.html): [RelatedPerson - as family member, for use in sex and gender](RelatedPerson-example-sex-and-gender.html) 


RSG information includes the various sex and gender concepts that are often used in existing systems but are known NOT to represent a gender identity, sex parameter for clinical use, or attributes related to sexuality, such as sexual orientation, sexual activity, or sexual attraction. Blank cells in the table indicate that the given element is absent from the resource.
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
    <td>SHALL use an appropriate value from <a href="ValueSet-rsg-source-document-type.html">AU Recorded Sex or Gender (RSG) Source Document Type</a> value set if any of the codes within the value set can apply to the concept being communicated, e.g. "passport".</td>
    <td>The name of the field within the source document where this information is recorded, e.g. "Sex".</td>
    <td>SHALL use an appropriate value from <a href="ValueSet-au-jurisdiction-extended.html">Jurisdiction ValueSet - AU Extended</a> value set if any of the codes within the value set can apply to the concept being communicated. If representing an Australian document use "AU" or the applicable state or territory code.</td>
    </tr>
    <tr>
    <td>Sex and gender information in use in services and infrastructure, e.g. HI Services or My Health Record.</td>
    <td>The sex or gender value.</td>
    <td>SHALL use an appropriate value from <a href="ValueSet-rsg-type.html">AU Recorded Sex or Gender Type</a> value set if any of the codes within the value set can apply to the concept being communicated, e.g. "au-hi-service".</td>
    <td></td>
    <td></td>
    <td></td>
    </tr>
    </tbody>
  </table>

Example: Patient resource with Name to Use
~~~
{
  "resourceType" : "Patient",
    ...

  ...
}  
~~~

### Sex Assigned at Birth

Sex assigned at birth is represented using the [Person Recorded Sex or Gender extension](https://hl7.org/fhir/extensions/StructureDefinition-individual-recordedSexOrGender.html) as profiled by [AU Core Sex Assigned At Birth](StructureDefinition-au-core-rsg-sexassignedab.html). It should be noted the [Person Recorded Sex or Gender extension](https://hl7.org/fhir/extensions/StructureDefinition-individual-recordedSexOrGender.html) is not marked as *Must Support* in this version of the profile.

Example: Patient resource with Name to Use
~~~
{
  "resourceType" : "Patient",
    ...

  ...
}  
~~~


### Profile specific implementation guidance
- When exchanging concepts of sex or gender, refer to the guidance in the [Gender Harmony Implementation Guide](http://hl7.org/xprod/ig/uv/gender-harmony/) and [AU Base Patient](https://build.fhir.org/ig/hl7au/au-fhir-base//StructureDefinition-au-patient.html)
