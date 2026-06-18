# AU Base Pathology Report - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **AU Base Pathology Report**

## Resource Profile: AU Base Pathology Report 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://hl7.org.au/fhir/StructureDefinition/au-pathologyreport | *Version*:6.0.1-ci-build | |
| * Standards status: *[Trial-use](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](generalguidance.md#maturity-levels): 1 | *Computable Name*:AUBasePathologyReport |
| **Copyright/Legal**: HL7 Australia© 2018+; Licensed Under Creative Commons No Rights Reserved. | | |

 
This profile defines a diagnostic report structure to represent a pathology report issued by a diagnostic service provider in an Australian context. This profile is intended to be capable of supporting reporting for all pathology disciplines (e.g. including microbiology, histopathology, cytology, blood transfusion) with the exception of genomics. 
This profile does not provide full support for structured pathology reporting. It is expected that this support is best handled by a set of profiles that represent the structured reporting requirements for each specific protocol (see for example [RCPA’s structured pathology reporting of cancer](https://www.rcpa.edu.au/Library/Practising-Pathology/Structured-Pathology-Reporting-of-Cancer)); this is not in the scope of this implementation guide at this time. 

### Usage Notes

**Profile specific implementation guidance:**

* Results that are free text or report form are represented in `DiagnosticReport.presentedForm`.
* Results that are structured in FHIR resources are referenced in `DiagnosticReport.result`. Each referenced Observation resource represents an individual pathology test and result value or component result values, or a study / panel which references other Observations in `Observation.hasMember`.
* When constructing a report for a study / panel: 
* the individual component examinations are referenced by that grouping Observation in `Observation.hasMember` and not directly referenced in `DiagnosticReport.result`
* `DiagnosticReport.code` and the study / panel Observation `Observation.code` should be the same concept if the report contains only the results of that study / panel
 
* See each Identifier profile page for guidance related to that identifier type.
* `effective[x]` is the earliest specimen collection date time.
* The pathology laboratory is sent as a reference to an Organization in `DiagnosticReport.performer`.
* Each pathologist is sent as a reference to a PractitionerRole resource in `DiagnosticReport.performer`.
* When sending a discipline specific laboratory result, one of discipline specific value sets may be more suitable for use than the entire reporting value set bound in this profile to `DiagnosticReport.code`: 
* [ValueSet : RCPA - SPIA Chemical Pathology Terminology Reference Set](https://www.healthterminologies.gov.au/integration/R4/fhir/ValueSet/spia-chemical-pathology-refset-3?ui:source=search)
* [ValueSet : RCPA - SPIA Haematology Terminology Reference Set](https://www.healthterminologies.gov.au/integration/R4/fhir/ValueSet/spia-haematology-refset-3?ui:source=search)
* [ValueSet : RCPA - SPIA Immunopathology Terminology Reference Set](https://www.healthterminologies.gov.au/integration/R4/fhir/ValueSet/spia-immunopathology-refset-3?ui:source=search)
* [ValueSet : RCPA - SPIA Microbiology Serology Molecular Pathology Terminology Reference Set](https://www.healthterminologies.gov.au/integration/R4/fhir/ValueSet/spia-microbiology-serology-molecular-refset-3?ui:source=search)
 
* This profile supports the sex, gender, and related concepts of: Sex Parameter for Clinical Use: 
* When exchanging concepts of sex or gender, refer to the guidance in [Sex and Gender](sexgender.md) and the [Gender Harmony Implementation Guide](http://hl7.org/xprod/ig/uv/gender-harmony/).
 

**Usages:**

* This Profile is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.au.base|current/StructureDefinition/StructureDefinition-au-pathologyreport.json)

**Changes since version 6.0.0:**

* No changes

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-au-pathologyreport.csv), [Excel](StructureDefinition-au-pathologyreport.xlsx), [Schematron](StructureDefinition-au-pathologyreport.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "au-pathologyreport",
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
  "url" : "http://hl7.org.au/fhir/StructureDefinition/au-pathologyreport",
  "version" : "6.0.1-ci-build",
  "name" : "AUBasePathologyReport",
  "title" : "AU Base Pathology Report",
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
  "description" : "This profile defines a diagnostic report structure to represent a pathology report issued by a diagnostic service provider in an Australian context. This profile is intended to be capable of supporting reporting for all pathology disciplines (e.g. including microbiology, histopathology, cytology, blood transfusion) with the exception of genomics.\n\nThis profile does not provide full support for structured pathology reporting. It is expected that this support is best handled by a set of profiles that represent the structured reporting requirements for each specific protocol (see for example [RCPA’s structured pathology reporting of cancer](https://www.rcpa.edu.au/Library/Practising-Pathology/Structured-Pathology-Reporting-of-Cancer)); this is not in the scope of this implementation guide at this time.",
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
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "DiagnosticReport",
  "baseDefinition" : "http://hl7.org.au/fhir/StructureDefinition/au-diagnosticreport",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "DiagnosticReport",
      "path" : "DiagnosticReport",
      "short" : "A pathology report in an Australian healthcare context"
    },
    {
      "id" : "DiagnosticReport.identifier",
      "path" : "DiagnosticReport.identifier",
      "short" : "Business identifier for report",
      "definition" : "Identifiers assigned to this report by the performer or other systems.",
      "type" : [{
        "code" : "Identifier",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/Identifier",
        "http://hl7.org.au/fhir/StructureDefinition/au-localorderidentifier",
        "http://hl7.org.au/fhir/StructureDefinition/au-localreportidentifier",
        "http://hl7.org.au/fhir/StructureDefinition/au-accessionnumber"]
      }]
    },
    {
      "id" : "DiagnosticReport.basedOn",
      "path" : "DiagnosticReport.basedOn",
      "short" : "Pathology order",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/ServiceRequest",
        "http://hl7.org.au/fhir/StructureDefinition/au-servicerequest",
        "http://hl7.org/fhir/StructureDefinition/CarePlan"]
      }]
    },
    {
      "id" : "DiagnosticReport.category",
      "path" : "DiagnosticReport.category",
      "min" : 1,
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://healthterminologies.gov.au/fhir/ValueSet/pathology-diagnostic-service-category-1"
      }
    },
    {
      "id" : "DiagnosticReport.code",
      "path" : "DiagnosticReport.code",
      "short" : "Pathology test or test group",
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "https://healthterminologies.gov.au/fhir/ValueSet/spia-pathology-reporting-1"
      }
    },
    {
      "id" : "DiagnosticReport.subject",
      "path" : "DiagnosticReport.subject",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Patient"]
      }]
    },
    {
      "id" : "DiagnosticReport.effective[x]",
      "path" : "DiagnosticReport.effective[x]",
      "short" : "Time of specimen collection",
      "min" : 1
    },
    {
      "id" : "DiagnosticReport.specimen",
      "path" : "DiagnosticReport.specimen",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org.au/fhir/StructureDefinition/au-specimen"]
      }]
    },
    {
      "id" : "DiagnosticReport.result",
      "path" : "DiagnosticReport.result",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org.au/fhir/StructureDefinition/au-diagnosticresult",
        "http://hl7.org.au/fhir/StructureDefinition/au-pathologyresult"]
      }]
    },
    {
      "id" : "DiagnosticReport.conclusionCode",
      "path" : "DiagnosticReport.conclusionCode",
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "https://healthterminologies.gov.au/fhir/ValueSet/clinical-finding-1"
      }
    }]
  }
}

```
