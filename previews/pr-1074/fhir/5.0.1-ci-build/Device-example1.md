# Device - as a registered repository service - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **Device - as a registered repository service**

## Example Device: Device - as a registered repository service

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

**identifier**: PAI-D/8003640013000057

### DeviceNames

| | | |
| :--- | :--- | :--- |
| - | **Name** | **Type** |
| * | Some registered repository service | other |

**type**: National patient health record repository

**owner**: Identifier: PAI-O/8003640011000059



## Resource Content

```json
{
  "resourceType" : "Device",
  "id" : "example1",
  "identifier" : [{
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org.au/CodeSystem/v2-0203",
        "code" : "NDI",
        "display" : "National Device Identifier"
      }],
      "text" : "PAI-D"
    },
    "system" : "http://ns.electronichealth.net.au/id/pcehr/paid/1.0",
    "value" : "8003640013000057"
  }],
  "deviceName" : [{
    "name" : "Some registered repository service",
    "type" : "other"
  }],
  "type" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "462240000",
      "display" : "Patient health record information system"
    }],
    "text" : "National patient health record repository"
  },
  "owner" : {
    "identifier" : {
      "type" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org.au/CodeSystem/v2-0203",
          "code" : "NOI",
          "display" : "National Organisation Identifier"
        }],
        "text" : "PAI-O"
      },
      "system" : "http://ns.electronichealth.net.au/id/pcehr/paio/1.0",
      "value" : "8003640011000059"
    }
  }
}

```
