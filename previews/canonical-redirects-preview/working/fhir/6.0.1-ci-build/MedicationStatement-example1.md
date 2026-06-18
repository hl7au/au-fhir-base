# MedicationStatement - of a record of a patient's long-term use of medication - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **MedicationStatement - of a record of a patient's long-term use of medication**

## Example MedicationStatement: MedicationStatement - of a record of a patient's long-term use of medication

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

Profile: [AU Base MedicationStatement](StructureDefinition-au-medicationstatement.md)

**Long Term**: true

**status**: Active

**medication**: Zoloft

**subject**: [Franklin](Patient-example0.md)

**dateAsserted**: 2018-07-25

**note**: 

> 

The patient is not sure when exactly started taking the medication but is certain it's been over a year




## Resource Content

```json
{
  "resourceType" : "MedicationStatement",
  "id" : "example1",
  "meta" : {
    "profile" : ["http://hl7.org.au/fhir/StructureDefinition/au-medicationstatement"]
  },
  "extension" : [{
    "url" : "http://hl7.org.au/fhir/StructureDefinition/medication-long-term",
    "valueBoolean" : true
  }],
  "status" : "active",
  "medicationCodeableConcept" : {
    "coding" : [{
      "extension" : [{
        "url" : "http://hl7.org.au/fhir/StructureDefinition/medication-type",
        "valueCoding" : {
          "system" : "http://terminology.hl7.org.au/CodeSystem/medication-type",
          "code" : "BPD",
          "display" : "Branded product with no strengths or form"
        }
      }],
      "system" : "http://snomed.info/sct",
      "code" : "3559011000036109",
      "display" : "Zoloft"
    }]
  },
  "subject" : {
    "reference" : "Patient/example0",
    "display" : "Franklin"
  },
  "dateAsserted" : "2018-07-25",
  "note" : [{
    "text" : "The patient is not sure when exactly started taking the medication but is certain it's been over a year"
  }]
}

```
