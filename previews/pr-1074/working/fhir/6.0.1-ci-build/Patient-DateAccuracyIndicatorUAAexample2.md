# Patient - with Birth Date Accuracy Indicator of UAA - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **Patient - with Birth Date Accuracy Indicator of UAA**

## Example Patient: Patient - with Birth Date Accuracy Indicator of UAA

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

This example demonstrates birth date and deceased date with unknown day, accurate month and year.

Note that "1978-08-00" is NOT a valid FHIR date.

Details include:

* A valid FHIR date example for birth date and deceased date is "1978-08-21" but not "1978-08-00".
* A date accuracy indicator of "UAA" indicates that the day is unknown but month and year are accurate.
* When a code value contains "U", the corresponding date components (individual or combination) for birth or deceased dates must be ignored.
* When a code value contains "A", the corresponding date components (individual or combination) for birth or deceased dates must be accurate.



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "DateAccuracyIndicatorUAAexample2",
  "birthDate" : "1978-08-21",
  "_birthDate" : {
    "extension" : [{
      "url" : "http://hl7.org.au/fhir/StructureDefinition/date-accuracy-indicator",
      "valueCoding" : {
        "system" : "https://healthterminologies.gov.au/fhir/CodeSystem/date-accuracy-indicator-1",
        "code" : "UAA",
        "display" : "Day is unknown, month and year are accurate"
      }
    }]
  },
  "deceasedDateTime" : "1978-08-21T13:42:00+10:00",
  "_deceasedDateTime" : {
    "extension" : [{
      "url" : "http://hl7.org.au/fhir/StructureDefinition/date-accuracy-indicator",
      "valueCoding" : {
        "system" : "https://healthterminologies.gov.au/fhir/CodeSystem/date-accuracy-indicator-1",
        "code" : "UAA",
        "display" : "Day is unknown, month and year are accurate"
      }
    }]
  }
}

```
