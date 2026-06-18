# MedicationDispense - First dispense for Reaptan - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **MedicationDispense - First dispense for Reaptan**

## Example MedicationDispense: MedicationDispense - First dispense for Reaptan

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

Profile: [AU Base MedicationDispense](StructureDefinition-au-medicationdispense.md)

**Dispense Number**: 1

**identifier**: Local Dispense Identifier/26597878

**status**: Completed

**medication**: Reaptan 10 mg/10 mg (perindopril arginine/amlodipine) tablet, 10

**subject**: [Stella Franklin (official) Female, DoB: 1985-10-14 ( IHI: Austalian Healthcare Identifier - Individual#8003608833357361)](Patient-example0.md)

### Performers

| | |
| :--- | :--- |
| - | **Actor** |
| * | [Organization Downunder Hospital](Organization-example0.md) |

**authorizingPrescription**: [MedicationRequest: identifier = Local Prescription Number: 53720010; status = active; intent = order; medication[x] = Reaptan 10 mg/10 mg (perindopril arginine/amlodipine) tablet, 10; authoredOn = 2018-07-15; reasonCode = ; note = Patient requires an administration aid.](MedicationRequest-example2.md)

**type**: First Fill

**quantity**: 20 TAB (Details: Orderable Drug Form codeTAB = 'Tablet')

**daysSupply**: 10 days (Details: UCUM coded = 'd')

**whenPrepared**: 2018-07-15

**whenHandedOver**: 2018-07-15

**note**: 

> 

Patient refused use of administration aid.


> **dosageInstruction****text**: 1-2 tablets every 4-6 hours as needed for pain**timing**: 1-2 per 4-6 hours**asNeeded**: true**route**: Oral route

### DoseAndRates

| | |
| :--- | :--- |
| - | **Dose[x]** |
| * | 1 TAB (Details: Orderable Drug Form codeTAB = 'Tablet') |


### Substitutions

| | |
| :--- | :--- |
| - | **WasSubstituted** |
| * | false |



## Resource Content

```json
{
  "resourceType" : "MedicationDispense",
  "id" : "example0",
  "meta" : {
    "profile" : ["http://hl7.org.au/fhir/StructureDefinition/au-medicationdispense"]
  },
  "extension" : [{
    "url" : "http://hl7.org.au/fhir/StructureDefinition/dispense-number",
    "valueInteger" : 1
  }],
  "identifier" : [{
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org.au/CodeSystem/v2-0203",
        "code" : "LDI"
      }],
      "text" : "Local Dispense Identifier"
    },
    "system" : "http://ns.electronichealth.net.au/id/hpio-scoped/dispense/1.0/8003621566684455",
    "value" : "26597878",
    "assigner" : {
      "reference" : "Organization/example0"
    }
  }],
  "status" : "completed",
  "medicationCodeableConcept" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "926213011000036100",
      "display" : "Reaptan 10 mg/10 mg (perindopril arginine/amlodipine) tablet, 10"
    }]
  },
  "subject" : {
    "reference" : "Patient/example0"
  },
  "performer" : [{
    "actor" : {
      "reference" : "Organization/example0"
    }
  }],
  "authorizingPrescription" : [{
    "reference" : "MedicationRequest/example2"
  }],
  "type" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
      "code" : "FF",
      "display" : "First Fill"
    }]
  },
  "quantity" : {
    "value" : 20,
    "unit" : "TAB",
    "system" : "http://terminology.hl7.org/CodeSystem/v3-orderableDrugForm",
    "code" : "TAB"
  },
  "daysSupply" : {
    "value" : 10,
    "unit" : "days",
    "system" : "http://unitsofmeasure.org",
    "code" : "d"
  },
  "whenPrepared" : "2018-07-15",
  "whenHandedOver" : "2018-07-15",
  "note" : [{
    "text" : "Patient refused use of administration aid."
  }],
  "dosageInstruction" : [{
    "text" : "1-2 tablets every 4-6 hours as needed for pain",
    "timing" : {
      "repeat" : {
        "frequency" : 1,
        "frequencyMax" : 2,
        "period" : 4,
        "periodMax" : 6,
        "periodUnit" : "h"
      }
    },
    "asNeededBoolean" : true,
    "route" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "26643006",
        "display" : "Oral route"
      }]
    },
    "doseAndRate" : [{
      "doseQuantity" : {
        "value" : 1,
        "unit" : "TAB",
        "system" : "http://terminology.hl7.org/CodeSystem/v3-orderableDrugForm",
        "code" : "TAB"
      }
    }]
  }],
  "substitution" : {
    "wasSubstituted" : false
  }
}

```
