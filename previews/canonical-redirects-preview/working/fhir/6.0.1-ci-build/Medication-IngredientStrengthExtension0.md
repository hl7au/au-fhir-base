# Medication - with backported R5 Ingredient Strength Element - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **Medication - with backported R5 Ingredient Strength Element**

## Example Medication: Medication - with backported R5 Ingredient Strength Element

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

Profile: [AU Base Medication](StructureDefinition-au-medication.md)

**code**: Tadim

**form**: Powder

### Ingredients

| | | |
| :--- | :--- | :--- |
| - | **Extension** | **Item[x]** |
| * |  | Colistimethate |



## Resource Content

```json
{
  "resourceType" : "Medication",
  "id" : "IngredientStrengthExtension0",
  "meta" : {
    "profile" : ["http://hl7.org.au/fhir/StructureDefinition/au-medication"]
  },
  "code" : {
    "text" : "Tadim"
  },
  "form" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "147011000036100"
    }],
    "text" : "Powder"
  },
  "ingredient" : [{
    "extension" : [{
      "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Medication.ingredient.strength[x]",
      "valueCodeableConcept" : {
        "text" : "1 Million IU"
      }
    }],
    "itemCodeableConcept" : {
      "text" : "Colistimethate"
    }
  }]
}

```
