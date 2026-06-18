# Immunization - Non-administration of varicella-zoster live vaccine due to refusal - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **Immunization - Non-administration of varicella-zoster live vaccine due to refusal**

## Example Immunization: Immunization - Non-administration of varicella-zoster live vaccine due to refusal

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

Profile: [AU Base Immunization](StructureDefinition-au-immunization.md)

**status**: Not Done

**statusReason**: Patient objection

**vaccineCode**: Varicella-zoster live vaccine

**patient**: [Harry DAN](Patient-example1.md)

**occurrence**: 2017-08-15

**primarySource**: true

### Performers

| | | |
| :--- | :--- | :--- |
| - | **Function** | **Actor** |
| * | Administering Provider | [Dr Helen Mayo](Practitioner-example0.md) |

**note**: 

> 

Patient refused administration of Zostavax




## Resource Content

```json
{
  "resourceType" : "Immunization",
  "id" : "example0",
  "meta" : {
    "profile" : ["http://hl7.org.au/fhir/StructureDefinition/au-immunization"]
  },
  "status" : "not-done",
  "statusReason" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "1620681000168106",
      "display" : "Patient objection"
    }]
  },
  "vaccineCode" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "830851000168105",
      "display" : "Varicella-zoster live vaccine"
    }]
  },
  "patient" : {
    "reference" : "Patient/example1",
    "display" : "Harry DAN"
  },
  "occurrenceDateTime" : "2017-08-15",
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
  "note" : [{
    "text" : "Patient refused administration of Zostavax"
  }]
}

```
