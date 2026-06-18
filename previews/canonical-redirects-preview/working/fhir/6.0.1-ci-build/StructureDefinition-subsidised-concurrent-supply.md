# Subsidised Concurrent Supply - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **Subsidised Concurrent Supply**

## Extension: Subsidised Concurrent Supply 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://hl7.org.au/fhir/StructureDefinition/subsidised-concurrent-supply | *Version*:6.0.1-ci-build | |
| * Standards status: *[Trial-use](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](generalguidance.md#maturity-levels): 2 | *Computable Name*:GroundsForConcurrentSupplyOfMedication |
| **Copyright/Legal**: HL7 Australia© 2018+; Licensed Under Creative Commons No Rights Reserved. | | |

This extension applies to the MedicationRequest or MedicationDispense resources and is used to represent the grounds (e.g. [Regulation 49](https://www.pbs.gov.au/info/healthpro/explanatory-notes/section1/Section_1_2_Explanatory_Notes#Regulation-49)) that authorise a PBS or RPBS subsidy for the concurrent supply of an item specified in a prescription and all of its repeats (see [PBS](https://www.pbs.gov.au/info/healthpro/explanatory-notes/section1/Section-1-3-Explanatory-Notes) for further information).

**Context of Use**

### Usage Notes

**Usage info**

**Usages:**

* Use this Extension: [AU Base MedicationDispense](StructureDefinition-au-medicationdispense.md) and [AU Base MedicationRequest](StructureDefinition-au-medicationrequest.md)
* Examples for this Extension: [MedicationRequest/example1](MedicationRequest-example1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.au.base|current/StructureDefinition/StructureDefinition-subsidised-concurrent-supply.json)

**Changes since version 6.0.0:**

* No changes

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-subsidised-concurrent-supply.csv), [Excel](StructureDefinition-subsidised-concurrent-supply.xlsx), [Schematron](StructureDefinition-subsidised-concurrent-supply.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "subsidised-concurrent-supply",
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
  "url" : "http://hl7.org.au/fhir/StructureDefinition/subsidised-concurrent-supply",
  "version" : "6.0.1-ci-build",
  "name" : "GroundsForConcurrentSupplyOfMedication",
  "title" : "Subsidised Concurrent Supply",
  "status" : "active",
  "date" : "2026-06-18T23:22:00+00:00",
  "publisher" : "HL7 Australia",
  "contact" : [{
    "name" : "HL7 Australia FHIR Working Group",
    "telecom" : [{
      "system" : "url",
      "value" : "https://confluence.hl7.org/display/HAFWG",
      "use" : "work"
    }]
  }],
  "description" : "This extension applies to the MedicationRequest or MedicationDispense resources and is used to represent the grounds (e.g. [Regulation 49](https://www.pbs.gov.au/info/healthpro/explanatory-notes/section1/Section_1_2_Explanatory_Notes#Regulation-49)) that authorise a PBS or RPBS subsidy for the concurrent supply of an item specified in a prescription and all of its repeats (see [PBS](https://www.pbs.gov.au/info/healthpro/explanatory-notes/section1/Section-1-3-Explanatory-Notes) for further information).",
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
    "expression" : "MedicationRequest"
  },
  {
    "type" : "element",
    "expression" : "MedicationDispense"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Grounds for concurrent supply of medication",
      "definition" : "The grounds which authorise a PBS or RPBS subsidy for the concurrent supply of a medication item specified in a prescription and all of its repeats."
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://hl7.org.au/fhir/StructureDefinition/subsidised-concurrent-supply"
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
        "valueSet" : "https://healthterminologies.gov.au/fhir/ValueSet/concurrent-supply-grounds-1"
      }
    }]
  }
}

```
