# Medication - dose based - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **Medication - dose based**

## Example Medication: Medication - dose based

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

Profile: [AU Base Medication](StructureDefinition-au-medication.md)

**form**: Injection

### Ingredients

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Item[x]** | **IsActive** | **Strength** |
| * | Fluconazole | true | 200 mg (Details: UCUM codemg = 'mg')/100 mL (Details: UCUM codemL = 'mL') |



## Resource Content

```json
{
  "resourceType" : "Medication",
  "id" : "DoseBased",
  "meta" : {
    "profile" : ["http://hl7.org.au/fhir/StructureDefinition/au-medication"]
  },
  "form" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "129011000036109",
      "display" : "Injection"
    }]
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
        "code" : "31865003",
        "display" : "Fluconazole"
      }]
    },
    "isActive" : true,
    "strength" : {
      "numerator" : {
        "value" : 200,
        "system" : "http://unitsofmeasure.org",
        "code" : "mg"
      },
      "denominator" : {
        "value" : 100,
        "system" : "http://unitsofmeasure.org",
        "code" : "mL"
      }
    }
  }]
}

```
