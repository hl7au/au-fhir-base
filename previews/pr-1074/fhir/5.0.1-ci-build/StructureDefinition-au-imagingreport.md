# AU Base Diagnostic Imaging Report - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **AU Base Diagnostic Imaging Report**

## Resource Profile: AU Base Diagnostic Imaging Report 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://hl7.org.au/fhir/StructureDefinition/au-imagingreport | *Version*:6.0.1-ci-build | |
| * Standards status: *[Trial-use](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](generalguidance.md#maturity-levels): 1 | *Computable Name*:AUBaseDiagnosticImagingReport |
| **Copyright/Legal**: HL7 Australia© 2018+; Licensed Under Creative Commons No Rights Reserved. | | |

 
This profile defines a diagnostic report structure to represent a diagnostic imaging report issued by a diagnostic service provider in an Australian context. 

### Usage Notes

**Profile specific implementation guidance:**

* Results that are free text or report form are represented in `DiagnosticReport.presentedForm`.
* Results that are structured in FHIR resources are referenced in `DiagnosticReport.result`. Each referenced Observation resource represents an individual imaging examination and result value or component result values, or a nested grouping of Observations such as a multi-modality procedure which references other Observations in `Observation.hasMember`.
* When constructing a report for a nested grouping of Observations: 
* the individual imaging examinations are referenced by that grouping Observation in `Observation.hasMember` and not directly referenced in `DiagnosticReport.result`
* `DiagnosticReport.code` and the grouping Observation `Observation.code` should be the same concept if the report contains only the results of that group.
 
* See each Identifier profile page for guidance related to that identifier type.
* The radiology laboratory is sent as a reference to an Organization in `DiagnosticReport.performer`.
* Each radiologist is sent as a references to a PractitionerRole resource in `DiagnosticReport.performer`.
* This profile supports the sex, gender, and related concepts of: Sex Parameter for Clinical Use: 
* When exchanging concepts of sex or gender, refer to the guidance in [Sex and Gender](sexgender.md) and the [Gender Harmony Implementation Guide](http://hl7.org/xprod/ig/uv/gender-harmony/).
 

**Usages:**

* This Profile is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.au.base|current/StructureDefinition/StructureDefinition-au-imagingreport.json)

**Changes since version 6.0.0:**

* No changes

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-au-imagingreport.csv), [Excel](StructureDefinition-au-imagingreport.xlsx), [Schematron](StructureDefinition-au-imagingreport.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "au-imagingreport",
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
  "url" : "http://hl7.org.au/fhir/StructureDefinition/au-imagingreport",
  "version" : "6.0.1-ci-build",
  "name" : "AUBaseDiagnosticImagingReport",
  "title" : "AU Base Diagnostic Imaging Report",
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
  "description" : "This profile defines a diagnostic report structure to represent a diagnostic imaging report issued by a diagnostic service provider in an Australian context.",
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
      "short" : "A diagnostic imaging report in an Australian healthcare context"
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
      "short" : "Diagnostic imaging order",
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
      "short" : "Relevant diagnostic imaging category: service, modality",
      "comment" : "A category denoting diagnostic imaging service identifies the type of report and supports macro handling of requests is required. A second category to provide the modality should be provided where possible; a value set to support this categorisation is not yet available.",
      "min" : 1
    },
    {
      "id" : "DiagnosticReport.code",
      "path" : "DiagnosticReport.code",
      "short" : "Diagnostic imaging examination or study",
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "https://healthterminologies.gov.au/fhir/ValueSet/imaging-procedure-1"
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
      "short" : "Time of imaging examination",
      "min" : 1
    },
    {
      "id" : "DiagnosticReport.result",
      "path" : "DiagnosticReport.result",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org.au/fhir/StructureDefinition/au-diagnosticresult",
        "http://hl7.org.au/fhir/StructureDefinition/au-imagingresult"]
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
