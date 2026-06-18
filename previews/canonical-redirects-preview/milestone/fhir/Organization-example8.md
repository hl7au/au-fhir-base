# Organization - with HAE - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **Organization - with HAE**

## Example Organization: Organization - with HAE

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

Profile: [AU Base Organization](StructureDefinition-au-organization.md)

**identifier**: HAE/8003641100000000

**active**: true

**name**: Metro Health Administration Services

**telecom**: [contact@metrohealthadmin.example.com](mailto:contact@metrohealthadmin.example.com), [+61 2 5555 0456](tel:+61255550456)

**address**: 456 Administration Avenue Sydney NSW 2000 AU (work)



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "example8",
  "meta" : {
    "profile" : ["http://hl7.org.au/fhir/StructureDefinition/au-organization"]
  },
  "identifier" : [{
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org.au/CodeSystem/v2-0203",
        "code" : "HAE",
        "display" : "Health Administration Entity"
      }],
      "text" : "HAE"
    },
    "system" : "http://ns.electronichealth.net.au/id/hi/hae/1.0",
    "value" : "8003641100000000"
  }],
  "active" : true,
  "name" : "Metro Health Administration Services",
  "telecom" : [{
    "system" : "email",
    "value" : "contact@metrohealthadmin.example.com",
    "use" : "work"
  },
  {
    "system" : "phone",
    "value" : "+61 2 5555 0456",
    "use" : "work"
  }],
  "address" : [{
    "use" : "work",
    "line" : ["456 Administration Avenue"],
    "city" : "Sydney",
    "state" : "NSW",
    "postalCode" : "2000",
    "country" : "AU"
  }]
}

```
