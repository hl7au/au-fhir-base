# Patient - as a Culturally and linguistically diverse (CALD) patient 1 - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **Patient - as a Culturally and linguistically diverse (CALD) patient 1**

## Example Patient: Patient - as a Culturally and linguistically diverse (CALD) patient 1

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

Profile: [AU Base Patient](StructureDefinition-au-patient.md)

William Rigny Male, DoB: 1965-03-09 ( Medical record number)

-------

| | |
| :--- | :--- |
| Contact Detail | ph: 0491 577 426(Mobile) |
| Language: | Pitjantjatjara(preferred) |
| [Interpreter Required](http://hl7.org/fhir/extensions/5.3.0/StructureDefinition-patient-interpreterRequired.html) | true |
| [Australian Indigenous Status](StructureDefinition-indigenous-status.md) | australian-indigenous-status-1: 1 (Aboriginal but not Torres Strait Islander origin) |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "example6",
  "meta" : {
    "profile" : ["http://hl7.org.au/fhir/StructureDefinition/au-patient"]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/patient-interpreterRequired",
    "valueBoolean" : true
  },
  {
    "url" : "http://hl7.org.au/fhir/StructureDefinition/indigenous-status",
    "valueCoding" : {
      "system" : "https://healthterminologies.gov.au/fhir/CodeSystem/australian-indigenous-status-1",
      "code" : "1",
      "display" : "Aboriginal but not Torres Strait Islander origin"
    }
  }],
  "identifier" : [{
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "MR"
      }]
    },
    "system" : "http://ns.electronichealth.net.au/id/hpio-scoped/medicalrecord/1.0/8003621566684455",
    "value" : "765567765FRD",
    "assigner" : {
      "reference" : "Organization/example0",
      "display" : "Downunder Hospital"
    }
  }],
  "name" : [{
    "family" : "Rigny",
    "given" : ["William"],
    "prefix" : ["Mr."]
  }],
  "telecom" : [{
    "system" : "phone",
    "value" : "0491 577 426",
    "use" : "mobile"
  }],
  "gender" : "male",
  "birthDate" : "1965-03-09",
  "communication" : [{
    "language" : {
      "coding" : [{
        "system" : "urn:ietf:bcp:47",
        "code" : "pjt",
        "display" : "Pitjantjatjara"
      }]
    },
    "preferred" : true
  }]
}

```
