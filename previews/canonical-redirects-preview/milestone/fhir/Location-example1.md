# Location - of a Practitioner as a Radiologist - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **Location - of a Practitioner as a Radiologist**

## Example Location: Location - of a Practitioner as a Radiologist

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

Profile: [AU Base Location](StructureDefinition-au-location.md)

**status**: Active

**address**: 33 Slobodian Street Albion QLD 4010 AU (work)

**physicalType**: Site



## Resource Content

```json
{
  "resourceType" : "Location",
  "id" : "example1",
  "meta" : {
    "profile" : ["http://hl7.org.au/fhir/StructureDefinition/au-location"]
  },
  "status" : "active",
  "address" : {
    "use" : "work",
    "line" : ["33 Slobodian Street"],
    "city" : "Albion",
    "state" : "QLD",
    "postalCode" : "4010",
    "country" : "AU"
  },
  "physicalType" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/location-physical-type",
      "code" : "si",
      "display" : "Site"
    }]
  }
}

```
