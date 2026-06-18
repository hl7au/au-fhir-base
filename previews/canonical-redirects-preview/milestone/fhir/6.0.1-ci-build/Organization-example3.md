# Organization - a typical Organisation the General Practitioner belongs to - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **Organization - a typical Organisation the General Practitioner belongs to**

## Example Organization: Organization - a typical Organisation the General Practitioner belongs to

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

Profile: [AU Base Organization](StructureDefinition-au-organization.md)

**identifier**: ABN/51824754455

**type**: Medical centre

**name**: Devonport Family Medicine Clinic

**telecom**: [reception@dfmc.example.com](mailto:reception@dfmc.example.com), fax: (03) 5550 5557(Work), ph: (03) 5550 5556(Work)

**address**: LPO Box 235 Strahan TAS 7468 AU 



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "example3",
  "meta" : {
    "profile" : ["http://hl7.org.au/fhir/StructureDefinition/au-organization"]
  },
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
    "value" : "51824754455"
  }],
  "type" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "288565001",
      "display" : "Medical centre"
    }]
  }],
  "name" : "Devonport Family Medicine Clinic",
  "telecom" : [{
    "system" : "email",
    "value" : "reception@dfmc.example.com",
    "use" : "work"
  },
  {
    "system" : "fax",
    "value" : "(03) 5550 5557",
    "use" : "work"
  },
  {
    "system" : "phone",
    "value" : "(03) 5550 5556",
    "use" : "work"
  }],
  "address" : [{
    "type" : "postal",
    "line" : ["LPO Box 235"],
    "city" : "Strahan",
    "state" : "TAS",
    "postalCode" : "7468",
    "country" : "AU"
  }]
}

```
