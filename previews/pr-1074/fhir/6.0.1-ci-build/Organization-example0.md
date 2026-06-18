# Organization - with HPI-O - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **Organization - with HPI-O**

## Example Organization: Organization - with HPI-O

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

Profile: [AU Base Organization](StructureDefinition-au-organization.md)

**identifier**: HPI-O/8003621566684455

**active**: true

**name**: Downunder Hospital

**telecom**: [helen.mayo@downunderhospital.example.com](mailto:helen.mayo@downunderhospital.example.com)

**address**: 3 McGregor Street Blacktown NSW 2148 AU (work)



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "example0",
  "meta" : {
    "profile" : ["http://hl7.org.au/fhir/StructureDefinition/au-organization"]
  },
  "identifier" : [{
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org.au/CodeSystem/v2-0203",
        "code" : "NOI",
        "display" : "National Organisation Identifier"
      }],
      "text" : "HPI-O"
    },
    "system" : "http://ns.electronichealth.net.au/id/hi/hpio/1.0",
    "value" : "8003621566684455"
  }],
  "active" : true,
  "name" : "Downunder Hospital",
  "telecom" : [{
    "system" : "email",
    "value" : "helen.mayo@downunderhospital.example.com",
    "use" : "work"
  }],
  "address" : [{
    "use" : "work",
    "line" : ["3 McGregor Street"],
    "city" : "Blacktown",
    "state" : "NSW",
    "postalCode" : "2148",
    "country" : "AU"
  }]
}

```
