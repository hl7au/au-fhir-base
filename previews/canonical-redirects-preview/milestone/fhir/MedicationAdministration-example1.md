# MedicationAdministration - Self-administration of lantus 100 units/mL injection - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **MedicationAdministration - Self-administration of lantus 100 units/mL injection**

## Example MedicationAdministration: MedicationAdministration - Self-administration of lantus 100 units/mL injection

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

Profile: [AU Base MedicationAdministration](StructureDefinition-au-medicationadministration.md)

**status**: Completed

**medication**: insulin glargine 100 units/mL injection, 5 x 3 mL pen devices

**subject**: [Stella Franklin (official) Female, DoB: 1985-10-14 ( IHI: Austalian Healthcare Identifier - Individual#8003608833357361)](Patient-example0.md)

**effective**: 2021-12-14 08:00:00+1000

### Performers

| | |
| :--- | :--- |
| - | **Actor** |
| * | [Stella Franklin (official) Female, DoB: 1985-10-14 ( IHI: Austalian Healthcare Identifier - Individual#8003608833357361)](Patient-example0.md) |

**reasonReference**: [Condition Type 2 diabetes mellitus](Condition-example0.md)

### Dosages

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **Text** | **Site** | **Route** | **Dose** |
| * | 20 units subcutaneous to lower abdomen | Lower abdomen structure | Subcutaneous route | 20 U (Details: UCUM codeU = 'U') |



## Resource Content

```json
{
  "resourceType" : "MedicationAdministration",
  "id" : "example1",
  "meta" : {
    "profile" : ["http://hl7.org.au/fhir/StructureDefinition/au-medicationadministration"]
  },
  "status" : "completed",
  "medicationCodeableConcept" : {
    "coding" : [{
      "system" : "http://pbs.gov.au/code/item",
      "code" : "11815W",
      "display" : "insulin glargine 100 units/mL injection, 5 x 3 mL pen devices"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org.au/fhir/StructureDefinition/medication-type",
        "valueCoding" : {
          "system" : "http://terminology.hl7.org.au/CodeSystem/medication-type",
          "code" : "BPGC",
          "display" : "Branded package with container"
        }
      }],
      "system" : "http://snomed.info/sct",
      "code" : "824201000168102",
      "display" : "Insulin glargine 100 units/mL injection, 5 x 3 mL pen devices"
    }]
  },
  "subject" : {
    "reference" : "Patient/example0"
  },
  "effectiveDateTime" : "2021-12-14T08:00:00+10:00",
  "performer" : [{
    "actor" : {
      "reference" : "Patient/example0"
    }
  }],
  "reasonReference" : [{
    "reference" : "Condition/example0"
  }],
  "dosage" : {
    "text" : "20 units subcutaneous to lower abdomen",
    "site" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "27033000",
        "display" : "Lower abdomen structure"
      }]
    },
    "route" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "34206005",
        "display" : "Subcutaneous route"
      }]
    },
    "dose" : {
      "value" : 20,
      "unit" : "U",
      "system" : "http://unitsofmeasure.org",
      "code" : "U"
    }
  }
}

```
