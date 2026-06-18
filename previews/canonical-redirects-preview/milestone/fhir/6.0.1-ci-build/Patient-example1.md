# Patient - with IHI, DVA Number (with specific card colour) and the extension for Indigenous Status - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **Patient - with IHI, DVA Number (with specific card colour) and the extension for Indigenous Status**

## Example Patient: Patient - with IHI, DVA Number (with specific card colour) and the extension for Indigenous Status

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

Profile: [AU Base Patient](StructureDefinition-au-patient.md)

Harry Dan Male, DoB: 1939-08-25 ( IHI: Austalian Healthcare Identifier - Individual#8003608833357361)

-------

| | |
| :--- | :--- |
| Other Id: | DVA Number (Gold)/NBUR9080 |
| Contact Detail | * [hdan@amail.example.com](mailto:hdan@amail.example.com)
* 29 Gadsby Street Blacktown NSW 2148 Australia (home)
 |
| [Australian Veteran Status](StructureDefinition-veteran-status.md) | australian-veteran-status-1: 3 (Previous regular service) |
| [Australian Indigenous Status](StructureDefinition-indigenous-status.md) | australian-indigenous-status-1: 3 (Both Aboriginal and Torres Strait Islander origin) |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "example1",
  "meta" : {
    "profile" : ["http://hl7.org.au/fhir/StructureDefinition/au-patient"]
  },
  "extension" : [{
    "url" : "http://hl7.org.au/fhir/StructureDefinition/indigenous-status",
    "valueCoding" : {
      "system" : "https://healthterminologies.gov.au/fhir/CodeSystem/australian-indigenous-status-1",
      "code" : "3",
      "display" : "Both Aboriginal and Torres Strait Islander origin"
    }
  },
  {
    "url" : "http://hl7.org.au/fhir/StructureDefinition/veteran-status",
    "valueCoding" : {
      "system" : "https://healthterminologies.gov.au/fhir/CodeSystem/australian-veteran-status-1",
      "code" : "3",
      "display" : "Previous regular service"
    }
  }],
  "identifier" : [{
    "extension" : [{
      "url" : "http://hl7.org.au/fhir/StructureDefinition/ihi-status",
      "valueCoding" : {
        "system" : "https://healthterminologies.gov.au/fhir/CodeSystem/ihi-status-1",
        "code" : "expired",
        "display" : "expired"
      }
    },
    {
      "url" : "http://hl7.org.au/fhir/StructureDefinition/ihi-record-status",
      "valueCoding" : {
        "system" : "https://healthterminologies.gov.au/fhir/CodeSystem/ihi-record-status-1",
        "code" : "unverified",
        "display" : "unverified"
      }
    },
    {
      "url" : "http://hl7.org.au/fhir/StructureDefinition/ihi-verified-date",
      "valueDateTime" : "2021-08-18"
    }],
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "NI",
        "display" : "National unique individual identifier"
      }],
      "text" : "IHI"
    },
    "system" : "http://ns.electronichealth.net.au/id/hi/ihi/1.0",
    "value" : "8003608833357361"
  },
  {
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org.au/CodeSystem/v2-0203",
        "code" : "DVG",
        "display" : "DVA Number (Gold Card)"
      }],
      "text" : "DVA Number (Gold)"
    },
    "system" : "http://ns.electronichealth.net.au/id/dva",
    "value" : "NBUR9080"
  }],
  "name" : [{
    "family" : "Dan",
    "given" : ["Harry"]
  }],
  "telecom" : [{
    "system" : "email",
    "value" : "hdan@amail.example.com",
    "use" : "home"
  }],
  "gender" : "male",
  "birthDate" : "1939-08-25",
  "address" : [{
    "use" : "home",
    "line" : ["29 Gadsby Street"],
    "city" : "Blacktown",
    "state" : "NSW",
    "postalCode" : "2148",
    "country" : "Australia"
  }]
}

```
