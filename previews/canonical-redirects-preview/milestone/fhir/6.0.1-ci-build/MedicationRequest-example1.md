# MedicationRequest - a prescription for Stribild tablet - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **MedicationRequest - a prescription for Stribild tablet**

## Example MedicationRequest: MedicationRequest - a prescription for Stribild tablet

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

Profile: [AU Base MedicationRequest](StructureDefinition-au-medicationrequest.md)

**Subsidised Concurrent Supply**: concurrent-supply-grounds-1: 1 (Pursuant to Regulation 24)

**identifier**: Local Prescription Number/53640005

**status**: Active

**intent**: Order

**medication**: [Medication Stribild](Medication-FourOrMoreActiveIngredientsProduct0.md)

**subject**: [Stella Franklin](Patient-example0.md)

**authoredOn**: 2018-08-25

**requester**: [PractitionerRole: identifier = Medicare Provider Number: 1234561A; specialty = Cardiology; telecom = ph: 0255507777(Work),ph: 0255508888](PractitionerRole-example0.md)

**reasonCode**: HIV infection

**note**: 

> 

Patient is going overseas and will need all repeats supplied at once.


> **dosageInstruction****text**: One tablet orally, once daily**additionalInstruction**: With or after food, Warning. Follow the printed instructions you have been given with this medicine**timing**: Once per 1 day**route**: Oral route**method**: Swallow

### DoseAndRates

| | |
| :--- | :--- |
| - | **Dose[x]** |
| * | 1 TAB (Details: Orderable Drug Form codeTAB = 'Tablet') |


> **dispenseRequest****numberOfRepeatsAllowed**: 5**quantity**: 30 TAB (Details: Orderable Drug Form codeTAB = 'Tablet')

### ExpectedSupplyDurations

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **Value** | **Unit** | **System** | **Code** |
| * | 30 | days | [http://unitsofmeasure.org](http://hl7.org/fhir/uv/xver-r5.r4/0.1.0/CodeSystem-v3-ucum.html) | d |


### Substitutions

| | |
| :--- | :--- |
| - | **Allowed[x]** |
| * | false |



## Resource Content

```json
{
  "resourceType" : "MedicationRequest",
  "id" : "example1",
  "meta" : {
    "profile" : ["http://hl7.org.au/fhir/StructureDefinition/au-medicationrequest"]
  },
  "extension" : [{
    "url" : "http://hl7.org.au/fhir/StructureDefinition/subsidised-concurrent-supply",
    "valueCoding" : {
      "system" : "https://healthterminologies.gov.au/fhir/CodeSystem/concurrent-supply-grounds-1",
      "code" : "1",
      "display" : "Pursuant to Regulation 24"
    }
  }],
  "identifier" : [{
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org.au/CodeSystem/v2-0203",
        "code" : "LPN"
      }],
      "text" : "Local Prescription Number"
    },
    "system" : "http://ns.electronichealth.net.au/id/hpio-scoped/prescription/1.0/8003621566684455",
    "value" : "53640005",
    "assigner" : {
      "reference" : "Organization/example0",
      "display" : "Downunder Hospital"
    }
  }],
  "status" : "active",
  "intent" : "order",
  "medicationReference" : {
    "reference" : "Medication/FourOrMoreActiveIngredientsProduct0"
  },
  "subject" : {
    "reference" : "Patient/example0",
    "display" : "Stella Franklin"
  },
  "authoredOn" : "2018-08-25",
  "requester" : {
    "reference" : "PractitionerRole/example0"
  },
  "reasonCode" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "86406008",
      "display" : "HIV infection"
    }]
  }],
  "note" : [{
    "text" : "Patient is going overseas and will need all repeats supplied at once."
  }],
  "dosageInstruction" : [{
    "text" : "One tablet orally, once daily",
    "additionalInstruction" : [{
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "311504000",
        "display" : "With or after food"
      }]
    },
    {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "418849000",
        "display" : "Warning. Follow the printed instructions you have been given with this medicine"
      }]
    }],
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
    "method" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "421521009",
        "display" : "Swallow"
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
    "numberOfRepeatsAllowed" : 5,
    "quantity" : {
      "value" : 30,
      "unit" : "TAB",
      "system" : "http://terminology.hl7.org/CodeSystem/v3-orderableDrugForm",
      "code" : "TAB"
    },
    "expectedSupplyDuration" : {
      "value" : 30,
      "unit" : "days",
      "system" : "http://unitsofmeasure.org",
      "code" : "d"
    }
  },
  "substitution" : {
    "allowedBoolean" : false
  }
}

```
