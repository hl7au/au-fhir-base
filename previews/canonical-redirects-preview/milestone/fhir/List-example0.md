# List - Medicine list with referenced entries - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **List - Medicine list with referenced entries**

## Example List: List - Medicine list with referenced entries

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

Profile: [AU Medicine List](StructureDefinition-au-medlist.md)

| | | | |
| :--- | :--- | :--- | :--- |
| Date: 2019-02-08 | Mode: Snapshot List | Status: Current | Code: Current Medicine |
| Subject:[Stella Franklin (official) Female, DoB: 1985-10-14 ( IHI: Austalian Healthcare Identifier - Individual#8003608833357361)](Patient-example0.md)Source: | | | |

* **Items**: [MedicationStatement: status = active; medication[x] = Roferon-A 9 million units (33.333 microgram)/0.5 mL injection, 0.5 mL syringe; effective[x] = 2018-06-25 --> (ongoing); dateAsserted = 2018-07-25](MedicationStatement-example0.md)
  * Flag: Unchanged
* **Items**: [MedicationStatement: extension = true; status = active; medication[x] = Zoloft; dateAsserted = 2018-07-25; note = The patient is not sure when exactly started taking the medication but is certain it's been over a year](MedicationStatement-example1.md)
  * Flag: Unchanged



## Resource Content

```json
{
  "resourceType" : "List",
  "id" : "example0",
  "meta" : {
    "profile" : ["http://hl7.org.au/fhir/StructureDefinition/au-medlist"]
  },
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:uuid:fbee41d4-4e98-11e9-8647-d663bd873d93"
  }],
  "status" : "current",
  "mode" : "snapshot",
  "code" : {
    "coding" : [{
      "system" : "https://healthterminologies.gov.au/fhir/CodeSystem/nctis-data-components-1",
      "code" : "101.32009",
      "display" : "Current Medicine"
    }]
  },
  "subject" : {
    "reference" : "Patient/example0"
  },
  "date" : "2019-02-08",
  "source" : {
    "reference" : "PractitionerRole/example3"
  },
  "entry" : [{
    "flag" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org.au/CodeSystem/medicine-item-change",
        "code" : "nochange"
      }]
    },
    "item" : {
      "reference" : "MedicationStatement/example0"
    }
  },
  {
    "flag" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org.au/CodeSystem/medicine-item-change",
        "code" : "nochange"
      }]
    },
    "item" : {
      "reference" : "MedicationStatement/example1"
    }
  }]
}

```
