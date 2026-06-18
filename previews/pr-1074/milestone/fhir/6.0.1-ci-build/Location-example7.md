# Location - for mobile services that can be delivered in residential care facilities - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **Location - for mobile services that can be delivered in residential care facilities**

## Example Location: Location - for mobile services that can be delivered in residential care facilities

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

Profile: [AU Base Location](StructureDefinition-au-location.md)

**name**: Mobile, residential-care-based

**mode**: Kind

**type**: Mobile Unit, Patient's Residence



## Resource Content

```json
{
  "resourceType" : "Location",
  "id" : "example7",
  "meta" : {
    "profile" : ["http://hl7.org.au/fhir/StructureDefinition/au-location"]
  },
  "name" : "Mobile, residential-care-based",
  "mode" : "kind",
  "type" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-RoleCode",
      "code" : "MOBL"
    }]
  },
  {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-RoleCode",
      "code" : "PTRES"
    }]
  }]
}

```
