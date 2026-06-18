# AU Base MedicationRequest - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **AU Base MedicationRequest**

## Resource Profile: AU Base MedicationRequest 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://hl7.org.au/fhir/StructureDefinition/au-medicationrequest | *Version*:6.0.1-ci-build | |
| * Standards status: *[Trial-use](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](generalguidance.md#maturity-levels): 2 | *Computable Name*:AUBaseMedicationRequest |
| **Copyright/Legal**: HL7 Australia© 2018+; Licensed Under Creative Commons No Rights Reserved. | | |

 
This profile defines a medication request structure that localises core concepts, including identifiers and terminology, for use in an Australian context. The purpose of this profile is to provide national level agreement on core localised concepts. This profile does not force conformance to core localised concepts. It enables implementers and modellers to make their own rules, i.e. [profiling](http://hl7.org/fhir/profiling.html), about how to support these concepts for specific implementation needs. 

### Usage Notes

**Profile specific implementation guidance:**

* When identifying a medication, this resource can use either a code or refer to a Medication resource.
* If making use of `MedicationRequest.medicationCodeableConcept`, this profile includes coding as: 
* [PBS Item Code](https://www.pbs.gov.au/pbs/home) - Pharmaceutical Benefits Scheme coding, claiming context is not relevant as medicine coding
* [Medication Package Global Trade Item Number](http://terminology.hl7.org/ValueSet/v3-GTIN) - Global Trade Item Number (GTIN) physical product reference
* [AMT Medicines](https://healthterminologies.gov.au/fhir/ValueSet/australian-medication-1) - Australian Medicines Terminology, national drug terminology
* [MIMS Package](https://www.mims.com.au/index.php) - commonly used medicine coding
 
* If a medication is compounded and is a list of ingredients, `MedicationRequest.medicationCodeableConcept` is still present and may contain only the list of ingredients as text in `MedicationRequest.medicationCodeableConcept.text`.
* Where additional medicinal product information is needed, `MedicationRequest.medicationReference` is preferred to `MedicationRequest.medicationCodeableConcept` and use of extensions, see guidance on [AU Base Medication](StructureDefinition-au-medication.md).
* See each Identifier profile page for guidance related to that identifier type.
* This profile supports the sex, gender, and related concept of Sex Parameter for Clinical Use: 
* When exchanging concepts of sex or gender, refer to the guidance in [Sex and Gender](sexgender.md) and the [Gender Harmony Implementation Guide](http://hl7.org/xprod/ig/uv/gender-harmony/).
 

**Potentially useful extensions:**

* MedicationRequest: [Medication Brand Name](StructureDefinition-medication-brand-name.md)
* MedicationRequest: [Medication Generic Name](StructureDefinition-medication-generic-name.md)

**Usages:**

* Examples for this Profile: [MedicationRequest/example0](MedicationRequest-example0.md), [MedicationRequest/example1](MedicationRequest-example1.md) and [MedicationRequest/example2](MedicationRequest-example2.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.au.base|current/StructureDefinition/StructureDefinition-au-medicationrequest.json)

**Changes since version 6.0.0:**

* No changes

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-au-medicationrequest.csv), [Excel](StructureDefinition-au-medicationrequest.xlsx), [Schematron](StructureDefinition-au-medicationrequest.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "au-medicationrequest",
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
  "url" : "http://hl7.org.au/fhir/StructureDefinition/au-medicationrequest",
  "version" : "6.0.1-ci-build",
  "name" : "AUBaseMedicationRequest",
  "title" : "AU Base MedicationRequest",
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
  "description" : "This profile defines a medication request structure that localises core concepts, including identifiers and terminology, for use in an Australian context. The purpose of this profile is to provide national level agreement on core localised concepts. This profile does not force conformance to core localised concepts. It enables implementers and modellers to make their own rules, i.e. [profiling](http://hl7.org/fhir/profiling.html), about how to support these concepts for specific implementation needs.",
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
    "identity" : "script10.6",
    "uri" : "http://ncpdp.org/SCRIPT10_6",
    "name" : "Mapping to NCPDP SCRIPT 10.6"
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
  "type" : "MedicationRequest",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/MedicationRequest",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "MedicationRequest",
      "path" : "MedicationRequest",
      "short" : "A request for a medication for a patient in an Australian healthcare context"
    },
    {
      "id" : "MedicationRequest.extension",
      "path" : "MedicationRequest.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "rules" : "open"
      }
    },
    {
      "id" : "MedicationRequest.extension:sexParameterForClinicalUse",
      "path" : "MedicationRequest.extension",
      "sliceName" : "sexParameterForClinicalUse",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/patient-sexParameterForClinicalUse"]
      }]
    },
    {
      "id" : "MedicationRequest.extension:subsidisedConcurrentSupply",
      "path" : "MedicationRequest.extension",
      "sliceName" : "subsidisedConcurrentSupply",
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org.au/fhir/StructureDefinition/subsidised-concurrent-supply"]
      }]
    },
    {
      "id" : "MedicationRequest.identifier",
      "path" : "MedicationRequest.identifier",
      "short" : "External ids for this request",
      "definition" : "Identifiers associated with this medication request that are defined by business processes and/or used to refer to it when a direct URL reference to the resource itself is not appropriate. They are business identifiers assigned to this resource by the performer or other systems and remain constant as the resource is updated and propagates from server to server.",
      "type" : [{
        "code" : "Identifier",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/Identifier",
        "http://hl7.org.au/fhir/StructureDefinition/au-etpprescriptionidentifier",
        "http://hl7.org.au/fhir/StructureDefinition/au-localprescriptionidentifier"]
      }]
    },
    {
      "id" : "MedicationRequest.medication[x]",
      "path" : "MedicationRequest.medication[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "rules" : "closed"
      }
    },
    {
      "id" : "MedicationRequest.medication[x]:medicationCodeableConcept",
      "path" : "MedicationRequest.medication[x]",
      "sliceName" : "medicationCodeableConcept",
      "short" : "Coded Prescribed Medication",
      "min" : 0,
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "extension" : [{
          "extension" : [{
            "url" : "key",
            "valueId" : "adb-medreq-amt-pref"
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
            "valueId" : "adb-medreq-pbs-pref"
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
            "valueId" : "adb-medreq-mims-pref"
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
            "valueId" : "adb-medreq-gtin-pref"
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
      "id" : "MedicationRequest.medication[x]:medicationCodeableConcept.coding.extension",
      "path" : "MedicationRequest.medication[x].coding.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "rules" : "open"
      }
    },
    {
      "id" : "MedicationRequest.medication[x]:medicationCodeableConcept.coding.extension:medicationClass",
      "path" : "MedicationRequest.medication[x].coding.extension",
      "sliceName" : "medicationClass",
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org.au/fhir/StructureDefinition/medication-type"]
      }]
    },
    {
      "id" : "MedicationRequest.medication[x]:medicationCodeableConcept.text",
      "path" : "MedicationRequest.medication[x].text",
      "short" : "Medication primary text",
      "definition" : "A human language representation of the concept as seen/selected/uttered by the user who entered the data and/or which represents the intended meaning of the user.\r\n\r\nThis may be a brand or generic name as suitable for the intent of the entry."
    },
    {
      "id" : "MedicationRequest.medication[x]:medicationReference",
      "path" : "MedicationRequest.medication[x]",
      "sliceName" : "medicationReference",
      "short" : "Prescribed Medication",
      "min" : 0,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Medication"]
      }]
    },
    {
      "id" : "MedicationRequest.supportingInformation",
      "path" : "MedicationRequest.supportingInformation",
      "slicing" : {
        "discriminator" : [{
          "type" : "profile",
          "path" : "resolve()"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "MedicationRequest.supportingInformation:bodyHeight",
      "path" : "MedicationRequest.supportingInformation",
      "sliceName" : "bodyHeight",
      "short" : "Observation of Body Height",
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/bodyheight"]
      }]
    },
    {
      "id" : "MedicationRequest.supportingInformation:bodyWeight",
      "path" : "MedicationRequest.supportingInformation",
      "sliceName" : "bodyWeight",
      "short" : "Observation of Body Weight",
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/bodyweight"]
      }]
    },
    {
      "id" : "MedicationRequest.authoredOn",
      "path" : "MedicationRequest.authoredOn",
      "short" : "Created date"
    },
    {
      "id" : "MedicationRequest.reasonCode",
      "path" : "MedicationRequest.reasonCode",
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "https://healthterminologies.gov.au/fhir/ValueSet/reason-for-request-1"
      }
    },
    {
      "id" : "MedicationRequest.dosageInstruction",
      "path" : "MedicationRequest.dosageInstruction",
      "type" : [{
        "code" : "Dosage",
        "profile" : ["http://hl7.org.au/fhir/StructureDefinition/au-dosage"]
      }]
    },
    {
      "id" : "MedicationRequest.dispenseRequest",
      "path" : "MedicationRequest.dispenseRequest",
      "short" : "Requested dispensing"
    },
    {
      "id" : "MedicationRequest.dispenseRequest.numberOfRepeatsAllowed",
      "path" : "MedicationRequest.dispenseRequest.numberOfRepeatsAllowed",
      "short" : "Maximum repeats authorised"
    },
    {
      "id" : "MedicationRequest.substitution",
      "path" : "MedicationRequest.substitution",
      "short" : "Brand substitution details"
    },
    {
      "id" : "MedicationRequest.substitution.allowed[x]",
      "path" : "MedicationRequest.substitution.allowed[x]",
      "short" : "Brand substitution flag"
    },
    {
      "id" : "MedicationRequest.substitution.reason",
      "path" : "MedicationRequest.substitution.reason",
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "https://healthterminologies.gov.au/fhir/ValueSet/medicine-substitution-reason-1"
      }
    }]
  }
}

```
