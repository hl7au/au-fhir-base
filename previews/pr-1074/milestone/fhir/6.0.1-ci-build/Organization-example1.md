# Organization - a typical Organisation the Radiologist belongs to - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **Organization - a typical Organisation the Radiologist belongs to**

## Example Organization: Organization - a typical Organisation the Radiologist belongs to

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

Profile: [AU Base Organization](StructureDefinition-au-organization.md)

**identifier**: ABN/51824753556

**type**: Private hospital

**name**: Albion Hospital

> **contact****purpose**: Medical Record**telecom**: ph: (07) 5550 5556

> **contact****purpose**: Media enquiries**telecom**: [press@albionhospital.example.com](mailto:press@albionhospital.example.com), ph: (07) 5550 5557

> **contact****purpose**: Human Resources**telecom**: [hr@albionhospital.example.com](mailto:hr@albionhospital.example.com)



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "example1",
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
    "value" : "51824753556"
  }],
  "type" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "309895006",
      "display" : "Private hospital"
    }]
  }],
  "name" : "Albion Hospital",
  "contact" : [{
    "purpose" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org.au/CodeSystem/contact-purpose",
        "code" : "medical-record",
        "display" : "Medical Record"
      }]
    },
    "telecom" : [{
      "system" : "phone",
      "value" : "(07) 5550 5556"
    }]
  },
  {
    "purpose" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/contactentity-type",
        "code" : "PRESS",
        "display" : "Press"
      }],
      "text" : "Media enquiries"
    },
    "telecom" : [{
      "system" : "email",
      "value" : "press@albionhospital.example.com"
    },
    {
      "system" : "phone",
      "value" : "(07) 5550 5557"
    }]
  },
  {
    "purpose" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/contactentity-type",
        "code" : "HR"
      }],
      "text" : "Human Resources"
    },
    "telecom" : [{
      "system" : "email",
      "value" : "hr@albionhospital.example.com"
    }]
  }]
}

```
