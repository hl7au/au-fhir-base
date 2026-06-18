# AllergyIntolerance - self-reported allergy to eggs - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **AllergyIntolerance - self-reported allergy to eggs**

## Example AllergyIntolerance: AllergyIntolerance - self-reported allergy to eggs

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

Profile: [AU Base AllergyIntolerance](StructureDefinition-au-allergyintolerance.md)

**clinicalStatus**: Active

**verificationStatus**: Unconfirmed

**type**: Allergy

**category**: Food

**code**: Allergy to egg protein

**patient**: [Sally Grant](Patient-example2.md)

**onset**: 4 year (Details: UCUM codea = 'a')

**recordedDate**: 2018-03-07

**asserter**: [Sally Grant](Patient-example2.md)

> **reaction****manifestation**: Hives, Nausea, Vomiting



## Resource Content

```json
{
  "resourceType" : "AllergyIntolerance",
  "id" : "example1",
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
      "code" : "unconfirmed",
      "display" : "Unconfirmed"
    }]
  },
  "type" : "allergy",
  "category" : ["food"],
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "213020009",
      "display" : "Allergy to egg protein"
    }]
  },
  "patient" : {
    "reference" : "Patient/example2",
    "display" : "Sally Grant"
  },
  "onsetAge" : {
    "value" : 4,
    "unit" : "year",
    "system" : "http://unitsofmeasure.org",
    "code" : "a"
  },
  "recordedDate" : "2018-03-07",
  "asserter" : {
    "reference" : "Patient/example2",
    "display" : "Sally Grant"
  },
  "reaction" : [{
    "manifestation" : [{
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "247472004",
        "display" : "Hives"
      }]
    },
    {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "422587007",
        "display" : "Nausea"
      }]
    },
    {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "422400008",
        "display" : "Vomiting"
      }]
    }]
  }]
}

```
