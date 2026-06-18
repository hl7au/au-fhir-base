# AllergyIntolerance - self-reported intolerance to lactose - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **AllergyIntolerance - self-reported intolerance to lactose**

## Example AllergyIntolerance: AllergyIntolerance - self-reported intolerance to lactose

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

Profile: [AU Base AllergyIntolerance](StructureDefinition-au-allergyintolerance.md)

**clinicalStatus**: Active

**verificationStatus**: Confirmed

**type**: Intolerance

**category**: Food

**code**: Intolerance to lactose

**patient**: [Suzanne Simmons](Patient-example4.md)

**onset**: 1 year (Details: UCUM codea = 'a')

**recordedDate**: 2009-10-09

**asserter**: [Francis Fernando](Practitioner-example3.md)

> **reaction****substance**: Lactose**manifestation**: Abdominal pain, Abdominal bloating, Diarrhoea



## Resource Content

```json
{
  "resourceType" : "AllergyIntolerance",
  "id" : "example2",
  "meta" : {
    "profile" : ["http://hl7.org.au/fhir/StructureDefinition/au-allergyintolerance"]
  },
  "clinicalStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical",
      "code" : "active",
      "display" : "Active"
    }]
  },
  "verificationStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/allergyintolerance-verification",
      "code" : "confirmed",
      "display" : "Confirmed"
    }]
  },
  "type" : "intolerance",
  "category" : ["food"],
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "782415009",
      "display" : "Intolerance to lactose"
    }]
  },
  "patient" : {
    "reference" : "Patient/example4",
    "display" : "Suzanne Simmons"
  },
  "onsetAge" : {
    "value" : 1,
    "unit" : "year",
    "system" : "http://unitsofmeasure.org",
    "code" : "a"
  },
  "recordedDate" : "2009-10-09",
  "asserter" : {
    "reference" : "Practitioner/example3",
    "display" : "Francis Fernando"
  },
  "reaction" : [{
    "substance" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "47703008",
        "display" : "Lactose"
      }]
    },
    "manifestation" : [{
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "21522001",
        "display" : "Abdominal pain"
      }]
    },
    {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "116289008",
        "display" : "Abdominal bloating"
      }]
    },
    {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "62315008",
        "display" : "Diarrhoea"
      }]
    }]
  }]
}

```
