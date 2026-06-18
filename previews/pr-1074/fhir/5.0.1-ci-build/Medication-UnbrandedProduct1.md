# Medication - Unbranded Product of esomeprazole 20mg tablet - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **Medication - Unbranded Product of esomeprazole 20mg tablet**

## Example Medication: Medication - Unbranded Product of esomeprazole 20mg tablet

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

Profile: [AU Base Medication](StructureDefinition-au-medication.md)

**code**: Esomeprazole 20mg Tablet

**form**: Tablet

### Ingredients

| | | |
| :--- | :--- | :--- |
| - | **Item[x]** | **Strength** |
| * | Esomeprazole | 20 mg/1 unit |



## Resource Content

```json
{
  "resourceType" : "Medication",
  "id" : "UnbrandedProduct1",
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
      "code" : "23526011000036102",
      "display" : "Esomeprazole 20 mg enteric tablet"
    }],
    "text" : "Esomeprazole 20mg Tablet"
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
        "code" : "21697011000036107",
        "display" : "esomeprazole"
      }],
      "text" : "Esomeprazole"
    },
    "strength" : {
      "numerator" : {
        "value" : 20,
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
