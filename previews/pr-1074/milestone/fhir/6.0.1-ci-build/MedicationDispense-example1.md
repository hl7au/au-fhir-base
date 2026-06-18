# MedicationDispense - Second dispense for Reaptan - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **MedicationDispense - Second dispense for Reaptan**

## Example MedicationDispense: MedicationDispense - Second dispense for Reaptan

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

Profile: [AU Base MedicationDispense](StructureDefinition-au-medicationdispense.md)

**Dispense Number**: 2

**identifier**: Local Dispense Identifier/776984994

**status**: Completed

**medication**: Reaptan 10 mg/10 mg (perindopril arginine/amlodipine) tablet, 10

**subject**: [Stella Franklin (official) Female, DoB: 1985-10-14 ( IHI: Austalian Healthcare Identifier - Individual#8003608833357361)](Patient-example0.md)

### Performers

| | |
| :--- | :--- |
| - | **Actor** |
| * | [Organization Albion Hospital](Organization-example1.md) |

**authorizingPrescription**: [MedicationRequest: identifier = Local Prescription Number: 53720010; status = active; intent = order; medication[x] = Reaptan 10 mg/10 mg (perindopril arginine/amlodipine) tablet, 10; authoredOn = 2018-07-15; reasonCode = ; note = Patient requires an administration aid.](MedicationRequest-example2.md)

**quantity**: 20 TAB

**daysSupply**: 10 days

**whenPrepared**: 2018-07-25 12:30:00+1000

**whenHandedOver**: 2018-07-25 13:45:00+1000

**receiver**: [Stella Franklin (official) Female, DoB: 1985-10-14 ( IHI: Austalian Healthcare Identifier - Individual#8003608833357361)](Patient-example0.md)

**note**: 

> 

Patient administration aid is not accepted by patient.


### DosageInstructions

| | |
| :--- | :--- |
| - | **Text** |
| * | 1-2 tablets orally every 4-6 hours as needed for pain |

### Substitutions

| | |
| :--- | :--- |
| - | **WasSubstituted** |
| * | false |



## Resource Content

```json
{
  "resourceType" : "MedicationDispense",
  "id" : "example1",
  "meta" : {
    "profile" : ["http://hl7.org.au/fhir/StructureDefinition/au-medicationdispense"]
  },
  "extension" : [{
    "url" : "http://hl7.org.au/fhir/StructureDefinition/dispense-number",
    "valueInteger" : 2
  }],
  "identifier" : [{
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org.au/CodeSystem/v2-0203",
        "code" : "LDI",
        "display" : "Local Dispense Identifier"
      }]
    },
    "system" : "http://albionhospital.example.com/pharmacy/dispenses",
    "value" : "776984994",
    "assigner" : {
      "reference" : "Organization/example1"
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
      "reference" : "Organization/example1"
    }
  }],
  "authorizingPrescription" : [{
    "reference" : "MedicationRequest/example2"
  }],
  "quantity" : {
    "value" : 20,
    "unit" : "TAB"
  },
  "daysSupply" : {
    "value" : 10,
    "unit" : "days"
  },
  "whenPrepared" : "2018-07-25T12:30:00+10:00",
  "whenHandedOver" : "2018-07-25T13:45:00+10:00",
  "receiver" : [{
    "reference" : "Patient/example0"
  }],
  "note" : [{
    "text" : "Patient administration aid is not accepted by patient."
  }],
  "dosageInstruction" : [{
    "text" : "1-2 tablets orally every 4-6 hours as needed for pain"
  }],
  "substitution" : {
    "wasSubstituted" : false
  }
}

```
