# Patient - as a Culturally and linguistically diverse (CALD) patient 2 - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **Patient - as a Culturally and linguistically diverse (CALD) patient 2**

## Example Patient: Patient - as a Culturally and linguistically diverse (CALD) patient 2

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

Profile: [AU Base Patient](StructureDefinition-au-patient.md)

Alejandro Hernández Male, DoB: 1953-05-05 ( Medical record number)

-------

| | |
| :--- | :--- |
| Other Ids: | * Pension Number/307111942H
* Commonwealth Seniors Health Card/307111942H
* Member Number/8279115
 |
| Contact Detail | 20 Ocean Drive SYDNEY NSW 2000 AU |
| [Patient Birth Place](http://hl7.org/fhir/extensions/5.3.0/StructureDefinition-patient-birthPlace.html) | Mexico |
| [Date of Arrival in Australia](StructureDefinition-date-of-arrival.md) | 2001-10-14 |
| [Interpreter Required](http://hl7.org/fhir/extensions/5.3.0/StructureDefinition-patient-interpreterRequired.html) | true |
| Individual Gender Identity: | * value: Questioning
 |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "example7",
  "meta" : {
    "profile" : ["http://hl7.org.au/fhir/StructureDefinition/au-patient"]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/patient-interpreterRequired",
    "valueBoolean" : true
  },
  {
    "url" : "http://hl7.org.au/fhir/StructureDefinition/date-of-arrival",
    "valueDate" : "2001-10-14"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/patient-birthPlace",
    "valueAddress" : {
      "text" : "Mexico",
      "country" : "MX"
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/individual-genderIdentity",
    "extension" : [{
      "url" : "value",
      "valueCodeableConcept" : {
        "text" : "Questioning"
      }
    }]
  }],
  "identifier" : [{
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "MR"
      }]
    },
    "system" : "http://downunderhospital.example.com/identifiers/patient",
    "value" : "765567765FRD",
    "assigner" : {
      "reference" : "Organization/example0",
      "display" : "Downunder Hospital"
    }
  },
  {
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "PEN"
      }]
    },
    "system" : "http://ns.electronichealth.net.au/id/centrelink-customer-reference-number",
    "value" : "307111942H",
    "assigner" : {
      "display" : "Services Australia"
    }
  },
  {
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org.au/CodeSystem/v2-0203",
        "code" : "SEN"
      }]
    },
    "system" : "http://ns.electronichealth.net.au/id/centrelink-customer-reference-number",
    "value" : "307111942H",
    "assigner" : {
      "display" : "Services Australia"
    }
  },
  {
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "MB"
      }]
    },
    "system" : "http://myhealthprivatehealthinsurance.example.com/member/memberid",
    "value" : "8279115",
    "assigner" : {
      "display" : "MyHealth Private Healthinsurance Company"
    }
  }],
  "name" : [{
    "family" : "Hernández",
    "given" : ["Alejandro"]
  }],
  "gender" : "male",
  "birthDate" : "1953-05-05",
  "address" : [{
    "line" : ["20 Ocean Drive"],
    "city" : "SYDNEY",
    "state" : "NSW",
    "postalCode" : "2000",
    "country" : "AU"
  }]
}

```
