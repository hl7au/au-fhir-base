# Medication - with four or more active ingredients - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **Medication - with four or more active ingredients**

## Example Medication: Medication - with four or more active ingredients

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

*Stribild* - tablet 



## Resource Content

```json
{
  "resourceType" : "Medication",
  "id" : "FourOrMoreActiveIngredientsProduct0",
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
      "code" : "154481000036105",
      "display" : "Stribild"
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
        "extension" : [{
          "url" : "http://hl7.org.au/fhir/StructureDefinition/medication-type",
          "valueCoding" : {
            "system" : "http://terminology.hl7.org.au/CodeSystem/medication-type",
            "code" : "UPD",
            "display" : "Unbranded product with no strengths or form"
          }
        }],
        "system" : "http://snomed.info/sct",
        "code" : "2624011000036108",
        "display" : "tenofovir disoproxil fumarate"
      }]
    },
    "isActive" : true,
    "strength" : {
      "numerator" : {
        "value" : 300,
        "unit" : "mg"
      },
      "denominator" : {
        "value" : 1,
        "unit" : "unit"
      }
    }
  },
  {
    "itemCodeableConcept" : {
      "coding" : [{
        "extension" : [{
          "url" : "http://hl7.org.au/fhir/StructureDefinition/medication-type",
          "valueCoding" : {
            "system" : "http://terminology.hl7.org.au/CodeSystem/medication-type",
            "code" : "UPD",
            "display" : "Unbranded product with no strengths or form"
          }
        }],
        "system" : "http://snomed.info/sct",
        "code" : "2070011000036109",
        "display" : "emtricitabine"
      }]
    },
    "isActive" : true,
    "strength" : {
      "numerator" : {
        "value" : 200,
        "unit" : "mg"
      },
      "denominator" : {
        "value" : 1,
        "unit" : "unit"
      }
    }
  },
  {
    "itemCodeableConcept" : {
      "coding" : [{
        "extension" : [{
          "url" : "http://hl7.org.au/fhir/StructureDefinition/medication-type",
          "valueCoding" : {
            "system" : "http://terminology.hl7.org.au/CodeSystem/medication-type",
            "code" : "UPD",
            "display" : "Unbranded product with no strengths or form"
          }
        }],
        "system" : "http://snomed.info/sct",
        "code" : "154421000036109",
        "display" : "elvitegravir"
      }]
    },
    "isActive" : true,
    "strength" : {
      "numerator" : {
        "value" : 150,
        "unit" : "mg"
      },
      "denominator" : {
        "value" : 1,
        "unit" : "unit"
      }
    }
  },
  {
    "itemCodeableConcept" : {
      "coding" : [{
        "extension" : [{
          "url" : "http://hl7.org.au/fhir/StructureDefinition/medication-type",
          "valueCoding" : {
            "system" : "http://terminology.hl7.org.au/CodeSystem/medication-type",
            "code" : "UPD",
            "display" : "Unbranded product with no strengths or form"
          }
        }],
        "system" : "http://snomed.info/sct",
        "code" : "154431000036106",
        "display" : "cobicistat"
      }]
    },
    "isActive" : true,
    "strength" : {
      "numerator" : {
        "value" : 150,
        "unit" : "mg"
      },
      "denominator" : {
        "value" : 1,
        "unit" : "unit"
      }
    }
  }]
}

```
