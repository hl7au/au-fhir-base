# Condition - with evidence and onset date-time - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **Condition - with evidence and onset date-time**

## Example Condition: Condition - with evidence and onset date-time

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

Profile: [AU Base Condition](StructureDefinition-au-condition.md)

**clinicalStatus**: Active

**verificationStatus**: Confirmed

**code**: Type 2 diabetes mellitus

**subject**: [Stella Franklin (official) Female, DoB: 1985-10-14 ( IHI: Austalian Healthcare Identifier - Individual#8003608833357361)](Patient-example0.md)

**onset**: 2011-01-23

### Evidences

| | |
| :--- | :--- |
| - | **Code** |
| * | Neuropathy |



## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "example0",
  "meta" : {
    "profile" : ["http://hl7.org.au/fhir/StructureDefinition/au-condition"]
  },
  "clinicalStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/condition-clinical",
      "code" : "active"
    }]
  },
  "verificationStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/condition-ver-status",
      "code" : "confirmed"
    }]
  },
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "44054006",
      "display" : "Type 2 diabetes mellitus"
    }]
  },
  "subject" : {
    "reference" : "Patient/example0"
  },
  "onsetDateTime" : "2011-01-23",
  "evidence" : [{
    "code" : [{
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "386033004",
        "display" : "Neuropathy"
      }]
    }]
  }]
}

```
