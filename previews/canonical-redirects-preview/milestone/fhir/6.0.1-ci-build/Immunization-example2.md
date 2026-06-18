# Immunization - Administration of a vaccine with administering provider and protocol - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **Immunization - Administration of a vaccine with administering provider and protocol**

## Example Immunization: Immunization - Administration of a vaccine with administering provider and protocol

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

Profile: [AU Base Immunization](StructureDefinition-au-immunization.md)

**status**: Completed

**vaccineCode**: Infanrix Hexa

**patient**: [Sally GRANT](Patient-example2.md)

**occurrence**: 2017-05-21

**primarySource**: true

### Performers

| | | |
| :--- | :--- | :--- |
| - | **Function** | **Actor** |
| * | Administering Provider | [Dr Helen Mayo](Practitioner-example0.md) |

### ProtocolApplieds

| | | |
| :--- | :--- | :--- |
| - | **TargetDisease** | **DoseNumber[x]** |
| * | Diphtheria caused by Corynebacterium diphtheriae | 1 |



## Resource Content

```json
{
  "resourceType" : "Immunization",
  "id" : "example2",
  "meta" : {
    "profile" : ["http://hl7.org.au/fhir/StructureDefinition/au-immunization"]
  },
  "status" : "completed",
  "vaccineCode" : {
    "coding" : [{
      "system" : "https://www.humanservices.gov.au/organisations/health-professionals/enablers/air-vaccine-code-formats",
      "code" : "IFHX"
    }],
    "text" : "Infanrix Hexa"
  },
  "patient" : {
    "reference" : "Patient/example2",
    "display" : "Sally GRANT"
  },
  "occurrenceDateTime" : "2017-05-21",
  "primarySource" : true,
  "performer" : [{
    "function" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0443",
        "code" : "AP",
        "display" : "Administering Provider"
      }],
      "text" : "Administering Provider"
    },
    "actor" : {
      "reference" : "Practitioner/example0",
      "display" : "Dr Helen Mayo"
    }
  }],
  "protocolApplied" : [{
    "targetDisease" : [{
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "397430003"
      },
      {
        "system" : "http://snomed.info/sct",
        "code" : "76902006"
      },
      {
        "system" : "http://snomed.info/sct",
        "code" : "27836007"
      },
      {
        "system" : "http://snomed.info/sct",
        "code" : "66071002"
      },
      {
        "system" : "http://snomed.info/sct",
        "code" : "398102009"
      }]
    }],
    "doseNumberPositiveInt" : 1
  }]
}

```
