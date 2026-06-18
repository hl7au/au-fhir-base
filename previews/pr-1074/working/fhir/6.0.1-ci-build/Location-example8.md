# Location - Leafy Grove Home for the Aged - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **Location - Leafy Grove Home for the Aged**

## Example Location: Location - Leafy Grove Home for the Aged

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

**status**: Active

**name**: Leafy Grove

**type**: Nursing home

**address**: 700 Church Road Zillmere QLD 4034 AU 

**physicalType**: Site

**managingOrganization**: [Organization The Corporation of the Synod of the Diocese of Nundah](Organization-example5.md)



## Resource Content

```json
{
  "resourceType" : "Location",
  "id" : "example8",
  "status" : "active",
  "name" : "Leafy Grove",
  "type" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-RoleCode",
      "code" : "NCCF"
    }],
    "text" : "Nursing home"
  }],
  "address" : {
    "type" : "physical",
    "line" : ["700 Church Road"],
    "city" : "Zillmere",
    "state" : "QLD",
    "postalCode" : "4034",
    "country" : "AU"
  },
  "physicalType" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/location-physical-type",
      "code" : "si"
    }],
    "text" : "Site"
  },
  "managingOrganization" : {
    "reference" : "Organization/example5"
  }
}

```
