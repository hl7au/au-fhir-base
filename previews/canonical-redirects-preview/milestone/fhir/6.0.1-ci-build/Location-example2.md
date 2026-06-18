# Location - of a Practitioner as a Pathologist - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **Location - of a Practitioner as a Pathologist**

## Example Location: Location - of a Practitioner as a Pathologist

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

Profile: [AU Base Location](StructureDefinition-au-location.md)

**identifier**: NATA Site Number/162899, LSPN/123333

**status**: Active

**address**: Level 1, Green Building, Albion Hospital, QLD

**physicalType**: Level

**partOf**: [Location: status = active; physicalType = Site](Location-example1.md)



## Resource Content

```json
{
  "resourceType" : "Location",
  "id" : "example2",
  "meta" : {
    "profile" : ["http://hl7.org.au/fhir/StructureDefinition/au-location"]
  },
  "identifier" : [{
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org.au/CodeSystem/v2-0203",
        "code" : "NATAS",
        "display" : "NATA Site Number"
      }],
      "text" : "NATA Site Number"
    },
    "system" : "http://hl7.org.au/id/nata-site",
    "value" : "162899"
  },
  {
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org.au/CodeSystem/v2-0203",
        "code" : "LSPN",
        "display" : "Location Specific Practice Number"
      }],
      "text" : "LSPN"
    },
    "system" : "http://ns.electronichealth.net.au/id/location-specific-practice-number",
    "value" : "123333"
  }],
  "status" : "active",
  "address" : {
    "type" : "physical",
    "text" : "Level 1, Green Building, Albion Hospital, QLD",
    "line" : ["Level 1, Green Building", "33 Slobodian Street"],
    "city" : "Albion",
    "state" : "QLD",
    "postalCode" : "4010",
    "country" : "AU"
  },
  "physicalType" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/location-physical-type",
      "code" : "lvl",
      "display" : "Level"
    }]
  },
  "partOf" : {
    "reference" : "Location/example1"
  }
}

```
