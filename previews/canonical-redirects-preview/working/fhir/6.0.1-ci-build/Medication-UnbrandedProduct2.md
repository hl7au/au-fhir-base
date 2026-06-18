# Medication - Unbranded product of amoxicillin 500mg capsule - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **Medication - Unbranded product of amoxicillin 500mg capsule**

## Example Medication: Medication - Unbranded product of amoxicillin 500mg capsule

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

Profile: [AU Base Medication](StructureDefinition-au-medication.md)

**code**: Amoxicillin 500mg Capsule

**form**: Capsule

### Ingredients

| | | |
| :--- | :--- | :--- |
| - | **Item[x]** | **Strength** |
| * | Amoxicillin | 500 mg/1 unit |



## Resource Content

```json
{
  "resourceType" : "Medication",
  "id" : "UnbrandedProduct2",
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
      "code" : "23551011000036108",
      "display" : "Amoxicillin 500 mg capsule"
    }],
    "text" : "Amoxicillin 500mg Capsule"
  },
  "form" : {
    "text" : "Capsule"
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
        "code" : "21415011000036100",
        "display" : "amoxicillin"
      }],
      "text" : "Amoxicillin"
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
