# Procedure - Cryotherapy - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **Procedure - Cryotherapy**

## Example Procedure: Procedure - Cryotherapy

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

Profile: [AU Base Procedure](StructureDefinition-au-procedure.md)

**status**: Completed

**code**: Cryotherapy

**subject**: [William Rigny Male, DoB: 1965-03-09 ( Medical record number)](Patient-example6.md)

**performed**: 2021-12-10 10:30:00+1100 --> 2021-12-10 10:50:00+1100

### Performers

| | |
| :--- | :--- |
| - | **Actor** |
| * | [PractitionerRole General practitioner](PractitionerRole-example3.md) |

**reasonCode**: Actinic keratosis

**bodySite**: Skin structure of face



## Resource Content

```json
{
  "resourceType" : "Procedure",
  "id" : "example0",
  "meta" : {
    "profile" : ["http://hl7.org.au/fhir/StructureDefinition/au-procedure"]
  },
  "status" : "completed",
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "26782000",
      "display" : "Cryotherapy"
    }]
  },
  "subject" : {
    "reference" : "Patient/example6"
  },
  "performedPeriod" : {
    "start" : "2021-12-10T10:30:00+11:00",
    "end" : "2021-12-10T10:50:00+11:00"
  },
  "performer" : [{
    "actor" : {
      "reference" : "PractitionerRole/example3"
    }
  }],
  "reasonCode" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "201101007",
      "display" : "Actinic keratosis"
    }]
  }],
  "bodySite" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "73897004",
      "display" : "Skin structure of face"
    }]
  }]
}

```
