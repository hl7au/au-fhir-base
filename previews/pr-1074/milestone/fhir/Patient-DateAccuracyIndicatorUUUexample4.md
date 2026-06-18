# Patient - with Birth Date Accuracy Indicator of UUU - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **Patient - with Birth Date Accuracy Indicator of UUU**

## Example Patient: Patient - with Birth Date Accuracy Indicator of UUU

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

This example demonstrates birth date and deceased date with an unknown day, month and year.

Note that "0000-00-00" is NOT a valid FHIR date.

Details include:

* A valid FHIR date example for birth date and deceased date is "2004-12-08” but not "0000-00-00".
* A date accuracy indicator of "UUU" indicates that all date components are unknown.
* When a code value contains "U", the corresponding date components (individual or combination) for birth or deceased dates must be ignored.



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "DateAccuracyIndicatorUUUexample4",
  "birthDate" : "2004-12-08",
  "_birthDate" : {
    "extension" : [{
      "url" : "http://hl7.org.au/fhir/StructureDefinition/date-accuracy-indicator",
      "valueCoding" : {
        "system" : "https://healthterminologies.gov.au/fhir/CodeSystem/date-accuracy-indicator-1",
        "code" : "UUU",
        "display" : "Day, month and year are unknown"
      }
    }]
  },
  "deceasedDateTime" : "2004-12-08T13:42:00+10:00",
  "_deceasedDateTime" : {
    "extension" : [{
      "url" : "http://hl7.org.au/fhir/StructureDefinition/date-accuracy-indicator",
      "valueCoding" : {
        "system" : "https://healthterminologies.gov.au/fhir/CodeSystem/date-accuracy-indicator-1",
        "code" : "UUU",
        "display" : "Day, month and year are unknown"
      }
    }]
  }
}

```
