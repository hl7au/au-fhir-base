# Patient - male born in 1949 with address and contact details - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **Patient - male born in 1949 with address and contact details**

## Example Patient: Patient - male born in 1949 with address and contact details

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

Profile: [AU Base Patient](StructureDefinition-au-patient.md)

Nicholas Jones Male, DoB: 1949-01-08 ( IHI: Austalian Healthcare Identifier - Individual#8003608833357361)

-------

| | |
| :--- | :--- |
| Contact Detail | * [nick.jones@amail.example.com](mailto:nick.jones@amail.example.com)
* ph: (0491) 579 455(Mobile)
* 4 Brisbane Street Brisbane QLD 4112 Australia (home)
 |
| [Australian Indigenous Status](StructureDefinition-indigenous-status.md) | australian-indigenous-status-1: 4 (Neither Aboriginal nor Torres Strait Islander origin) |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "example8",
  "meta" : {
    "profile" : ["http://hl7.org.au/fhir/StructureDefinition/au-patient"]
  },
  "extension" : [{
    "url" : "http://hl7.org.au/fhir/StructureDefinition/indigenous-status",
    "valueCoding" : {
      "system" : "https://healthterminologies.gov.au/fhir/CodeSystem/australian-indigenous-status-1",
      "code" : "4",
      "display" : "Neither Aboriginal nor Torres Strait Islander origin"
    }
  }],
  "identifier" : [{
    "extension" : [{
      "url" : "http://hl7.org.au/fhir/StructureDefinition/ihi-status",
      "valueCoding" : {
        "system" : "https://healthterminologies.gov.au/fhir/CodeSystem/ihi-status-1",
        "code" : "active",
        "display" : "active"
      }
    },
    {
      "url" : "http://hl7.org.au/fhir/StructureDefinition/ihi-record-status",
      "valueCoding" : {
        "system" : "https://healthterminologies.gov.au/fhir/CodeSystem/ihi-record-status-1",
        "code" : "verified",
        "display" : "verified"
      }
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
  }],
  "name" : [{
    "family" : "Jones",
    "given" : ["Nicholas"],
    "prefix" : ["Mr"]
  }],
  "telecom" : [{
    "system" : "email",
    "value" : "nick.jones@amail.example.com",
    "use" : "home"
  },
  {
    "system" : "phone",
    "value" : "(0491) 579 455",
    "use" : "mobile"
  }],
  "gender" : "male",
  "birthDate" : "1949-01-08",
  "address" : [{
    "use" : "home",
    "line" : ["4 Brisbane Street"],
    "city" : "Brisbane",
    "state" : "QLD",
    "postalCode" : "4112",
    "country" : "Australia"
  }]
}

```
