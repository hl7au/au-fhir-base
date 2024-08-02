When exchanging concepts of sex or gender, refer to the guidance in the [Gender Harmony Implementation Guide](http://hl7.org/xprod/ig/uv/gender-harmony/).


### Name to Use (NtU)​
AU Base supports representation and exchange of the Name to Use data element (as defined in the [HL7 Cross Paradigm Implementation Guide: Gender Harmony - Sex and Gender Representation, Edition 1](https://hl7.org/xprod/ig/uv/gender-harmony/informative1/)) in:
- [AU Base Patient](StructureDefinition-au-patient.html)
- [AU Base Practitioner](StructureDefinition-au-practitioner.html)
- [AU Base Related Person](StructureDefinition-au-relatedperson.html)

Name to Use is represented using ‘usual’ in `name.use`. 

Example: RelatedPerson resource with name to use
~~~
{
  "resourceType" : "RelatedPerson",
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
- [AU Base Patient](StructureDefinition-au-patient.html)
- [AU Base Practitioner](StructureDefinition-au-practitioner.html)
- [AU Base Related Person](StructureDefinition-au-relatedperson.html)

Pronouns is represented with the [Individual Pronouns](http://hl7.org/fhir/StructureDefinition/individual-pronouns) extension. In AU Base the value element of the [Individual Pronouns](http://hl7.org/fhir/StructureDefinition/individual-pronouns) extension is constrained to be [Australian Pronouns](https://www.healthterminologies.gov.au/integration/R4/fhir/ValueSet/australian-pronouns-1) ([extensible](http://hl7.org/fhir/R4/terminologies.html#extensible)).

When populating the value element of the [Individual Pronouns](http://hl7.org/fhir/StructureDefinition/individual-pronouns) extension:
- *they/them/their/theirs/themselves* may be represented by sending the LOINC Answer (LA) code LA29520-6
- *she/her/her/hers/herself* may be represented by sending the LOINC Answer (LA) code LA29519-8
- *he/him/his/his/himself* may be represented by sending the LOINC Answer (LA) code LA29518-0
- *Prefer not to answer* may be represented by sending the Data Absent Reason code "asked-declined"
- *Asked but not known* may be represented by sending the Data Absent Reason code "asked-unknown"
- *Not stated or inadequately described* may be represented by the Data Absent Reason code "unknown"
- Where the workflow does not support obtaining a pronoun, it may be represented by sending the Data Absent Reason code "not-asked"
- Where a preferred pronoun is provided but is not one of the [Australian Pronouns](https://www.healthterminologies.gov.au/integration/R4/fhir/ValueSet/australian-pronouns-1) terms then a text only or alternative specific coded value can be supplied.

Example: Practitioner resource with pronouns
~~~
{
  "resourceType" : "Practitioner",
    ...
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/individual-pronouns",
      "extension" : [
        {
          "url" : "value",
          "valueCodeableConcept" : {
            "coding" : [
              {
                "system" : "http://loinc.org",
                "code" : "LA29519-8",
                "display" : "she/her/her/hers/herself"
              }
            ]
          }
        },
        {
          "url" : "period",
          "valuePeriod" : {
            "start" : "2001-05-06"
          }
        }
      ]
    },
  ...
}  
~~~

Example: Patient resource with prefer not to answer for pronouns
~~~
{
  "resourceType" : "Patient",
    ...
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/individual-pronouns",
      "extension" : [
        {
          "url" : "value",
          "valueCodeableConcept" : {
            "coding" : [
              {
                "system" : "http://terminology.hl7.org/CodeSystem/data-absent-reason",
                "code" : "asked-declined",
              }
            ]
          }
        }
      ]
    },
  ...
}  
~~~


### Gender Identity (GI)
AU Base supports representation and exchange of the Gender Identity data element (as defined in the [HL7 Cross Paradigm Implementation Guide: Gender Harmony - Sex and Gender Representation, Edition 1](https://hl7.org/xprod/ig/uv/gender-harmony/informative1/)) and aligned to [Australian Bureau of Statics Standard for Sex, Gender, Variations of Sex Characteristics and Sexual Orientation Variables, 2020](https://www.abs.gov.au/statistics/standards/standard-sex-gender-variations-sex-characteristics-and-sexual-orientation-variables/latest-release#gender) in:
- [AU Base Patient](StructureDefinition-au-patient.html)
- [AU Base Practitioner](StructureDefinition-au-practitioner.html)
- [AU Base Related Person](StructureDefinition-au-relatedperson.html)

Gender Identity is represented with the [Individual Gender Identity](http://hl7.org/fhir/StructureDefinition/individual-genderIdentity) extension. In AU Base the value element of the [Individual Gender Identity](http://hl7.org/fhir/StructureDefinition/individual-genderIdentity) extension is constrained to be [Gender Identity Response](https://healthterminologies.gov.au/fhir/ValueSet/gender-identity-response-1) value set ([extensible](http://hl7.org/fhir/R4/terminologies.html#extensible)).

When populating the value element of the [Individual Gender Identity](http://hl7.org/fhir/StructureDefinition/individual-genderIdentity) extension:
  - *Man or male* may be represented by sending the SNOMED CT code 446151000124109\|Identifies as male gender\|
  - *Woman or female* may be represented by sending the SNOMED CT code 446141000124107\|Identifies as female gender\|
  - *Non-binary* may be represented by sending the SNOMED CT code 33791000087105\|Identifies as nonbinary gender\|
  - *[I/They] use a different term (please specify)*  may be represented by sending only `text` and no `coding`
  - *Prefer not to answer* may be represented by sending the code "asked-declined"
  - *Not stated or inadequately described* may be represented by the code "unknown"
  - Where the workflow does not support obtaining a gender identity value, it may be represented by sending the code "not-asked"

Example: Patient resource with gender identity
~~~
{
  "resourceType" : "Patient",
    ...
    "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/individual-genderIdentity",
      "extension" : [
        {
          "url" : "value",
          "valueCodeableConcept" : {
            "coding" : [
              {
                "system" : "http://snomed.info/sct",
                "code" : "446141000124107",
                "display" : "Identifies as female gender (finding)"
              }
            ]
          }
        }
      ]
    },
  ...
}  
~~~


### Recorded Sex or Gender (RSG)
AU Base supports representation and exchange of the Recorded Sex or Gender (RS) data element (as defined in the [HL7 Cross Paradigm Implementation Guide: Gender Harmony - Sex and Gender Representation, Edition 1](https://hl7.org/xprod/ig/uv/gender-harmony/informative1/)) in:
- [AU Base Patient](StructureDefinition-au-patient.html)
- [AU Base Practitioner](StructureDefinition-au-practitioner.html)
- [AU Base Related Person](StructureDefinition-au-relatedperson.html)

RSG is represented with the [Person Recorded Sex or Gender](https://hl7.org/fhir/extensions/StructureDefinition-individual-recordedSexOrGender.html) extension. In AU Base:
- the type element of the [Person Recorded Sex or Gender](https://hl7.org/fhir/extensions/StructureDefinition-individual-recordedSexOrGender.html) extension is constrained to be [AU Recorded Sex or Gender Type](ValueSet-rsg-type.html) ([extensible](http://hl7.org/fhir/R4/terminologies.html#extensible))
- the sourceDocument element of the [Person Recorded Sex or Gender](https://hl7.org/fhir/extensions/StructureDefinition-individual-recordedSexOrGender.html) extension is constrained to be [AU Recorded Sex or Gender (RSG) Source Document Type](ValueSet-rsg-source-document-type.html) ([extensible](http://hl7.org/fhir/R4/terminologies.html#extensible))
- the jurisdiction element of the [Person Recorded Sex or Gender](https://hl7.org/fhir/extensions/StructureDefinition-individual-recordedSexOrGender.html) extension is constrained to be [Jurisdiction ValueSet - AU Extended](ValueSet-au-jurisdiction-extended.html) ([extensible](http://hl7.org/fhir/R4/terminologies.html#extensible))

RSG information includes the various sex and gender concepts that are often used in existing systems but are known NOT to represent a gender identity, sex parameter for clinical use, or attributes related to sexuality, such as sexual orientation, sexual activity, or sexual attraction. When populating recorded sex or gender it is important to select a meaningful terminology for the value element of the [Person Recorded Sex or Gender](https://hl7.org/fhir/extensions/StructureDefinition-individual-recordedSexOrGender.html) extension. 
For example, when representing a biological sex value it is recommended to use a biological sex value set.

See [Sex Assigned at Birth](sexgender.html#sex-assigned-at-birth) for specific guidance on the representation of Sex Assigned at Birth.

Example: Patient resource with recorded gender from a passport
~~~
{
  "resourceType" : "Patient",
    ...

  ...
}  
~~~


### Sex Assigned at Birth
AU Base supports representation and exchange of the Sex Assigned at Birth data element (as defined in the [HL7 Cross Paradigm Implementation Guide: Gender Harmony - Sex and Gender Representation, Edition 1](https://hl7.org/xprod/ig/uv/gender-harmony/informative1/)) in:
- [AU Base Patient](StructureDefinition-au-patient.html)
- [AU Base Practitioner](StructureDefinition-au-practitioner.html)
- [AU Base Related Person](StructureDefinition-au-relatedperson.html)

Sex Assigned at Birth is represented with the [Person Recorded Sex or Gender](https://hl7.org/fhir/extensions/StructureDefinition-individual-recordedSexOrGender.html) extension:
- the type element of the [Person Recorded Sex or Gender](https://hl7.org/fhir/extensions/StructureDefinition-individual-recordedSexOrGender.html) extension should be 1515311000168102\|Biological sex at birth\|
- the value element of the [Person Recorded Sex or Gender](https://hl7.org/fhir/extensions/StructureDefinition-individual-recordedSexOrGender.html) extension is constrained to be [Biological Sex](https://healthterminologies.gov.au/fhir/ValueSet/biological-sex-1) ([extensible](http://hl7.org/fhir/R4/terminologies.html#extensible))

When populating the value element of the [Person Recorded Sex or Gender](https://hl7.org/fhir/extensions/StructureDefinition-individual-recordedSexOrGender.html) extension for Sex Assigned at Birth:
  - *Male* may be represented by sending the SNOMED CT code 248153007\|Male\|
  - *Female* may be represented by sending the SNOMED CT code 248152002\|Female\|
  - *Intersex* may be represented by sending the SNOMED CT code 33791000087105\|Intersex\|
  - *Indeterminate sex* may be represented by sending the SNOMED CT code 32570681000036106\|Indeterminate sex\|

Example: Patient resource with Sex Assigned at Birth from birth certificate
~~~
{
  "resourceType" : "Patient",
    ...
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/individual-recordedSexOrGender",
      "extension" : [
        {
          "url" : "value",
          "valueCodeableConcept" : {
            "coding" : [
              {
                "system" : "http://snomed.info/sct",
                "code" : "248153007",
                "display" : "Male"
              }
            ]
          }
        },
        {
          "url" : "type",
          "valueCodeableConcept" : {
            "coding" : [
              {
                "system" : "http://snomed.info/sct",
                "code" : "1515311000168102",
                "display" : "Biological sex at birth"
              }
            ]
          }
        },
        {
          "url" : "effectivePeriod",
          "valuePeriod" : {
            "start" : "1974-12-25"
          }
        },
        {
          "url" : "acquisitionDate",
          "valueDateTime" : "2005-12-06"
        },
        {
          "url" : "sourceDocument",
          "valueCodeableConcept" : 
          {
            "coding" : [
              {
                "system" : "http://loinc.org",
                "code" : "71230-7",
                "display" : "Birth certificate"
              },
              {
                "system" : "http://snomed.info/sct",
                "code" : "444561001",
                "display" : "Birth certificate"
              }
            ],
            "text" : "Scan of birth certificate"
          }
        },
        {
          "url" : "sourceField",
          "valueString" : "Sex"
        },
        {
          "url" : "jurisdiction",
          "valueCodeableConcept" : {
            "coding" : [
              {
                "system" : "https://healthterminologies.gov.au/fhir/CodeSystem/australian-states-territories-1",
                "code" : "QLD"
              }
            ]
          }
        },
        {
          "url" : "comment",
          "valueString" : "Patient transitioned from male to female in 2001, but their birth certificate still indicates male."
        }
      ]
    },
  ...
}  
~~~

