# Medication - uncoded medicinal product information - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **Medication - uncoded medicinal product information**

## Example Medication: Medication - uncoded medicinal product information

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

Profile: [AU Base Medication](StructureDefinition-au-medication.md)

**Medication Generic Drug Name**: Rosuvastatin

**Medication Brand Name**: Crestor

**code**: Cresor 20mg tablet, 30 pack

**manufacturer**: A. Menarini Australia Pty Ltd

**form**: Tablet

### Ingredients

| | | |
| :--- | :--- | :--- |
| - | **Item[x]** | **Strength** |
| * | Rosuvastatin | 20 mg/1 unit |



## Resource Content

```json
{
  "resourceType" : "Medication",
  "id" : "UncodedProduct0",
  "meta" : {
    "profile" : ["http://hl7.org.au/fhir/StructureDefinition/au-medication"]
  },
  "extension" : [{
    "url" : "http://hl7.org.au/fhir/StructureDefinition/medication-generic-name",
    "valueString" : "Rosuvastatin"
  },
  {
    "url" : "http://hl7.org.au/fhir/StructureDefinition/medication-brand-name",
    "valueString" : "Crestor"
  }],
  "code" : {
    "text" : "Cresor 20mg tablet, 30 pack"
  },
  "manufacturer" : {
    "display" : "A. Menarini Australia Pty Ltd"
  },
  "form" : {
    "text" : "Tablet"
  },
  "ingredient" : [{
    "itemCodeableConcept" : {
      "text" : "Rosuvastatin"
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
