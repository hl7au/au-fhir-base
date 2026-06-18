# Organization - The Corporation of the Council of the Ward of Nundah - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **Organization - The Corporation of the Council of the Ward of Nundah**

## Example Organization: Organization - The Corporation of the Council of the Ward of Nundah

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

**identifier**: ABN/91420780376

**active**: true

**type**: Religious Institution

**name**: The Corporation of the Synod of the Diocese of Nundah

**telecom**: [info@CSDN.example.com](mailto:info@CSDN.example.com)

**address**: 700 Church Road Zillmere QLD 4034 AU (work)



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "example5",
  "identifier" : [{
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org.au/CodeSystem/v2-0203",
        "code" : "ABN",
        "display" : "Australian Business Number"
      }],
      "text" : "ABN"
    },
    "system" : "http://hl7.org.au/id/abn",
    "value" : "91420780376"
  }],
  "active" : true,
  "type" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/organization-type",
      "code" : "reli"
    }],
    "text" : "Religious Institution"
  }],
  "name" : "The Corporation of the Synod of the Diocese of Nundah",
  "telecom" : [{
    "system" : "email",
    "value" : "info@CSDN.example.com",
    "use" : "work"
  }],
  "address" : [{
    "use" : "work",
    "line" : ["700 Church Road"],
    "city" : "Zillmere",
    "state" : "QLD",
    "postalCode" : "4034",
    "country" : "AU"
  }]
}

```
