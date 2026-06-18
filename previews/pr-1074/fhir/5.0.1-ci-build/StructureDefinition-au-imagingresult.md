# AU Base Diagnostic Imaging Result - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **AU Base Diagnostic Imaging Result**

## Resource Profile: AU Base Diagnostic Imaging Result 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://hl7.org.au/fhir/StructureDefinition/au-imagingresult | *Version*:6.0.1-ci-build | |
| * Standards status: *[Trial-use](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](generalguidance.md#maturity-levels): 1 | *Computable Name*:AUBaseDiagnosticImagingResult |
| **Copyright/Legal**: HL7 Australia© 2018+; Licensed Under Creative Commons No Rights Reserved. | | |

 
This profile defines an observation structure to represent a imaging examination result issued by a diagnostic service provider in an Australian context. The observation may represent the conclusions of a diagnostic procedure such as Left retina Foveal thickness by OCT, or it may group the set of results produced by a multi-test study or panel such as Biophysical profile panel. 

### Usage Notes

**Profile specific implementation guidance:**

* The [BodyStructure Reference](http://hl7.org/fhir/R4/extension-bodysite.html) extension may be suitable for use where 
* body site is not implicit in the code found in `Observation.code` and
* body site information cannot be adequately captured by a single inline coded element in `Observation.bodySite`.
 
* When sending an observation that represents a study series or panel: 
* the group / panel code is sent in `Observation.code`
* the overall comments are sent in `Observation.note`
* the global interpretation by the producer of the study is sent in `Observation.interpretation`
* individual results may be sent in `Observation.component` or by referencing individual observation results in `Observation.hasMember`
 
* When sending observations that group the set of results of a multi-modality procedure: 
* A multi-modality procedure observation is sent with individual component examinations in `Observation.hasMember`.
* An individual component examination observation is referenced by that multi-modality procedure observation (`Observation.hasMember`) rather than directly at the diagnostic report level (`DiagnosticReport.result`).
 

**Usages:**

* Refer to this Profile: [AU Base DiagnosticReport](StructureDefinition-au-diagnosticreport.md), [AU Base Diagnostic Result](StructureDefinition-au-diagnosticresult.md), [AU Base Diagnostic Imaging Report](StructureDefinition-au-imagingreport.md) and [AU Base Diagnostic Imaging Result](StructureDefinition-au-imagingresult.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.au.base|current/StructureDefinition/StructureDefinition-au-imagingresult.json)

**Changes since version 6.0.0:**

* No changes

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-au-imagingresult.csv), [Excel](StructureDefinition-au-imagingresult.xlsx), [Schematron](StructureDefinition-au-imagingresult.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "au-imagingresult",
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
  "url" : "http://hl7.org.au/fhir/StructureDefinition/au-imagingresult",
  "version" : "6.0.1-ci-build",
  "name" : "AUBaseDiagnosticImagingResult",
  "title" : "AU Base Diagnostic Imaging Result",
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
  "description" : "This profile defines an observation structure to represent a imaging examination result issued by a diagnostic service provider in an Australian context. The observation may represent the conclusions of a diagnostic procedure such as Left retina Foveal thickness by OCT, or it may group the set of results produced by a multi-test study or panel such as Biophysical profile panel.",
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
      "short" : "A imaging examination result in an Australian healthcare context",
      "definition" : "A diagnostic imaging examination result for a patient. This observation may be a simple examination or a study series.",
      "constraint" : [{
        "key" : "inv-obs-0",
        "severity" : "error",
        "human" : "An imaging result shall at least have value or data absent reason or a child observation with a value or data absent reason",
        "expression" : "value.exists() or dataAbsentReason.exists() or hasMember.exists() or component.value.exists() or component.dataAbsentReason.exists()"
      },
      {
        "key" : "inv-obs-1",
        "severity" : "error",
        "human" : "BodyStructure Reference extension shall only be present if the body site is not present",
        "expression" : "bodySite.exists() implies extension('http://hl7.org/fhir/StructureDefinition/bodySite').empty()"
      }]
    },
    {
      "id" : "Observation.extension",
      "path" : "Observation.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "rules" : "open"
      }
    },
    {
      "id" : "Observation.extension:bodyStructure",
      "path" : "Observation.extension",
      "sliceName" : "bodyStructure",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/bodySite"]
      }],
      "condition" : ["inv-obs-1"]
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
      "short" : "Relevant diagnostic imaging category: service, modality and anatomic region",
      "comment" : "A category denoting diagnostic imaging service identifies the type of report and supports macro handling of requests is required. A second category to provide the modality should be provided where possible; a value set to support this categorisation is not yet available. A third category to provide the anatomic region of interest should be provided where possible.",
      "min" : 1
    },
    {
      "id" : "Observation.category:diagImg",
      "path" : "Observation.category",
      "sliceName" : "diagImg",
      "short" : "Observation generated by imaging",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Observation.category:diagImg.coding",
      "path" : "Observation.category.coding",
      "min" : 1
    },
    {
      "id" : "Observation.category:diagImg.coding.system",
      "path" : "Observation.category.coding.system",
      "min" : 1,
      "fixedUri" : "http://terminology.hl7.org/CodeSystem/observation-category"
    },
    {
      "id" : "Observation.category:diagImg.coding.code",
      "path" : "Observation.category.coding.code",
      "min" : 1,
      "fixedCode" : "imaging"
    },
    {
      "id" : "Observation.category:anatomicRegionOfInterest",
      "path" : "Observation.category",
      "sliceName" : "anatomicRegionOfInterest",
      "short" : "Anatomic Region Of Interest",
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://healthterminologies.gov.au/fhir/ValueSet/imaging-anatomic-region-of-interest-1"
      }
    },
    {
      "id" : "Observation.category:anatomicRegionOfInterest.coding.system",
      "path" : "Observation.category.coding.system",
      "min" : 1,
      "fixedUri" : "http://snomed.info/sct"
    },
    {
      "id" : "Observation.code",
      "path" : "Observation.code",
      "short" : "Diagnostic imaging examination or study",
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "https://healthterminologies.gov.au/fhir/ValueSet/imaging-procedure-1"
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
      "short" : "Time of diagnostic imaging examination",
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
      "id" : "Observation.bodySite",
      "path" : "Observation.bodySite",
      "condition" : ["inv-obs-1"],
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "https://healthterminologies.gov.au/fhir/ValueSet/body-site-1"
      }
    },
    {
      "id" : "Observation.hasMember",
      "path" : "Observation.hasMember",
      "short" : "Individual examinations in a group or study series",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org.au/fhir/StructureDefinition/au-diagnosticresult",
        "http://hl7.org.au/fhir/StructureDefinition/au-imagingresult"]
      }],
      "condition" : ["inv-obs-0"]
    },
    {
      "id" : "Observation.component",
      "path" : "Observation.component",
      "short" : "Individual examinations in a group or study series"
    },
    {
      "id" : "Observation.component.code",
      "path" : "Observation.component.code",
      "short" : "Diagnostic imaging examination or study",
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "https://healthterminologies.gov.au/fhir/ValueSet/imaging-procedure-1"
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
