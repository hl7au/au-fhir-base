# Organization - with HSP-O - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **Organization - with HSP-O**

## Example Organization: Organization - with HSP-O

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

Profile: [AU Base Organization](StructureDefinition-au-organization.md)

**identifier**: HSP-O/8003641000000000

**active**: true

**name**: Sunshine Home Care Services

**telecom**: [admin@sunshinehomecare.example.com](mailto:admin@sunshinehomecare.example.com), [+61 3 5555 0123](tel:+61355550123)

**address**: 125 Care Street Melbourne VIC 3000 AU (work)



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "example7",
  "meta" : {
    "profile" : ["http://hl7.org.au/fhir/StructureDefinition/au-organization"]
  },
  "identifier" : [{
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org.au/CodeSystem/v2-0203",
        "code" : "HSPO",
        "display" : "Healthcare Support Service Provider - Organisation"
      }],
      "text" : "HSP-O"
    },
    "system" : "http://ns.electronichealth.net.au/id/hi/hspo/1.0",
    "value" : "8003641000000000"
  }],
  "active" : true,
  "name" : "Sunshine Home Care Services",
  "telecom" : [{
    "system" : "email",
    "value" : "admin@sunshinehomecare.example.com",
    "use" : "work"
  },
  {
    "system" : "phone",
    "value" : "+61 3 5555 0123",
    "use" : "work"
  }],
  "address" : [{
    "use" : "work",
    "line" : ["125 Care Street"],
    "city" : "Melbourne",
    "state" : "VIC",
    "postalCode" : "3000",
    "country" : "AU"
  }]
}

```
