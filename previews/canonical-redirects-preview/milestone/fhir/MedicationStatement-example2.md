# MedicationStatement - Practitioner reports patient has taken Diflucan in the past but is not taking it any more - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **MedicationStatement - Practitioner reports patient has taken Diflucan in the past but is not taking it any more**

## Example MedicationStatement: MedicationStatement - Practitioner reports patient has taken Diflucan in the past but is not taking it any more

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

Profile: [AU Base MedicationStatement](StructureDefinition-au-medicationstatement.md)

**status**: Completed

**medication**: Diflucan 200 mg/100 mL injection, 100 mL vial

**subject**: [Franklin](Patient-example0.md)

**effective**: 2018-06-25 --> 2018-07-05

**dateAsserted**: 2018-07-10

**informationSource**: [Doctor Mayo](Practitioner-example0.md)

> **dosage****timing**: Duration 30days , Once per 1-10 day**route**: Intravenous route

### DoseAndRates

| | |
| :--- | :--- |
| - | **Dose[x]** |
| * | 200 mg (Details: UCUM codemg = 'mg') |




## Resource Content

```json
{
  "resourceType" : "MedicationStatement",
  "id" : "example2",
  "meta" : {
    "profile" : ["http://hl7.org.au/fhir/StructureDefinition/au-medicationstatement"]
  },
  "status" : "completed",
  "medicationCodeableConcept" : {
    "coding" : [{
      "extension" : [{
        "url" : "http://hl7.org.au/fhir/StructureDefinition/medication-type",
        "valueCoding" : {
          "system" : "http://terminology.hl7.org.au/CodeSystem/medication-type",
          "code" : "BPDSF",
          "display" : "Branded product with strengths and form"
        }
      }],
      "system" : "http://snomed.info/sct",
      "code" : "5232011000036102",
      "display" : "Diflucan 200 mg/100 mL injection, 100 mL vial"
    }]
  },
  "subject" : {
    "reference" : "Patient/example0",
    "display" : "Franklin"
  },
  "effectivePeriod" : {
    "start" : "2018-06-25",
    "end" : "2018-07-05"
  },
  "dateAsserted" : "2018-07-10",
  "informationSource" : {
    "reference" : "Practitioner/example0",
    "display" : "Doctor Mayo"
  },
  "dosage" : [{
    "timing" : {
      "repeat" : {
        "duration" : 30,
        "durationUnit" : "min",
        "frequency" : 1,
        "period" : 1,
        "periodMax" : 10,
        "periodUnit" : "d",
        "timeOfDay" : ["10:00:00"]
      }
    },
    "route" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "47625008",
        "display" : "Intravenous route"
      }]
    },
    "doseAndRate" : [{
      "doseQuantity" : {
        "value" : 200,
        "unit" : "mg",
        "system" : "http://unitsofmeasure.org",
        "code" : "mg"
      }
    }]
  }]
}

```
