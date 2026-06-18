# Medication - with Generic Name and Medication Strength Extensions - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **Medication - with Generic Name and Medication Strength Extensions**

## Example Medication: Medication - with Generic Name and Medication Strength Extensions

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

Profile: [AU Base Medication](StructureDefinition-au-medication.md)

**Medication Generic Drug Name**: Paracetamol, Codeine Phosphate

**Medication Strength**: 500mg;8mg

**code**: Panadeine (24)

**form**: Caplet



## Resource Content

```json
{
  "resourceType" : "Medication",
  "id" : "StrengthExtension0",
  "meta" : {
    "profile" : ["http://hl7.org.au/fhir/StructureDefinition/au-medication"]
  },
  "extension" : [{
    "url" : "http://hl7.org.au/fhir/StructureDefinition/medication-generic-name",
    "valueString" : "Paracetamol, Codeine Phosphate"
  },
  {
    "url" : "http://hl7.org.au/fhir/StructureDefinition/medication-strength",
    "valueString" : "500mg;8mg"
  }],
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "56502011000036107"
    },
    {
      "system" : "http://snomed.info/sct",
      "code" : "63851011000036100"
    }],
    "text" : "Panadeine (24)"
  },
  "form" : {
    "text" : "Caplet"
  }
}

```
