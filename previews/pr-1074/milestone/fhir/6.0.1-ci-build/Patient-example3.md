# Patient - with birth date and birth time - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **Patient - with birth date and birth time**

## Example Patient: Patient - with birth date and birth time

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

**id**: example3

**name**: John Smith 

**telecom**: jsmith@amail.com.au

**birthDate**: 1956-08-23

**birthTime**: 14:35:45-05:00

**address**: 10 Smith Street Neutral Bay NSW 2055 Australia



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "example3",
  "meta" : {
    "profile" : ["http://hl7.org.au/fhir/StructureDefinition/au-patient"]
  },
  "name" : [{
    "family" : "Smith",
    "given" : ["John"]
  }],
  "telecom" : [{
    "system" : "email",
    "value" : "jsmith@amail.example.com"
  }],
  "birthDate" : "1956-08-23",
  "_birthDate" : {
    "extension" : [{
      "url" : "http://hl7.org.au/fhir/StructureDefinition/date-accuracy-indicator",
      "valueCoding" : {
        "system" : "https://healthterminologies.gov.au/fhir/CodeSystem/date-accuracy-indicator-1",
        "code" : "AAA",
        "display" : "Day, month and year are accurate"
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/patient-birthTime",
      "valueDateTime" : "1956-08-23T14:35:45-05:00"
    }]
  },
  "address" : [{
    "line" : ["10 Smith Street"],
    "city" : "Neutral Bay",
    "state" : "NSW",
    "postalCode" : "2055",
    "country" : "Australia"
  }]
}

```
