# Patient - with Birth Date Accuracy Indicator of AAU - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **Patient - with Birth Date Accuracy Indicator of AAU**

## Example Patient: Patient - with Birth Date Accuracy Indicator of AAU

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

This example demonstrates birth date and deceased date with an accurate day, month and unknown year.

Note that "0000-08-23" is a NOT a valid FHIR date.

Details include:

* A valid FHIR date example for birth date and deceased date is "2004-08-23” but not "0000-08-23".
* A date accuracy indicator of "AAU" indicates that day and month are accurate but year is unknown.
* When a code value contains "A", the corresponding date components (individual or combination) for birth or deceased dates must be accurate.
* When a code value contains "U", the corresponding date components (individual or combination) for birth or deceased dates must be ignored.



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "DateAccuracyIndicatorAAUexample1",
  "birthDate" : "2004-08-23",
  "_birthDate" : {
    "extension" : [{
      "url" : "http://hl7.org.au/fhir/StructureDefinition/date-accuracy-indicator",
      "valueCoding" : {
        "system" : "https://healthterminologies.gov.au/fhir/CodeSystem/date-accuracy-indicator-1",
        "code" : "AAU",
        "display" : "Day and month are accurate, year is unknown"
      }
    }]
  },
  "deceasedDateTime" : "2004-08-23T13:42:00+10:00",
  "_deceasedDateTime" : {
    "extension" : [{
      "url" : "http://hl7.org.au/fhir/StructureDefinition/date-accuracy-indicator",
      "valueCoding" : {
        "system" : "https://healthterminologies.gov.au/fhir/CodeSystem/date-accuracy-indicator-1",
        "code" : "AAU",
        "display" : "Day and month are accurate, year is unknown"
      }
    }]
  }
}

```
