# AU Base Diagnostic Result - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **AU Base Diagnostic Result**

## Resource Profile: AU Base Diagnostic Result 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://hl7.org.au/fhir/StructureDefinition/au-diagnosticresult | *Version*:6.0.1-ci-build | |
| * Standards status: *[Trial-use](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](generalguidance.md#maturity-levels): 1 | *Computable Name*:AUBaseDiagnosticResult |
| **Copyright/Legal**: HL7 Australia© 2018+; Licensed Under Creative Commons No Rights Reserved. | | |

 
This profile defines an observation structure to represent a diagnostic investigation result issued by a diagnostic service provider in an Australian context. This profile may be used to represent a specialist or other diagnostic (not imaging or pathology) observation including results of audiology studies, sleep studies or speech pathology. The observation may represent the result of a simple investigation or it may group the set of results of a multi-modality procedure or multi-test study / panel. 

### Usage Notes

**Profile specific implementation guidance:**

* The [BodyStructure Reference](http://hl7.org/fhir/R4/extension-bodysite.html) extension may be suitable for use where 
* body site is not implicit in the code found in `Observation.code` and
* body site information is to be handled as a separate resource (e.g. to identify and track separately) instead of an inline coded element in `Observation.bodySite`.
 
* See the [AU Base Pathology Result](StructureDefinition-au-pathologyresult.md) profile for guidance on representing the result of a pathology test.
* See the [AU Base Diagnostic Imaging Result](StructureDefinition-au-imagingresult.md) profile for guidance on representing the result of a radiology examination or an imaging intensive diagnostic investigation.

**Usages:**

* Refer to this Profile: [AU Base DiagnosticReport](StructureDefinition-au-diagnosticreport.md), [AU Base Diagnostic Result](StructureDefinition-au-diagnosticresult.md), [AU Base Diagnostic Imaging Report](StructureDefinition-au-imagingreport.md), [AU Base Diagnostic Imaging Result](StructureDefinition-au-imagingresult.md)... Show 2 more, [AU Base Pathology Report](StructureDefinition-au-pathologyreport.md) and [AU Base Pathology Result](StructureDefinition-au-pathologyresult.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.au.base|current/StructureDefinition/StructureDefinition-au-diagnosticresult.json)

**Changes since version 6.0.0:**

* The data elements list has changed

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-au-diagnosticresult.csv), [Excel](StructureDefinition-au-diagnosticresult.xlsx), [Schematron](StructureDefinition-au-diagnosticresult.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "au-diagnosticresult",
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
  "url" : "http://hl7.org.au/fhir/StructureDefinition/au-diagnosticresult",
  "version" : "6.0.1-ci-build",
  "name" : "AUBaseDiagnosticResult",
  "title" : "AU Base Diagnostic Result",
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
  "description" : "This profile defines an observation structure to represent a diagnostic investigation result issued by a diagnostic service provider in an Australian context. This profile may be used to represent a specialist or other diagnostic (not imaging or pathology) observation including results of audiology studies, sleep studies or speech pathology. The observation may represent the result of a simple investigation or it may group the set of results of a multi-modality procedure or multi-test study / panel.",
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
      "short" : "A diagnostic result observation in an Australian healthcare context",
      "definition" : "Diagnostic measurements and simple assertions made about a patient, device or other subject.",
      "constraint" : [{
        "key" : "inv-obs-0",
        "severity" : "error",
        "human" : "A diagnostic result shall at least have value or data absent reason or a child observation with a value or data absent reason",
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
      "short" : "Diagnostic service section",
      "min" : 1,
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "http://hl7.org/fhir/ValueSet/diagnostic-service-sections"
      }
    },
    {
      "id" : "Observation.code",
      "path" : "Observation.code",
      "short" : "Diagnostic procedure",
      "binding" : {
        "strength" : "example",
        "valueSet" : "https://healthterminologies.gov.au/fhir/ValueSet/evaluation-procedure-1"
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
      "id" : "Observation.hasMember",
      "path" : "Observation.hasMember",
      "short" : "Individual examinations in a group or study series",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org.au/fhir/StructureDefinition/au-diagnosticresult",
        "http://hl7.org.au/fhir/StructureDefinition/au-imagingresult",
        "http://hl7.org.au/fhir/StructureDefinition/au-pathologyresult"]
      }],
      "condition" : ["inv-obs-0"]
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
