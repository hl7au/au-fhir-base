# AU Base Pathology Result - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **AU Base Pathology Result**

## Resource Profile: AU Base Pathology Result 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://hl7.org.au/fhir/StructureDefinition/au-pathologyresult | *Version*:6.0.1-ci-build | |
| * Standards status: *[Trial-use](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](generalguidance.md#maturity-levels): 1 | *Computable Name*:AUBasePathologyResult |
| **Copyright/Legal**: HL7 Australia© 2018+; Licensed Under Creative Commons No Rights Reserved. | | |

 
This profile defines an observation structure to represent a pathology test result issued by a diagnostic service provider in an Australian context. This profile is intended to be capable of supporting reporting for all pathology disciplines (e.g. including microbiology, histopathology, cytology, blood transfusion) with the exception of genomics. The observation may represent the result of a simple test such as haemoglobin or it may group the set of results produced by a multi-test study or panel such as a full blood count, or urine specimen study. 
This profile does not provide full support for structured pathology reporting. It is expected that this support is best handled by a set of profiles that represent the structured reporting requirements for each specific protocol (see for example [RCPA’s structured pathology reporting of cancer](https://www.rcpa.edu.au/Library/Practising-Pathology/Structured-Pathology-Reporting-of-Cancer)); this is not in the scope of this implementation guide at this time. 

### Usage Notes

**Profile specific implementation guidance:**

* When sending an observation that represents a study series or panel: 
* the group / panel code is sent in `Observation.code`
* the overall comments are sent in `Observation.note`
* the global interpretation by the producer of the study is sent in `Observation.interpretation`
* individual results may be sent in `Observation.component` or by referencing individual observation results in `Observation.hasMember`
 
* When sending a discipline specific laboratory result, one of discipline specific value sets may be more suitable for use than the entire reporting value set bound in this profile to `Observation.code`: 
* [ValueSet : RCPA - SPIA Chemical Pathology Terminology Reference Set](https://www.healthterminologies.gov.au/integration/R4/fhir/ValueSet/spia-chemical-pathology-refset-3?ui:source=search)
* [ValueSet : RCPA - SPIA Haematology Terminology Reference Set](https://www.healthterminologies.gov.au/integration/R4/fhir/ValueSet/spia-haematology-refset-3?ui:source=search)
* [ValueSet : RCPA - SPIA Immunopathology Terminology Reference Set](https://www.healthterminologies.gov.au/integration/R4/fhir/ValueSet/spia-immunopathology-refset-3?ui:source=search)
* [ValueSet : RCPA - SPIA Microbiology Serology Molecular Pathology Terminology Reference Set](https://www.healthterminologies.gov.au/integration/R4/fhir/ValueSet/spia-microbiology-serology-molecular-refset-3?ui:source=search)
 
* This profile supports the sex, gender, and related concept of Sex Parameter for Clinical Use: 
* When exchanging concepts of sex or gender, refer to the guidance in [Sex and Gender](sexgender.md) and the [Gender Harmony Implementation Guide](http://hl7.org/xprod/ig/uv/gender-harmony/).
 

**Usages:**

* Refer to this Profile: [AU Base DiagnosticReport](StructureDefinition-au-diagnosticreport.md), [AU Base Diagnostic Result](StructureDefinition-au-diagnosticresult.md), [AU Base Pathology Report](StructureDefinition-au-pathologyreport.md) and [AU Base Pathology Result](StructureDefinition-au-pathologyresult.md)
* Examples for this Profile: [Observation/specimen-hepatitis-b-serology](Observation-specimen-hepatitis-b-serology.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.au.base|current/StructureDefinition/StructureDefinition-au-pathologyresult.json)

**Changes since version 6.0.0:**

* No changes

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-au-pathologyresult.csv), [Excel](StructureDefinition-au-pathologyresult.xlsx), [Schematron](StructureDefinition-au-pathologyresult.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "au-pathologyresult",
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
  "url" : "http://hl7.org.au/fhir/StructureDefinition/au-pathologyresult",
  "version" : "6.0.1-ci-build",
  "name" : "AUBasePathologyResult",
  "title" : "AU Base Pathology Result",
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
  "description" : "This profile defines an observation structure to represent a pathology test result issued by a diagnostic service provider in an Australian context. This profile is intended to be capable of supporting reporting for all pathology disciplines (e.g. including microbiology, histopathology, cytology, blood transfusion) with the exception of genomics. The observation may represent the result of a simple test such as haemoglobin or it may group the set of results produced by a multi-test study or panel such as a full blood count, or urine specimen study.\n\nThis profile does not provide full support for structured pathology reporting. It is expected that this support is best handled by a set of profiles that represent the structured reporting requirements for each specific protocol (see for example [RCPA’s structured pathology reporting of cancer](https://www.rcpa.edu.au/Library/Practising-Pathology/Structured-Pathology-Reporting-of-Cancer)); this is not in the scope of this implementation guide at this time.",
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
      "short" : "A pathology test result in an Australian healthcare context",
      "definition" : "A pathology test result for a patient. This observation may be a simple test or a panel/study.",
      "constraint" : [{
        "key" : "inv-obs-0",
        "severity" : "error",
        "human" : "A pathology result shall at least have value or data absent reason or a child observation with a value or data absent reason",
        "expression" : "value.exists() or dataAbsentReason.exists() or hasMember.exists() or component.value.exists() or component.dataAbsentReason.exists()"
      }]
    },
    {
      "id" : "Observation.category",
      "path" : "Observation.category",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "coding.system"
        },
        {
          "type" : "value",
          "path" : "coding.code"
        }],
        "rules" : "open"
      },
      "short" : "Classification of the service requested as laboratory + more specific discipline where available",
      "comment" : "A fixed category denoting a laboratory service identifies the type of observation and supports handling and searching of observations. A second category to provide a finer grain of discipline, e.g. Haematology should be provided if possible.",
      "min" : 1
    },
    {
      "id" : "Observation.category:lab",
      "path" : "Observation.category",
      "sliceName" : "lab",
      "short" : "Observation generated by laboratories",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Observation.category:lab.coding",
      "path" : "Observation.category.coding",
      "min" : 1
    },
    {
      "id" : "Observation.category:lab.coding.system",
      "path" : "Observation.category.coding.system",
      "min" : 1,
      "fixedUri" : "http://terminology.hl7.org/CodeSystem/observation-category"
    },
    {
      "id" : "Observation.category:lab.coding.code",
      "path" : "Observation.category.coding.code",
      "min" : 1,
      "fixedCode" : "laboratory"
    },
    {
      "id" : "Observation.category:specificDiscipline",
      "path" : "Observation.category",
      "sliceName" : "specificDiscipline",
      "short" : "Specific discipline of pathology",
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://healthterminologies.gov.au/fhir/ValueSet/pathology-diagnostic-service-category-1"
      }
    },
    {
      "id" : "Observation.category:specificDiscipline.coding.system",
      "path" : "Observation.category.coding.system",
      "min" : 1,
      "fixedUri" : "http://terminology.hl7.org/CodeSystem/v2-0074"
    },
    {
      "id" : "Observation.code",
      "path" : "Observation.code",
      "short" : "Pathology test or test group",
      "binding" : {
        "extension" : [{
          "extension" : [{
            "url" : "key",
            "valueId" : "adb-obs-chem-comp"
          },
          {
            "url" : "purpose",
            "valueCode" : "component"
          },
          {
            "url" : "valueSet",
            "valueCanonical" : "https://www.rcpa.edu.au/fhir/ValueSet/spia-chemical-pathology-refset-3"
          },
          {
            "url" : "documentation",
            "valueMarkdown" : "This component value set (i.e. subset of the element binding) is for use when reporting chemical pathology results in Australia."
          }],
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
        },
        {
          "extension" : [{
            "url" : "key",
            "valueId" : "adb-obs-haem-comp"
          },
          {
            "url" : "purpose",
            "valueCode" : "component"
          },
          {
            "url" : "valueSet",
            "valueCanonical" : "https://www.rcpa.edu.au/fhir/ValueSet/spia-haematology-refset-3"
          },
          {
            "url" : "documentation",
            "valueMarkdown" : "This component value set (i.e. subset of the element binding) is for use when for reporting haematology pathology results in Australia."
          }],
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
        },
        {
          "extension" : [{
            "url" : "key",
            "valueId" : "adb-obs-immuno-comp"
          },
          {
            "url" : "purpose",
            "valueCode" : "component"
          },
          {
            "url" : "valueSet",
            "valueCanonical" : "https://www.rcpa.edu.au/fhir/ValueSet/spia-immunopathology-refset-3"
          },
          {
            "url" : "documentation",
            "valueMarkdown" : "This component value set (i.e. subset of the element binding) is for use when for reporting immunopathology pathology results in Australia."
          }],
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
        },
        {
          "extension" : [{
            "url" : "key",
            "valueId" : "adb-obs-micro-ser-mol-comp"
          },
          {
            "url" : "purpose",
            "valueCode" : "component"
          },
          {
            "url" : "valueSet",
            "valueCanonical" : "https://www.rcpa.edu.au/fhir/ValueSet/spia-microbiology-serology-molecular-refset-3"
          },
          {
            "url" : "documentation",
            "valueMarkdown" : "This component value set (i.e. subset of the element binding) is for use when for reporting microbiology pathology results in Australia."
          }],
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
        }],
        "strength" : "preferred",
        "valueSet" : "https://healthterminologies.gov.au/fhir/ValueSet/spia-pathology-reporting-1"
      }
    },
    {
      "id" : "Observation.subject",
      "path" : "Observation.subject",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Patient"]
      }]
    },
    {
      "id" : "Observation.effective[x]",
      "path" : "Observation.effective[x]",
      "short" : "Time of specimen collection",
      "min" : 1
    },
    {
      "id" : "Observation.value[x]",
      "path" : "Observation.value[x]",
      "condition" : ["inv-obs-0"]
    },
    {
      "id" : "Observation.dataAbsentReason",
      "path" : "Observation.dataAbsentReason",
      "condition" : ["inv-obs-0"]
    },
    {
      "id" : "Observation.specimen",
      "path" : "Observation.specimen",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org.au/fhir/StructureDefinition/au-specimen"]
      }]
    },
    {
      "id" : "Observation.hasMember",
      "path" : "Observation.hasMember",
      "short" : "Individual tests in a group or panel",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org.au/fhir/StructureDefinition/au-diagnosticresult",
        "http://hl7.org.au/fhir/StructureDefinition/au-pathologyresult"]
      }],
      "condition" : ["inv-obs-0"]
    },
    {
      "id" : "Observation.component",
      "path" : "Observation.component",
      "short" : "Individual tests in a group or panel"
    },
    {
      "id" : "Observation.component.code",
      "path" : "Observation.component.code",
      "short" : "Individual pathology test",
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "https://healthterminologies.gov.au/fhir/ValueSet/spia-pathology-reporting-1"
      }
    },
    {
      "id" : "Observation.component.value[x]",
      "path" : "Observation.component.value[x]",
      "condition" : ["inv-obs-0"]
    },
    {
      "id" : "Observation.component.dataAbsentReason",
      "path" : "Observation.component.dataAbsentReason",
      "condition" : ["inv-obs-0"]
    }]
  }
}

```
