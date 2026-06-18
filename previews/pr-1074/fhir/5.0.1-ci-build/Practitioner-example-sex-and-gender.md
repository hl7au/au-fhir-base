# Practitioner - sex and gender - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **Practitioner - sex and gender**

## Example Practitioner: Practitioner - sex and gender

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

Profile: [AU Base Practitioner](StructureDefinition-au-practitioner.md)

> **Individual Gender Identity**
* value: Identifies as male gender

> **Individual Pronouns**
* value: he/him/his/his/himself

> **Person Recorded Sex Or Gender**
* value: Male
* type: Sex/Gender
* acquisitionDate: 2020-05-11

**identifier**: HPI-I/8003619900015717

**name**: John Davies 



## Resource Content

```json
{
  "resourceType" : "Practitioner",
  "id" : "example-sex-and-gender",
  "meta" : {
    "profile" : ["http://hl7.org.au/fhir/StructureDefinition/au-practitioner"]
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
        }]
      }
    }]
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/individual-pronouns",
    "extension" : [{
      "url" : "value",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "LA29518-0",
          "display" : "he/him/his/his/himself"
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
          "system" : "http://hl7.org/fhir/administrative-gender",
          "code" : "male",
          "display" : "Male"
        }]
      }
    },
    {
      "url" : "type",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org.au/CodeSystem/rsg-type",
          "code" : "sex-gender"
        }]
      }
    },
    {
      "url" : "acquisitionDate",
      "valueDateTime" : "2020-05-11"
    }]
  }],
  "identifier" : [{
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "NPI",
        "display" : "National provider identifier"
      }],
      "text" : "HPI-I"
    },
    "system" : "http://ns.electronichealth.net.au/id/hi/hpii/1.0",
    "value" : "8003619900015717"
  }],
  "name" : [{
    "family" : "Davies",
    "given" : ["John"],
    "prefix" : ["Dr"]
  }]
}

```
