In support of the vision for LGBTIQA+ people achieving equitable health and wellbeing outcomes, AU Base has included content to represent and exchange key data elements including Name to Use, Pronouns and Gender Identity.
Where possible, AU Base has considered:
- the logical data element models provided by [HL7 International’s Cross Paradigm Implementation Guide: Gender Harmony - Sex and Gender Representation, Edition 1 specification](https://hl7.org/xprod/ig/uv/gender-harmony/informative1/)
- the FHIR representations of the Gender Harmony data elements in the core FHIR standard and FHIR core extensions

The guidance below addresses how sex and gender related concepts can be structured in FHIR and conformant to AU Base.

### Localisation of sex and gender concepts in AU Base

AU Base represents sex and gender related concepts, and describes their use for Patient, Practitioner and Related Person. AU Base does not place *Must Support* or Obligations on any concepts. The table below provides an overview of the sex and gender related concepts represented in AU Base, indicating for which profiles the concept is localised or supported. 

**Legend:**

<img src="green_checkmark.svg.png" width="20"/> **Supported**: The sex or gender related concept has *Must Support* and Obligations defined.

<img src="orange_checkmark.svg.png" width="20"/> **Localised**: The sex or gender related concept is localised for use in an Australian context but does not have *Must Support* or Obligations defined.

<img src="minus_symbol.svg.png" width="20"/> **Not applicable**: Sex or gender related concept is not localised for use in an Australian context.

<table border="1" style="width: 100%; margin: auto; border-collapse: collapse;">
    <thead>
        <tr>
            <th style="width: 25%; text-align: center; vertical-align: middle;">Sex and Gender Concept</th>
            <th style="width: 25%; text-align: center; vertical-align: middle;"><a href="StructureDefinition-au-patient.html">AU Base Patient</a></th>
            <th style="width: 25%; text-align: center; vertical-align: middle;"><a href="StructureDefinition-au-practitioner.html">AU Base Practitioner</a></th>
            <th style="width: 25%; text-align: center; vertical-align: middle;"><a href="StructureDefinition-au-relatedperson.html">AU Base Related Person</a></th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td style="width: 25%; text-align: left; vertical-align: middle;"><a href="https://build.fhir.org/ig/hl7au/au-fhir-base/sexgender.html#name-to-use-ntu">Name to Use</a></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.svg.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.svg.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.svg.png" width="20"/></td>
        </tr>
        <tr>
            <td style="width: 25%; text-align: left; vertical-align: middle;"><a href="https://build.fhir.org/ig/hl7au/au-fhir-base/sexgender.html#pronouns">Pronouns</a></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.svg.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.svg.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.svg.png" width="20"/></td>
        </tr>
        <tr>
            <td style="width: 25%; text-align: left; vertical-align: middle;"><a href="https://build.fhir.org/ig/hl7au/au-fhir-base/sexgender.html#gender-identity-gi">Gender Identity</a></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.svg.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.svg.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.svg.png" width="20"/></td>
        </tr>
        <tr>
            <td style="width: 25%; text-align: left; vertical-align: middle;"><a href="https://build.fhir.org/ig/hl7au/au-fhir-base/sexgender.html#recorded-sex-or-gender">Recorded Sex or Gender</a></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.svg.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.svg.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.svg.png" width="20"/></td>
        </tr>
        <tr>
            <td style="width: 25%; text-align: left; vertical-align: middle;"><a href="https://build.fhir.org/ig/hl7au/au-fhir-base/sexgender.html#sex-assigned-at-birth">Sex Assigned at Birth</a></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.svg.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.svg.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.svg.png" width="20"/></td>
        </tr>
        <tr>
            <td style="width: 25%; text-align: left; vertical-align: middle;"><a href="https://build.fhir.org/ig/hl7au/au-fhir-base/sexgender.html#administrative-gender-patient.gender">Administrative Gender (Patient.gender)</a></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.svg.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="minus_symbol.svg.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="minus_symbol.svg.png" width="20"/></td>
        </tr>
    </tbody>
</table>


### Name to Use (NtU)​
AU Base supports representation and exchange of the Name to Use data element (as defined in the [HL7 Cross Paradigm Implementation Guide: Gender Harmony - Sex and Gender Representation, Edition 1](https://hl7.org/xprod/ig/uv/gender-harmony/informative1/)) in:
- [AU Base Patient](StructureDefinition-au-patient.html)
- [AU Base Practitioner](StructureDefinition-au-practitioner.html)
- [AU Base Related Person](StructureDefinition-au-relatedperson.html)

Name to Use is represented using "usual" in `name.use`. 

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
- *Not stated or inadequately described* may be represented by sending the Data Absent Reason code "unknown"
- Where the workflow does not support obtaining a pronoun, it may be represented by sending the Data Absent Reason code "not-asked"
- Where a pronoun is provided but does not correspond to one of the [Australian Pronouns](https://www.healthterminologies.gov.au/integration/R4/fhir/ValueSet/australian-pronouns-1) terms then a text only or alternative specific coded value can be supplied

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
  - *Prefer not to answer* may be represented by sending the Data Absent Reason code "asked-declined"
  - *Not stated or inadequately described* may be represented by sending the Data Absent Reason code "unknown"
  - Where the workflow does not support obtaining a gender identity value, it may be represented by sending the Data Absent Reason code "not-asked"

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


### Recorded Sex or Gender
AU Base supports representation and exchange of the Recorded Sex or Gender (RSG) data element (as defined in the [HL7 Cross Paradigm Implementation Guide: Gender Harmony - Sex and Gender Representation, Edition 1](https://hl7.org/xprod/ig/uv/gender-harmony/informative1/)) in:
- [AU Base Patient](StructureDefinition-au-patient.html)
- [AU Base Practitioner](StructureDefinition-au-practitioner.html)
- [AU Base Related Person](StructureDefinition-au-relatedperson.html)

RSG is represented with the [Person Recorded Sex or Gender](https://hl7.org/fhir/extensions/StructureDefinition-individual-recordedSexOrGender.html) extension. In AU Base:
- the type element is constrained to be [AU Recorded Sex or Gender Type](ValueSet-rsg-type.html) ([extensible](http://hl7.org/fhir/R4/terminologies.html#extensible))
- the sourceDocument element is constrained to be [AU Recorded Sex or Gender (RSG) Source Document Type](ValueSet-rsg-source-document-type.html) ([extensible](http://hl7.org/fhir/R4/terminologies.html#extensible))
- the jurisdiction element is constrained to be [Jurisdiction ValueSet - AU Extended](ValueSet-au-jurisdiction-extended.html) ([extensible](http://hl7.org/fhir/R4/terminologies.html#extensible))

RSG information includes the various sex and gender concepts that are often used in existing systems but are known to not reliably represent a gender identity, sex parameter for clinical use, or attributes related to sexuality, such as sexual orientation, sexual activity, or sexual attraction. When populating recorded sex or gender it is important to select a meaningful terminology for the value element of the [Person Recorded Sex or Gender](https://hl7.org/fhir/extensions/StructureDefinition-individual-recordedSexOrGender.html) extension. For example, when representing a biological sex value it is recommended to use a biological sex value set. See [Sex Assigned at Birth](sexgender.html#sex-assigned-at-birth) for specific guidance on the representation of Sex Assigned at Birth.

Example: Patient resource with recorded gender from a passport
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
                "system" : "http://hl7.org/fhir/administrative-gender",
                "code" : "female"
              }
            ]
          }
        },
        {
          "url" : "type",
          "valueCodeableConcept" : {
            "coding" : [
              {
                "system" : "http://loinc.org",
                "code" : "46098-0"
              }
            ]
          }
        },
        {
          "url" : "effectivePeriod",
          "valuePeriod" : {
            "start" : "2024-12-25"
          }
        },
        {
          "url" : "sourceDocument",
          "valueCodeableConcept" : {
            "coding" : [
              {
                "system" : "http://terminology.hl7.org.au/CodeSystem/rsg-source-document-type",
                "code" : "passport"
              }
            ]
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
                "system" : "urn:iso:std:iso:3166",
                "code" : "AU",
                "display" : "Australia"
              }
            ]
          }
        }
      ]
    }
  ],
  ...
}  
~~~


### Sex Assigned at Birth
AU Base supports representation and exchange of the Sex Assigned at Birth data element (as defined in the [HL7 Cross Paradigm Implementation Guide: Gender Harmony - Sex and Gender Representation, Edition 1](https://hl7.org/xprod/ig/uv/gender-harmony/informative1/)) in:
- [AU Base Patient](StructureDefinition-au-patient.html)
- [AU Base Practitioner](StructureDefinition-au-practitioner.html)
- [AU Base Related Person](StructureDefinition-au-relatedperson.html)

Sex Assigned at Birth is represented with the [Person Recorded Sex or Gender](https://hl7.org/fhir/extensions/StructureDefinition-individual-recordedSexOrGender.html) extension:
- the type element is populated with the SNOMED CT code 1515311000168102\|Biological sex at birth\|
- the value element is constrained to be [Biological Sex](https://healthterminologies.gov.au/fhir/ValueSet/biological-sex-1) ([extensible](http://hl7.org/fhir/R4/terminologies.html#extensible))

<p class="stu-note">The FHIR Work Group is interested in views on whether <a href="https://healthterminologies.gov.au/fhir/ValueSet/biological-sex-1">Biological Sex</a> value set should be a required binding in future releases of AU Base. Please join a meeting or contact the FHIR Work Group if you have any views or perspectives on this.</p>

When populating the value element of the [Person Recorded Sex or Gender](https://hl7.org/fhir/extensions/StructureDefinition-individual-recordedSexOrGender.html) extension for Sex Assigned at Birth:
  - *Male* may be represented by sending the SNOMED CT code 248153007\|Male\|
  - *Female* may be represented by sending the SNOMED CT code 248152002\|Female\|
  - *Intersex* may be represented by sending the SNOMED CT code 32570691000036108\|Intersex\|
  - *Indeterminate sex* may be represented by sending the SNOMED CT code 32570681000036106\|Indeterminate sex\|
  - *Prefer not to answer* may be represented by sending the Data Absent Reason code "asked-declined"
  - *Asked but not known* may be represented by sending the Data Absent Reason code "asked-unknown"
  - *Not stated or inadequately described* may be represented by sending the Data Absent Reason code "unknown"
  - Where the workflow does not support obtaining a sex at birth, it may be represented by sending the Data Absent Reason code "not-asked"

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

