# MedicationRequest - Prescription with brand and generic name extensions - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **MedicationRequest - Prescription with brand and generic name extensions**

## Example MedicationRequest: MedicationRequest - Prescription with brand and generic name extensions

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

Profile: [AU Base MedicationRequest](StructureDefinition-au-medicationrequest.md)

**identifier**: Local Prescription Number/53720010

**status**: Active

**intent**: Order

**medication**: Reaptan 10 mg/10 mg (perindopril arginine/amlodipine) tablet, 10

**subject**: [Stella Franklin](Patient-example0.md)

**authoredOn**: 2018-07-15

**requester**: [PractitionerRole: identifier = Medicare Provider Number: 1234561A; specialty = Cardiology; telecom = ph: 0255507777(Work),ph: 0255508888](PractitionerRole-example0.md)

**reasonCode**: Hypertension

**note**: 

> 

Patient requires an administration aid.


> **dosageInstruction****text**: 1 tablet once daily in the morning**timing**: Once per 1 day**route**: Oral route

### DoseAndRates

| | |
| :--- | :--- |
| - | **Dose[x]** |
| * | 1 TAB (Details: Orderable Drug Form codeTAB = 'Tablet') |


> **dispenseRequest**

### DispenseIntervals

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **Value** | **Unit** | **System** | **Code** |
| * | 1 | week | [http://unitsofmeasure.org](http://hl7.org/fhir/uv/xver-r5.r4/0.1.0/CodeSystem-v3-ucum.html) | wk |

**validityPeriod**: 2018-07-15 --> 2019-07-15**numberOfRepeatsAllowed**: 2**quantity**: 20 Tab (Details: Orderable Drug Form codeTAB = 'Tablet')

### ExpectedSupplyDurations

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **Value** | **Unit** | **System** | **Code** |
| * | 10 | days | [http://unitsofmeasure.org](http://hl7.org/fhir/uv/xver-r5.r4/0.1.0/CodeSystem-v3-ucum.html) | d |


### Substitutions

| | |
| :--- | :--- |
| - | **Allowed[x]** |
| * | true |



## Resource Content

```json
{
  "resourceType" : "MedicationRequest",
  "id" : "example2",
  "meta" : {
    "profile" : ["http://hl7.org.au/fhir/StructureDefinition/au-medicationrequest"]
  },
  "identifier" : [{
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org.au/CodeSystem/v2-0203",
        "code" : "LPN"
      }],
      "text" : "Local Prescription Number"
    },
    "system" : "http://ns.electronichealth.net.au/id/hpio-scoped/prescription/1.0/8003621566684455",
    "value" : "53720010",
    "assigner" : {
      "reference" : "Organization/example0",
      "display" : "Downunder Hospital"
    }
  }],
  "status" : "active",
  "intent" : "order",
  "medicationCodeableConcept" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "926213011000036100",
      "display" : "Reaptan 10 mg/10 mg (perindopril arginine/amlodipine) tablet, 10"
    }]
  },
  "subject" : {
    "reference" : "Patient/example0",
    "display" : "Stella Franklin"
  },
  "authoredOn" : "2018-07-15",
  "requester" : {
    "reference" : "PractitionerRole/example0"
  },
  "reasonCode" : [{
    "text" : "Hypertension"
  }],
  "note" : [{
    "text" : "Patient requires an administration aid."
  }],
  "dosageInstruction" : [{
    "text" : "1 tablet once daily in the morning",
    "timing" : {
      "repeat" : {
        "frequency" : 1,
        "period" : 1,
        "periodUnit" : "d"
      }
    },
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
  "dispenseRequest" : {
    "dispenseInterval" : {
      "value" : 1,
      "unit" : "week",
      "system" : "http://unitsofmeasure.org",
      "code" : "wk"
    },
    "validityPeriod" : {
      "start" : "2018-07-15",
      "end" : "2019-07-15"
    },
    "numberOfRepeatsAllowed" : 2,
    "quantity" : {
      "value" : 20,
      "unit" : "Tab",
      "system" : "http://terminology.hl7.org/CodeSystem/v3-orderableDrugForm",
      "code" : "TAB"
    },
    "expectedSupplyDuration" : {
      "value" : 10,
      "unit" : "days",
      "system" : "http://unitsofmeasure.org",
      "code" : "d"
    }
  },
  "substitution" : {
    "allowedBoolean" : true
  }
}

```
