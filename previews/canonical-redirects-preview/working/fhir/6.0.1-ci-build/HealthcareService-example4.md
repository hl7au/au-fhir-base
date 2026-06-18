# HealthcareService - Leafy Grove Home for the Aged - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **HealthcareService - Leafy Grove Home for the Aged**

## Example HealthcareService: HealthcareService - Leafy Grove Home for the Aged

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

**identifier**: RACS ID/0009

**active**: true

**providedBy**: [Organization The Corporation of the Synod of the Diocese of Nundah](Organization-example5.md)

**type**: Aged care residential service

**location**: [Location Leafy Grove](Location-example8.md)

**name**: Leafy Grove Home for the Aged

**telecom**: ph: (07) 8543 5755(Work)

**serviceProvisionCode**: Fees Apply, Co-payment, Mixed Billing

**communication**: English, Arabic, Cantonese, Chinese, Croatian, Greek, Italian, Mandarin, Polish, Spanish, Vietnamese



## Resource Content

```json
{
  "resourceType" : "HealthcareService",
  "id" : "example4",
  "identifier" : [{
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org.au/CodeSystem/v2-0203",
        "code" : "RACSI"
      }],
      "text" : "RACS ID"
    },
    "system" : "http://ns.electronichealth.net.au/id/residential-aged-care-service-id",
    "value" : "0009"
  }],
  "active" : true,
  "providedBy" : {
    "reference" : "Organization/example5"
  },
  "type" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "1120991000168102"
    }],
    "text" : "Aged care residential service"
  }],
  "location" : [{
    "reference" : "Location/example8"
  }],
  "name" : "Leafy Grove Home for the Aged",
  "telecom" : [{
    "system" : "phone",
    "value" : "(07) 8543 5755",
    "use" : "work"
  }],
  "serviceProvisionCode" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org.au/CodeSystem/service-provision-conditions",
      "code" : "FAP"
    }],
    "text" : "Fees Apply"
  },
  {
    "coding" : [{
      "system" : "http://terminology.hl7.org.au/CodeSystem/service-provision-conditions",
      "code" : "COP"
    }],
    "text" : "Co-payment"
  },
  {
    "coding" : [{
      "system" : "http://terminology.hl7.org.au/CodeSystem/service-provision-conditions",
      "code" : "MIX"
    }],
    "text" : "Mixed Billing"
  }],
  "communication" : [{
    "coding" : [{
      "system" : "urn:ietf:bcp:47",
      "code" : "en"
    }],
    "text" : "English"
  },
  {
    "coding" : [{
      "system" : "urn:ietf:bcp:47",
      "code" : "ar"
    }],
    "text" : "Arabic"
  },
  {
    "coding" : [{
      "system" : "urn:ietf:bcp:47",
      "code" : "yue"
    }],
    "text" : "Cantonese"
  },
  {
    "coding" : [{
      "system" : "urn:ietf:bcp:47",
      "code" : "zh"
    }],
    "text" : "Chinese"
  },
  {
    "coding" : [{
      "system" : "urn:ietf:bcp:47",
      "code" : "hr"
    }],
    "text" : "Croatian"
  },
  {
    "coding" : [{
      "system" : "urn:ietf:bcp:47",
      "code" : "el"
    }],
    "text" : "Greek"
  },
  {
    "coding" : [{
      "system" : "urn:ietf:bcp:47",
      "code" : "it"
    }],
    "text" : "Italian"
  },
  {
    "coding" : [{
      "system" : "urn:ietf:bcp:47",
      "code" : "cmn"
    }],
    "text" : "Mandarin"
  },
  {
    "coding" : [{
      "system" : "urn:ietf:bcp:47",
      "code" : "pl"
    }],
    "text" : "Polish"
  },
  {
    "coding" : [{
      "system" : "urn:ietf:bcp:47",
      "code" : "es"
    }],
    "text" : "Spanish"
  },
  {
    "coding" : [{
      "system" : "urn:ietf:bcp:47",
      "code" : "vi"
    }],
    "text" : "Vietnamese"
  }]
}

```
