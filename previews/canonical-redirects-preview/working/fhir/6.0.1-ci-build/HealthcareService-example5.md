# HealthcareService - Honourable Mark's Home For Aged Men - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **HealthcareService - Honourable Mark's Home For Aged Men**

## Example HealthcareService: HealthcareService - Honourable Mark's Home For Aged Men

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

**identifier**: RACS ID/0011

**active**: true

**providedBy**: [Organization The Corporation of the Synod of the Diocese of Nundah](Organization-example5.md)

**type**: Aged care residential service

**location**: [Location: status = active; type = Nursing or custodial care facility; physicalType = Site](Location-example9.md)

**name**: Honourable Mark's Home For Aged Men

**telecom**: ph: (07) 8543 5956(Work)

**serviceProvisionCode**: Fees Apply, Co-payment, Mixed Billing



## Resource Content

```json
{
  "resourceType" : "HealthcareService",
  "id" : "example5",
  "identifier" : [{
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org.au/CodeSystem/v2-0203",
        "code" : "RACSI"
      }],
      "text" : "RACS ID"
    },
    "system" : "http://ns.electronichealth.net.au/id/residential-aged-care-service-id",
    "value" : "0011"
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
    "reference" : "Location/example9"
  }],
  "name" : "Honourable Mark's Home For Aged Men",
  "telecom" : [{
    "system" : "phone",
    "value" : "(07) 8543 5956",
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
  }]
}

```
