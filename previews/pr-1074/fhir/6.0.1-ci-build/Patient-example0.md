# Patient - with IHI, Medicare Card Number, patient internal identifier and the extension for Indigenous Status - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **Patient - with IHI, Medicare Card Number, patient internal identifier and the extension for Indigenous Status**

## Example Patient: Patient - with IHI, Medicare Card Number, patient internal identifier and the extension for Indigenous Status

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

Profile: [AU Base Patient](StructureDefinition-au-patient.md)

Stella Franklin (official) Female, DoB: 1985-10-14 ( IHI: Austalian Healthcare Identifier - Individual#8003608833357361)

-------

| | |
| :--- | :--- |
| Other Ids: | * Medicare Number/32788511952 (, period: (?) --> 2019-05)
* Health Care Card Number/307111942H
* Patient Internal Identifier/123450
 |
| Contact Detail | * [sfranklin@amail.example.com](mailto:sfranklin@amail.example.com)
* 31 Pacquola Street Blacktown NSW 2148 Australia (home)
 |
| [Australian Indigenous Status](StructureDefinition-indigenous-status.md) | australian-indigenous-status-1: 9 (Not stated/inadequately described) |
| Individual Gender Identity: | * value: Prefer not to answer
 |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "example0",
  "meta" : {
    "profile" : ["http://hl7.org.au/fhir/StructureDefinition/au-patient"]
  },
  "extension" : [{
    "url" : "http://hl7.org.au/fhir/StructureDefinition/indigenous-status",
    "valueCoding" : {
      "system" : "https://healthterminologies.gov.au/fhir/CodeSystem/australian-indigenous-status-1",
      "code" : "9",
      "display" : "Not stated/inadequately described"
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/individual-genderIdentity",
    "extension" : [{
      "url" : "value",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/data-absent-reason",
          "code" : "asked-declined",
          "display" : "Asked But Declined"
        }],
        "text" : "Prefer not to answer"
      }
    }]
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
  },
  {
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "MC",
        "display" : "Patient's Medicare Number"
      }],
      "text" : "Medicare Number"
    },
    "system" : "http://ns.electronichealth.net.au/id/medicare-number",
    "value" : "32788511952",
    "period" : {
      "end" : "2019-05"
    }
  },
  {
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "HC",
        "display" : "Health Card Number"
      }],
      "text" : "Health Care Card Number"
    },
    "system" : "http://ns.electronichealth.net.au/id/centrelink-customer-reference-number",
    "value" : "307111942H"
  },
  {
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "PI",
        "display" : "Patient internal identifier"
      }],
      "text" : "Patient Internal Identifier"
    },
    "system" : "https://dfmc.example.com/patient/pi",
    "value" : "123450",
    "assigner" : {
      "reference" : "Organization/example3",
      "display" : "Devonport Family Medicine Clinic"
    }
  }],
  "name" : [{
    "extension" : [{
      "url" : "http://hl7.org.au/fhir/StructureDefinition/name-context",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org.au/CodeSystem/name-context",
          "code" : "ihi-validation",
          "display" : "IHI Validation"
        }]
      }
    }],
    "use" : "official",
    "family" : "Franklin",
    "given" : ["Stella"]
  }],
  "telecom" : [{
    "system" : "email",
    "value" : "sfranklin@amail.example.com",
    "use" : "work"
  }],
  "gender" : "female",
  "birthDate" : "1985-10-14",
  "address" : [{
    "use" : "home",
    "line" : ["31 Pacquola Street"],
    "city" : "Blacktown",
    "state" : "NSW",
    "postalCode" : "2148",
    "country" : "Australia"
  }]
}

```
