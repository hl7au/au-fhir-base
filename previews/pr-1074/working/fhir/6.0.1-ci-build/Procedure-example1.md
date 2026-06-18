# Procedure - Cardiac catheterisation - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **Procedure - Cardiac catheterisation**

## Example Procedure: Procedure - Cardiac catheterisation

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

Profile: [AU Base Procedure](StructureDefinition-au-procedure.md)

**status**: Completed

**code**: Cardiac catheterisation

**subject**: [Harry Dan Male, DoB: 1939-08-25 ( IHI: Austalian Healthcare Identifier - Individual#8003608833357361)](Patient-example1.md)

**performed**: 2021-09-25

### Performers

| | |
| :--- | :--- |
| - | **Actor** |
| * | [PractitionerRole Cardiologist](PractitionerRole-example4.md) |

**location**: [Location Downunder Hospital Blacktown](Location-example0.md)

**reasonCode**: Occlusion of right coronary artery



## Resource Content

```json
{
  "resourceType" : "Procedure",
  "id" : "example1",
  "meta" : {
    "profile" : ["http://hl7.org.au/fhir/StructureDefinition/au-procedure"]
  },
  "status" : "completed",
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "41976001",
      "display" : "Cardiac catheterisation"
    }]
  },
  "subject" : {
    "reference" : "Patient/example1"
  },
  "performedDateTime" : "2021-09-25",
  "performer" : [{
    "actor" : {
      "reference" : "PractitionerRole/example4"
    }
  }],
  "location" : {
    "reference" : "Location/example0"
  },
  "reasonCode" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "876856005",
      "display" : "Stenosis of right coronary artery"
    }],
    "text" : "Occlusion of right coronary artery"
  }]
}

```
