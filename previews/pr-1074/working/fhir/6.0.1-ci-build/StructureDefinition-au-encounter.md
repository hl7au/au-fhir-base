# AU Base Encounter - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **AU Base Encounter**

## Resource Profile: AU Base Encounter 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://hl7.org.au/fhir/StructureDefinition/au-encounter | *Version*:6.0.1-ci-build | |
| * Standards status: *[Trial-use](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](generalguidance.md#maturity-levels): 1 | *Computable Name*:AUBaseEncounter |
| **Copyright/Legal**: HL7 Australia© 2018+; Licensed Under Creative Commons No Rights Reserved. | | |

 
This profile defines an encounter structure that localises core concepts, including terminology, for use in an Australian context. This profile is intended to be applicable for recording details of ambulatory and non-ambulatory patient encounters in an Australian healthcare context. The purpose of this profile is to provide national level agreement on core localised concepts. This profile does not force conformance to core localised concepts. It enables implementers and modellers to make their own rules, i.e. [profiling](http://hl7.org/fhir/profiling.html), about how to support these concepts for specific implementation needs. 

### Usage Notes

**Profile specific implementation guidance:**

* To associate a healthcare service with an encounter include [FHIR R5 element pre-adoption](https://hl7.org/fhir/R5/versions.html#extensions) of [`Encounter.participant.actor`](https://hl7.org/fhir/R5/encounter-definitions.html#Encounter.participant.actor). See example [Inpatient Encounter](Encounter-example0.md). 
* Use the pre-adoption extension URL [http://hl7.org/fhir/5.0/StructureDefinition/extension-Encounter.participant.actor](http://hl7.org/fhir/5.0/StructureDefinition/extension-Encounter.participant.actor).
* Apply the pre-adoption extension on `Encounter.participant`.
 

**Usages:**

* Examples for this Profile: [Encounter/example0](Encounter-example0.md) and [Encounter/example1](Encounter-example1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.au.base|current/StructureDefinition/StructureDefinition-au-encounter.json)

**Changes since version 6.0.0:**

* No changes

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-au-encounter.csv), [Excel](StructureDefinition-au-encounter.xlsx), [Schematron](StructureDefinition-au-encounter.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "au-encounter",
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
  "url" : "http://hl7.org.au/fhir/StructureDefinition/au-encounter",
  "version" : "6.0.1-ci-build",
  "name" : "AUBaseEncounter",
  "title" : "AU Base Encounter",
  "status" : "active",
  "date" : "2026-06-19T01:46:09+00:00",
  "publisher" : "HL7 Australia",
  "contact" : [{
    "name" : "HL7 Australia FHIR Working Group",
    "telecom" : [{
      "system" : "url",
      "value" : "https://confluence.hl7.org/display/HAFWG",
      "use" : "work"
    }]
  }],
  "description" : "This profile defines an encounter structure that localises core concepts, including terminology, for use in an Australian context. This profile is intended to be applicable for recording details of ambulatory and non-ambulatory patient encounters in an Australian healthcare context. The purpose of this profile is to provide national level agreement on core localised concepts. This profile does not force conformance to core localised concepts. It enables implementers and modellers to make their own rules, i.e. [profiling](http://hl7.org/fhir/profiling.html), about how to support these concepts for specific implementation needs.",
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
  "type" : "Encounter",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Encounter",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Encounter",
      "path" : "Encounter",
      "short" : "An encounter in an Australian healthcare context"
    },
    {
      "id" : "Encounter.class",
      "path" : "Encounter.class",
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://terminology.hl7.org.au/ValueSet/v3-ActEncounterCode-extended"
      }
    },
    {
      "id" : "Encounter.type",
      "path" : "Encounter.type",
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "https://healthterminologies.gov.au/fhir/ValueSet/encounter-type-1"
      }
    },
    {
      "id" : "Encounter.serviceType",
      "path" : "Encounter.serviceType",
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "https://healthterminologies.gov.au/fhir/ValueSet/service-type-1"
      }
    },
    {
      "id" : "Encounter.participant",
      "path" : "Encounter.participant",
      "comment" : "When representing a HealthcareService involved in an encounter, pre-adoption of the FHIR R5 [Encounter.participant.actor](https://hl7.org/fhir/R5/encounter-definitions.html#Encounter.participant.actor) element with the extension URL http://hl7.org/fhir/5.0/StructureDefinition/extension-Encounter.participant.actor can be used."
    },
    {
      "id" : "Encounter.reasonCode",
      "path" : "Encounter.reasonCode",
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "https://healthterminologies.gov.au/fhir/ValueSet/reason-for-encounter-1"
      }
    },
    {
      "id" : "Encounter.hospitalization",
      "path" : "Encounter.hospitalization"
    },
    {
      "id" : "Encounter.hospitalization.dischargeDisposition",
      "path" : "Encounter.hospitalization.dischargeDisposition",
      "short" : "Separation Mode",
      "definition" : "Category or kind of location after discharge.",
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://healthterminologies.gov.au/fhir/ValueSet/separation-mode-1"
      }
    }]
  }
}

```
