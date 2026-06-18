# Medication - with two active ingredients product - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **Medication - with two active ingredients product**

## Example Medication: Medication - with two active ingredients product

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

**perindopril arginine** 10 mg + **amLODIPIne** 10 mg – tablet 



## Resource Content

```json
{
  "resourceType" : "Medication",
  "id" : "TwoActiveIngredientsProduct0",
  "meta" : {
    "profile" : ["http://hl7.org.au/fhir/StructureDefinition/au-medication"]
  },
  "form" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "385055001",
      "display" : "Tablet"
    }]
  },
  "amount" : {
    "numerator" : {
      "value" : 10,
      "unit" : "mg"
    },
    "denominator" : {
      "value" : 1,
      "unit" : "unit"
    }
  },
  "ingredient" : [{
    "itemCodeableConcept" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "2460011000036108",
        "display" : "perindopril arginine"
      }]
    },
    "isActive" : true,
    "strength" : {
      "numerator" : {
        "value" : 10,
        "unit" : "mg"
      },
      "denominator" : {
        "value" : 1,
        "unit" : "unit"
      }
    }
  },
  {
    "itemCodeableConcept" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "1792011000036100",
        "display" : "amlodipine"
      }]
    },
    "isActive" : true
  }]
}

```
