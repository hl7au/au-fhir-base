# AU Base Substance - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **AU Base Substance**

## Resource Profile: AU Base Substance 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://hl7.org.au/fhir/StructureDefinition/au-substance | *Version*:6.0.1-ci-build | |
| * Standards status: *[Trial-use](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](generalguidance.md#maturity-levels): 1 | *Computable Name*:AUBaseSubstance |
| **Copyright/Legal**: HL7 Australia© 2018+; Licensed Under Creative Commons No Rights Reserved. | | |

 
This profile defines a substance structure that localises core concepts, including terminology, for use in an Australian context. The purpose of this profile is to provide national level agreement on core localised concepts. This profile does not force conformance to core localised concepts. It enables implementers and modellers to make their own rules, i.e. [profiling](http://hl7.org/fhir/profiling.html), about how to support these concepts for specific implementation needs. 

### Usage Notes

**Usages:**

* Examples for this Profile: [Substance/example0](Substance-example0.md) and [Substance/example1](Substance-example1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.au.base|current/StructureDefinition/StructureDefinition-au-substance.json)

**Changes since version 6.0.0:**

* No changes

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-au-substance.csv), [Excel](StructureDefinition-au-substance.xlsx), [Schematron](StructureDefinition-au-substance.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "au-substance",
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
  "url" : "http://hl7.org.au/fhir/StructureDefinition/au-substance",
  "version" : "6.0.1-ci-build",
  "name" : "AUBaseSubstance",
  "title" : "AU Base Substance",
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
  "description" : "This profile defines a substance structure that localises core concepts, including terminology, for use in an Australian context. The purpose of this profile is to provide national level agreement on core localised concepts. This profile does not force conformance to core localised concepts. It enables implementers and modellers to make their own rules, i.e. [profiling](http://hl7.org/fhir/profiling.html), about how to support these concepts for specific implementation needs.",
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
  },
  {
    "identity" : "orim",
    "uri" : "http://hl7.org/orim",
    "name" : "Ontological RIM Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Substance",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Substance",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Substance",
      "path" : "Substance",
      "short" : "A substance in an Australian healthcare context"
    },
    {
      "id" : "Substance.code",
      "path" : "Substance.code",
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "https://healthterminologies.gov.au/fhir/ValueSet/substance-1"
      }
    },
    {
      "id" : "Substance.ingredient.substance[x]",
      "path" : "Substance.ingredient.substance[x]",
      "type" : [{
        "code" : "CodeableConcept"
      },
      {
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Substance"]
      }],
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "https://healthterminologies.gov.au/fhir/ValueSet/substance-1"
      }
    }]
  }
}

```
