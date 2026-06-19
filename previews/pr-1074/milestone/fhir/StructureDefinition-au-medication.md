# AU Base Medication - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **AU Base Medication**

## Resource Profile: AU Base Medication 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://hl7.org.au/fhir/StructureDefinition/au-medication | *Version*:6.0.1-ci-build | |
| * Standards status: *[Trial-use](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](generalguidance.md#maturity-levels): 2 | *Computable Name*:AUBaseMedication |
| **Copyright/Legal**: HL7 Australia© 2018+; Licensed Under Creative Commons No Rights Reserved. | | |

 
This profile defines a medication structure that localises core concepts, including terminology, for use in an Australian context. The purpose of this profile is to provide national level agreement on core localised concepts. This profile does not force conformance to core localised concepts. It enables implementers and modellers to make their own rules, i.e. [profiling](http://hl7.org/fhir/profiling.html), about how to support these concepts for specific implementation needs. 

### Usage Notes

**Profile specific implementation guidance:**

* Medication definition includes coding as: 
* [PBS Item Code](https://www.pbs.gov.au/pbs/home) - Pharmaceutical Benefits Scheme coding, claiming context is not relevant as medicine coding
* [Medication Package Global Trade Item Number](http://terminology.hl7.org/ValueSet/v3-GTIN) - Global Trade Item Number (GTIN) physical product reference
* [AMT Medicines](https://healthterminologies.gov.au/fhir/ValueSet/australian-medication-1) - Australian Medicines Terminology, national drug terminology
* [MIMS Package](https://www.mims.com.au/index.php) - commonly used medicine coding
 
* When a code for medication definition is unavailable, just text is allowed in `Medication.code.text`.
* When a medication is compounded and is a list of ingredients, `Medication.code` may contain only the list of ingredients as text in `Medication.code.text`.
* For support as text representation of other medicinal product information consider: 
* ​brand name in [Medication Brand Name](StructureDefinition-medication-brand-name.md) extension
* ​generic name in [Medication Generic Name](StructureDefinition-medication-generic-name.md) extension
* medication strength, for medication as a whole, in [Medication Strength](StructureDefinition-medication-strength.md) extension
* medication form in `Medication.form.text`
* item form and strength as part of medication definition in `Medication.code.text`
* manufacturer in `Medication.manufacturer.display`
* individual ingredient strength included as [FHIR R5 element pre-adoption](https://hl7.org/fhir/R5/versions.html#extensions) of [`Medication.ingredient.strength[x]`](https://www.hl7.org/fhir/R5/medication-definitions.html#Medication.ingredient). See example [Tadim](Medication-IngredientStrengthExtension0.md). 
* Use the element pre-adoption extension URL [http://hl7.org/fhir/5.0/StructureDefinition/extension-Medication.ingredient.strength[x]](http://hl7.org/fhir/5.0/StructureDefinition/extension-Medication.ingredient.strength[x]).
* Apply the pre-adoption extension on `Medication.ingredient`.
 
 

**Potentially useful extensions:**

* Medication: [Medication Brand Name](StructureDefinition-medication-brand-name.md)
* Medication: [Medication Generic Name](StructureDefinition-medication-generic-name.md)
* Medication: [Medication Strength](StructureDefinition-medication-strength.md)

**Usages:**

* Examples for this Profile: [Medication/BrandProductwithBatchDetails0](Medication-BrandProductwithBatchDetails0.md), [Medication/BrandedPack0](Medication-BrandedPack0.md), [Medication/BrandedPack1](Medication-BrandedPack1.md), [Medication/BrandedPackSingleActiveIngredient0](Medication-BrandedPackSingleActiveIngredient0.md)... Show 11 more, [Medication/DoseBased](Medication-DoseBased.md), [Medication/FourOrMoreActiveIngredientsProduct0](Medication-FourOrMoreActiveIngredientsProduct0.md), [Medication/GenericPack0](Medication-GenericPack0.md), [Medication/IngredientStrengthExtension0](Medication-IngredientStrengthExtension0.md), [Medication/StrengthExtension0](Medication-StrengthExtension0.md), [Medication/StrengthExtension1](Medication-StrengthExtension1.md), [Medication/TwoActiveIngredientsProduct0](Medication-TwoActiveIngredientsProduct0.md), [Medication/UnbrandedProduct0](Medication-UnbrandedProduct0.md), [Medication/UnbrandedProduct1](Medication-UnbrandedProduct1.md), [Medication/UnbrandedProduct2](Medication-UnbrandedProduct2.md) and [Medication/UncodedProduct0](Medication-UncodedProduct0.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.au.base|current/StructureDefinition/StructureDefinition-au-medication.json)

**Changes since version 6.0.0:**

* The data elements list has changed

* One or more text definitions, invariants or bindings have changed

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-au-medication.csv), [Excel](StructureDefinition-au-medication.xlsx), [Schematron](StructureDefinition-au-medication.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "au-medication",
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
  "url" : "http://hl7.org.au/fhir/StructureDefinition/au-medication",
  "version" : "6.0.1-ci-build",
  "name" : "AUBaseMedication",
  "title" : "AU Base Medication",
  "status" : "active",
  "date" : "2026-06-19T08:07:27+00:00",
  "publisher" : "HL7 Australia",
  "contact" : [{
    "name" : "HL7 Australia FHIR Working Group",
    "telecom" : [{
      "system" : "url",
      "value" : "https://confluence.hl7.org/display/HAFWG",
      "use" : "work"
    }]
  }],
  "description" : "This profile defines a medication structure that localises core concepts, including terminology, for use in an Australian context. The purpose of this profile is to provide national level agreement on core localised concepts. This profile does not force conformance to core localised concepts. It enables implementers and modellers to make their own rules, i.e. [profiling](http://hl7.org/fhir/profiling.html), about how to support these concepts for specific implementation needs.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "AU"
    }]
  }],
  "copyright" : "HL7 Australia© 2018+; Licensed Under Creative Commons No Rights Reserved.",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
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
  "type" : "Medication",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Medication",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Medication",
      "path" : "Medication",
      "short" : "A medication in an Australian healthcare context",
      "comment" : "For support as text representation of medication strength, for a medication as a whole, consider the [Medication Strength](StructureDefinition-medication-strength.html) extension."
    },
    {
      "id" : "Medication.code",
      "path" : "Medication.code",
      "short" : "Coding for the medicine",
      "comment" : "Australian codings are typical medicine/product concept codes.\r\n\r\nA code (or set of codes) that specify this medication, or a textual description if no code is available. Usage note: This could be a standard medication code such as a code from RxNorm, SNOMED CT, IDMP etc. It could also be a national or local formulary code, optionally with translations to other code systems.",
      "binding" : {
        "extension" : [{
          "extension" : [{
            "url" : "key",
            "valueId" : "adb-med-amt-pref"
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
            "valueId" : "adb-med-pbs-pref"
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
            "valueId" : "adb-med-mims-pref"
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
            "valueId" : "adb-med-gtin-pref"
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
      "id" : "Medication.code.coding.extension",
      "path" : "Medication.code.coding.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "rules" : "open"
      }
    },
    {
      "id" : "Medication.code.coding.extension:medicationClass",
      "path" : "Medication.code.coding.extension",
      "sliceName" : "medicationClass",
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org.au/fhir/StructureDefinition/medication-type"]
      }]
    },
    {
      "id" : "Medication.code.text",
      "path" : "Medication.code.text",
      "short" : "Medication primary text",
      "definition" : "A human language representation of the concept as seen/selected/uttered by the user who entered the data and/or which represents the intended meaning of the user. This may be a brand or generic name as suitable for the intent of the entry."
    },
    {
      "id" : "Medication.manufacturer",
      "path" : "Medication.manufacturer",
      "short" : "Physical product manufacturer organisation",
      "definition" : "Describes the details of the manufacturer of the medication product. This is not intended to represent the distributor of a medication product it is the manufacturer of the actual physical medicine product."
    },
    {
      "id" : "Medication.form",
      "path" : "Medication.form",
      "max" : "1",
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "https://healthterminologies.gov.au/fhir/ValueSet/medication-form-1"
      }
    },
    {
      "id" : "Medication.ingredient",
      "path" : "Medication.ingredient",
      "definition" : "Identifies a particular constituent of interest in the product. Can be coded with AMT.",
      "comment" : "When individual ingredient strength is unavailable as a ratio, it can be surfaced as text in `CodeableConcept.text` by using pre-adoption of the FHIR R5 [`Medication.ingredient.strength[x]`](https://www.hl7.org/fhir/R5/medication-definitions.html#Medication.ingredient) element with the extension URL [http://hl7.org/fhir/5.0/StructureDefinition/extension-Medication.ingredient.strength[x]](http://hl7.org/fhir/5.0/StructureDefinition/extension-Medication.ingredient.strength[x]). Where possible use the existing `Medication.ingredient.strength` element in preference to pre-adopting the FHIR R5 `Medication.ingredient.strength[x]` element."
    },
    {
      "id" : "Medication.ingredient.item[x]",
      "path" : "Medication.ingredient.item[x]",
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "https://healthterminologies.gov.au/fhir/ValueSet/medication-ingredient-1"
      }
    },
    {
      "id" : "Medication.ingredient.strength",
      "path" : "Medication.ingredient.strength",
      "short" : "Quantity/strength of ingredient present"
    }]
  }
}

```
