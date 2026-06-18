# Medication Brand Name - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **Medication Brand Name**

## Extension: Medication Brand Name 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://hl7.org.au/fhir/StructureDefinition/medication-brand-name | *Version*:6.0.1-ci-build | |
| * Standards status: *[Trial-use](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](generalguidance.md#maturity-levels): 1 | *Computable Name*:MedicationBrandName |
| **Copyright/Legal**: HL7 Australia© 2018+; Licensed Under Creative Commons No Rights Reserved. | | |

This extension applies to the Medication, MedicationRequest, MedicationDispense and MedicationStatement resources and is used to represent the brand name of a medication. This extension is not to be the sole representation of the medication concept; it shall not be used as a substitute for medication code (e.g. Medication.code or MedicationStatement.medicationCodeableConcept).

If a system can only supply branded product information in text form, that information will be supplied in the text portion of that code e.g. code.text or medicationCodeableConcept.text. This extension only supports the name portion of a medication concept, not the branded product or product pack information. It is available for use for where a system needs to separate out the brand name string for handling or other processing.

**Context of Use**

### Usage Notes

**Profile specific implementation guidance:**

* This extension can be used in conjunction with the [Medication Generic Name](StructureDefinition-medication-generic-name.md) extension to provide non-coded support for medicinal product information, see example [Medication/UncodedProduct0](Medication-UncodedProduct0.md).

**Usage info**

**Usages:**

* Examples for this Extension: [Medication/UncodedProduct0](Medication-UncodedProduct0.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.au.base|current/StructureDefinition/StructureDefinition-medication-brand-name.json)

**Changes since version 6.0.0:**

* No changes

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-medication-brand-name.csv), [Excel](StructureDefinition-medication-brand-name.xlsx), [Schematron](StructureDefinition-medication-brand-name.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "medication-brand-name",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm",
    "valueInteger" : 1
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
  "url" : "http://hl7.org.au/fhir/StructureDefinition/medication-brand-name",
  "version" : "6.0.1-ci-build",
  "name" : "MedicationBrandName",
  "title" : "Medication Brand Name",
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
  "description" : "This extension applies to the Medication, MedicationRequest, MedicationDispense and MedicationStatement resources and is used to represent the brand name of a medication. This extension is not to be the sole representation of the medication concept; it shall not be used as a substitute for medication code (e.g. Medication.code or MedicationStatement.medicationCodeableConcept).\n\nIf a system can only supply branded product information in text form, that information will be supplied in the text portion of that code e.g. code.text or medicationCodeableConcept.text. This extension only supports the name portion of a medication concept, not the branded product or product pack information. It is available for use for where a system needs to separate out the brand name string for handling or other processing.",
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
    "type" : "element",
    "expression" : "Medication"
  },
  {
    "type" : "element",
    "expression" : "MedicationRequest"
  },
  {
    "type" : "element",
    "expression" : "MedicationDispense"
  },
  {
    "type" : "element",
    "expression" : "MedicationStatement"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Medication brand name",
      "definition" : "The brand medication text name for an associated medication, this may be supplied if a coded brand name is not available.",
      "max" : "1"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://hl7.org.au/fhir/StructureDefinition/medication-brand-name"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "short" : "Brand or product name",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
