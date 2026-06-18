# HealthcareService - with HPI-O with varied contact details - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **HealthcareService - with HPI-O with varied contact details**

## Example HealthcareService: HealthcareService - with HPI-O with varied contact details

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

 **Narrative** 

**id**: example0

**name**: Cardiothoracic Services

**meta**: 

**identifier**: HPI-O: 8003621566684455

**active**: true

**specialty**: Cardiothoracic surgery

**telecom**: ph: 0255503333(WORK), ph: 0255504444(WORK - Medical Record), ph: 0255505555(WORK - After Hours)



## Resource Content

```json
{
  "resourceType" : "HealthcareService",
  "id" : "example0",
  "meta" : {
    "profile" : ["http://hl7.org.au/fhir/StructureDefinition/au-healthcareservice"]
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
  "specialty" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "394603008",
      "display" : "Cardiothoracic surgery"
    }]
  }],
  "name" : "Cardiothoracic Services",
  "telecom" : [{
    "system" : "phone",
    "value" : "0255503333",
    "use" : "work"
  },
  {
    "extension" : [{
      "url" : "http://hl7.org.au/fhir/StructureDefinition/contact-purpose",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org.au/CodeSystem/contact-purpose",
          "code" : "medical-record",
          "display" : "Medical Record"
        }]
      }
    }],
    "system" : "phone",
    "value" : "0255504444",
    "use" : "work"
  },
  {
    "extension" : [{
      "url" : "http://hl7.org.au/fhir/StructureDefinition/contact-purpose",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org.au/CodeSystem/contact-purpose",
          "code" : "after-hours",
          "display" : "After Hours"
        }]
      }
    }],
    "system" : "phone",
    "value" : "0255505555",
    "use" : "work"
  }]
}

```
