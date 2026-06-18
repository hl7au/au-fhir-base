# Patient - with Birth Date Accuracy Indicator of UEA - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **Patient - with Birth Date Accuracy Indicator of UEA**

## Example Patient: Patient - with Birth Date Accuracy Indicator of UEA

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

This example demonstrates birth date and deceased date with unknown day, estimated month and accurate year.

Note that "2004-06-00" is NOT a valid FHIR date.

Details include:

* A valid FHIR date example for birth date and deceased date is "2004-06-08” but not "2004-06-00".
* A date accuracy indicator of "UEA" indicates that the day is unknown but month is an estimate and year is accurate.
* When a code value contains "U", the corresponding date components (individual or combination) for birth or deceased dates must be ignored.
* When a code value contains "A", the corresponding date components (individual or combination) for birth or deceased dates must be accurate.



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "DateAccuracyIndicatorUEAexample3",
  "birthDate" : "2004-06-08",
  "_birthDate" : {
    "extension" : [{
      "url" : "http://hl7.org.au/fhir/StructureDefinition/date-accuracy-indicator",
      "valueCoding" : {
        "system" : "https://healthterminologies.gov.au/fhir/CodeSystem/date-accuracy-indicator-1",
        "code" : "UEA",
        "display" : "Day is unknown, month is estimated, year is accurate"
      }
    }]
  },
  "deceasedDateTime" : "2004-06-08T13:42:00+10:00",
  "_deceasedDateTime" : {
    "extension" : [{
      "url" : "http://hl7.org.au/fhir/StructureDefinition/date-accuracy-indicator",
      "valueCoding" : {
        "system" : "https://healthterminologies.gov.au/fhir/CodeSystem/date-accuracy-indicator-1",
        "code" : "UEA",
        "display" : "Day is unknown, month is estimated, year is accurate"
      }
    }]
  }
}

```
