# Medication - Branded Pack With Single Active Ingredient - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **Medication - Branded Pack With Single Active Ingredient**

## Example Medication: Medication - Branded Pack With Single Active Ingredient

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

**chloramphenicol** 0.5% – *Chlorsig* – eye drops



## Resource Content

```json
{
  "resourceType" : "Medication",
  "id" : "BrandedPackSingleActiveIngredient0",
  "meta" : {
    "profile" : ["http://hl7.org.au/fhir/StructureDefinition/au-medication"]
  },
  "code" : {
    "coding" : [{
      "extension" : [{
        "url" : "http://hl7.org.au/fhir/StructureDefinition/medication-type",
        "valueCoding" : {
          "system" : "http://terminology.hl7.org.au/CodeSystem/medication-type",
          "code" : "BPD",
          "display" : "Branded product with no strengths or form"
        }
      }],
      "system" : "http://snomed.info/sct",
      "code" : "4445011000036103",
      "display" : "Chlorsig"
    }]
  },
  "form" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "385124005",
      "display" : "Eye drops"
    }]
  },
  "ingredient" : [{
    "itemCodeableConcept" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "1931011000036105",
        "display" : "chloramphenicol"
      }]
    },
    "isActive" : true,
    "strength" : {
      "numerator" : {
        "value" : 0.5,
        "unit" : "%"
      },
      "denominator" : {
        "value" : 1,
        "unit" : "unit"
      }
    }
  }]
}

```
