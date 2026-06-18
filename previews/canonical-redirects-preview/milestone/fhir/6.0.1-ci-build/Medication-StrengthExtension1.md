# Medication - with Medication Strength Extension - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **Medication - with Medication Strength Extension**

## Example Medication: Medication - with Medication Strength Extension

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

Profile: [AU Base Medication](StructureDefinition-au-medication.md)

**Medication Strength**: 20 trillion vector genomes/mL

**code**: Zolgensma Composite Pack

**form**: Solution for infusion



## Resource Content

```json
{
  "resourceType" : "Medication",
  "id" : "StrengthExtension1",
  "meta" : {
    "profile" : ["http://hl7.org.au/fhir/StructureDefinition/au-medication"]
  },
  "extension" : [{
    "url" : "http://hl7.org.au/fhir/StructureDefinition/medication-strength",
    "valueString" : "20 trillion vector genomes/mL"
  }],
  "code" : {
    "coding" : [{
      "system" : "http://pbs.gov.au/code/item",
      "code" : "12940C"
    }],
    "text" : "Zolgensma Composite Pack"
  },
  "form" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "385229008",
      "display" : "Solution for infusion"
    }]
  }
}

```
