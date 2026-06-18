# Location - of a Practitioner as a General Practitioner - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **Location - of a Practitioner as a General Practitioner**

## Example Location: Location - of a Practitioner as a General Practitioner

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

Profile: [AU Base Location](StructureDefinition-au-location.md)

**status**: Active

**type**: Family medicine clinic

**address**: 55 Sandy Bay Road Strahan TAS 7468 AU 

**physicalType**: Building



## Resource Content

```json
{
  "resourceType" : "Location",
  "id" : "example3",
  "meta" : {
    "profile" : ["http://hl7.org.au/fhir/StructureDefinition/au-location"]
  },
  "status" : "active",
  "type" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-RoleCode",
      "code" : "FMC",
      "display" : "Family medicine clinic"
    }]
  }],
  "address" : {
    "type" : "physical",
    "line" : ["55 Sandy Bay Road"],
    "city" : "Strahan",
    "state" : "TAS",
    "postalCode" : "7468",
    "country" : "AU"
  },
  "physicalType" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/location-physical-type",
      "code" : "bu",
      "display" : "Building"
    }]
  }
}

```
