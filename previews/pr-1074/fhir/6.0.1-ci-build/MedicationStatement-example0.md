# MedicationStatement - of a record of a patient's use of medication - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **MedicationStatement - of a record of a patient's use of medication**

## Example MedicationStatement: MedicationStatement - of a record of a patient's use of medication

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

Profile: [AU Base MedicationStatement](StructureDefinition-au-medicationstatement.md)

**status**: Active

**medication**: Roferon-A 9 million units (33.333 microgram)/0.5 mL injection, 0.5 mL syringe

**subject**: [Franklin](Patient-example0.md)

**effective**: 2018-06-25 --> (ongoing)

**dateAsserted**: 2018-07-25

**informationSource**: [Doctor Mayo](Practitioner-example0.md)

### Dosages

| | |
| :--- | :--- |
| - | **Timing** |
| * | 3 per 1 week |



## Resource Content

```json
{
  "resourceType" : "MedicationStatement",
  "id" : "example0",
  "meta" : {
    "profile" : ["http://hl7.org.au/fhir/StructureDefinition/au-medicationstatement"]
  },
  "status" : "active",
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
      "code" : "6166011000036106",
      "display" : "Roferon-A 9 million units (33.333 microgram)/0.5 mL injection, 0.5 mL syringe"
    }]
  },
  "subject" : {
    "reference" : "Patient/example0",
    "display" : "Franklin"
  },
  "effectivePeriod" : {
    "start" : "2018-06-25"
  },
  "dateAsserted" : "2018-07-25",
  "informationSource" : {
    "reference" : "Practitioner/example0",
    "display" : "Doctor Mayo"
  },
  "dosage" : [{
    "timing" : {
      "repeat" : {
        "frequency" : 3,
        "period" : 1,
        "periodUnit" : "wk",
        "dayOfWeek" : ["mon", "wed", "sat"]
      }
    }
  }]
}

```
