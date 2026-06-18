# AU Base Diagnostic Request - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **AU Base Diagnostic Request**

## Resource Profile: AU Base Diagnostic Request 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://hl7.org.au/fhir/StructureDefinition/au-diagnosticrequest | *Version*:6.0.1-ci-build | |
| * Standards status: *[Deprecated](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](generalguidance.md#maturity-levels): 1 | *Computable Name*:AUBaseDiagnosticRequest |
| **Copyright/Legal**: HL7 Australia© 2018+; Licensed Under Creative Commons No Rights Reserved. | | |

 
This profile defines a service request structure to represent a request for a diagnostic investigation in an Australian context. This profile is intended to support ordering for pathology, radiology, and specialist diagnostic investigations. 

This profile is deprecated in AU Base as work is being undertaken in the [AU eRequesting](https://build.fhir.org/ig/hl7au/au-fhir-erequesting) project to define the requirements for a diagnostic request. In AU Base this profile is replaced by [AU Base ServiceRequest](StructureDefinition-au-servicerequest.md), which localises core concepts, including identifiers and terminology, for use in an Australian context and enables implementers and modellers to make their own rules, i.e. ([profiling](http://hl7.org/fhir/profiling.html)), about how to support these concepts for specific implementation needs.

### Usage Notes

**Profile specific implementation guidance:**

* The [procedure-targetBodyStructure](http://hl7.org/fhir/R4/extension-procedure-targetbodystructure.html) extension may be suitable for use where 
* body site is not implicit in the code found in `ServiceRequest.code` and
* body site information is to be handled as a separate resource (e.g. to identify and track separately) instead of an inline coded element in `ServiceRequest.bodySite`.
 
* `ServiceRequest.code` for a pathology order is preferred to be a member of the [RCPA - SPIA Requesting Pathology Terminology Reference Set](https://www.healthterminologies.gov.au/integration/R4/fhir/ValueSet/spia-requesting-refset-3).
* `ServiceRequest.code` for an imaging order is preferred to be a member of the [Imaging Procedure](https://healthterminologies.gov.au/fhir/ValueSet/imaging-procedure-1) value set.
* See each Identifier profile page for guidance related to that identifier type.

**Extensions under consideration:**

* ServiceRequest: [Result Copies To](StructureDefinition-result-copies-to.md)

**Usages:**

* This Profile is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.au.base|current/StructureDefinition/StructureDefinition-au-diagnosticrequest.json)

**Changes since version 6.0.0:**

* The data elements list has changed

* One or more text definitions, invariants or bindings have changed

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-au-diagnosticrequest.csv), [Excel](StructureDefinition-au-diagnosticrequest.xlsx), [Schematron](StructureDefinition-au-diagnosticrequest.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "au-diagnosticrequest",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm",
    "valueInteger" : 1
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status",
    "valueCode" : "deprecated",
    "_valueCode" : {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status-reason",
        "valueMarkdown" : "This profile is deprecated in AU Base as work is being undertaken in the [AU eRequesting](https://build.fhir.org/ig/hl7au/au-fhir-erequesting) project to define the requirements for a diagnostic request. In AU Base this profile is replaced by [AU Base ServiceRequest](https://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-servicerequest.html), which localises core concepts, including identifiers and terminology, for use in an Australian context and enables implementers and modellers to make their own rules, i.e. [profiling](http://hl7.org/fhir/profiling.html), about how to support these concepts for specific implementation needs."
      }]
    }
  }],
  "url" : "http://hl7.org.au/fhir/StructureDefinition/au-diagnosticrequest",
  "version" : "6.0.1-ci-build",
  "name" : "AUBaseDiagnosticRequest",
  "title" : "AU Base Diagnostic Request",
  "status" : "retired",
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
  "description" : "This profile defines a service request structure to represent a request for a diagnostic investigation in an Australian context. This profile is intended to support ordering for pathology, radiology, and specialist diagnostic investigations.",
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
  },
  {
    "identity" : "quick",
    "uri" : "http://siframework.org/cqf",
    "name" : "Quality Improvement and Clinical Knowledge (QUICK)"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "ServiceRequest",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/ServiceRequest",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "ServiceRequest",
      "path" : "ServiceRequest",
      "short" : "Deprecated: A diagnostic service request in an Australian healthcare context",
      "definition" : "This profile is deprecated in AU Base as work is being undertaken in the [AU eRequesting](https://build.fhir.org/ig/hl7au/au-fhir-erequesting) project to define the requirements for a diagnostic request. In AU Base this profile is replaced by [AU Base ServiceRequest](https://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-servicerequest.html), which localises core concepts, including identifiers and terminology, for use in an Australian context and enables implementers and modellers to make their own rules, i.e. [profiling](http://hl7.org/fhir/profiling.html), about how to support these concepts for specific implementation needs.\n\nA record of a request for one or more diagnostic investigations to be performed."
    },
    {
      "id" : "ServiceRequest.extension",
      "path" : "ServiceRequest.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "rules" : "open"
      }
    },
    {
      "id" : "ServiceRequest.extension:targetBodyStructure",
      "path" : "ServiceRequest.extension",
      "sliceName" : "targetBodyStructure",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/procedure-targetBodyStructure"]
      }]
    },
    {
      "id" : "ServiceRequest.identifier",
      "path" : "ServiceRequest.identifier",
      "short" : "Identifiers assigned to this order",
      "definition" : "Identifiers assigned to this order instance by the orderer and/or the receiver and/or order fulfiller.",
      "type" : [{
        "code" : "Identifier",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/Identifier",
        "http://hl7.org.au/fhir/StructureDefinition/au-localorderidentifier"]
      }]
    },
    {
      "id" : "ServiceRequest.code",
      "path" : "ServiceRequest.code",
      "comment" : "A pathology order is preferred to be a member of the [RCPA - SPIA Requesting Pathology Terminology Reference Set](https://www.rcpa.edu.au/fhir/ValueSet/spia-requesting-refset-3) [(NCTS)](https://www.healthterminologies.gov.au/integration/R4/fhir/ValueSet/spia-requesting-refset-3). An imaging order is preferred to be a member of the [Imaging Procedure](https://healthterminologies.gov.au/fhir/ValueSet/imaging-procedure-1) value set.",
      "binding" : {
        "strength" : "example",
        "valueSet" : "https://healthterminologies.gov.au/fhir/ValueSet/evaluation-procedure-1"
      }
    },
    {
      "id" : "ServiceRequest.requester",
      "path" : "ServiceRequest.requester",
      "short" : "Authorising individual, organisation or program (e.g. National Bowel Cancer Screening Program)",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Practitioner",
        "http://hl7.org/fhir/StructureDefinition/PractitionerRole",
        "http://hl7.org/fhir/StructureDefinition/Organization",
        "http://hl7.org/fhir/StructureDefinition/Patient",
        "http://hl7.org/fhir/StructureDefinition/RelatedPerson"]
      }]
    },
    {
      "id" : "ServiceRequest.performerType",
      "path" : "ServiceRequest.performerType",
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "https://healthterminologies.gov.au/fhir/ValueSet/practitioner-role-1"
      }
    },
    {
      "id" : "ServiceRequest.reasonCode",
      "path" : "ServiceRequest.reasonCode",
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "https://healthterminologies.gov.au/fhir/ValueSet/reason-for-request-1"
      }
    },
    {
      "id" : "ServiceRequest.specimen",
      "path" : "ServiceRequest.specimen",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org.au/fhir/StructureDefinition/au-specimen"]
      }]
    },
    {
      "id" : "ServiceRequest.bodySite",
      "path" : "ServiceRequest.bodySite",
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "https://healthterminologies.gov.au/fhir/ValueSet/body-site-1"
      }
    }]
  }
}

```
