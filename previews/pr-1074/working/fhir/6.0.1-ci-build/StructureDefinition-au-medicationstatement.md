# AU Base MedicationStatement - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **AU Base MedicationStatement**

## Resource Profile: AU Base MedicationStatement 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://hl7.org.au/fhir/StructureDefinition/au-medicationstatement | *Version*:6.0.1-ci-build | |
| * Standards status: *[Trial-use](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](generalguidance.md#maturity-levels): 2 | *Computable Name*:AUBaseMedicationStatement |
| **Copyright/Legal**: HL7 Australia© 2018+; Licensed Under Creative Commons No Rights Reserved. | | |

 
This profile defines a medication statement structure that localises core concepts, including terminology, for use in an Australian context. The purpose of this profile is to provide national level agreement on core localised concepts. This profile does not force conformance to core localised concepts. It enables implementers and modellers to make their own rules, i.e. [profiling](http://hl7.org/fhir/profiling.html), about how to support these concepts for specific implementation needs. 

### Usage Notes

**Profile specific implementation guidance:**

* When identifying a medication, this resource can use either a code or refer to a Medication resource.
* If making use of `MedicationStatement.medicationCodeableConcept`, this profile includes coding as: 
* [PBS Item Code](https://www.pbs.gov.au/pbs/home) - Pharmaceutical Benefits Scheme coding, claiming context is not relevant as medicine coding
* [Medication Package Global Trade Item Number](http://terminology.hl7.org/ValueSet/v3-GTIN) - Global Trade Item Number (GTIN) physical product reference
* [AMT Medicines](https://healthterminologies.gov.au/fhir/ValueSet/australian-medication-1) - Australian Medicines Terminology, national drug terminology
* [MIMS Package](https://www.mims.com.au/index.php) - commonly used medicine coding
 
* If a medication is compounded and is a list of ingredients, `MedicationStatement.medicationCodeableConcept` is still present and may contain only the list of ingredients as text in `MedicationStatement.medicationCodeableConcept.text`.
* Where additional medicinal product information is needed, `MedicationStatement.medicationReference` is preferred to `MedicationStatement.medicationCodeableConcept` and use of extensions, see guidance on [AU Base Medication](StructureDefinition-au-medication.md).
* If representing that a patient is not currently taking any medications: 
* `MedicationStatement.medicationCodeableConcept` can use the code SNOMED CT 787481004 |No known medications|
* `MedicationStatement.status` is active
* `MedicationStatement.effective[x]` is provided to indicate the date/time or period when the statement is known to be true
 

**Potentially useful extensions:**

* MedicationStatement: [Medication Brand Name](StructureDefinition-medication-brand-name.md)
* MedicationStatement: [Medication Generic Name](StructureDefinition-medication-generic-name.md)

**Usages:**

* Examples for this Profile: [MedicationStatement/example0](MedicationStatement-example0.md), [MedicationStatement/example1](MedicationStatement-example1.md) and [MedicationStatement/example2](MedicationStatement-example2.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.au.base|current/StructureDefinition/StructureDefinition-au-medicationstatement.json)

**Changes since version 6.0.0:**

* The data elements list has changed

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-au-medicationstatement.csv), [Excel](StructureDefinition-au-medicationstatement.xlsx), [Schematron](StructureDefinition-au-medicationstatement.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "au-medicationstatement",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm",
    "valueInteger" : 2
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status",
    "valueCode" : "trial-use",
    "_valueCode" : {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-conformance-derivedFrom",
        "valueCanonical" : "http://hl7.org.au/fhir/ImplementationGuide/hl7.fhir.au.base"
      }]
    }
  }],
  "url" : "http://hl7.org.au/fhir/StructureDefinition/au-medicationstatement",
  "version" : "6.0.1-ci-build",
  "name" : "AUBaseMedicationStatement",
  "title" : "AU Base MedicationStatement",
  "status" : "active",
  "date" : "2026-06-18T16:30:51+00:00",
  "publisher" : "HL7 Australia",
  "contact" : [{
    "name" : "HL7 Australia FHIR Working Group",
    "telecom" : [{
      "system" : "url",
      "value" : "https://confluence.hl7.org/display/HAFWG",
      "use" : "work"
    }]
  }],
  "description" : "This profile defines a medication statement structure that localises core concepts, including terminology, for use in an Australian context. The purpose of this profile is to provide national level agreement on core localised concepts. This profile does not force conformance to core localised concepts. It enables implementers and modellers to make their own rules, i.e. [profiling](http://hl7.org/fhir/profiling.html), about how to support these concepts for specific implementation needs.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "AU"
    }]
  }],
  "copyright" : "HL7 Australia© 2018+; Licensed Under Creative Commons No Rights Reserved.",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "MedicationStatement",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/MedicationStatement",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "MedicationStatement",
      "path" : "MedicationStatement",
      "short" : "A record of medication being taken by a patient in an Australian healthcare context"
    },
    {
      "id" : "MedicationStatement.extension",
      "path" : "MedicationStatement.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "rules" : "open"
      },
      "min" : 0
    },
    {
      "id" : "MedicationStatement.extension:longTerm",
      "path" : "MedicationStatement.extension",
      "sliceName" : "longTerm",
      "short" : "Medication Long Term Indicator",
      "min" : 0,
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org.au/fhir/StructureDefinition/medication-long-term"]
      }]
    },
    {
      "id" : "MedicationStatement.medication[x]",
      "path" : "MedicationStatement.medication[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "rules" : "closed"
      },
      "short" : "Medication Detail"
    },
    {
      "id" : "MedicationStatement.medication[x]:medicationCodeableConcept",
      "path" : "MedicationStatement.medication[x]",
      "sliceName" : "medicationCodeableConcept",
      "short" : "Coded Medication",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "extension" : [{
          "extension" : [{
            "url" : "key",
            "valueId" : "adb-mst-amt-pref"
          },
          {
            "url" : "purpose",
            "valueCode" : "preferred"
          },
          {
            "url" : "valueSet",
            "valueCanonical" : "https://healthterminologies.gov.au/fhir/ValueSet/australian-medication-1"
          },
          {
            "url" : "documentation",
            "valueMarkdown" : "This value set is for use when AMT (Australian Medicines Terminology) codes are preferred."
          }],
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
        },
        {
          "extension" : [{
            "url" : "key",
            "valueId" : "adb-mst-pbs-pref"
          },
          {
            "url" : "purpose",
            "valueCode" : "preferred"
          },
          {
            "url" : "valueSet",
            "valueCanonical" : "http://terminology.hl7.org.au/ValueSet/pbs-item"
          },
          {
            "url" : "documentation",
            "valueMarkdown" : "This value set is for use when PBS (Pharmaceutical Benefits Scheme) item codes are preferred."
          }],
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
        },
        {
          "extension" : [{
            "url" : "key",
            "valueId" : "adb-mst-mims-pref"
          },
          {
            "url" : "purpose",
            "valueCode" : "preferred"
          },
          {
            "url" : "valueSet",
            "valueCanonical" : "http://terminology.hl7.org.au/ValueSet/mims"
          },
          {
            "url" : "documentation",
            "valueMarkdown" : "This value set is for use when MIMS (Monthly Index of Medical Specialties) codes are preferred."
          }],
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
        },
        {
          "extension" : [{
            "url" : "key",
            "valueId" : "adb-mst-gtin-pref"
          },
          {
            "url" : "purpose",
            "valueCode" : "preferred"
          },
          {
            "url" : "valueSet",
            "valueCanonical" : "http://terminology.hl7.org/ValueSet/v3-GTIN"
          },
          {
            "url" : "documentation",
            "valueMarkdown" : "This value set is for use when GTIN (Global Trade Item Number) codes are preferred."
          }],
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
        }],
        "strength" : "preferred",
        "valueSet" : "https://healthterminologies.gov.au/fhir/ValueSet/australian-medication-use-1"
      }
    },
    {
      "id" : "MedicationStatement.medication[x]:medicationCodeableConcept.coding.extension",
      "path" : "MedicationStatement.medication[x].coding.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "rules" : "open"
      }
    },
    {
      "id" : "MedicationStatement.medication[x]:medicationCodeableConcept.coding.extension:medicationClass",
      "path" : "MedicationStatement.medication[x].coding.extension",
      "sliceName" : "medicationClass",
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org.au/fhir/StructureDefinition/medication-type"]
      }]
    },
    {
      "id" : "MedicationStatement.medication[x]:medicationCodeableConcept.text",
      "path" : "MedicationStatement.medication[x].text",
      "short" : "Medication primary text",
      "definition" : "A human language representation of the concept as seen/selected/uttered by the user who entered the data and/or which represents the intended meaning of the user.\r\n\r\nThis may be a brand or generic name as suitable for the intent of the entry."
    },
    {
      "id" : "MedicationStatement.medication[x]:medicationReference",
      "path" : "MedicationStatement.medication[x]",
      "sliceName" : "medicationReference",
      "short" : "Medication Reference",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Medication"]
      }]
    },
    {
      "id" : "MedicationStatement.reasonCode",
      "path" : "MedicationStatement.reasonCode",
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "https://healthterminologies.gov.au/fhir/ValueSet/medication-reason-taken-1"
      }
    },
    {
      "id" : "MedicationStatement.dosage",
      "path" : "MedicationStatement.dosage",
      "type" : [{
        "code" : "Dosage",
        "profile" : ["http://hl7.org.au/fhir/StructureDefinition/au-dosage"]
      }]
    }]
  }
}

```
