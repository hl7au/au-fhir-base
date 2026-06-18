# Location - for services delivered by phone, video or online - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **Location - for services delivered by phone, video or online**

## Example Location: Location - for services delivered by phone, video or online

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

Profile: [AU Base Location](StructureDefinition-au-location.md)

**name**: Telehealth

**mode**: Kind

**type**: Virtual

**physicalType**: Virtual



## Resource Content

```json
{
  "resourceType" : "Location",
  "id" : "example4",
  "meta" : {
    "profile" : ["http://hl7.org.au/fhir/StructureDefinition/au-location"]
  },
  "name" : "Telehealth",
  "mode" : "kind",
  "type" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org.au/CodeSystem/location-type",
      "code" : "VI"
    }]
  }],
  "physicalType" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/location-physical-type",
      "code" : "vi",
      "display" : "Virtual"
    }]
  }
}

```
