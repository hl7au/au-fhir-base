# Location - for mobile services that can be delivered in schools - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **Location - for mobile services that can be delivered in schools**

## Example Location: Location - for mobile services that can be delivered in schools

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

Profile: [AU Base Location](StructureDefinition-au-location.md)

**name**: Mobile, school-based

**mode**: Kind

**type**: Mobile Unit, school



## Resource Content

```json
{
  "resourceType" : "Location",
  "id" : "example6",
  "meta" : {
    "profile" : ["http://hl7.org.au/fhir/StructureDefinition/au-location"]
  },
  "name" : "Mobile, school-based",
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
      "code" : "SCHOOL"
    }]
  }]
}

```
