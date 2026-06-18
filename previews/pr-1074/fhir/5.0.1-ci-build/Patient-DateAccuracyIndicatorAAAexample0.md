# Patient - with Birth Date Accuracy Indicator of AAA - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **Patient - with Birth Date Accuracy Indicator of AAA**

## Example Patient: Patient - with Birth Date Accuracy Indicator of AAA

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

This example demonstrates a birth date and deceased date with an accurate day, month and year.

Note that this is a valid FHIR date.

Details include:

* An accurate FHIR date example for birth or deceased date is "1956-08-23".
* A date accuracy indicator of "AAA" indicates all components are accurate.
* When a code value contains "A", the corresponding date components (individual or combination) for birth or deceased dates must be accurate.



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "DateAccuracyIndicatorAAAexample0",
  "birthDate" : "1956-08-23",
  "_birthDate" : {
    "extension" : [{
      "url" : "http://hl7.org.au/fhir/StructureDefinition/date-accuracy-indicator",
      "valueCoding" : {
        "system" : "https://healthterminologies.gov.au/fhir/CodeSystem/date-accuracy-indicator-1",
        "code" : "AAA",
        "display" : "Day, month and year are accurate"
      }
    }]
  },
  "deceasedDateTime" : "1956-08-23T13:42:00+10:00",
  "_deceasedDateTime" : {
    "extension" : [{
      "url" : "http://hl7.org.au/fhir/StructureDefinition/date-accuracy-indicator",
      "valueCoding" : {
        "system" : "https://healthterminologies.gov.au/fhir/CodeSystem/date-accuracy-indicator-1",
        "code" : "AAA",
        "display" : "Day, month and year are accurate"
      }
    }]
  }
}

```
