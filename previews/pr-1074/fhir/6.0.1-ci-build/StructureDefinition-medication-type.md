# Medication Type - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **Medication Type**

## Extension: Medication Type 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://hl7.org.au/fhir/StructureDefinition/medication-type | *Version*:6.0.1-ci-build | |
| * Standards status: *[Trial-use](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](generalguidance.md#maturity-levels): 2 | *Computable Name*:MedicationType |
| **Copyright/Legal**: HL7 Australia© 2018+; Licensed Under Creative Commons No Rights Reserved. | | |

This extension applies to the [Coding](http://hl7.org/fhir/R4/datatypes.html#Coding) data type and is used to indicate the type of information covered by the code e.g. branded product with no strength or form. This is useful when there are multiple codings from the same coding system at different levels/classifications.

**Context of Use**

### Usage Notes

**Usage info**

**Usages:**

* Use this Extension: [AU Base Medication](StructureDefinition-au-medication.md), [AU Base MedicationAdministration](StructureDefinition-au-medicationadministration.md), [AU Base MedicationDispense](StructureDefinition-au-medicationdispense.md), [AU Base MedicationRequest](StructureDefinition-au-medicationrequest.md) and [AU Base MedicationStatement](StructureDefinition-au-medicationstatement.md)
* Examples for this Extension: [Bundle/example0](Bundle-example0.md), [Medication/BrandProductwithBatchDetails0](Medication-BrandProductwithBatchDetails0.md), [Medication/BrandedPack0](Medication-BrandedPack0.md), [Medication/BrandedPack1](Medication-BrandedPack1.md)... Show 11 more, [Medication/BrandedPackSingleActiveIngredient0](Medication-BrandedPackSingleActiveIngredient0.md), [Medication/DoseBased](Medication-DoseBased.md), [Medication/FourOrMoreActiveIngredientsProduct0](Medication-FourOrMoreActiveIngredientsProduct0.md), [Medication/GenericPack0](Medication-GenericPack0.md), [Medication/UnbrandedProduct0](Medication-UnbrandedProduct0.md), [Medication/UnbrandedProduct1](Medication-UnbrandedProduct1.md), [Medication/UnbrandedProduct2](Medication-UnbrandedProduct2.md), [MedicationAdministration/example1](MedicationAdministration-example1.md), [MedicationStatement/example0](MedicationStatement-example0.md), [MedicationStatement/example1](MedicationStatement-example1.md) and [MedicationStatement/example2](MedicationStatement-example2.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.au.base|current/StructureDefinition/StructureDefinition-medication-type.json)

**Changes since version 6.0.0:**

* No changes

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-medication-type.csv), [Excel](StructureDefinition-medication-type.xlsx), [Schematron](StructureDefinition-medication-type.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "medication-type",
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
  "url" : "http://hl7.org.au/fhir/StructureDefinition/medication-type",
  "version" : "6.0.1-ci-build",
  "name" : "MedicationType",
  "title" : "Medication Type",
  "status" : "active",
  "date" : "2026-06-18T15:40:18+00:00",
  "publisher" : "HL7 Australia",
  "contact" : [{
    "name" : "HL7 Australia FHIR Working Group",
    "telecom" : [{
      "system" : "url",
      "value" : "https://confluence.hl7.org/display/HAFWG",
      "use" : "work"
    }]
  }],
  "description" : "This extension applies to the [Coding](http://hl7.org/fhir/R4/datatypes.html#Coding) data type and is used to indicate the type of information covered by the code e.g. branded product with no strength or form. This is useful when there are multiple codings from the same coding system at different levels/classifications.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "AU"
    }]
  }],
  "copyright" : "HL7 Australia© 2018+; Licensed Under Creative Commons No Rights Reserved.",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "fhirpath",
    "expression" : "Medication.code.ofType(CodeableConcept).coding"
  },
  {
    "type" : "fhirpath",
    "expression" : "Medication.ingredient.item.ofType(CodeableConcept).coding"
  },
  {
    "type" : "fhirpath",
    "expression" : "MedicationRequest.medication.ofType(CodeableConcept).coding"
  },
  {
    "type" : "fhirpath",
    "expression" : "MedicationDispense.medication.ofType(CodeableConcept).coding"
  },
  {
    "type" : "fhirpath",
    "expression" : "MedicationStatement.medication.ofType(CodeableConcept).coding"
  },
  {
    "type" : "fhirpath",
    "expression" : "MedicationAdministration.medication.ofType(CodeableConcept).coding"
  },
  {
    "type" : "element",
    "expression" : "ValueSet.expansion.contains"
  },
  {
    "type" : "element",
    "expression" : "ValueSet.expansion.contains.contains"
  },
  {
    "type" : "element",
    "expression" : "CodeSystem.concept"
  },
  {
    "type" : "element",
    "expression" : "CodeSystem.concept.concept"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Medication type",
      "definition" : "The type of information covered by the medication coding, e.g. branded product with no strength or form."
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://hl7.org.au/fhir/StructureDefinition/medication-type"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://terminology.hl7.org.au/ValueSet/medication-type"
      }
    }]
  }
}

```
