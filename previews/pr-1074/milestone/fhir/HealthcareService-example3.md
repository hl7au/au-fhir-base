# HealthcareService - general practice - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **HealthcareService - general practice**

## Example HealthcareService: HealthcareService - general practice

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

 **Narrative** 

**id**: example3

**meta**: 

**providedBy**: [Devonport Family Medicine Clinic. Generated Summary: id: example3; ABN: 51824754455; Medical centre; name: Devonport Family Medicine Clinic; reception@dfmc.example.com(WORK), fax: (03) 5550 5557(WORK), ph: (03) 5550 5556(WORK)](Organization-example3.md)

**category**: General Practice

**specialty**: General medical practice, Opioid dependency management specialty

**location**: [Generated Summary: id: example3; status: active; Family medicine clinic; Building](Location-example3.md)

**name**: General Practitioner services

**telecom**: ph: (03) 8543 5555(WORK), ph: (03) 8543 5558(WORK - Legal)

**serviceProvisionCode**: Mixed Billing

**communication**: German, English

>  **availableTime** **daysOfWeek**: mon, tue, wed, thu, fri**availableStartTime**: **availableEndTime**: 

>  **availableTime** **daysOfWeek**: sat, sun**availableStartTime**: **availableEndTime**: 



## Resource Content

```json
{
  "resourceType" : "HealthcareService",
  "id" : "example3",
  "meta" : {
    "profile" : ["http://hl7.org.au/fhir/StructureDefinition/au-healthcareservice"]
  },
  "providedBy" : {
    "reference" : "Organization/example3",
    "display" : "Devonport Family Medicine Clinic"
  },
  "specialty" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "408443003",
      "display" : "General medical practice"
    }]
  },
  {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "23961000087102",
      "display" : "Opioid dependency management specialty"
    }]
  }],
  "location" : [{
    "reference" : "Location/example3"
  }],
  "name" : "General Practitioner services",
  "telecom" : [{
    "system" : "phone",
    "value" : "(03) 8543 5555",
    "use" : "work"
  },
  {
    "extension" : [{
      "url" : "http://hl7.org.au/fhir/StructureDefinition/contact-purpose",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org.au/CodeSystem/contact-purpose",
          "code" : "legal",
          "display" : "Legal"
        }]
      }
    }],
    "system" : "phone",
    "value" : "(03) 8543 5558",
    "use" : "work"
  }],
  "serviceProvisionCode" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org.au/CodeSystem/service-provision-conditions",
      "code" : "MIX",
      "display" : "Mixed Billing"
    }]
  }],
  "communication" : [{
    "coding" : [{
      "system" : "urn:ietf:bcp:47",
      "code" : "de",
      "display" : "German"
    }],
    "text" : "German"
  },
  {
    "coding" : [{
      "system" : "urn:ietf:bcp:47",
      "code" : "en",
      "display" : "English"
    }],
    "text" : "English"
  }],
  "availableTime" : [{
    "daysOfWeek" : ["mon", "tue", "wed", "thu", "fri"],
    "availableStartTime" : "08:00:00",
    "availableEndTime" : "20:00:00"
  },
  {
    "daysOfWeek" : ["sat", "sun"],
    "availableStartTime" : "10:00:00",
    "availableEndTime" : "16:00:00"
  }]
}

```
