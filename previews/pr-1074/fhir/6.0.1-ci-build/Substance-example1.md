# Substance - peanuts as an allergen - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **Substance - peanuts as an allergen**

## Example Substance: Substance - peanuts as an allergen

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

Profile: [AU Base Substance](StructureDefinition-au-substance.md)

**category**: Allergen

**code**: Peanuts



## Resource Content

```json
{
  "resourceType" : "Substance",
  "id" : "example1",
  "meta" : {
    "profile" : ["http://hl7.org.au/fhir/StructureDefinition/au-substance"]
  },
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/substance-category",
      "code" : "allergen",
      "display" : "Allergen"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "762952008",
      "display" : "Peanut"
    }],
    "text" : "Peanuts"
  }
}

```
