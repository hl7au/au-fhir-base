# Medication - Branded Pack with Batch Details - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **Medication - Branded Pack with Batch Details**

## Example Medication: Medication - Branded Pack with Batch Details

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

**amLODIPIne** 10 mg – *norVASC* – tablet

with batch details:

Lot Number: 989657

Expiration Date: 7 Jun 2020



## Resource Content

```json
{
  "resourceType" : "Medication",
  "id" : "BrandProductwithBatchDetails0",
  "meta" : {
    "profile" : ["http://hl7.org.au/fhir/StructureDefinition/au-medication"]
  },
  "code" : {
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
      "code" : "4216011000036104",
      "display" : "Norvasc"
    }]
  },
  "form" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "385055001",
      "display" : "Tablet"
    }]
  },
  "ingredient" : [{
    "itemCodeableConcept" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "1792011000036100",
        "display" : "amlodipine"
      }]
    },
    "isActive" : true,
    "strength" : {
      "numerator" : {
        "value" : 10,
        "unit" : "mg"
      },
      "denominator" : {
        "value" : 1,
        "unit" : "unit"
      }
    }
  }],
  "batch" : {
    "lotNumber" : "989657",
    "expirationDate" : "2020-06-07"
  }
}

```
