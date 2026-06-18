# Medication - Generic Pack of paracetamol 500mg (100) - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **Medication - Generic Pack of paracetamol 500mg (100)**

## Example Medication: Medication - Generic Pack of paracetamol 500mg (100)

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

Profile: [AU Base Medication](StructureDefinition-au-medication.md)

**code**: Paracetamol 500mg (100)

**form**: Tablet



## Resource Content

```json
{
  "resourceType" : "Medication",
  "id" : "GenericPack0",
  "meta" : {
    "profile" : ["http://hl7.org.au/fhir/StructureDefinition/au-medication"]
  },
  "code" : {
    "coding" : [{
      "extension" : [{
        "url" : "http://hl7.org.au/fhir/StructureDefinition/medication-type",
        "valueCoding" : {
          "system" : "http://terminology.hl7.org.au/CodeSystem/medication-type",
          "code" : "UPG",
          "display" : "Unbranded package with no container"
        }
      }],
      "system" : "http://example.com/generic-packages",
      "code" : "5636-24556",
      "display" : "Paracetamol 500mg (100)"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org.au/fhir/StructureDefinition/medication-type",
        "valueCoding" : {
          "system" : "http://terminology.hl7.org.au/CodeSystem/medication-type",
          "code" : "UPG",
          "display" : "Unbranded package with no container"
        }
      }],
      "system" : "http://snomed.info/sct",
      "code" : "28314011000036104",
      "display" : "Paracetamol 500 mg tablet, 100"
    }],
    "text" : "Paracetamol 500mg (100)"
  },
  "form" : {
    "text" : "Tablet"
  }
}

```
