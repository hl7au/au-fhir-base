# RelatedPerson - as family member with sex and gender - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **RelatedPerson - as family member with sex and gender**

## Example RelatedPerson: RelatedPerson - as family member with sex and gender

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

Profile: [AU Base RelatedPerson](StructureDefinition-au-relatedperson.md)

> **Individual Gender Identity**
* value: Male
* period: 2018-01-01 --> 2021-12-23
* comment: Identified as male during this period. Began exploring gender identity more deeply towards the end of this period.

> **Individual Gender Identity**
* value: Non-binary
* period: 2022-05-06 --> (ongoing)
* comment: Currently identifies as non-binary and uses 'they/them' pronouns. Open to exploring further gender fluidity.

> **Individual Pronouns**
* value: they/them/their/theirs/themselves

> **Person Recorded Sex Or Gender**
* value: Male
* type: Biological sex at birth
* acquisitionDate: 2019-11-01
* sourceDocument: Birth certificate
* sourceField: Sex
* jurisdiction: Victoria

**active**: true

**patient**: [Stella Franklin (official) Female, DoB: 1985-10-14 ( IHI: Austalian Healthcare Identifier - Individual#8003608833357361)](Patient-example0.md)

**relationship**: Next-of-Kin

**name**: Alex Baker 

**telecom**: ph: (02) 5550 6767

**gender**: Other



## Resource Content

```json
{
  "resourceType" : "RelatedPerson",
  "id" : "example-sex-and-gender",
  "meta" : {
    "profile" : ["http://hl7.org.au/fhir/StructureDefinition/au-relatedperson"]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/individual-genderIdentity",
    "extension" : [{
      "url" : "value",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "446151000124109",
          "display" : "Identifies as male gender"
        }],
        "text" : "Male"
      }
    },
    {
      "url" : "period",
      "valuePeriod" : {
        "start" : "2018-01-01",
        "end" : "2021-12-23"
      }
    },
    {
      "url" : "comment",
      "valueString" : "Identified as male during this period. Began exploring gender identity more deeply towards the end of this period."
    }]
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/individual-genderIdentity",
    "extension" : [{
      "url" : "value",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "33791000087105",
          "display" : "Identifies as nonbinary gender"
        }],
        "text" : "Non-binary"
      }
    },
    {
      "url" : "period",
      "valuePeriod" : {
        "start" : "2022-05-06"
      }
    },
    {
      "url" : "comment",
      "valueString" : "Currently identifies as non-binary and uses 'they/them' pronouns. Open to exploring further gender fluidity."
    }]
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/individual-pronouns",
    "extension" : [{
      "url" : "value",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "LA29520-6",
          "display" : "they/them/their/theirs/themselves"
        }]
      }
    }]
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/individual-recordedSexOrGender",
    "extension" : [{
      "url" : "value",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "248153007",
          "display" : "Male"
        }]
      }
    },
    {
      "url" : "type",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "1515311000168102",
          "display" : "Biological sex at birth"
        }]
      }
    },
    {
      "url" : "acquisitionDate",
      "valueDateTime" : "2019-11-01"
    },
    {
      "url" : "sourceDocument",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "71230-7",
          "display" : "Birth certificate"
        }]
      }
    },
    {
      "url" : "sourceField",
      "valueString" : "Sex"
    },
    {
      "url" : "jurisdiction",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://healthterminologies.gov.au/fhir/CodeSystem/australian-states-territories-1",
          "code" : "VIC"
        }]
      }
    }]
  }],
  "active" : true,
  "patient" : {
    "reference" : "Patient/example0"
  },
  "relationship" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v2-0131",
      "code" : "N"
    },
    {
      "system" : "http://terminology.hl7.org/CodeSystem/v3-RoleCode",
      "code" : "FAMMEMB"
    }]
  }],
  "name" : [{
    "use" : "usual",
    "family" : "Baker",
    "given" : ["Alex"]
  }],
  "telecom" : [{
    "system" : "phone",
    "value" : "(02) 5550 6767"
  }],
  "gender" : "other"
}

```
