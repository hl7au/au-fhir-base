# Encounter - with description - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **Encounter - with description**

## Example Encounter: Encounter - with description

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

Profile: [AU Base Encounter](StructureDefinition-au-encounter.md)

**status**: In Progress

**class**: [ActCode: ACUTE](http://terminology.hl7.org/7.2.0/CodeSystem-v3-ActCode.html#v3-ActCode-ACUTE) (inpatient acute)

### Participants

| | |
| :--- | :--- |
| - | **Extension** |
| * |  |



## Resource Content

```json
{
  "resourceType" : "Encounter",
  "id" : "example0",
  "meta" : {
    "profile" : ["http://hl7.org.au/fhir/StructureDefinition/au-encounter"]
  },
  "status" : "in-progress",
  "class" : {
    "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
    "code" : "ACUTE",
    "display" : "inpatient acute"
  },
  "participant" : [{
    "extension" : [{
      "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Encounter.participant.actor",
      "valueReference" : {
        "reference" : "HealthcareService/example1"
      }
    }]
  }]
}

```
