# Medication - Unbranded Product of clarithromycin 500mg tablet - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **Medication - Unbranded Product of clarithromycin 500mg tablet**

## Example Medication: Medication - Unbranded Product of clarithromycin 500mg tablet

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

Profile: [AU Base Medication](StructureDefinition-au-medication.md)

**code**: Clarithromycin 500mg Tablet

**form**: Tablet

### Ingredients

| | | |
| :--- | :--- | :--- |
| - | **Item[x]** | **Strength** |
| * | Clarithromycin | 500 mg/1 unit |



## Resource Content

```json
{
  "resourceType" : "Medication",
  "id" : "UnbrandedProduct0",
  "meta" : {
    "profile" : ["http://hl7.org.au/fhir/StructureDefinition/au-medication"]
  },
  "code" : {
    "coding" : [{
      "extension" : [{
        "url" : "http://hl7.org.au/fhir/StructureDefinition/medication-type",
        "valueCoding" : {
          "system" : "http://terminology.hl7.org.au/CodeSystem/medication-type",
          "code" : "UPDSF",
          "display" : "Unbranded product with strengths and form"
        }
      }],
      "system" : "http://snomed.info/sct",
      "code" : "23527011000036104",
      "display" : "Clarithromycin 500 mg tablet"
    }],
    "text" : "Clarithromycin 500mg Tablet"
  },
  "form" : {
    "text" : "Tablet"
  },
  "ingredient" : [{
    "itemCodeableConcept" : {
      "coding" : [{
        "extension" : [{
          "url" : "http://hl7.org.au/fhir/StructureDefinition/medication-type",
          "valueCoding" : {
            "system" : "http://terminology.hl7.org.au/CodeSystem/medication-type",
            "code" : "UPD",
            "display" : "Unbranded product with no strengths or form"
          }
        }],
        "system" : "http://snomed.info/sct",
        "code" : "21836011000036107",
        "display" : "clarithromycin"
      }],
      "text" : "Clarithromycin"
    },
    "strength" : {
      "numerator" : {
        "value" : 500,
        "unit" : "mg"
      },
      "denominator" : {
        "value" : 1,
        "unit" : "unit"
      }
    }
  }]
}

```
