# AU Assertion of No Relevant Finding - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **AU Assertion of No Relevant Finding**

## Resource Profile: AU Assertion of No Relevant Finding 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://hl7.org.au/fhir/StructureDefinition/au-norelevantfinding | *Version*:6.0.1-ci-build | |
| * Standards status: *[Trial-use](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](generalguidance.md#maturity-levels): 1 | *Computable Name*:AUAssertionNoRelevantFinding |
| **Copyright/Legal**: HL7 Australia© 2018+; Licensed Under Creative Commons No Rights Reserved. | | |

 
This profile provides an observation information structure for asserting a clinical judgement that there are no items of specific interest, (e.g. no current medications or no history of vaccination), for a patient. An assertion of no relevant finding may be used in continuity of care or transfer or care related lists and composition sections. 

### Usage Notes

**Usages:**

* Refer to this Profile: [AU Medicine List](StructureDefinition-au-medlist.md)
* Examples for this Profile: [Observation/norelevantfinding-example0](Observation-norelevantfinding-example0.md), [Observation/norelevantfinding-example1](Observation-norelevantfinding-example1.md), [Observation/norelevantfinding-example2](Observation-norelevantfinding-example2.md) and [Observation/norelevantfinding-example3](Observation-norelevantfinding-example3.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.au.base|current/StructureDefinition/StructureDefinition-au-norelevantfinding.json)

**Changes since version 6.0.0:**

* No changes

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-au-norelevantfinding.csv), [Excel](StructureDefinition-au-norelevantfinding.xlsx), [Schematron](StructureDefinition-au-norelevantfinding.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "au-norelevantfinding",
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
  "url" : "http://hl7.org.au/fhir/StructureDefinition/au-norelevantfinding",
  "version" : "6.0.1-ci-build",
  "name" : "AUAssertionNoRelevantFinding",
  "title" : "AU Assertion of No Relevant Finding",
  "status" : "active",
  "date" : "2026-06-18T15:06:23+00:00",
  "publisher" : "HL7 Australia",
  "contact" : [{
    "name" : "HL7 Australia FHIR Working Group",
    "telecom" : [{
      "system" : "url",
      "value" : "https://confluence.hl7.org/display/HAFWG",
      "use" : "work"
    }]
  }],
  "description" : "This profile provides an observation information structure for asserting a clinical judgement that there are no items of specific interest, (e.g. no current medications or no history of vaccination), for a patient. An assertion of no relevant finding may be used in continuity of care or transfer or care related lists and composition sections.",
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
    "identity" : "sct-concept",
    "uri" : "http://snomed.info/conceptdomain",
    "name" : "SNOMED CT Concept Domain Binding"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
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
    "identity" : "sct-attr",
    "uri" : "http://snomed.org/attributebinding",
    "name" : "SNOMED CT Attribute Binding"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Observation",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Observation",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Observation",
      "path" : "Observation",
      "short" : "Statement of clinical judgement that there are no items of specific interest",
      "definition" : "Statement of clinical judgement that there are no items of specific interest after a reasonable investigation."
    },
    {
      "id" : "Observation.code",
      "path" : "Observation.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
          "code" : "ASSERTION"
        }]
      }
    },
    {
      "id" : "Observation.subject",
      "path" : "Observation.subject",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Patient",
        "http://hl7.org/fhir/StructureDefinition/Group"]
      }]
    },
    {
      "id" : "Observation.performer",
      "path" : "Observation.performer",
      "short" : "Asserter of the statement"
    },
    {
      "id" : "Observation.value[x]",
      "path" : "Observation.value[x]",
      "definition" : "An assertion that a procedure did not occur or that there are no items of specific interest (e.g. allergies, no current medications) for a patient or patient group.",
      "min" : 1,
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://healthterminologies.gov.au/fhir/ValueSet/assertion-of-absence-1"
      }
    }]
  }
}

```
