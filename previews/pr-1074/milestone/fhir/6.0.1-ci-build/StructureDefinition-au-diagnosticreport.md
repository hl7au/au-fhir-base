# AU Base DiagnosticReport - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **AU Base DiagnosticReport**

## Resource Profile: AU Base DiagnosticReport 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://hl7.org.au/fhir/StructureDefinition/au-diagnosticreport | *Version*:6.0.1-ci-build | |
| * Standards status: *[Trial-use](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](generalguidance.md#maturity-levels): 1 | *Computable Name*:AUBaseDiagnosticReport |
| **Copyright/Legal**: HL7 Australia© 2018+; Licensed Under Creative Commons No Rights Reserved. | | |

 
This profile defines a diagnostic report structure that localises core concepts, including identifiers and terminology, for use in an Australian context. The purpose of this profile is to provide national level agreement on core localised concepts. This profile does not force conformance to core localised concepts. It enables implementers and modellers to make their own rules, i.e. [profiling](http://hl7.org/fhir/profiling.html), about how to support these concepts for specific implementation needs. 
For specific reporting of pathology or imaging services the more specific [AU Base Pathology Report](StructureDefinition-au-pathologyreport.md) or [AU Base Diagnostic Imaging Report](StructureDefinition-au-imagingreport.md) profiles would be preferred. This profile is suitable for any other diagnostic service reporting needs. 

### Usage Notes

**Profile specific implementation guidance:**

* Results that are free text or report form are represented in `DiagnosticReport.presentedForm`.
* Results that are structured in FHIR resources are referenced in `DiagnosticReport.result`. Each referenced Observation resource represents an individual diagnostic test and result value or component result values, or a study / panel which references other Observations in `Observation.hasMember`.
* When constructing a report for a study / panel: 
* the individual component examinations are referenced by that grouping Observation in `Observation.hasMember` and not directly referenced in `DiagnosticReport.result`
* `DiagnosticReport.code` and the study / panel Observation `Observation.code` should be the same concept if the report contains only the results of that study / panel
 
* See each Identifier profile page for guidance related to that identifier type.
* For guidance on representing a pathology report issued by the diagnostic service provider, the [AU Base Pathology Report](StructureDefinition-au-pathologyreport.md) profile is preferred.
* For guidance on representing an imaging report issued by the diagnostic service provider, the [AU Base Diagnostic Imaging Report](StructureDefinition-au-imagingreport.md) profile is preferred.
* This profile supports the sex, gender, and related concepts of: Sex Parameter for Clinical Use: 
* When exchanging concepts of sex or gender, refer to the guidance in [Sex and Gender](sexgender.md) and the [Gender Harmony Implementation Guide](http://hl7.org/xprod/ig/uv/gender-harmony/).
 

**Usages:**

* Derived from this Profile: [AU Base Diagnostic Imaging Report](StructureDefinition-au-imagingreport.md) and [AU Base Pathology Report](StructureDefinition-au-pathologyreport.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.au.base|current/StructureDefinition/StructureDefinition-au-diagnosticreport.json)

**Changes since version 6.0.0:**

* The resource metadata has changed (description)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-au-diagnosticreport.csv), [Excel](StructureDefinition-au-diagnosticreport.xlsx), [Schematron](StructureDefinition-au-diagnosticreport.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "au-diagnosticreport",
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
  "url" : "http://hl7.org.au/fhir/StructureDefinition/au-diagnosticreport",
  "version" : "6.0.1-ci-build",
  "name" : "AUBaseDiagnosticReport",
  "title" : "AU Base DiagnosticReport",
  "status" : "active",
  "date" : "2026-06-18T16:30:51+00:00",
  "publisher" : "HL7 Australia",
  "contact" : [{
    "name" : "HL7 Australia FHIR Working Group",
    "telecom" : [{
      "system" : "url",
      "value" : "https://confluence.hl7.org/display/HAFWG",
      "use" : "work"
    }]
  }],
  "description" : "This profile defines a diagnostic report structure that localises core concepts, including identifiers and terminology, for use in an Australian context. The purpose of this profile is to provide national level agreement on core localised concepts. This profile does not force conformance to core localised concepts. It enables implementers and modellers to make their own rules, i.e. [profiling](http://hl7.org/fhir/profiling.html), about how to support these concepts for specific implementation needs.\n\nFor specific reporting of pathology or imaging services the more specific [AU Base Pathology Report](StructureDefinition-au-pathologyreport.html) or [AU Base Diagnostic Imaging Report](StructureDefinition-au-imagingreport.html) profiles would be preferred. This profile is suitable for any other diagnostic service reporting needs.",
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
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/DiagnosticReport",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "DiagnosticReport",
      "path" : "DiagnosticReport",
      "short" : "A diagnostic report in an Australian healthcare context"
    },
    {
      "id" : "DiagnosticReport.extension:sexParameterForClinicalUse",
      "path" : "DiagnosticReport.extension",
      "sliceName" : "sexParameterForClinicalUse",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/patient-sexParameterForClinicalUse"]
      }]
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
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/CarePlan",
        "http://hl7.org/fhir/StructureDefinition/ImmunizationRecommendation",
        "http://hl7.org/fhir/StructureDefinition/MedicationRequest",
        "http://hl7.org/fhir/StructureDefinition/NutritionOrder",
        "http://hl7.org/fhir/StructureDefinition/ServiceRequest",
        "http://hl7.org.au/fhir/StructureDefinition/au-servicerequest"]
      }]
    },
    {
      "id" : "DiagnosticReport.category",
      "path" : "DiagnosticReport.category",
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "http://hl7.org/fhir/ValueSet/diagnostic-service-sections"
      }
    },
    {
      "id" : "DiagnosticReport.code",
      "path" : "DiagnosticReport.code",
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "https://healthterminologies.gov.au/fhir/ValueSet/evaluation-procedure-1"
      }
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
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Observation",
        "http://hl7.org.au/fhir/StructureDefinition/au-diagnosticresult",
        "http://hl7.org.au/fhir/StructureDefinition/au-imagingresult",
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
