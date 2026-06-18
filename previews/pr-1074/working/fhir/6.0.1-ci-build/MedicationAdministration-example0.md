# MedicationAdministration - Administration of Chlorsig eye drops - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **MedicationAdministration - Administration of Chlorsig eye drops**

## Example MedicationAdministration: MedicationAdministration - Administration of Chlorsig eye drops

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

Profile: [AU Base MedicationAdministration](StructureDefinition-au-medicationadministration.md)

**status**: Completed

**category**: Community

**medication**: [Medication Chlorsig](Medication-BrandedPackSingleActiveIngredient0.md)

**subject**: [Harry Dan Male, DoB: 1939-08-25 ( IHI: Austalian Healthcare Identifier - Individual#8003608833357361)](Patient-example1.md)

**effective**: 2021-10-09 10:00:00+1000

### Performers

| | | |
| :--- | :--- | :--- |
| - | **Function** | **Actor** |
| * | Performer | [RelatedPerson Mary Smith ](RelatedPerson-example1.md) |

### Dosages

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Text** | **Site** | **Dose** |
| * | 2 drops to the left eye | Left eye | 2 drop |



## Resource Content

```json
{
  "resourceType" : "MedicationAdministration",
  "id" : "example0",
  "meta" : {
    "profile" : ["http://hl7.org.au/fhir/StructureDefinition/au-medicationadministration"]
  },
  "status" : "completed",
  "category" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/medication-admin-category",
      "code" : "community"
    }]
  },
  "medicationReference" : {
    "reference" : "Medication/BrandedPackSingleActiveIngredient0"
  },
  "subject" : {
    "reference" : "Patient/example1"
  },
  "effectiveDateTime" : "2021-10-09T10:00:00+10:00",
  "performer" : [{
    "function" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/med-admin-perform-function",
        "code" : "performer"
      }]
    },
    "actor" : {
      "reference" : "RelatedPerson/example1"
    }
  }],
  "dosage" : {
    "text" : "2 drops to the left eye",
    "site" : {
      "text" : "Left eye"
    },
    "dose" : {
      "value" : 2,
      "unit" : "drop"
    }
  }
}

```
