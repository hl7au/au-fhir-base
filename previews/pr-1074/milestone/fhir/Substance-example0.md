# Substance - body substance of epiglottic mucus - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **Substance - body substance of epiglottic mucus**

## Example Substance: Substance - body substance of epiglottic mucus

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

Profile: [AU Base Substance](StructureDefinition-au-substance.md)

**category**: Body Substance

**code**: Epiglottic mucus



## Resource Content

```json
{
  "resourceType" : "Substance",
  "id" : "example0",
  "meta" : {
    "profile" : ["http://hl7.org.au/fhir/StructureDefinition/au-substance"]
  },
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/substance-category",
      "code" : "body",
      "display" : "Body Substance"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "65799005",
      "display" : "Epiglottic mucus"
    }]
  }
}

```
