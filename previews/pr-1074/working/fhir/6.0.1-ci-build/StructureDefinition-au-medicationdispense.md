# AU Base MedicationDispense - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **AU Base MedicationDispense**

## Resource Profile: AU Base MedicationDispense 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://hl7.org.au/fhir/StructureDefinition/au-medicationdispense | *Version*:6.0.1-ci-build | |
| * Standards status: *[Trial-use](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](generalguidance.md#maturity-levels): 2 | *Computable Name*:AUBaseMedicationDispense |
| **Copyright/Legal**: HL7 Australia© 2018+; Licensed Under Creative Commons No Rights Reserved. | | |

 
This profile defines a medication dispense structure that localises core concepts, including identifiers and terminology, for use in an Australian context. The purpose of this profile is to provide national level agreement on core localised concepts. This profile does not force conformance to core localised concepts. It enables implementers and modellers to make their own rules, i.e. [profiling](http://hl7.org/fhir/profiling.html), about how to support these concepts for specific implementation needs. 

### Usage Notes

**Profile specific implementation guidance:**

* When identifying a medication, this resource can use either a code or refer to a Medication resource.
* If making use of `MedicationDispense.medicationCodeableConcept`, this profile includes coding as: 
* [PBS Item Code](https://www.pbs.gov.au/pbs/home) - Pharmaceutical Benefits Scheme coding, claiming context is not relevant as medicine coding
* [Medication Package Global Trade Item Number](http://terminology.hl7.org/ValueSet/v3-GTIN) - Global Trade Item Number (GTIN) physical product reference
* [AMT Medicines](https://healthterminologies.gov.au/fhir/ValueSet/australian-medication-1) - Australian Medicines Terminology, national drug terminology
* [MIMS Package](https://www.mims.com.au/index.php) - commonly used medicine coding
 
* If a medication is compounded and is a list of ingredients, `MedicationDispense.medicationCodeableConcept` is still present and may contain only the list of ingredients as text in `MedicationDispense.code.text`.
* Where additional medicinal product information is needed, `MedicationDispense.medicationReference` is preferred to `MedicationDispense.medicationCodeableConcept` and use of extensions, see guidance on [AU Base Medication](StructureDefinition-au-medication.md).
* See each Identifier profile page for guidance related to that identifier type.

**Potentially useful extensions:**

* MedicationDispense: [Medication Brand Name](StructureDefinition-medication-brand-name.md)
* MedicationDispense: [Medication Generic Name](StructureDefinition-medication-generic-name.md)

**Usages:**

* Examples for this Profile: [MedicationDispense/example0](MedicationDispense-example0.md) and [MedicationDispense/example1](MedicationDispense-example1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.au.base|current/StructureDefinition/StructureDefinition-au-medicationdispense.json)

**Changes since version 6.0.0:**

* No changes

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-au-medicationdispense.csv), [Excel](StructureDefinition-au-medicationdispense.xlsx), [Schematron](StructureDefinition-au-medicationdispense.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "au-medicationdispense",
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
  "url" : "http://hl7.org.au/fhir/StructureDefinition/au-medicationdispense",
  "version" : "6.0.1-ci-build",
  "name" : "AUBaseMedicationDispense",
  "title" : "AU Base MedicationDispense",
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
  "description" : "This profile defines a medication dispense structure that localises core concepts, including identifiers and terminology, for use in an Australian context. The purpose of this profile is to provide national level agreement on core localised concepts. This profile does not force conformance to core localised concepts. It enables implementers and modellers to make their own rules, i.e. [profiling](http://hl7.org/fhir/profiling.html), about how to support these concepts for specific implementation needs.",
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
    "identity" : "rx-dispense-rmim",
    "uri" : "http://www.hl7.org/v3/PORX_RM020070UV",
    "name" : "V3 Pharmacy Dispense RMIM"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "MedicationDispense",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/MedicationDispense",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "MedicationDispense",
      "path" : "MedicationDispense",
      "short" : "A dispense record for a medication for a patient in an Australian healthcare context"
    },
    {
      "id" : "MedicationDispense.extension",
      "path" : "MedicationDispense.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "rules" : "open"
      }
    },
    {
      "id" : "MedicationDispense.extension:subsidisedConcurrentSupply",
      "path" : "MedicationDispense.extension",
      "sliceName" : "subsidisedConcurrentSupply",
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org.au/fhir/StructureDefinition/subsidised-concurrent-supply"]
      }]
    },
    {
      "id" : "MedicationDispense.extension:dispenseNumber",
      "path" : "MedicationDispense.extension",
      "sliceName" : "dispenseNumber",
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org.au/fhir/StructureDefinition/dispense-number"]
      }]
    },
    {
      "id" : "MedicationDispense.identifier",
      "path" : "MedicationDispense.identifier",
      "short" : "External identifier",
      "definition" : "Identifiers associated with this Medication Dispense that are defined by business processes and/or used to refer to it when a direct URL reference to the resource itself is not appropriate. They are business identifiers assigned to this resource by the performer or other systems and remain constant as the resource is updated and propagates from server to server.",
      "type" : [{
        "code" : "Identifier",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/Identifier",
        "http://hl7.org.au/fhir/StructureDefinition/au-localdispenseidentifier"]
      }]
    },
    {
      "id" : "MedicationDispense.medication[x]",
      "path" : "MedicationDispense.medication[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "rules" : "closed"
      }
    },
    {
      "id" : "MedicationDispense.medication[x]:medicationCodeableConcept",
      "path" : "MedicationDispense.medication[x]",
      "sliceName" : "medicationCodeableConcept",
      "short" : "Coded Dispensed Medication",
      "min" : 0,
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "extension" : [{
          "extension" : [{
            "url" : "key",
            "valueId" : "adb-mdd-amt-pref"
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
            "valueId" : "adb-mdd-pbs-pref"
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
            "valueId" : "adb-mdd-mims-pref"
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
            "valueId" : "adb-mdd-gtin-pref"
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
        "strength" : "example"
      }
    },
    {
      "id" : "MedicationDispense.medication[x]:medicationCodeableConcept.coding.extension",
      "path" : "MedicationDispense.medication[x].coding.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "rules" : "open"
      }
    },
    {
      "id" : "MedicationDispense.medication[x]:medicationCodeableConcept.coding.extension:medicationClass",
      "path" : "MedicationDispense.medication[x].coding.extension",
      "sliceName" : "medicationClass",
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org.au/fhir/StructureDefinition/medication-type"]
      }]
    },
    {
      "id" : "MedicationDispense.medication[x]:medicationCodeableConcept.text",
      "path" : "MedicationDispense.medication[x].text",
      "short" : "Medication primary text",
      "definition" : "A human language representation of the concept as seen/selected/uttered by the user who entered the data and/or which represents the intended meaning of the user.\r\n\r\nThis may be a brand or generic name as suitable for the intent of the entry."
    },
    {
      "id" : "MedicationDispense.medication[x]:medicationReference",
      "path" : "MedicationDispense.medication[x]",
      "sliceName" : "medicationReference",
      "short" : "Dispensed Medication",
      "min" : 0,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Medication"]
      }]
    },
    {
      "id" : "MedicationDispense.dosageInstruction",
      "path" : "MedicationDispense.dosageInstruction",
      "type" : [{
        "code" : "Dosage",
        "profile" : ["http://hl7.org.au/fhir/StructureDefinition/au-dosage"]
      }]
    },
    {
      "id" : "MedicationDispense.substitution",
      "path" : "MedicationDispense.substitution"
    },
    {
      "id" : "MedicationDispense.substitution.reason",
      "path" : "MedicationDispense.substitution.reason",
      "max" : "1",
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "https://healthterminologies.gov.au/fhir/ValueSet/medicine-substitution-reason-1"
      }
    }]
  }
}

```
