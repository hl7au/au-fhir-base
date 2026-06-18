# Procedure - Stent placement - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **Procedure - Stent placement**

## Example Procedure: Procedure - Stent placement

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

Profile: [AU Base Procedure](StructureDefinition-au-procedure.md)

**partOf**: [Procedure Cardiac catheterisation](Procedure-example1.md)

**status**: Completed

**code**: Placement of stent in coronary artery

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
  "id" : "example2",
  "meta" : {
    "profile" : ["http://hl7.org.au/fhir/StructureDefinition/au-procedure"]
  },
  "partOf" : [{
    "reference" : "Procedure/example1"
  }],
  "status" : "completed",
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "36969009",
      "display" : "Placement of stent in coronary artery"
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
