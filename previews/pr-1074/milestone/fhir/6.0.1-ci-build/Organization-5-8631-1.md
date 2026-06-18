# Organization - a Pathology organisation with HPI-O and is a parent organization - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **Organization - a Pathology organisation with HPI-O and is a parent organization**

## Example Organization: Organization - a Pathology organisation with HPI-O and is a parent organization

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

version: Version-2

Profile: [AU Base Organization](StructureDefinition-au-organization.md)

**identifier**: HPI-O/8003621566684455

**type**: Pathology and Diagnostic Imaging Services

**name**: Test Org -DigitalHealth 5

**alias**: Digital Health 5, Digital Health Five

**address**: 23 Marcus Cres KEMPSEY NSW 2440 AU 



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "5-8631-1",
  "meta" : {
    "versionId" : "Version-2",
    "profile" : ["http://hl7.org.au/fhir/StructureDefinition/au-organization"]
  },
  "identifier" : [{
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org.au/CodeSystem/v2-0203",
        "code" : "NOI"
      }],
      "text" : "HPI-O"
    },
    "system" : "http://ns.electronichealth.net.au/id/hi/hpio/1.0",
    "value" : "8003621566684455"
  }],
  "type" : [{
    "coding" : [{
      "system" : "http://www.abs.gov.au/ausstats/abs@.nsf/mf/1292.0",
      "code" : "8520",
      "display" : "Pathology and Diagnostic Imaging Services"
    }]
  }],
  "name" : "Test Org -DigitalHealth 5",
  "alias" : ["Digital Health 5", "Digital Health Five"],
  "address" : [{
    "type" : "physical",
    "line" : ["23 Marcus Cres"],
    "city" : "KEMPSEY",
    "state" : "NSW",
    "postalCode" : "2440",
    "country" : "AU"
  }]
}

```
