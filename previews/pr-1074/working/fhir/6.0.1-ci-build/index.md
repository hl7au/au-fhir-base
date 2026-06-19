# Home - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* **Home**

## Home

| | |
| :--- | :--- |
| *Official URL*:http://hl7.org.au/fhir/ImplementationGuide/hl7.fhir.au.base | *Version*:6.0.1-ci-build |
| * IG Standards status: *[Trial-use](http://hl7.org/fhir/R4/versions.html#std-process) | *Computable Name*:AUBaseImplementationGuide |
| **Copyright/Legal**: HL7 Australia© 2018+; Licensed Under Creative Commons No Rights Reserved. | |

### Introduction

This implementation guide is provided to support the use of HL7® FHIR®© in an Australian context.

AU Base defines Australian realm concepts (e.g. Medicare card number) as an additional set of options to what is available in the FHIR standard, including extensions, terminology and identifiers. It provides base profiles to inform a reader of which added concepts are considered relevant to a particular resource type, and these base profiles may be further constrained in a separate implementation guide for a particular usage. For this reason, AU Base does not apply cardinality constraints or required binding strengths to added concepts (except in rare circumstances), and does not utilise must support flags or recommend or mandate any particular resource, element or interactions.

This guide alone does not constrain profiles sufficiently to ensure implementation use cases can be met.

AU Core defines a set of conformance requirements that enforce a set of ‘minimum requirements’ on the Australian localised concepts from AU Base through cardinality constraints, Must Support flags, required/extensible binding strengths, and capability statements. AU Core is for use by Australian stakeholders when implementing FHIR to provide a common implementation and should be built on top of when creating additional Australian profiles and implementation guides. Conformance to AU Core may become tied to regulatory and/or contractual agreements in order to necessitate adoption to this more prescriptive specification.

### Dependencies





* Parameter: system-version
  * Value: SNOMED CT[AU]

### How to Read This Guide

This guide is divided into several pages which are listed at the top of each page in the menu bar.

* [Home](index.md): This page provides the introduction and scope for this guide.
* [Guidance](guidance.md): These pages list the guidance for this guide. 
* [General Guidance](generalguidance.md): This page provides guidance on using the profiles defined in this guide.
* [Sex and Gender](sexgender.md): This page provides guidance on the representation of sex, gender, and related concepts.
* [Relationship with other IGs](relationship.md): This page provides guidance on the relationship between AU Base and other implementation guides.
* [Future of AU Base](future.md): This page outlines the yearly update cycle and approach to maturing AU Base.
 
* [FHIR Artefacts](fhirartefacts.md): These pages provide detailed descriptions and formal definitions for all the FHIR artefacts defined in this guide. 
* [Artefacts Summary](artifacts.md): This page lists the FHIR artefacts defined in this guide.
* [Profiles and Extensions](profiles-and-extensions.md): This page describes the profiles and extensions that are defined in this guide to represent Australian local concepts using FHIR. Each profile page includes a narrative description, guidance, and formal definition. Although the guidance typically focuses on the profiled elements and seeks to provide a ‘how-to’ guide when representing concepts, it may also focus on un-profiled elements to aid with implementation.
* [Search Parameters](search-parameters.md): This page lists the search parameters defined in this guide for use in AU operations.
* [Terminology](terminology.md): This page lists the value sets and code systems localised in this guide.
 
* [Examples](examples.md): This page lists all the examples used in this guide.
* [Support](support.md): These pages provide supporting material for implementation of AU Base. 
* [Downloads](downloads.md): This page provides links to downloadable artefacts.
* [License and Legal](license.md): This page outlines license and legal requirements relating to AU Base.
 
* [Change Log](changes.md): This page documents the changes across versions of this guide.

### Collaboration

This guide is the product of collaborative work undertaken with participants from:

* [HL7 Australia FHIR Working Group](https://confluence.hl7.org/display/HAFWG/HL7+Australia+FHIR+Work+Group+Home)
* Australian FHIR Implementers Community
* Secure Messaging Technical Working Group

Primary Editors: Brett Esler, Danielle Tavares-Rixon.



## Resource Content

```json
{
  "resourceType" : "ImplementationGuide",
  "id" : "hl7.fhir.au.base",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status",
    "valueCode" : "trial-use"
  }],
  "url" : "http://hl7.org.au/fhir/ImplementationGuide/hl7.fhir.au.base",
  "version" : "6.0.1-ci-build",
  "name" : "AUBaseImplementationGuide",
  "title" : "AU Base Implementation Guide",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-06-19T08:07:27+00:00",
  "publisher" : "HL7 Australia",
  "contact" : [{
    "name" : "HL7 Australia FHIR Working Group",
    "telecom" : [{
      "system" : "url",
      "value" : "https://confluence.hl7.org/display/HAFWG",
      "use" : "work"
    }]
  }],
  "description" : "This implementation guide is provided to support the use of FHIR®© in an Australian context.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "AU"
    }]
  }],
  "copyright" : "HL7 Australia© 2018+; Licensed Under Creative Commons No Rights Reserved.",
  "packageId" : "hl7.fhir.au.base",
  "license" : "CC0-1.0",
  "fhirVersion" : ["4.0.1"],
  "dependsOn" : [{
    "id" : "hl7tx",
    "extension" : [{
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/implementationguide-dependency-comment",
      "valueMarkdown" : "Automatically added as a dependency - all IGs depend on HL7 Terminology"
    }],
    "uri" : "http://terminology.hl7.org/ImplementationGuide/hl7.terminology",
    "packageId" : "hl7.terminology.r4",
    "version" : "7.2.0"
  },
  {
    "id" : "hl7ext",
    "extension" : [{
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/implementationguide-dependency-comment",
      "valueMarkdown" : "Automatically added as a dependency - all IGs depend on the HL7 Extension Pack"
    }],
    "uri" : "http://hl7.org/fhir/extensions/ImplementationGuide/hl7.fhir.uv.extensions",
    "packageId" : "hl7.fhir.uv.extensions.r4",
    "version" : "5.3.0"
  },
  {
    "id" : "xver",
    "uri" : "http://hl7.org/fhir/uv/xver/ImplementationGuide/hl7.fhir.uv.xver-r5.r4",
    "packageId" : "hl7.fhir.uv.xver-r5.r4",
    "version" : "0.1.0"
  }],
  "definition" : {
    "extension" : [{
      "extension" : [{
        "url" : "code",
        "valueString" : "copyrightyear"
      },
      {
        "url" : "value",
        "valueString" : "2017+"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "releaselabel"
      },
      {
        "url" : "value",
        "valueString" : "CI Build"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "fmm-definition"
      },
      {
        "url" : "value",
        "valueString" : "generalguidance.html#maturity-levels"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "shownav"
      },
      {
        "url" : "value",
        "valueString" : "false"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "dynamic-source-viewers"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-version"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-jurisdiction"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-publisher"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "show-inherited-invariants"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "excludemap"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-expansion-params"
      },
      {
        "url" : "value",
        "valueString" : "../input/_resources/exp-params.json"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://terminology.hl7.org/ValueSet/pronouns"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://hl7.org/fhir/StructureDefinition/individual-recordedSexOrGender"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://hl7.org/fhir/StructureDefinition/individual-pronouns"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://terminology.hl7.org.au/ValueSet/service-provision-conditions"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://terminology.hl7.org.au/ValueSet/pbs-item"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://terminology.hl7.org.au/ValueSet/order-identifier-type"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://terminology.hl7.org.au/ValueSet/mims"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://terminology.hl7.org.au/ValueSet/medicine-item-change"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://terminology.hl7.org.au/ValueSet/medication-type"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://terminology.hl7.org.au/ValueSet/name-context"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://terminology.hl7.org.au/ValueSet/dva-entitlement"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://terminology.hl7.org.au/ValueSet/contact-purpose"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://terminology.hl7.org.au/ValueSet/v3-ServiceDeliveryLocationRoleType-extended"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://terminology.hl7.org.au/ValueSet/v3-ActEncounterCode-extended"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://terminology.hl7.org.au/ValueSet/v2-0443-extended"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://terminology.hl7.org.au/ValueSet/v2-0360-extended"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://terminology.hl7.org.au/ValueSet/v2-0203-extended"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://terminology.hl7.org.au/ValueSet/au-timezone"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://terminology.hl7.org.au/ValueSet/observation-category-extended"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://terminology.hl7.org.au/ValueSet/location-physical-type-extended"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://terminology.hl7.org.au/ValueSet/amt-mp-codes"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://terminology.hl7.org.au/ValueSet/accession-number-type"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://terminology.hl7.org.au/CodeSystem/service-provision-conditions"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://pbs.gov.au/code/item"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://www.mims.com.au/codes"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://terminology.hl7.org.au/CodeSystem/medicine-item-change"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://terminology.hl7.org.au/CodeSystem/medication-type"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://terminology.hl7.org.au/CodeSystem/name-context"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://terminology.hl7.org.au/CodeSystem/contact-purpose"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://terminology.hl7.org.au/CodeSystem/v3-ActCode"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://terminology.hl7.org.au/CodeSystem/v2-0443"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://terminology.hl7.org.au/CodeSystem/v2-0360"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://terminology.hl7.org.au/CodeSystem/v2-0203"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://terminology.hl7.org.au/CodeSystem/observation-category"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://terminology.hl7.org.au/CodeSystem/location-type"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://terminology.hl7.org.au/CodeSystem/location-physical-type"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://terminology.hl7.org.au/ValueSet/jurisdiction-extended"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://terminology.hl7.org.au/ValueSet/rsg-source-document-type"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://terminology.hl7.org.au/ValueSet/rsg-type"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://terminology.hl7.org.au/CodeSystem/rsg-source-document-type"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://terminology.hl7.org.au/CodeSystem/rsg-type"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://terminology.hl7.org.au/ValueSet/au-coverage-type-extended"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://terminology.hl7.org.au/CodeSystem/resource-tag"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://terminology.hl7.org.au/CodeSystem/task-business-status"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://terminology.hl7.org.au/CodeSystem/au-digital-health-source-system"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://terminology.hl7.org.au/ValueSet/rsg-source"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://terminology.hl7.org.au/CodeSystem/communication-request-category"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "version-comparison-master"
      },
      {
        "url" : "value",
        "valueString" : "6.0.0"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "autoload-resources"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-liquid"
      },
      {
        "url" : "value",
        "valueString" : "template/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-liquid"
      },
      {
        "url" : "value",
        "valueString" : "input/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-qa"
      },
      {
        "url" : "value",
        "valueString" : "temp/qa"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-temp"
      },
      {
        "url" : "value",
        "valueString" : "temp/pages"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-output"
      },
      {
        "url" : "value",
        "valueString" : "output"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-suppressed-warnings"
      },
      {
        "url" : "value",
        "valueString" : "input/ignoreWarnings.txt"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-history"
      },
      {
        "url" : "value",
        "valueString" : "http://hl7.org.au/fhir/history.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "template-html"
      },
      {
        "url" : "value",
        "valueString" : "template-page.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "template-md"
      },
      {
        "url" : "value",
        "valueString" : "template-page-md.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-contact"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-context"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-copyright"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-license"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-wg"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "active-tables"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "propagate-status"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "excludelogbinaryformat"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "tabbed-snapshots"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/expansion-parameters",
      "valueReference" : {
        "reference" : "Parameters/expansion-parameters"
      }
    },
    {
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-internal-dependency",
      "valueCode" : "hl7.fhir.uv.tools.r4#1.1.2"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "copyrightyear"
      },
      {
        "url" : "value",
        "valueString" : "2017+"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "releaselabel"
      },
      {
        "url" : "value",
        "valueString" : "CI Build"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "fmm-definition"
      },
      {
        "url" : "value",
        "valueString" : "generalguidance.html#maturity-levels"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "shownav"
      },
      {
        "url" : "value",
        "valueString" : "false"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "dynamic-source-viewers"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-version"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-jurisdiction"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-publisher"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "show-inherited-invariants"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "excludemap"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-expansion-params"
      },
      {
        "url" : "value",
        "valueString" : "../input/_resources/exp-params.json"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://terminology.hl7.org/ValueSet/pronouns"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://hl7.org/fhir/StructureDefinition/individual-recordedSexOrGender"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://hl7.org/fhir/StructureDefinition/individual-pronouns"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://terminology.hl7.org.au/ValueSet/service-provision-conditions"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://terminology.hl7.org.au/ValueSet/pbs-item"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://terminology.hl7.org.au/ValueSet/order-identifier-type"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://terminology.hl7.org.au/ValueSet/mims"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://terminology.hl7.org.au/ValueSet/medicine-item-change"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://terminology.hl7.org.au/ValueSet/medication-type"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://terminology.hl7.org.au/ValueSet/name-context"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://terminology.hl7.org.au/ValueSet/dva-entitlement"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://terminology.hl7.org.au/ValueSet/contact-purpose"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://terminology.hl7.org.au/ValueSet/v3-ServiceDeliveryLocationRoleType-extended"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://terminology.hl7.org.au/ValueSet/v3-ActEncounterCode-extended"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://terminology.hl7.org.au/ValueSet/v2-0443-extended"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://terminology.hl7.org.au/ValueSet/v2-0360-extended"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://terminology.hl7.org.au/ValueSet/v2-0203-extended"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://terminology.hl7.org.au/ValueSet/au-timezone"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://terminology.hl7.org.au/ValueSet/observation-category-extended"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://terminology.hl7.org.au/ValueSet/location-physical-type-extended"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://terminology.hl7.org.au/ValueSet/amt-mp-codes"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://terminology.hl7.org.au/ValueSet/accession-number-type"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://terminology.hl7.org.au/CodeSystem/service-provision-conditions"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://pbs.gov.au/code/item"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://www.mims.com.au/codes"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://terminology.hl7.org.au/CodeSystem/medicine-item-change"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://terminology.hl7.org.au/CodeSystem/medication-type"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://terminology.hl7.org.au/CodeSystem/name-context"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://terminology.hl7.org.au/CodeSystem/contact-purpose"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://terminology.hl7.org.au/CodeSystem/v3-ActCode"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://terminology.hl7.org.au/CodeSystem/v2-0443"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://terminology.hl7.org.au/CodeSystem/v2-0360"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://terminology.hl7.org.au/CodeSystem/v2-0203"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://terminology.hl7.org.au/CodeSystem/observation-category"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://terminology.hl7.org.au/CodeSystem/location-type"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://terminology.hl7.org.au/CodeSystem/location-physical-type"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://terminology.hl7.org.au/ValueSet/jurisdiction-extended"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://terminology.hl7.org.au/ValueSet/rsg-source-document-type"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://terminology.hl7.org.au/ValueSet/rsg-type"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://terminology.hl7.org.au/CodeSystem/rsg-source-document-type"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://terminology.hl7.org.au/CodeSystem/rsg-type"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://terminology.hl7.org.au/ValueSet/au-coverage-type-extended"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://terminology.hl7.org.au/CodeSystem/resource-tag"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://terminology.hl7.org.au/CodeSystem/task-business-status"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://terminology.hl7.org.au/CodeSystem/au-digital-health-source-system"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://terminology.hl7.org.au/ValueSet/rsg-source"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://terminology.hl7.org.au/CodeSystem/communication-request-category"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "version-comparison-master"
      },
      {
        "url" : "value",
        "valueString" : "6.0.0"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "autoload-resources"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-liquid"
      },
      {
        "url" : "value",
        "valueString" : "template/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-liquid"
      },
      {
        "url" : "value",
        "valueString" : "input/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-qa"
      },
      {
        "url" : "value",
        "valueString" : "temp/qa"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-temp"
      },
      {
        "url" : "value",
        "valueString" : "temp/pages"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-output"
      },
      {
        "url" : "value",
        "valueString" : "output"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-suppressed-warnings"
      },
      {
        "url" : "value",
        "valueString" : "input/ignoreWarnings.txt"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-history"
      },
      {
        "url" : "value",
        "valueString" : "http://hl7.org.au/fhir/history.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "template-html"
      },
      {
        "url" : "value",
        "valueString" : "template-page.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "template-md"
      },
      {
        "url" : "value",
        "valueString" : "template-page-md.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-contact"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-context"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-copyright"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-license"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-wg"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "active-tables"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "propagate-status"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "excludelogbinaryformat"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "tabbed-snapshots"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    }],
    "resource" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      }],
      "reference" : {
        "reference" : "SearchParameter/encounter-discharge-disposition"
      },
      "name" : "EncounterDischargeDisposition",
      "description" : "This search parameter returns encounters with a discharge-disposition matching the specified code.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      }],
      "reference" : {
        "reference" : "SearchParameter/indigenous-status"
      },
      "name" : "AustralianIndigenousStatus",
      "description" : "This search parameter returns patients with an Australian Indigenous Status extension matching the specified code.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      }],
      "reference" : {
        "reference" : "SearchParameter/gender-identity"
      },
      "name" : "GenderIdentity",
      "description" : "This search parameter returns resources with the Individual Gender Identity extension matching the specified code.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/au-condition"
      },
      "name" : "AU Base Condition",
      "description" : "This profile defines a condition structure that localises core concepts, including terminology, for use in an Australian context. The purpose of this profile is to provide national level agreement on core localised concepts. This profile does not force conformance to core localised concepts. It enables implementers and modellers to make their own rules, i.e. [profiling](http://hl7.org/fhir/profiling.html), about how to support these concepts for specific implementation needs.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/au-coverage"
      },
      "name" : "AU Base Coverage",
      "description" : "This profile defines a coverage structure that localises core concepts, including terminology, for use in an Australian context. The purpose of this profile is to provide national level agreement on core localised concepts. This profile does not force conformance to core localised concepts. It enables implementers and modellers to make their own rules, i.e. [profiling](http://hl7.org/fhir/profiling.html), about how to support these concepts for specific implementation needs.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/au-norelevantfinding"
      },
      "name" : "AU Assertion of No Relevant Finding",
      "description" : "This profile provides an observation information structure for asserting a clinical judgement that there are no items of specific interest, (e.g. no current medications or no history of vaccination), for a patient. An assertion of no relevant finding may be used in continuity of care or transfer or care related lists and composition sections.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/au-receivingapplication"
      },
      "name" : "HL7 V2 Receiving Application",
      "description" : "This extension applies to the Endpoint resource and is used to represent routing HL7 V2 message payload details associated with an endpoint. This content allows a sender using these endpoint details to include Receiving Application (MSH-5) information in HL7 V2 messages sent via this channel which allow correct delivery within the receiving system.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/au-receivingfacility"
      },
      "name" : "HL7 V2 Receiving Facility",
      "description" : "This extension applies to the Endpoint resource and is used to represent HL7 V2 receiving facility details for HL7 V2 routing purposes associated with an endpoint. This content allows a sender using these endpoint details to include Receiving Facility (MSH-6) information in HL7 V2 messages sent via this channel which allow correct delivery within the receiving system.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/au-assigningauthority"
      },
      "name" : "HL7 V2 Assigning Authority",
      "description" : "This extension applies to the [Identifier](http://hl7.org/fhir/datatypes.html#identifier) data type and is used to represent HL7 V2 assigning authority details for HL7 V2 identification for routing.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/encryption-certificate-pem-x509"
      },
      "name" : "Encryption Certificate PEM X509",
      "description" : "This extension applies to the Endpoint resource and is used to support encrypted certificate content for use with an endpoint. This extension allows an endpoint entry to define a suitable certificate for use in communications on the associated channel.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/indigenous-status"
      },
      "name" : "Australian Indigenous Status",
      "description" : "This extension applies to the Patient, Person, and RelatedPerson resources and is used to indicate whether a person identifies as being of Aboriginal or Torres Strait Islander origin.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/dispense-number"
      },
      "name" : "Dispense Number",
      "description" : "This extension applies to the MedicationDispense resource and is used to represent the dispense number or sequence number that has been reached for a therapeutic good prescribed with repeats.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/medication-long-term"
      },
      "name" : "Long Term",
      "description" : "This extension applies to the MedicationStatement resource and is used to indicate long term use of a medication.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/medication-type"
      },
      "name" : "Medication Type",
      "description" : "This extension applies to the [Coding](http://hl7.org/fhir/R4/datatypes.html#Coding) data type and is used to indicate the type of information covered by the code e.g. branded product with no strength or form. This is useful when there are multiple codings from the same coding system at different levels/classifications.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/medication-strength"
      },
      "name" : "Medication Strength",
      "description" : "This extension applies to the Medication resource and is used to represent the strength of a medication as text. Use this extension for text representation of a medication strength as a whole. Coded representation of medication strength as a whole uses `Medication.code`.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/medication-brand-name"
      },
      "name" : "Medication Brand Name",
      "description" : "This extension applies to the Medication, MedicationRequest, MedicationDispense and MedicationStatement resources and is used to represent the brand name of a medication. This extension is not to be the sole representation of the medication concept; it shall not be used as a substitute for medication code (e.g. Medication.code or MedicationStatement.medicationCodeableConcept).\n\nIf a system can only supply branded product information in text form, that information will be supplied in the text portion of that code e.g. code.text or medicationCodeableConcept.text. This extension only supports the name portion of a medication concept, not the branded product or product pack information. It is available for use for where a system needs to separate out the brand name string for handling or other processing.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/medication-generic-name"
      },
      "name" : "Medication Generic Drug Name",
      "description" : "This extension applies to the Medication, MedicationRequest, MedicationDispense and MedicationStatement resources and is used to represent the generic name of a medication. The generic medication text name may not be the same as the subject medication (prescribed, dispensed or stated) but may be used to provide an additional or equivalent drug name that is a generic medication concept. This extension is not to be the sole representation of the medication concept; it shall not be used as a substitute for medication code (e.g. Medication.code or MedicationStatement.medicationCodeableConcept).\n\nIf a system can only supply generic product information, and only in text form, that information will be supplied in the text portion of that code e.g. code.text or medicationCodeableConcept.text. This extension only supports the name portion of a medication concept, not the generic product or product pack information. It is available for use for where a system needs to separate out the generic name string for handling or other processing.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ethnicity"
      },
      "name" : "Ethnicity",
      "description" : "This extension applies to the Patient resource and is used to represent ethnic identity (see [Australian Bureau of Statistics](https://www.abs.gov.au/statistics/classifications/australian-standard-classification-cultural-and-ethnic-groups-ascceg/2019) for further information). This extension is to support the provision of healthcare services to patients with specific cultural identities. This extension provides further information about a person’s cultural values and practices which can be significant in determining service type, support required and possible needs.\n\nThe words 'ethnicity' and 'ethnic' are associated with many different meanings, but for the purpose of this extension ethnicity refers to the shared identity or similarity of a group of people on the basis of one or more distinguishing sociological characteristics, such as language, shared history, religion, cultural traditions or geographic origin etc. This extension supports Australian Aboriginal and Torres Strait Islander peoples as well as ethnicities originating from outside of Australia.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/closing-the-gap-registration"
      },
      "name" : "Closing the Gap Registration",
      "description" : "This extension applies to the Patient resource and provides an indicator of whether the patient is eligible for a Closing the Gap (CTG) co-payment.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/associated-healthcareservice"
      },
      "name" : "Associated Healthcare Service",
      "description" : "This extension applies to any resource and is used to represent a healthcare service relating to a resource, e.g. healthcare services under which the patient was managed during an encounter.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/subsidised-concurrent-supply"
      },
      "name" : "Subsidised Concurrent Supply",
      "description" : "This extension applies to the MedicationRequest or MedicationDispense resources and is used to represent the grounds (e.g. [Regulation 49](https://www.pbs.gov.au/info/healthpro/explanatory-notes/section1/Section_1_2_Explanatory_Notes#Regulation-49)) that authorise a PBS or RPBS subsidy for the concurrent supply of an item specified in a prescription and all of its repeats (see [PBS](https://www.pbs.gov.au/info/healthpro/explanatory-notes/section1/Section-1-3-Explanatory-Notes) for further information).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/encounter-description"
      },
      "name" : "Encounter Description",
      "description" : "This extension applies to the Encounter resource and is used to represent a narrative description of the healthcare event or encounter. The description may include a summary of the issues or problems, management strategies, outcomes or progress, possible prognosis, and the patient’s understanding of the healthcare event. The description may capture text about the encounter that is not captured in other fields.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/change-description"
      },
      "name" : "Change Description",
      "description" : "This extension applies to the List resource and is used to represent a narrative description of the change to an item in a list entry. The narrative description may include the reason for the change to an item.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/author-related-person"
      },
      "name" : "Author as a RelatedPerson",
      "description" : "This extension applies to any resource and is used to represent an author who is a related person.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/no-fixed-address"
      },
      "name" : "No Fixed Address",
      "description" : "This extension applies to the [Address](http://hl7.org/fhir/R4/datatypes.html#Address) data type and is used to indicate that a location address is not a fixed address for an individual.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/identifier-routability"
      },
      "name" : "Identifier Routability",
      "description" : "This extension applies to the [Identifier](http://hl7.org/fhir/datatypes.html#identifier) data type. Identifier routability preferences for an asserter.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ihi-status"
      },
      "name" : "IHI Status",
      "description" : "This extension applies to the [Identifier](http://hl7.org/fhir/datatypes.html#identifier) data type and is used to represent the status of the associated Individual Healthcare Identifier (IHI) and indicates whether the status of the IHI is active or otherwise.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ihi-record-status"
      },
      "name" : "IHI Record Status",
      "description" : "This extension applies to the [Identifier](http://hl7.org/fhir/datatypes.html#identifier) data type and is used to indicate whether verification of the Individual Healthcare Identifier (IHI) has occurred and is based on the evidence available for a person’s identity.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ihi-verified-date"
      },
      "name" : "IHI Verification Date",
      "description" : "This extension applies to the [Identifier](http://hl7.org/fhir/datatypes.html#identifier) data type and is used to represent the date, and optionally time, that the IHI was verified with HI Services. This is not the date that it was created by the HI Services, but when it was checked. This is often required to know how recently the identifier was checked, and if it must be re-verified before using it.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/date-accuracy-indicator"
      },
      "name" : "Date Accuracy Indicator",
      "description" : "This extension applies to the [date](http://hl7.org/fhir/R4/datatypes.html#date) and [dateTime](http://hl7.org/fhir/R4/datatypes.html#dateTime) data types and is used to represent the accuracy of the associated date.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/information-recipient"
      },
      "name" : "Information Recipient",
      "description" : "This extension applies to the Composition resource and is used to represent an intended recipient of the composition.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/vaccine-serial-number"
      },
      "name" : "Vaccine Vial Serial Number",
      "description" : "This extension applies to the Immunization resource and is used to represent the serial number of the vial of vaccine. Vial serial number is part of the [Australian Immunisation Register Rule 2015](https://www.legislation.gov.au/Latest/F2021C00234) data elements to report for COVID-19 vaccines.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/veteran-status"
      },
      "name" : "Australian Veteran Status",
      "description" : "This extension applies to the Patient resource and is used to indicate whether a person is serving, or has served, in the Australian Defence Force.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/result-copies-to"
      },
      "name" : "Result Copies To",
      "description" : "This extension applies to the ServiceRequest resource and is used to indicate an additional recipient to whom a copy of the outcome of the request (i.e. the results) should be sent. The service requester will typically receive a result as part of the normal processing from the filler of the request and this extension is only relevant for any additional result copy recipients indicated on the request.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/au-patient"
      },
      "name" : "AU Base Patient",
      "description" : "This profile defines a patient structure that localises core concepts, including identifiers and terminology, for use in an Australian context. The purpose of this profile is to provide national level agreement on core localised concepts. This profile does not force conformance to core localised concepts. It enables implementers and modellers to make their own rules, i.e. [profiling](http://hl7.org/fhir/profiling.html), about how to support these concepts for specific implementation needs.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/au-practitioner"
      },
      "name" : "AU Base Practitioner",
      "description" : "This profile defines a practitioner structure that localises core concepts, including identifiers and terminology, for use in an Australian context. The purpose of this profile is to provide national level agreement on core localised concepts. This profile does not force conformance to core localised concepts. It enables implementers and modellers to make their own rules, i.e. [profiling](http://hl7.org/fhir/profiling.html), about how to support these concepts for specific implementation needs.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/au-practitionerrole"
      },
      "name" : "AU Base PractitionerRole",
      "description" : "This profile defines a practitioner role structure that localises core concepts, including identifiers and terminology, for use in an Australian context. The purpose of this profile is to provide national level agreement on core localised concepts. This profile does not force conformance to core localised concepts. It enables implementers and modellers to make their own rules, i.e. [profiling](http://hl7.org/fhir/profiling.html), about how to support these concepts for specific implementation needs.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/au-relatedperson"
      },
      "name" : "AU Base RelatedPerson",
      "description" : "This profile defines a related person structure that localises core concepts, including identifiers and terminology, for use in an Australian context. The purpose of this profile is to provide national level agreement on core localised concepts. This profile does not force conformance to core localised concepts. It enables implementers and modellers to make their own rules, i.e. [profiling](http://hl7.org/fhir/profiling.html), about how to support these concepts for specific implementation needs.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/au-organization"
      },
      "name" : "AU Base Organization",
      "description" : "This profile defines an organisation structure that localises core concepts, including identifiers and terminology, for use in an Australian context. The purpose of this profile is to provide national level agreement on core localised concepts. This profile does not force conformance to core localised concepts. It enables implementers and modellers to make their own rules, i.e. [profiling](http://hl7.org/fhir/profiling.html), about how to support these concepts for specific implementation needs.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/au-medication"
      },
      "name" : "AU Base Medication",
      "description" : "This profile defines a medication structure that localises core concepts, including terminology, for use in an Australian context. The purpose of this profile is to provide national level agreement on core localised concepts. This profile does not force conformance to core localised concepts. It enables implementers and modellers to make their own rules, i.e. [profiling](http://hl7.org/fhir/profiling.html), about how to support these concepts for specific implementation needs.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/au-encounter"
      },
      "name" : "AU Base Encounter",
      "description" : "This profile defines an encounter structure that localises core concepts, including terminology, for use in an Australian context. This profile is intended to be applicable for recording details of ambulatory and non-ambulatory patient encounters in an Australian healthcare context. The purpose of this profile is to provide national level agreement on core localised concepts. This profile does not force conformance to core localised concepts. It enables implementers and modellers to make their own rules, i.e. [profiling](http://hl7.org/fhir/profiling.html), about how to support these concepts for specific implementation needs.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:complex-type"
      }],
      "reference" : {
        "reference" : "StructureDefinition/au-address"
      },
      "name" : "Australian Address",
      "description" : "This profile defines an address structure that localises core concepts, including identifiers and terminology, for use in an Australian context, to specifically represent an Australian (location) address. The purpose of this profile is to provide best practice guidance on Australian address representation, where some constraint on content is desirable to guarantee the quality of an Australian address.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:complex-type"
      }],
      "reference" : {
        "reference" : "StructureDefinition/au-ihi"
      },
      "name" : "AU IHI",
      "description" : "This identifier profile defines an Individual Healthcare Identifier in an Australian context (see [Australian Digital Health Agency](https://developer.digitalhealth.gov.au/specifications/national-infrastructure/ep-1826-2014/nehta-1163-2010) for further information). An IHI is assigned under the Healthcare Identifiers (HI) Service to a patient.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:complex-type"
      }],
      "reference" : {
        "reference" : "StructureDefinition/au-nationalprovideridentifieratorganisation"
      },
      "name" : "AU National Provider Identifier At Organisation",
      "description" : "This identifier profile defines a National Provider Identifier at Organisation (NPIO) in an Australian context. An NPIO identifies an individual practitioner at an organisation using the practitioner's HPI-I and organisation's HPI-O to form the NPIO.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:complex-type"
      }],
      "reference" : {
        "reference" : "StructureDefinition/au-medicarecardnumber"
      },
      "name" : "AU Medicare Card Number",
      "description" : "This identifier profile defines a Medicare card number in an Australian context. A Medicare card is provided to individuals who are enrolled in [Medicare](https://www.servicesaustralia.gov.au/individuals/medicare). This definition supports sending either the 10 digit Medicare card number or the 11 digit number (includes the individual reference number (IRN)).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:complex-type"
      }],
      "reference" : {
        "reference" : "StructureDefinition/au-medicareprovidernumber"
      },
      "name" : "AU Medicare Provider Number",
      "description" : "This identifier profile defines a Medicare provider number assigned by Services Australia to practitioners who provide services covered by the Medicare Benefits Schedule (MBS) at a specific location. A practitioner may have more than one Medicare provider number if they deliver health services in different locations or are registered in multiple health professions.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:complex-type"
      }],
      "reference" : {
        "reference" : "StructureDefinition/au-pbsprescribernumber"
      },
      "name" : "AU PBS Prescriber Number",
      "description" : "This identifier profile defines a Pharmaceutical Benefits Scheme (PBS) prescriber number in an Australian context (see [PBS](https://www.pbs.gov.au/info/healthpro/explanatory-notes/section1/Section_1_2_Explanatory_Notes) for further information). A PBS prescriber number, previously referred to as Medicare prescriber number in earlier versions of this implementation guide, is assigned by Services Australia under the Pharmaceutical Benefits Scheme to practitioners who are approved to prescribe PBS medicines under the National Health Act 1953.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:complex-type"
      }],
      "reference" : {
        "reference" : "StructureDefinition/au-medicalrecordnumber"
      },
      "name" : "AU Medical Record Number",
      "description" : "This identifier profile defines a  (MRN) (sometimes referred to as unit record number (URN) or (UR)) in an Australian context. An MRN is an institution's identifier for a patient's record at that institution. A patient may have more than one MRN for a single institution due to organisational restructures.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:complex-type"
      }],
      "reference" : {
        "reference" : "StructureDefinition/au-hpii"
      },
      "name" : "AU HPI-I",
      "description" : "This identifier profile defines a Healthcare Provider Identifier - Individual (HPI-I) in an Australian context (see [Australian Digital Health Agency](https://developer.digitalhealth.gov.au/specifications/national-infrastructure/ep-1826-2014/nehta-1163-2010) for further information). An HPI-I is assigned under the HI Service to healthcare providers involved in providing patient care.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:complex-type"
      }],
      "reference" : {
        "reference" : "StructureDefinition/au-dvanumber"
      },
      "name" : "AU DVA Number",
      "description" : "This identifier profile defines a Department of Veterans' Affairs (DVA) number) in an Australian context. This definition supports sending an individual's state-based DVA file number as displayed on a [Veteran Card](https://www.dva.gov.au/health-and-treatment/veteran-healthcare-cards/veteran-card), i.e. a Gold, White, or Orange Card. A Veteran Card may be issued by DVA to eligible individuals to allowing access to specific goods and services at a concessional rate.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:complex-type"
      }],
      "reference" : {
        "reference" : "StructureDefinition/au-hpio"
      },
      "name" : "AU HPI-O",
      "description" : "This identifier profile defines a Healthcare Provider Identifier – Organisation in an Australian context (see [Australian Digital Health Agency](https://developer.digitalhealth.gov.au/specifications/national-infrastructure/ep-1826-2014/nehta-1163-2010) for further information). An HPI-O is assigned under the HI Service to an organisation (such as a hospital or medical clinic) where healthcare is provided.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:complex-type"
      }],
      "reference" : {
        "reference" : "StructureDefinition/au-ahpraregistrationnumber"
      },
      "name" : "AU Ahpra Registration Number",
      "description" : "This identifier profile defines an Australian Health Practitioner Regulation Agency (Ahpra) registration number in an Australian context (see [Ahpra](https://www.ahpra.gov.au) for further information).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:complex-type"
      }],
      "reference" : {
        "reference" : "StructureDefinition/au-australianbusinessnumber"
      },
      "name" : "AU Australian Business Number",
      "description" : "This identifier profile defines an Australian Business Number (ABN) in an Australian context. An ABN is issued to all entities registered in the Australian Business Register (ABR).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:complex-type"
      }],
      "reference" : {
        "reference" : "StructureDefinition/au-australianregistredbodynumber"
      },
      "name" : "AU Australian Registered Body Number",
      "description" : "This identifier profile defines an Australian Registered Body Number (ARBN) in an Australian context. ARBNs are issued to registrable Australian bodies and foreign companies.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:complex-type"
      }],
      "reference" : {
        "reference" : "StructureDefinition/au-paididentifier"
      },
      "name" : "AU PAI-D Identifier",
      "description" : "This identifier profile defines a My Health Record Assigned Identity - Device (PAI-D) identifier in an Australian context. A PAI-D is typically used to identify a device that plays a role, for example an authoring or observing, in the exchange of digital health data with the My Health Record system.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:complex-type"
      }],
      "reference" : {
        "reference" : "StructureDefinition/au-paioidentifier"
      },
      "name" : "AU PAI-O Identifier",
      "description" : "This identifier profile defines a My Health Record Assigned Identity - Organisation (PAI-O) identifier in an Australian context. A PAI-O may be issued to organisations who wish to participate in the My Health Record and who are not eligible for a Healthcare Provider Identifier - Organisation (HPI-O).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:complex-type"
      }],
      "reference" : {
        "reference" : "StructureDefinition/au-careagencyemployeeidentifier"
      },
      "name" : "AU Care Agency Employee Identifier",
      "description" : "This identifier profile defines a care agency employee (CAE) identifier in an Australian context. A CAE identifier may be issued to an employee of, or person under contracted arrangement with, a care agency who wishes to participate in the My Health Record.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:complex-type"
      }],
      "reference" : {
        "reference" : "StructureDefinition/au-etpprescriptionidentifier"
      },
      "name" : "AU ETP Prescription Identifier",
      "description" : "This identifier profile defines an Electronic Transfer of Prescription (ETP) prescription identifier in an Australian context. An ETP prescription identifier is assigned to a prescription by an ETP vendor, e.g. ERx or Medisecure, and is the assigned numeric value of the barcode on a prescription instance.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:complex-type"
      }],
      "reference" : {
        "reference" : "StructureDefinition/au-nataaccreditationnumber"
      },
      "name" : "AU NATA Accreditation Number",
      "description" : "This identifier profile defines a National Association of Testing Authorities (NATA) accreditation number in an Australian context (see [NATA](https://www.nata.com.au/) for further information).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:complex-type"
      }],
      "reference" : {
        "reference" : "StructureDefinition/au-natasitenumber"
      },
      "name" : "AU NATA Site Number",
      "description" : "This identifier profile defines a National Association of Testing Authorities (NATA) site number in an Australian context (see [NATA](https://www.nata.com.au/) for further information).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:complex-type"
      }],
      "reference" : {
        "reference" : "StructureDefinition/au-locationspecificpracticenumber"
      },
      "name" : "AU Location Specific Practice Number",
      "description" : "This identifier profile defines a Location Specific Practice Number (LSPN) in an Australian context (see [Services Australia](https://www.servicesaustralia.gov.au/organisations/health-professionals/services/medicare/medicare-eligibility-provide-diagnostic-imaging-and-radiation-oncology-services#a2) and [Department of Health and Aged Care](https://www1.health.gov.au/internet/main/publishing.nsf/Content/stage-two-diag-img-acc-scheme-loc-spec-prac-num-fact-sheet) for further information). An LSPN is an identifier assigned to a specific location by Services Australia under the Medicare program and identifies an accredited practice site that provides diagnostic imaging and radiation oncology services.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:complex-type"
      }],
      "reference" : {
        "reference" : "StructureDefinition/au-employeenumber"
      },
      "name" : "AU Employee Number",
      "description" : "This identifier profile defines an employee number (sometimes referred to as an employee identifier (EI)) in an Australian context. An employee number is an organisation's identifier for an individual employed by that organisation.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:complex-type"
      }],
      "reference" : {
        "reference" : "StructureDefinition/au-cspregistrationnumber"
      },
      "name" : "AU CSP Registration Number",
      "description" : "This identifier profile defines a Contracted Service Provider (CSP) registration number in an Australian context (see [My Health Record](https://www.myhealthrecord.gov.au/for-healthcare-professionals/howtos/contracted-service-provider-registration) for further information). A CSP registration number may be issued to organisations who wish to participate in the My Health Record and/or the Healthcare Identifiers Service as a CSP.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:complex-type"
      }],
      "reference" : {
        "reference" : "StructureDefinition/au-healthcarecardnumber"
      },
      "name" : "AU Health Care Card Number",
      "description" : "This identifier profile defines Health Care Card number in an Australian context (see [Services Australia](https://www.servicesaustralia.gov.au/individuals/services/centrelink/health-care-card) for further information).\n\nThis definition supports sending the Centrelink Customer Reference Number (CRN) (also referred to as unique identifier number (UIN) in the Centrelink Confirmation eServices (CCeS)) as displayed on the individual's Health Care Card (see [Services Australia](https://www.servicesaustralia.gov.au/individuals/subjects/centrelink-customer-reference-number-crn) for further information). An individual's CRN is present as the primary identifier on different concession cards and is used to confirm concessions by most government agencies and utility providers.\n\nA Health Care Card is a concession card assigned by Services Australia to benefit recipients, low income earners and selected other groups (e.g. foster children) to assist with certain health costs, by allowing access to specific services at a concessional rate.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:complex-type"
      }],
      "reference" : {
        "reference" : "StructureDefinition/au-australiancompanynumber"
      },
      "name" : "AU Australian Company Number",
      "description" : "This identifier profile defines an Australian Company Number in an Australian context. An ACN is allocated by the Australian Securities and Investments Commission (ASIC) when a body becomes registered as a company under Corporations Law.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:complex-type"
      }],
      "reference" : {
        "reference" : "StructureDefinition/au-cwlthseniorshealthcardnumber"
      },
      "name" : "AU Commonwealth Seniors Health Card Number",
      "description" : "This identifier profile defines a Commonwealth Seniors Health Card number in an Australian context (see [Services Australia](https://www.servicesaustralia.gov.au/individuals/services/centrelink/commonwealth-seniors-health-card) or [Department of Veterans' Affairs](https://www.dva.gov.au/health-and-treatment/veteran-healthcare-cards/commonwealth-seniors-health-card) for further information).\n\nThis definition supports sending the Centrelink Customer Reference Number (CRN) (also referred to as unique identifier number (UIN) in the Centrelink Confirmation eServices (CCeS)) as displayed on the individual's Commonwealth Seniors Health Card (see [Services Australia](https://www.servicesaustralia.gov.au/individuals/subjects/centrelink-customer-reference-number-crn) for further information). An individual's CRN is present as the primary identifier on different concession cards and is used to confirm concessions by most government agencies and utility providers.\n\nA Commonwealth Seniors Health Card may be issued by Services Australia or Department of Veterans' Affairs (DVA) to retirees of age pension qualification age to assist with certain living costs by allowing access to specific goods and services at a concessional rate.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:complex-type"
      }],
      "reference" : {
        "reference" : "StructureDefinition/au-pensionerconcessioncardnumber"
      },
      "name" : "AU Pensioner Concession Card Number",
      "description" : "This identifier profile defines a Pensioner Concession Card number in an Australian context (see [Services Australia](https://www.servicesaustralia.gov.au/individuals/services/centrelink/pensioner-concession-card) or [Department of Veterans' Affairs](https://www.dva.gov.au/health-and-treatment/veteran-healthcare-cards/pensioner-concession-card)).\n\nThis definition supports sending the Centrelink Customer Reference Number (CRN) (also referred to as unique identifier number (UIN) in the Centrelink Confirmation eServices (CCeS)) as displayed on the individual's Pensioner Concession Card (see [Services Australia](https://www.servicesaustralia.gov.au/individuals/subjects/centrelink-customer-reference-number-crn) for further information). An individual's CRN is present as the primary identifier on different concession cards and is used to confirm concessions by most government agencies and utility providers.\n\nA Pensioner Concession Card may be issued by Services Australia or Department of Veterans' Affairs (DVA) to pensioners and selected benefit recipients to assist them with certain living costs, by allowing access to specific goods and services at a concessional rate.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:complex-type"
      }],
      "reference" : {
        "reference" : "StructureDefinition/au-insurancemembernumber"
      },
      "name" : "AU Insurance Member Number",
      "description" : "This identifier profile defines an insurance member number in an Australian context. An insurance member number is the unique member number assigned to an individual by an insurer and is typically displayed on their insurance card. An individual will not have more than one member number per insurer.\n\nThis definition supports the sending of an insurance member number that is relevant in a healthcare context and may be used to capture Australian and International health insurer issued member numbers. In Australia this will typically be a private health insurance member number. This identifier should not be confused with an insurance policy number.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:complex-type"
      }],
      "reference" : {
        "reference" : "StructureDefinition/au-localprescriptionidentifier"
      },
      "name" : "AU Local Prescription Identifier",
      "description" : "This identifier profile defines a local prescription identifier (sometimes referred to as prescription number) in an Australian context. A local prescription identifier is an organisation's identifier for a prescription in that organisation's local system set of prescriptions. A local prescription identifier allows linking of a prescription to a system's local identifier.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:complex-type"
      }],
      "reference" : {
        "reference" : "StructureDefinition/au-localdispenseidentifier"
      },
      "name" : "AU Local Dispense Identifier",
      "description" : "This identifier profile defines a local dispense identifier in an Australian context. A local dispense identifier is an organisation's identifier for a dispense record in that organisation's local system set of dispense records. A dispense record identifier is typically assigned by the dispensing system and allows linking of a dispensing record to the dispensing system's local identifier.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/au-medlist"
      },
      "name" : "AU Medicine List",
      "description" : "This profile defines a list structure that localises core concepts for use as a medicines list in an Australian context. This profile is intended to offer a common structure and expectations for a list of medications associated with a patient in an Australian healthcare context.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/au-composition"
      },
      "name" : "AU Base Composition",
      "description" : "This profile defines a composition structure that localises core concepts for use in an Australian context. The purpose of this profile is to provide national level agreement on core localised concepts. This profile does not force conformance to core localised concepts. It enables implementers and modellers to make their own rules, i.e. [profiling](http://hl7.org/fhir/profiling.html), about how to support these concepts for specific implementation needs.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/au-immunization"
      },
      "name" : "AU Base Immunization",
      "description" : "This profile defines an immunisation structure that localises core concepts, including terminology, for use in an Australian context. The purpose of this profile is to provide national level agreement on core localised concepts. This profile does not force conformance to core localised concepts. It enables implementers and modellers to make their own rules, i.e. [profiling](http://hl7.org/fhir/profiling.html), about how to support these concepts for specific implementation needs.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/au-medicationstatement"
      },
      "name" : "AU Base MedicationStatement",
      "description" : "This profile defines a medication statement structure that localises core concepts, including terminology, for use in an Australian context. The purpose of this profile is to provide national level agreement on core localised concepts. This profile does not force conformance to core localised concepts. It enables implementers and modellers to make their own rules, i.e. [profiling](http://hl7.org/fhir/profiling.html), about how to support these concepts for specific implementation needs.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/au-medicationadministration"
      },
      "name" : "AU Base MedicationAdministration",
      "description" : "This profile defines a medication administration structure that localises core concepts, including terminology, for use in an Australian context. The purpose of this profile is to provide national level agreement on core localised concepts. This profile does not force conformance to core localised concepts. It enables implementers and modellers to make their own rules, i.e. [profiling](http://hl7.org/fhir/profiling.html), about how to support these concepts for specific implementation needs.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/au-medicationdispense"
      },
      "name" : "AU Base MedicationDispense",
      "description" : "This profile defines a medication dispense structure that localises core concepts, including identifiers and terminology, for use in an Australian context. The purpose of this profile is to provide national level agreement on core localised concepts. This profile does not force conformance to core localised concepts. It enables implementers and modellers to make their own rules, i.e. [profiling](http://hl7.org/fhir/profiling.html), about how to support these concepts for specific implementation needs.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/au-medicationrequest"
      },
      "name" : "AU Base MedicationRequest",
      "description" : "This profile defines a medication request structure that localises core concepts, including identifiers and terminology, for use in an Australian context. The purpose of this profile is to provide national level agreement on core localised concepts. This profile does not force conformance to core localised concepts. It enables implementers and modellers to make their own rules, i.e. [profiling](http://hl7.org/fhir/profiling.html), about how to support these concepts for specific implementation needs.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:complex-type"
      }],
      "reference" : {
        "reference" : "StructureDefinition/au-dosage"
      },
      "name" : "AU Base Dosage",
      "description" : "This profile defines a dosage structure that localises core concepts for use in an Australian context. The purpose of this profile is to provide national level agreement on core localised concepts. This profile does not force conformance to core localised concepts. It enables implementers and modellers to make their own rules, i.e. [profiling](http://hl7.org/fhir/profiling.html), about how to support these concepts for specific implementation needs.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/au-location"
      },
      "name" : "AU Base Location",
      "description" : "This profile defines a location structure that localises core concepts, including identifiers and terminology, for use in an Australian context. The purpose of this profile is to provide national level agreement on core localised concepts. This profile does not force conformance to core localised concepts. It enables implementers and modellers to make their own rules, i.e. [profiling](http://hl7.org/fhir/profiling.html), about how to support these concepts for specific implementation needs.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/au-healthcareservice"
      },
      "name" : "AU Base HealthcareService",
      "description" : "This profile defines a healthcare service structure that localises core concepts, including identifiers and terminology, for use in an Australian context. The purpose of this profile is to provide national level agreement on core localised concepts. This profile does not force conformance to core localised concepts. It enables implementers and modellers to make their own rules, i.e. [profiling](http://hl7.org/fhir/profiling.html), about how to support these concepts for specific implementation needs.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/au-endpoint"
      },
      "name" : "AU Base Endpoint",
      "description" : "This profile defines an endpoint structure that localises core concepts, including identifiers and terminology, for use in an Australian context. The purpose of this profile is to provide national level agreement on core localised concepts. This profile does not force conformance to core localised concepts. It enables implementers and modellers to make their own rules, i.e. [profiling](http://hl7.org/fhir/profiling.html), about how to support these concepts for specific implementation needs.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/au-allergyintolerance"
      },
      "name" : "AU Base AllergyIntolerance",
      "description" : "This profile defines an allergy intolerance structure that localises core concepts, including terminology, for use in an Australian context. The purpose of this profile is to provide national level agreement on core localised concepts. This profile does not force conformance to core localised concepts. It enables implementers and modellers to make their own rules, i.e. [profiling](http://hl7.org/fhir/profiling.html), about how to support these concepts for specific implementation needs.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/au-bodystructure"
      },
      "name" : "AU Base BodyStructure",
      "description" : "This profile defines a body structure that localises core concepts, including terminology, for use in an Australian context. The purpose of this profile is to provide national level agreement on core localised concepts. This profile does not force conformance to core localised concepts. It enables implementers and modellers to make their own rules, i.e. [profiling](http://hl7.org/fhir/profiling.html), about how to support these concepts for specific implementation needs.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/au-diagnosticresult"
      },
      "name" : "AU Base Diagnostic Result",
      "description" : "This profile defines an observation structure to represent a diagnostic investigation result issued by a diagnostic service provider in an Australian context. This profile may be used to represent a specialist or other diagnostic (not imaging or pathology) observation including results of audiology studies, sleep studies or speech pathology. The observation may represent the result of a simple investigation or it may group the set of results of a multi-modality procedure or multi-test study / panel.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/au-pathologyresult"
      },
      "name" : "AU Base Pathology Result",
      "description" : "This profile defines an observation structure to represent a pathology test result issued by a diagnostic service provider in an Australian context. This profile is intended to be capable of supporting reporting for all pathology disciplines (e.g. including microbiology, histopathology, cytology, blood transfusion) with the exception of genomics. The observation may represent the result of a simple test such as haemoglobin or it may group the set of results produced by a multi-test study or panel such as a full blood count, or urine specimen study.\n\nThis profile does not provide full support for structured pathology reporting. It is expected that this support is best handled by a set of profiles that represent the structured reporting requirements for each specific protocol (see for example [RCPA’s structured pathology reporting of cancer](https://www.rcpa.edu.au/Library/Practising-Pathology/Structured-Pathology-Reporting-of-Cancer)); this is not in the scope of this implementation guide at this time.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/au-imagingresult"
      },
      "name" : "AU Base Diagnostic Imaging Result",
      "description" : "This profile defines an observation structure to represent a imaging examination result issued by a diagnostic service provider in an Australian context. The observation may represent the conclusions of a diagnostic procedure such as Left retina Foveal thickness by OCT, or it may group the set of results produced by a multi-test study or panel such as Biophysical profile panel.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/au-imagingreport"
      },
      "name" : "AU Base Diagnostic Imaging Report",
      "description" : "This profile defines a diagnostic report structure to represent a diagnostic imaging report issued by a diagnostic service provider in an Australian context.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/au-diagnosticreport"
      },
      "name" : "AU Base DiagnosticReport",
      "description" : "This profile defines a diagnostic report structure that localises core concepts, including identifiers and terminology, for use in an Australian context. The purpose of this profile is to provide national level agreement on core localised concepts. This profile does not force conformance to core localised concepts. It enables implementers and modellers to make their own rules, i.e. [profiling](http://hl7.org/fhir/profiling.html), about how to support these concepts for specific implementation needs.\n\nFor specific reporting of pathology or imaging services the more specific [AU Base Pathology Report](StructureDefinition-au-pathologyreport.html) or [AU Base Diagnostic Imaging Report](StructureDefinition-au-imagingreport.html) profiles would be preferred. This profile is suitable for any other diagnostic service reporting needs.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/au-pathologyreport"
      },
      "name" : "AU Base Pathology Report",
      "description" : "This profile defines a diagnostic report structure to represent a pathology report issued by a diagnostic service provider in an Australian context. This profile is intended to be capable of supporting reporting for all pathology disciplines (e.g. including microbiology, histopathology, cytology, blood transfusion) with the exception of genomics.\n\nThis profile does not provide full support for structured pathology reporting. It is expected that this support is best handled by a set of profiles that represent the structured reporting requirements for each specific protocol (see for example [RCPA’s structured pathology reporting of cancer](https://www.rcpa.edu.au/Library/Practising-Pathology/Structured-Pathology-Reporting-of-Cancer)); this is not in the scope of this implementation guide at this time.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/au-specimen"
      },
      "name" : "AU Base Specimen",
      "description" : "This profile defines a specimen structure that localises core concepts, including terminology, for use in an Australian context. The purpose of this profile is to provide national level agreement on core localised concepts. This profile does not force conformance to core localised concepts. It enables implementers and modellers to make their own rules, i.e. [profiling](http://hl7.org/fhir/profiling.html), about how to support these concepts for specific implementation needs.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/contact-purpose"
      },
      "name" : "Contact Purpose",
      "description" : "This extension applies to the [ContactPoint](http://hl7.org/fhir/datatypes.html#ContactPoint) data type and is used to represent the purpose for which a contact can be reached, e.g. after hours or billing.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:complex-type"
      }],
      "reference" : {
        "reference" : "StructureDefinition/au-deliverypointidentifier"
      },
      "name" : "AU Delivery Point Identifier",
      "description" : "This identifier profile defines an Australia Post Delivery Point Identifier (DPID) in an Australian context (see [Australia Post](https://auspost.com.au/content/dam/auspost_corp/media/documents/australia-post-data-guide.pdf) for further information). A DPID is a randomly generated, unique 8-digit number, allocated by Australia Post to an address. A DPID enables each delivery point in Australia to be uniquely identified.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:complex-type"
      }],
      "reference" : {
        "reference" : "StructureDefinition/au-gnafidentifier"
      },
      "name" : "AU G-NAF Identifier",
      "description" : "This identifier profile defines a Geocoded National Address File (G-NAF) identifier in an Australian context. The [PSMA G-NAF](https://data.gov.au/data/dataset/geocoded-national-address-file-g-naf) is Australia’s authoritative, geocoded address file. A G-NAF identifier (sometimes referred to as G-NAF ID, or G-NAF PID, or GNAF ID, or address_detail_pid) identifies an address in the PSMA G-NAF.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/address-identifier"
      },
      "name" : "Address Identifier",
      "description" : "This extension applies to the [Address](http://hl7.org/fhir/R4/datatypes.html#Address) data type and is used to represent an identifier for an address. An address identifier does not form part of the address itself, e.g. a street number. It is a unique identifier associated with a location address and may be used to look up an address, validate an address, or link to other data relating to an address.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:complex-type"
      }],
      "reference" : {
        "reference" : "StructureDefinition/au-pharmacyapprovalnumber"
      },
      "name" : "AU Pharmacy Approval Number",
      "description" : "This identifier profile defines a pharmacy approval number in an Australian context (see [Department of Health and Aged Care](https://www1.health.gov.au/internet/main/publishing.nsf/Content/pharmaceutical-benefits-scheme-approved-supplier-administrative-functions) for further information). A pharmacy approval number, also known as a PBS approval number, is assigned by the Department of Health to pharmacies that are approved to supply pharmaceutical benefits at particular premises under the National Health Act 1953.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ahpraregistration-details"
      },
      "name" : "Ahpra Registration Details",
      "description" : "This extension applies to the Practitioner.qualification element and is used to represent Australian Health Practitioner Regulation Agency (Ahpra) registration details (see [Ahpra](https://www.ahpra.gov.au/Support/Glossary.aspx#Registration%20Number) for further information). This extension supports the inclusion of the Ahpra profession code and information about division, speciality, registration status, endorsements and notations in a qualification element instance representing a practitioner’s Ahpra registration.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ahpraprofession-details"
      },
      "name" : "Ahpra Profession Details",
      "description" : "This extension applies to the Practitioner.qualification element and is used to represent Australian Health Practitioner Regulation Agency (Ahpra) profession details (see [Ahpra](https://www.ahpra.gov.au/Support/Glossary.aspx#Registration%20Number) for further information). This extension supports the inclusion of the Ahpra profession code and information about conditions, undertakings, reprimands and cautions in a qualification element instance representing a practitioner’s Ahpra profession.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/au-substance"
      },
      "name" : "AU Base Substance",
      "description" : "This profile defines a substance structure that localises core concepts, including terminology, for use in an Australian context. The purpose of this profile is to provide national level agreement on core localised concepts. This profile does not force conformance to core localised concepts. It enables implementers and modellers to make their own rules, i.e. [profiling](http://hl7.org/fhir/profiling.html), about how to support these concepts for specific implementation needs.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:complex-type"
      }],
      "reference" : {
        "reference" : "StructureDefinition/au-pi"
      },
      "name" : "AU Patient Internal Identifier",
      "description" : "This identifier profile defines a patient internal identifier in an Australian context. A patient internal identifier is assigned to a patient by an application (e.g. practice management system or a cloud-based electronic medical record) to uniquely identify a patient within that application.\n\nWhile a patient internal identifier can be exchanged with other applications, its scope for sharing is limited and typically occurs for context-specific patient matching (e.g. a patient internal identifier included in a pathology request can be returned in the associated pathology report). This identifier is only unique within the assigning application and is not suitable for broader use as a persistent identifier, unlike a Medical Record Number (MRN), which is unique within an institution.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/contact-purpose"
      },
      "name" : "Contact Purpose",
      "description" : "The purpose for which an associated contact can be reached.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/au-v3-ActEncounterCode-extended"
      },
      "name" : "ActEncounterCode - AU Extended",
      "description" : "v3 Act Encounter Code extended for use in an Australian context. Includes HL7 international codes plus Australian additions to create a complete set.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/au-v2-0203-extended"
      },
      "name" : "hl7VS-identifierType - AU Extended",
      "description" : "Extended value set of identifier types for use in an Australian context. Includes HL7 international codes plus Australian additions to create a complete set. NOTE: codes contained LACN Laboratory Accession ID and ACN Accession ID are exclusive concepts and not consider related in this terminology.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/au-v2-0360-extended"
      },
      "name" : "hl7VS-degreeLicenseCertificate - AU Extended",
      "description" : "hl7VS-degreeLicenseCertificate extended for use in an Australian context. Includes HL7 international codes plus Australian additions to create a complete set.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/au-v2-0443-extended"
      },
      "name" : "hl7VS-providerRole - AU Extended",
      "description" : "hl7VS-providerRole extended for use in an Australian context. Includes HL7 international codes plus Australian additions to create a complete set.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/service-provision-conditions"
      },
      "name" : "Service Provision Conditions Australian Concepts",
      "description" : "The Service Provision Conditions Australian Concepts value set includes values that may be used to identify the type of service provision conditions in an Australian context.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/pbs-item-external"
      },
      "name" : "PBS Item Codes",
      "description" : "This CodeSystem resource represents the items listed on the Australian Pharmaceutical Benefits Scheme (PBS) schedule published by the Department of Health. Codes are represented as five or six characters in format (n)nnnna and the display is the PBS prescribing rule preferred term. This is not the canonical publication of this code system nor it is intended to be publication on behalf of the Department of Health. For the complete content of the code system contact the publisher.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/pbs-item"
      },
      "name" : "PBS Item Codes",
      "description" : "The PBS Item Codes value set includes all values from Australian Pharmaceutical Benefits Scheme (PBS) schedule published by the Department of Health. Further details can be found at https://www.pbs.gov.au/pbs/.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/mims"
      },
      "name" : "MIMS",
      "description" : "The MIMS value set includes all values from the Monthly Index of Medical Specialties (MIMS) published by MIMS Australia. Further details can be found at https://www.mims.com.au/.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/mims-external"
      },
      "name" : "Monthly Index of Medical Specialties (MIMS)",
      "description" : "This CodeSystem resource represents the Monthly Index of Medical Specialties (MIMS) code system published by MIMS Australia. The intended use of MIMS data is to fully specify the product as a combination of product code, form code, and pack code. For example, when providing a MIMS Code within a Clinical Document Architecture (CDA) document, the MIMS code will be a minimum of 5 digits (in most cases, will be 8 digits).This is not the canonical publication of this code system nor it is intended to be publication on behalf of the MIMS Australia. For the complete content of the code system contact the publisher.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/amt-mp-codes"
      },
      "name" : "AMT Medicinal Product and Substances",
      "description" : "The AMT Medicinal Product and Substances value set includes values that may be used to identify a substance or a medicinal product that is an ingredient of a medication.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/medication-type"
      },
      "name" : "Medication Type",
      "description" : "The Medication Type value set may be used to classify the nature of properties defined by the code e.g. branded product with no strength or form. This allows the distinction between codes provided containing container, pack, strength and form explicitly especially where terminologies supplied are unknown or terminology services are unavailable.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/dva-entitlement"
      },
      "name" : "DVA Entitlement",
      "description" : "Entitlement types that may be associated with an individual's Department of Veterans’ Affairs (DVA) File Number on a DVA issued health card in an Australian context.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/accession-number-type"
      },
      "name" : "Accession Number Type",
      "description" : "Identifier types that may be associated with an accession number in an Australian context.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/order-identifier-type"
      },
      "name" : "Order Identifier Type",
      "description" : "Identifier types that may be associated with an order identifier in an Australian context.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/medication-type"
      },
      "name" : "Medication Type",
      "description" : "The Medication Type code system defines concepts in a classification scheme for medication coding. The classification scheme defines the nature of the properties defined by the code e.g. branded product with no strength or form. This allows the distinction between codes provided containing container, pack, strength and form explicitly especially where terminologies supplied are unknown or terminology services are unavailable.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/service-provision-conditions"
      },
      "name" : "Service Provision Conditions Australian Concepts",
      "description" : "The Service Provision Conditions Australian Concepts code system defines concepts that identify the conditions under which a healthcare service is available/offered.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/contact-purpose"
      },
      "name" : "Contact Purpose",
      "description" : "Purpose for associated contact information.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/au-v3-ActCode"
      },
      "name" : "ActCode AU",
      "description" : "Additional concept codes for act coding defined for use in an Australian context. These codes are used as extensions to the HL7 International code set.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/au-v2-0203"
      },
      "name" : "IdentifierType AU",
      "description" : "Additional concept codes for identifier type defined for use in an Australian context. These are additional identifier type codes to the HL7 International code set and suitable for use with Australian identifiers and may be used in HL7 V2.x identifier representations.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/au-v2-0360"
      },
      "name" : "DegreeLicenseCertificate AU",
      "description" : "Additional concept codes for qualification defined for use in an Australian context. These codes are used as extensions to the HL7 International code set.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/au-v2-0443"
      },
      "name" : "providerRole AU",
      "description" : "Additional concept codes for specifying the functional involvement with the activity being transmitted (e.g., Case Manager, Evaluator, Transcriber, Nurse Care Practitioner, Midwife, Physician Assistant, etc.) defined for use in an Australian context. These codes are used as extensions to the HL7 International code set.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/au-location-physical-type"
      },
      "name" : "Location Type (Physical) AU",
      "description" : "Additional concept codes for location physical type defined for use in Australian context. These codes are used as extensions to the HL7 International code set.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/au-location-physical-type-extended"
      },
      "name" : "Location Type (Physical) - AU Extended",
      "description" : "Location type (physical) extended for use in an Australian context. Includes HL7 international codes plus Australian additions to create a complete set.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/au-location-type"
      },
      "name" : "Location Type AU",
      "description" : "Additional concept codes for location type defined for use in an Australian context. These codes are used as extensions to the HL7 International code set.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/au-v3-ServiceDeliveryLocationRoleType-extended"
      },
      "name" : "ServiceDeliveryLocationRoleType - AU Extended",
      "description" : "ServiceDeliveryLocationRoleType extended for use in an Australian context. Includes HL7 international codes plus Australian additions to create a complete set.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/medicine-item-change"
      },
      "name" : "Medicine Item Change",
      "description" : "The Medicine Item Change code system defines concepts that identify a change that has been made, or is recommended to be made, to a medicine item.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/medicine-item-change"
      },
      "name" : "Medicine Item Change",
      "description" : "The Medicine Item Change value set includes values that may be used to identify that a change that has been made, or is recommended to be made, to a medicine item.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/au-timezone"
      },
      "name" : "AU Time Zone",
      "description" : "Australian time zones.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/rsg-source-document-type"
      },
      "name" : "AU Recorded Sex or Gender Source Document Type",
      "description" : "The AU Recorded Sex or Gender Source Document Type code system defines concepts that represent the type of document where this sex or gender value is recorded.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/au-digital-health-source-system"
      },
      "name" : "Australian Digital Health Source System",
      "description" : "The Australian Digital Health Source System code system defines concepts that represent Australian digital health sources. These concepts may be used to represent which system clinical and/or administrative information is sourced.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/rsg-type"
      },
      "name" : "AU Recorded Sex or Gender Type",
      "description" : "The AU Recorded Sex or Gender Type code system defines concepts that represent the type or category of sex or gender that is recorded.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/name-context"
      },
      "name" : "Name Context",
      "description" : "The Name Context value set may be used to classify suitable uses or purposes of names.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/name-context"
      },
      "name" : "Name Context",
      "description" : "The Name Context code system defines concepts describing usage of names. This provides well known concepts that can be used to indicate usage to achieve an associated purpose e.g. identifier validation.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/resource-tag"
      },
      "name" : "Resource Tag",
      "description" : "The Resource Tag code system defines concepts that represent tag values for labelling resources.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/task-business-status"
      },
      "name" : "Task Business Status",
      "description" : "The Task Business Status code system defines concepts that represent business status values for a task.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/communication-request-category"
      },
      "name" : "Communication Request Category",
      "description" : "The Communication Request Category code system defines concepts that represent the category for a communication request.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/au-jurisdiction-extended"
      },
      "name" : "Jurisdiction ValueSet - AU Extended",
      "description" : "Jurisdiction ValueSet extended for use in an Australian context. Includes HL7 international codes plus Australian additions to create a complete set.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/rsg-source-document-type"
      },
      "name" : "AU Recorded Sex or Gender (RSG) Source Document Type",
      "description" : "The AU Recorded Sex or Gender (RSG) Source Document Type value set includes codes that can be used to represent the type of document where this sex or gender value is recorded.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/rsg-type"
      },
      "name" : "AU Recorded Sex or Gender Type",
      "description" : "The AU Recorded Sex or Gender Type value set includes codes that can be used to represent the type or category of sex or gender that is recorded.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/au-timezone"
      },
      "name" : "Australian Time Zone",
      "description" : "This extension applies to the [time](http://hl7.org/fhir/R4/datatypes.html#time) data type and is used to represent an Australian time zone.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/au-timezone-usage"
      },
      "name" : "Australian Time Zone Usage",
      "description" : "This profile defines specific usage of Australian time zones (states and territories) with the FHIR [Timezone Code extension](https://hl7.org/fhir/extensions/StructureDefinition-timezone.html).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/name-context"
      },
      "name" : "Name Context",
      "description" : "This extension applies to the [HumanName](http://hl7.org/fhir/R4/datatypes.html#HumanName) data type, in the context of Patient, Person, Practitioner or RelatedPerson resources and is used to indicate a suitable use of the associated name.\nThe usage described may be varied in nature including suitability for a particular purpose e.g. IHI validation, or highlighting (in)appropriate use when referring to an individual e.g. deceased Aboriginal name, transgender deadname.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/au-procedure"
      },
      "name" : "AU Base Procedure",
      "description" : "This profile defines a procedure structure that localises core concepts, including terminology, for use in an Australian context. The purpose of this profile is to provide national level agreement on core localised concepts. This profile does not force conformance to core localised concepts. It enables implementers and modellers to make their own rules, i.e. [profiling](http://hl7.org/fhir/profiling.html), about how to support these concepts for specific implementation needs.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/specimen-hepatitis-b-serology"
      },
      "name" : "Observation - Measurement of Hepatitis B surface antibody",
      "description" : "Shows an example of a laboratory observation for the *AU Base Pathology Result* profile, demonstrating a final serology result for Hepatitis B surface antibody. Patient: Stella Franklin.",
      "exampleCanonical" : "http://hl7.org.au/fhir/StructureDefinition/au-pathologyresult"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Specimen"
      }],
      "reference" : {
        "reference" : "Specimen/serum"
      },
      "name" : "Specimen - Serum sample",
      "description" : "Shows an example of a serum sample specimen for the *AU Base Specimen* profile. Patient: Stella Franklin.",
      "exampleCanonical" : "http://hl7.org.au/fhir/StructureDefinition/au-specimen"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ServiceRequest"
      }],
      "reference" : {
        "reference" : "ServiceRequest/hepatitis-b-antibody"
      },
      "name" : "ServiceRequest - for Hepatitis B surface antibody measurement",
      "description" : "Shows an example of a completed request for Hepatitis B surface antibody measurement for the *AU Base ServiceRequest* profile. Patient: Stella Franklin.",
      "exampleCanonical" : "http://hl7.org.au/fhir/StructureDefinition/au-servicerequest"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ServiceRequest"
      }],
      "reference" : {
        "reference" : "ServiceRequest/path-example0"
      },
      "name" : "ServiceRequest - full blood count, and sex parameter for clinical use",
      "description" : "Shows an example of an active request for a full blood count for the *AU Base ServiceRequest* profile with Sex Parameter for Clinical Use. Patient: Harry Dan.",
      "exampleCanonical" : "http://hl7.org.au/fhir/StructureDefinition/au-servicerequest"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Condition"
      }],
      "reference" : {
        "reference" : "Condition/example0"
      },
      "name" : "Condition - with evidence and onset date-time",
      "description" : "Shows an example of a condition of Type 2 diabetes mellitus for the *AU Base Condition* profile. Patient: Stella Franklin.",
      "exampleCanonical" : "http://hl7.org.au/fhir/StructureDefinition/au-condition"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Coverage"
      }],
      "reference" : {
        "reference" : "Coverage/dva"
      },
      "name" : "Coverage - DVA Gold Card",
      "description" : "Shows an example of a coverage record for the *AU Base Coverage* profile, demonstrating a veteran health program under the Department of Veterans' Affairs. Beneficiary: Harry Dan.",
      "exampleCanonical" : "http://hl7.org.au/fhir/StructureDefinition/au-coverage"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Coverage"
      }],
      "reference" : {
        "reference" : "Coverage/private"
      },
      "name" : "Coverage - private health insurer",
      "description" : "Shows an example of a private health insurance coverage record for the *AU Base Coverage* profile, demonstrating a plan under the payor HCF PTY LTD. Beneficiary: Stella Franklin.",
      "exampleCanonical" : "http://hl7.org.au/fhir/StructureDefinition/au-coverage"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Immunization"
      }],
      "reference" : {
        "reference" : "Immunization/example0"
      },
      "name" : "Immunization - Non-administration of varicella-zoster live vaccine due to refusal",
      "description" : "Shows an example of an immunisation record for the *AU Base Immunization* profile, where the administration of the varicella-zoster live vaccine was not completed due to patient objection. Patient: Harry Dan.",
      "exampleCanonical" : "http://hl7.org.au/fhir/StructureDefinition/au-immunization"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Immunization"
      }],
      "reference" : {
        "reference" : "Immunization/example1"
      },
      "name" : "Immunization - Administration of a vaccine - record compliant with Australian Immunisation Register (AIR)",
      "description" : "Shows an example of a completed immunisation record for the *AU Base Immunization* profile, demonstrating the administration of Infanrix-Hep B. The record is compliant with Australian Immunisation Register (AIR). Patient: Sally Grant.",
      "exampleCanonical" : "http://hl7.org.au/fhir/StructureDefinition/au-immunization"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Immunization"
      }],
      "reference" : {
        "reference" : "Immunization/example2"
      },
      "name" : "Immunization - Administration of a vaccine with administering provider and protocol",
      "description" : "Shows an example of a completed immunisation record for the *AU Base Immunization* profile, demonstrating the administration of Infanrix Hexa. Patient: Sally Grant.",
      "exampleCanonical" : "http://hl7.org.au/fhir/StructureDefinition/au-immunization"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Immunization"
      }],
      "reference" : {
        "reference" : "Immunization/example3"
      },
      "name" : "Immunization - Administration of Pfizer Comirnaty dose 1 for Sarah Simmons",
      "description" : "Shows an example of a completed immunisation record for the *AU Base Immunization* profile, demonstrating the administration of Pfizer Comirnaty for COVID-19. Patient: Sarah Simmons.",
      "exampleCanonical" : "http://hl7.org.au/fhir/StructureDefinition/au-immunization"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Practitioner"
      }],
      "reference" : {
        "reference" : "Practitioner/example1"
      },
      "name" : "Practitioner - as a Radiologist",
      "description" : "Shows an example of a Radiologist, Dr. Steve Smith, for the *AU Base Practitioner* profile, with an Ahpra Registration Number.",
      "exampleCanonical" : "http://hl7.org.au/fhir/StructureDefinition/au-practitioner"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "AllergyIntolerance"
      }],
      "reference" : {
        "reference" : "AllergyIntolerance/example0"
      },
      "name" : "AllergyIntolerance - ibuprofen allergy",
      "description" : "Shows an example of an Ibuprofen allergy with the reaction manifestation as urticaria for the *AU Base AllergyIntolerance* profile. Patient: Harry Dan.",
      "exampleCanonical" : "http://hl7.org.au/fhir/StructureDefinition/au-allergyintolerance"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "AllergyIntolerance"
      }],
      "reference" : {
        "reference" : "AllergyIntolerance/example1"
      },
      "name" : "AllergyIntolerance - self-reported allergy to eggs",
      "description" : "Shows an example of an allergy to egg protein with reaction manifestations of hives, nausea, and vomiting for the *AU Base AllergyIntolerance* profile. Patient: Sally Grant.",
      "exampleCanonical" : "http://hl7.org.au/fhir/StructureDefinition/au-allergyintolerance"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "AllergyIntolerance"
      }],
      "reference" : {
        "reference" : "AllergyIntolerance/example2"
      },
      "name" : "AllergyIntolerance - self-reported intolerance to lactose",
      "description" : "Shows an example of lactose intolerance with reaction manifestations of abdominal pain, abdominal bloating, and diarrhoea for the *AU Base AllergyIntolerance* profile. Patient: Suzanne Simmons.",
      "exampleCanonical" : "http://hl7.org.au/fhir/StructureDefinition/au-allergyintolerance"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "AllergyIntolerance"
      }],
      "reference" : {
        "reference" : "AllergyIntolerance/example3"
      },
      "name" : "AllergyIntolerance - no known allergy",
      "description" : "Shows an example of an AllergyIntolerance resource indicating the patient has no known allergies for the *AU Base AllergyIntolerance* profile. Patient: John Smith.",
      "exampleCanonical" : "http://hl7.org.au/fhir/StructureDefinition/au-allergyintolerance"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "BodyStructure"
      }],
      "reference" : {
        "reference" : "BodyStructure/example0"
      },
      "name" : "BodyStructure - Bone tissue of left shoulder",
      "description" : "Shows an example of a body structure resource for the *AU Base BodyStructure* profile, representing bone tissue in the left shoulder region. Patient: Stella Franklin.",
      "exampleCanonical" : "http://hl7.org.au/fhir/StructureDefinition/au-bodystructure"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "BodyStructure"
      }],
      "reference" : {
        "reference" : "BodyStructure/example1"
      },
      "name" : "BodyStructure - Blister of right foot",
      "description" : "Shows an example of a body structure for the *AU Base BodyStructure* profile, representing a blister on the right foot. Patient: Stella Franklin.",
      "exampleCanonical" : "http://hl7.org.au/fhir/StructureDefinition/au-bodystructure"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Device"
      }],
      "reference" : {
        "reference" : "Device/example1"
      },
      "name" : "Device - as a registered repository service",
      "description" : "Shows an example of a Device resource representing a registered repository service. The resource includes the PAI-D identifier, device name, type and owner identifier (PAI-O).",
      "exampleCanonical" : "http://hl7.org/fhir/StructureDefinition/Device"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Location"
      }],
      "reference" : {
        "reference" : "Location/example1"
      },
      "name" : "Location - of a Practitioner as a Radiologist",
      "description" : "Shows an example of a Location resource for the *AU Base Location* profile.",
      "exampleCanonical" : "http://hl7.org.au/fhir/StructureDefinition/au-location"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Organization"
      }],
      "reference" : {
        "reference" : "Organization/example1"
      },
      "name" : "Organization - a typical Organisation the Radiologist belongs to",
      "description" : "Shows an example of an organisation, Albion Hospital, for the *AU Base Organization* profile, with an ABN identifier, type as Private Hospital, and contact details including phone numbers and email addresses.",
      "exampleCanonical" : "http://hl7.org.au/fhir/StructureDefinition/au-organization"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Organization"
      }],
      "reference" : {
        "reference" : "Organization/example2"
      },
      "name" : "Organization - Holistic Medical Pty Ltd with ABN and HPI-O",
      "description" : "Shows an example of an organisation, Holistic Medical Pty Ltd as trustee for Smith Family Trust, for the *AU Base Organization* profile, with HPI-O and ABN identifiers, and contact details including a work email address and a physical address.",
      "exampleCanonical" : "http://hl7.org.au/fhir/StructureDefinition/au-organization"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "PractitionerRole"
      }],
      "reference" : {
        "reference" : "PractitionerRole/example1"
      },
      "name" : "PractitionerRole - a typical Practitioner Role as a Radiologist",
      "description" : "Shows an example of a Radiologist role for the *AU Base PractitionerRole* profile,  including a National Provider Identifier at Organisation (NPIO) identifier, contact details, references to the associated Practitioner, Organization, Location, and HealthcareService, as well as availability exceptions for public holidays.",
      "exampleCanonical" : "http://hl7.org.au/fhir/StructureDefinition/au-practitionerrole"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "HealthcareService"
      }],
      "reference" : {
        "reference" : "HealthcareService/example1"
      },
      "name" : "HealthcareService - a typical Healthcare Service the Radiologist belongs to",
      "description" : "Shows an example of a radiology service, Albion Hospital Radiology Service, for the *AU Base HealthcareService* profile.",
      "exampleCanonical" : "http://hl7.org.au/fhir/StructureDefinition/au-healthcareservice"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Practitioner"
      }],
      "reference" : {
        "reference" : "Practitioner/example3"
      },
      "name" : "Practitioner - a typical Practitioner as a General Practitioner",
      "description" : "Shows an example of a practitioner,  Dr. Francis Fernando, with a HPI-I and Ahpra Registration Number for the *AU Base Practitioner* profile.",
      "exampleCanonical" : "http://hl7.org.au/fhir/StructureDefinition/au-practitioner"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Practitioner"
      }],
      "reference" : {
        "reference" : "Practitioner/example4"
      },
      "name" : "Practitioner - a typical Ahpra registered professional",
      "description" : "Shows an example of a practitioner, Dr. Robert Smith, with multiple identifiers (HPI-I and Ahpra Registration Number), qualifications and communication language for the *AU Base Practitioner* profile.",
      "exampleCanonical" : "http://hl7.org.au/fhir/StructureDefinition/au-practitioner"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Practitioner"
      }],
      "reference" : {
        "reference" : "Practitioner/example-sex-and-gender"
      },
      "name" : "Practitioner - sex and gender",
      "description" : "Shows an example of a practitioner for the *AU Base Practitioner* profile that demonstrates the adopted extensions for sex and gender.",
      "exampleCanonical" : "http://hl7.org.au/fhir/StructureDefinition/au-practitioner"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Endpoint"
      }],
      "reference" : {
        "reference" : "Endpoint/example0"
      },
      "name" : "Endpoint - a secure messaging endpoint example",
      "description" : "Shows an example of a secure messaging endpoint using the Endpoint resource.",
      "exampleCanonical" : "http://hl7.org/fhir/StructureDefinition/Endpoint"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Location"
      }],
      "reference" : {
        "reference" : "Location/example3"
      },
      "name" : "Location - of a Practitioner as a General Practitioner",
      "description" : "Shows an example of a location, Family Medicine Clinic, at which the General Practitioner provides care for the *AU Base Location* profile.",
      "exampleCanonical" : "http://hl7.org.au/fhir/StructureDefinition/au-location"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Organization"
      }],
      "reference" : {
        "reference" : "Organization/example3"
      },
      "name" : "Organization - a typical Organisation the General Practitioner belongs to",
      "description" : "Shows an example of an organisation, Devonport Family Medicine Clinic, to which the General Practitioner belongs for the *AU Base Organization* profile.",
      "exampleCanonical" : "http://hl7.org.au/fhir/StructureDefinition/au-organization"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "PractitionerRole"
      }],
      "reference" : {
        "reference" : "PractitionerRole/example3"
      },
      "name" : "PractitionerRole - a typical Practitioner Role as a General Practitioner",
      "description" : "Shows an example of a General Practitioner role for the *AU Base Practitioner* profile, including a Medicare Provider Number identifier, contact details, references to the associated Practitioner, Organization, Location, and HealthcareService, as well as availability on weekdays and unavailability on weekends.",
      "exampleCanonical" : "http://hl7.org.au/fhir/StructureDefinition/au-practitionerrole"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "HealthcareService"
      }],
      "reference" : {
        "reference" : "HealthcareService/example3"
      },
      "name" : "HealthcareService - general practice",
      "description" : "Shows an example of a healthcare service, General Practitioner services, for the *AU Base HealthcareService* profile.",
      "exampleCanonical" : "http://hl7.org.au/fhir/StructureDefinition/au-healthcareservice"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Patient"
      }],
      "reference" : {
        "reference" : "Patient/example-sex-and-gender"
      },
      "name" : "Patient - as transgender person with sex and gender and sex parameter for clinical use",
      "description" : "Shows an example of a patient, Patricia Roth, for *AU Base Patient* profile that demonstrates the adopted extensions for sex and gender. This example is taken and adapted from the R5 Transgender Person Example.",
      "exampleCanonical" : "http://hl7.org.au/fhir/StructureDefinition/au-patient"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Patient"
      }],
      "reference" : {
        "reference" : "Patient/example0"
      },
      "name" : "Patient - with IHI, Medicare Card Number, patient internal identifier and the extension for Indigenous Status",
      "description" : "Shows an example of a patient, Stella Franklin, for the *AU Base Patient* profile. The resource includes IHI, Medicare Card Number, Health Card Number, patient internal identifier and extensions for Australian Indigenous Status, IHI validation name context, and gender identity.",
      "exampleCanonical" : "http://hl7.org.au/fhir/StructureDefinition/au-patient"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Patient"
      }],
      "reference" : {
        "reference" : "Patient/example1"
      },
      "name" : "Patient - with IHI, DVA Number (with specific card colour) and the extension for Indigenous Status",
      "description" : "Shows an example of a patient, Harry Dan, for the *AU Base Patient* profile. The resource includes IHI (expired) and DVA Gold Card Number, extension for Australian Veteran Status and Indigenous Status.",
      "exampleCanonical" : "http://hl7.org.au/fhir/StructureDefinition/au-patient"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Patient"
      }],
      "reference" : {
        "reference" : "Patient/example2"
      },
      "name" : "Patient - with no birth date, and is eligible for Closing the Gap registration",
      "description" : "Shows an example of a patient, Sally Grant, for the *AU Base Patient* profile. The resource includes a Medicare Number, extensions for Australian Indigenous Status and Closing the Gap registration, with unknown date of birth.",
      "exampleCanonical" : "http://hl7.org.au/fhir/StructureDefinition/au-patient"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Patient"
      }],
      "reference" : {
        "reference" : "Patient/example3"
      },
      "name" : "Patient - with birth date and birth time",
      "description" : "Shows an example of a patient, John Smith, for the *AU Base Patient* profile. The resource includes a name, email contact, birth details (date and time with an extension for date accuracy), and residential address.",
      "exampleCanonical" : "http://hl7.org.au/fhir/StructureDefinition/au-patient"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Patient"
      }],
      "reference" : {
        "reference" : "Patient/example4"
      },
      "name" : "Patient - as a child born in 2008",
      "description" : "Shows an example of a child patient, Suzanne Simmons, for the *AU Base Patient* profile.",
      "exampleCanonical" : "http://hl7.org.au/fhir/StructureDefinition/au-patient"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Patient"
      }],
      "reference" : {
        "reference" : "Patient/example5"
      },
      "name" : "Patient - as a mother for the patient in example 4",
      "description" : "Shows an example of a patient, Sarah Simmons, as the mother of Suzanne Simmons in example 4, for the *AU Base Patient* profile.",
      "exampleCanonical" : "http://hl7.org.au/fhir/StructureDefinition/au-patient"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Patient"
      }],
      "reference" : {
        "reference" : "Patient/example6"
      },
      "name" : "Patient - as a Culturally and linguistically diverse (CALD) patient 1",
      "description" : "Shows an example of a patient, William Rigny, who requires an interpreter for healthcare communication, with their preferred communication language specified, for the *AU Base Patient* profile.",
      "exampleCanonical" : "http://hl7.org.au/fhir/StructureDefinition/au-patient"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Patient"
      }],
      "reference" : {
        "reference" : "Patient/example7"
      },
      "name" : "Patient - as a Culturally and linguistically diverse (CALD) patient 2",
      "description" : "Shows an example of a patient, Alejandro Hernández, born in Mexico and requiring an interpreter for healthcare communication, for the *AU Base Patient* profile. The example also includes Alejandro's gender identity and their date of arrival in Australia.",
      "exampleCanonical" : "http://hl7.org.au/fhir/StructureDefinition/au-patient"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Practitioner"
      }],
      "reference" : {
        "reference" : "Practitioner/example0"
      },
      "name" : "Practitioner - with HPI-I and Prescriber Number",
      "description" : "Shows an example of a practitioner, Dr. Helen Mayo, with multiple identifiers including HPI-I, Prescriber Number, Ahpra Registration Number, and Care Agency Employee Identifier and use of HPI-I validation name context extension for the *AU Base Practitioner* profile.",
      "exampleCanonical" : "http://hl7.org.au/fhir/StructureDefinition/au-practitioner"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "PractitionerRole"
      }],
      "reference" : {
        "reference" : "PractitionerRole/example0"
      },
      "name" : "PractitionerRole - with Provider Number and ANZSCO coded role",
      "description" : "Shows an example of a Cardiologist role for the *AU Base PractitionerRole* profile,  including a Medicare Provider Number identifier, specialty in Cardiology, contact details for work and after-hours purposes, and references to the associated Practitioner, Organization, and Location.",
      "exampleCanonical" : "http://hl7.org.au/fhir/StructureDefinition/au-practitionerrole"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Organization"
      }],
      "reference" : {
        "reference" : "Organization/example0"
      },
      "name" : "Organization - with HPI-O",
      "description" : "Shows an example of an organisation, Downunder Hospital, for the *AU Base Organization* profile, with a HPI-O, name, contact details, and address.",
      "exampleCanonical" : "http://hl7.org.au/fhir/StructureDefinition/au-organization"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Organization"
      }],
      "reference" : {
        "reference" : "Organization/example6"
      },
      "name" : "Organization - a Pathology organisation with NATA Number, ARBN, ABN, ACN, HPI-O and PAI-O",
      "description" : "Shows an example of a pathology organisation, ACME Pathology, for the *AU Base Organization* profile, with multiple identifiers such as HPI-O, NATA Accreditation Number, ABN, ACN, and PAI-O, and a reference to its parent organisation.",
      "exampleCanonical" : "http://hl7.org.au/fhir/StructureDefinition/au-organization"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Organization"
      }],
      "reference" : {
        "reference" : "Organization/example8"
      },
      "name" : "Organization - with HAE",
      "description" : "Shows an example of an organisation, Metro Health Administration Services, for the *AU Base Organization* profile, with a HAE, name, contact details, and address.",
      "exampleCanonical" : "http://hl7.org.au/fhir/StructureDefinition/au-organization"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Organization"
      }],
      "reference" : {
        "reference" : "Organization/example7"
      },
      "name" : "Organization - with HSP-O",
      "description" : "Shows an example of an organisation, Sunshine Home Care Services, for the *AU Base Organization* profile, with a HSP-O, name, contact details, and address.",
      "exampleCanonical" : "http://hl7.org.au/fhir/StructureDefinition/au-organization"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Organization"
      }],
      "reference" : {
        "reference" : "Organization/5-8631-1"
      },
      "name" : "Organization - a Pathology organisation with HPI-O and is a parent organization",
      "description" : "Shows an example of a parent pathology and diagnostic imaging organisation with a HPI-O identifier, Test Org - DigitalHealth 5, for the *AU Base Organization* profile.",
      "exampleCanonical" : "http://hl7.org.au/fhir/StructureDefinition/au-organization"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "HealthcareService"
      }],
      "reference" : {
        "reference" : "HealthcareService/example0"
      },
      "name" : "HealthcareService - with HPI-O with varied contact details",
      "description" : "Shows an example of a cardiothoracic surgery healthcare service for the *AU Base HealthcareService* profile, with a HPI-O, service name, specialty details, and multiple contact details.",
      "exampleCanonical" : "http://hl7.org.au/fhir/StructureDefinition/au-healthcareservice"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Location"
      }],
      "reference" : {
        "reference" : "Location/example0"
      },
      "name" : "Location - a hospital location with managing organisation of example0",
      "description" : "Shows an example of a hospital location for the *AU Base Location* profile. The resource includes the location details and a reference to the managing organisation, Downunder Hospital.",
      "exampleCanonical" : "http://hl7.org.au/fhir/StructureDefinition/au-location"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Patient"
      }],
      "reference" : {
        "reference" : "Patient/DateAccuracyIndicatorAAAexample0"
      },
      "name" : "Patient - with Birth Date Accuracy Indicator of AAA",
      "description" : "Shows an example of a patient for the *AU Base Patient* profile with Date Accuracy Indicator extension Accurate Year, Accurate Month and Accurate Date.",
      "exampleCanonical" : "http://hl7.org.au/fhir/StructureDefinition/au-patient"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Patient"
      }],
      "reference" : {
        "reference" : "Patient/DateAccuracyIndicatorAAUexample1"
      },
      "name" : "Patient - with Birth Date Accuracy Indicator of AAU",
      "description" : "Shows an example of a patient for the *AU Base Patient* profile with Date Accuracy Indicator extension Accurate Year, Accurate Month and Unknown Date",
      "exampleCanonical" : "http://hl7.org.au/fhir/StructureDefinition/au-patient"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Patient"
      }],
      "reference" : {
        "reference" : "Patient/DateAccuracyIndicatorUAAexample2"
      },
      "name" : "Patient - with Birth Date Accuracy Indicator of UAA",
      "description" : "Shows an example of a patient for the *AU Base Patient* profile with Date Accuracy Indicator extension Unknown Year, Accurate Month and Accurate Date.",
      "exampleCanonical" : "http://hl7.org.au/fhir/StructureDefinition/au-patient"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Patient"
      }],
      "reference" : {
        "reference" : "Patient/DateAccuracyIndicatorUEAexample3"
      },
      "name" : "Patient - with Birth Date Accuracy Indicator of UEA",
      "description" : "Shows an example of a patient for the *AU Base Patient* profile with Date Accuracy Indicator extension Unknown Year, Estimated Month and Accurate Date.",
      "exampleCanonical" : "http://hl7.org.au/fhir/StructureDefinition/au-patient"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Patient"
      }],
      "reference" : {
        "reference" : "Patient/DateAccuracyIndicatorUUUexample4"
      },
      "name" : "Patient - with Birth Date Accuracy Indicator of UUU",
      "description" : "Shows an example of a patient for the *AU Base Patient* profile with Date Accuracy Indicator extension Unknown Year, Unknown Month and Unknown Date.",
      "exampleCanonical" : "http://hl7.org.au/fhir/StructureDefinition/au-patient"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Location"
      }],
      "reference" : {
        "reference" : "Location/example2"
      },
      "name" : "Location - of a Practitioner as a Pathologist",
      "description" : "Shows an example of a location at a specific level within a hospital for the *AU Base Location* profile.",
      "exampleCanonical" : "http://hl7.org.au/fhir/StructureDefinition/au-location"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Location"
      }],
      "reference" : {
        "reference" : "Location/example4"
      },
      "name" : "Location - for services delivered by phone, video or online",
      "description" : "Shows an example of a virtual telehealth service location for the *AU Base Location* profile.",
      "exampleCanonical" : "http://hl7.org.au/fhir/StructureDefinition/au-location"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Location"
      }],
      "reference" : {
        "reference" : "Location/example5"
      },
      "name" : "Location - for mobile services that can be delivered in a person's house, apartment, or unit",
      "description" : "Shows an example of a mobile, home-based service location for the *AU Base Location* profile.",
      "exampleCanonical" : "http://hl7.org.au/fhir/StructureDefinition/au-location"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Location"
      }],
      "reference" : {
        "reference" : "Location/example6"
      },
      "name" : "Location - for mobile services that can be delivered in schools",
      "description" : "Shows an example of a mobile, school-based service location for the *AU Base Location* profile.",
      "exampleCanonical" : "http://hl7.org.au/fhir/StructureDefinition/au-location"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Location"
      }],
      "reference" : {
        "reference" : "Location/example7"
      },
      "name" : "Location - for mobile services that can be delivered in residential care facilities",
      "description" : "Shows an example of a mobile, residential-care-based service location for the *AU Base Location* profile.",
      "exampleCanonical" : "http://hl7.org.au/fhir/StructureDefinition/au-location"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "PractitionerRole"
      }],
      "reference" : {
        "reference" : "PractitionerRole/example2"
      },
      "name" : "PractitionerRole - as a Pathologist",
      "description" : "Shows an example of a General pathologist role for the *AU Base PractitionerRole* profile, including an Employee Number identifier, specialty in General Pathology, contact details, references to the associated Practitioner, Organization, Location, and HealthcareService, as well as availability times.",
      "exampleCanonical" : "http://hl7.org.au/fhir/StructureDefinition/au-practitionerrole"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "HealthcareService"
      }],
      "reference" : {
        "reference" : "HealthcareService/example2"
      },
      "name" : "HealthcareService - of a Pathologist",
      "description" : "Shows an example of a pathology service, Albion Hospital Pathology Service, for the *AU Base HealthcareService* profile.",
      "exampleCanonical" : "http://hl7.org.au/fhir/StructureDefinition/au-healthcareservice"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Practitioner"
      }],
      "reference" : {
        "reference" : "Practitioner/example2"
      },
      "name" : "Practitioner - as a Pathologist",
      "description" : "Shows an example of a Pathologist, Dr. Peter Winslow, for the *AU Base Practitioner* profile, with an Ahpra Registration Number.",
      "exampleCanonical" : "http://hl7.org.au/fhir/StructureDefinition/au-practitioner"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "PractitionerRole"
      }],
      "reference" : {
        "reference" : "PractitionerRole/example4"
      },
      "name" : "PractitionerRole - with assigning authority",
      "description" : "Shows an example of a Cardiologist role for the *AU Base PractitionerRole* profile,  including identifiers for Medicare Provider Number and Vendor Directory, an active status, contact details, references to the associated Practitioner, Organization, Location, and an Endpoint for secure messaging.",
      "exampleCanonical" : "http://hl7.org.au/fhir/StructureDefinition/au-practitionerrole"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Organization"
      }],
      "reference" : {
        "reference" : "Organization/example4"
      },
      "name" : "Organization - a hospital with an HPIO",
      "description" : "Shows an example of a hospital organisation, Downunder Hospital, for the *AU Base Organization* profile, with a HPI-O.",
      "exampleCanonical" : "http://hl7.org.au/fhir/StructureDefinition/au-organization"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "RelatedPerson"
      }],
      "reference" : {
        "reference" : "RelatedPerson/example0"
      },
      "name" : "RelatedPerson - as attester party",
      "description" : "Shows an example of a related person, Benedicte du Marche, who is the next-of-kin for Stella Franklin, for the *AU Base RelatedPerson* profile.",
      "exampleCanonical" : "http://hl7.org.au/fhir/StructureDefinition/au-relatedperson"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "RelatedPerson"
      }],
      "reference" : {
        "reference" : "RelatedPerson/example1"
      },
      "name" : "RelatedPerson - as a carer for an older patient",
      "description" : "Shows an example of a related person, Mary Smith, who is a caregiver for Harry Dan, for the *AU Base RelatedPerson* profile.",
      "exampleCanonical" : "http://hl7.org.au/fhir/StructureDefinition/au-relatedperson"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "RelatedPerson"
      }],
      "reference" : {
        "reference" : "RelatedPerson/example2"
      },
      "name" : "RelatedPerson - as a mother for the patient in example 4",
      "description" : "Shows an example of a related person, Sarah Simmons, who is the mother of Suzanne Simmons, for the *AU Base RelatedPerson* profile.",
      "exampleCanonical" : "http://hl7.org.au/fhir/StructureDefinition/au-relatedperson"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "RelatedPerson"
      }],
      "reference" : {
        "reference" : "RelatedPerson/example3"
      },
      "name" : "RelatedPerson - as father",
      "description" : "Shows an example of a related person, Bill Simmons, who is the father of Alejandro Hernández, for the *AU Base RelatedPerson* profile.",
      "exampleCanonical" : "http://hl7.org.au/fhir/StructureDefinition/au-relatedperson"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "RelatedPerson"
      }],
      "reference" : {
        "reference" : "RelatedPerson/example-sex-and-gender"
      },
      "name" : "RelatedPerson - as family member with sex and gender",
      "description" : "Shows an example of a related person, Alex Baker, for the *AU Base RelatedPerson* profile, demonstrating the adopted extensions for sex and gender.",
      "exampleCanonical" : "http://hl7.org.au/fhir/StructureDefinition/au-relatedperson"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Patient"
      }],
      "reference" : {
        "reference" : "Patient/example8"
      },
      "name" : "Patient - male born in 1949 with address and contact details",
      "description" : "Shows an example of a patient, Nicholas Jones, for the *AU Base Patient* profile. The resource includes an IHI, Australian Indigenous Status extension, and contact details and address.",
      "exampleCanonical" : "http://hl7.org.au/fhir/StructureDefinition/au-patient"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/norelevantfinding-example0"
      },
      "name" : "Observation - of no relevant finding of procedure",
      "description" : "Shows an example of an observation asserting no history of procedure for the *AU Assertion of No Relevant Finding* profile. Patient: Stella Franklin.",
      "exampleCanonical" : "http://hl7.org.au/fhir/StructureDefinition/au-norelevantfinding"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/norelevantfinding-example1"
      },
      "name" : "Observation - of no relevant finding of immunisations",
      "description" : "Shows an example of an observation asserting no history of immunisation for the *AU Assertion of No Relevant Finding* profile. Patient: Stella Franklin.",
      "exampleCanonical" : "http://hl7.org.au/fhir/StructureDefinition/au-norelevantfinding"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/norelevantfinding-example2"
      },
      "name" : "Observation - of no relevant finding of known history of conditions",
      "description" : "Shows an example of an observation asserting no known history of conditions for the *AU Assertion of No Relevant Finding* profile. Patient: Stella Franklin.",
      "exampleCanonical" : "http://hl7.org.au/fhir/StructureDefinition/au-norelevantfinding"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/norelevantfinding-example3"
      },
      "name" : "Observation - of no relevant finding of patient taking any medications",
      "description" : "Shows an example of an observation asserting that the patient is not taking any medications for the *AU Assertion of No Relevant Finding* profile. Patient: Stella Franklin.",
      "exampleCanonical" : "http://hl7.org.au/fhir/StructureDefinition/au-norelevantfinding"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Patient"
      }],
      "reference" : {
        "reference" : "Patient/address-example0"
      },
      "name" : "Patient - structured Australian Address",
      "description" : "Shows an example of a patient with structured work addresses, including a postal address and a physical address, for the *AU Base Patient* profile.",
      "exampleCanonical" : "http://hl7.org/fhir/StructureDefinition/Patient"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Patient"
      }],
      "reference" : {
        "reference" : "Patient/address-example1"
      },
      "name" : "Patient - unstructured Australian Address",
      "description" : "Shows an example of a patient with an unstructured physical address for the *AU Base Patient* profile.",
      "exampleCanonical" : "http://hl7.org/fhir/StructureDefinition/Patient"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Patient"
      }],
      "reference" : {
        "reference" : "Patient/address-example2"
      },
      "name" : "Patient - Australian No Fixed Address",
      "description" : "Shows an example of an anonymous patient with no fixed address for the *AU Base Patient* profile, indicating a temporary address.",
      "exampleCanonical" : "http://hl7.org/fhir/StructureDefinition/Patient"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Patient"
      }],
      "reference" : {
        "reference" : "Patient/address-example3"
      },
      "name" : "Patient - Australian address with identifiers",
      "description" : "Shows an example of a patient address for the *AU Base Patient* profile, with identifiers",
      "exampleCanonical" : "http://hl7.org/fhir/StructureDefinition/Patient"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Medication"
      }],
      "reference" : {
        "reference" : "Medication/DoseBased"
      },
      "name" : "Medication - dose based",
      "description" : "Shows an example of a medication, Fluconazole-containing product, injection, 200 mg/100 mL, defined by dose, form, and strength for the *AU Base Medication* profile.",
      "exampleCanonical" : "http://hl7.org.au/fhir/StructureDefinition/au-medication"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Medication"
      }],
      "reference" : {
        "reference" : "Medication/UnbrandedProduct0"
      },
      "name" : "Medication - Unbranded Product of clarithromycin 500mg tablet",
      "description" : "Shows an example of a medication, Clarithromycin 500mg tablet, defined by dose, form, and strength for the *AU Base Medication* profile.",
      "exampleCanonical" : "http://hl7.org.au/fhir/StructureDefinition/au-medication"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Medication"
      }],
      "reference" : {
        "reference" : "Medication/UnbrandedProduct1"
      },
      "name" : "Medication - Unbranded Product of esomeprazole 20mg tablet",
      "description" : "Shows an example of an unbranded product, Esomeprazole 20mg tablet, defined by dose, form, and strength for the *AU Base Medication* profile.",
      "exampleCanonical" : "http://hl7.org.au/fhir/StructureDefinition/au-medication"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Medication"
      }],
      "reference" : {
        "reference" : "Medication/UnbrandedProduct2"
      },
      "name" : "Medication - Unbranded product of amoxicillin 500mg capsule",
      "description" : "Shows an example of an unbranded product, Amoxicillin 500mg capsule, defined by dose, form, and strength for the *AU Base Medication* profile.",
      "exampleCanonical" : "http://hl7.org.au/fhir/StructureDefinition/au-medication"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Medication"
      }],
      "reference" : {
        "reference" : "Medication/UncodedProduct0"
      },
      "name" : "Medication - uncoded medicinal product information",
      "description" : "Shows an example of a medication with uncoded medicinal product information, Crestor (Rosuvastatin) 20mg tablet in a 30-pack, defined by its brand and generic names, manufacturer, dose, form, and strength for the *AU Base Medication* profile.",
      "exampleCanonical" : "http://hl7.org.au/fhir/StructureDefinition/au-medication"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Medication"
      }],
      "reference" : {
        "reference" : "Medication/BrandedPack1"
      },
      "name" : "Medication - branded pack",
      "description" : "Shows an example of a medication, Nexium Hp7 (14 x Nexium tablets, 28 x Amoxil capsules, 14 x Klacid tablets) in a single pack, defined by its branded and unbranded package information, manufacturer, and form for the *AU Base Medication* profile.",
      "exampleCanonical" : "http://hl7.org.au/fhir/StructureDefinition/au-medication"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Medication"
      }],
      "reference" : {
        "reference" : "Medication/GenericPack0"
      },
      "name" : "Medication - Generic Pack of paracetamol 500mg (100)",
      "description" : "Shows an example of a medication, Paracetamol 500 mg tablet (100 tablets per pack), defined by its generic packaging, form, and coding for the *AU Base Medication* profile.",
      "exampleCanonical" : "http://hl7.org.au/fhir/StructureDefinition/au-medication"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Medication"
      }],
      "reference" : {
        "reference" : "Medication/BrandedPack0"
      },
      "name" : "Medication - Branded Pack of Nexium HP7 20;500;500",
      "description" : "Shows an example of a medication, Nexium HP7 (14 esomeprazole 20 mg tablets, 28 amoxicillin 500 mg capsules, 14 clarithromycin 500 mg tablets, 1 pack), defined by its branded packaging, manufacturer, and form for the *AU Base Medication* profile.",
      "exampleCanonical" : "http://hl7.org.au/fhir/StructureDefinition/au-medication"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Medication"
      }],
      "reference" : {
        "reference" : "Medication/BrandedPackSingleActiveIngredient0"
      },
      "name" : "Medication - Branded Pack With Single Active Ingredient",
      "description" : "Shows an example of a medication, Chlorsig (chloramphenicol 0.5%, eye drops), defined by its branded product, single active ingredient, strength, and form for the *AU Base Medication* profile.",
      "exampleCanonical" : "http://hl7.org.au/fhir/StructureDefinition/au-medication"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Medication"
      }],
      "reference" : {
        "reference" : "Medication/TwoActiveIngredientsProduct0"
      },
      "name" : "Medication - with two active ingredients product",
      "description" : "Shows an example of a medication with two active ingredients, perindopril arginine (10 mg) and amlodipine (10 mg), defined as a tablet for the *AU Base Medication* profile.",
      "exampleCanonical" : "http://hl7.org.au/fhir/StructureDefinition/au-medication"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Medication"
      }],
      "reference" : {
        "reference" : "Medication/FourOrMoreActiveIngredientsProduct0"
      },
      "name" : "Medication - with four or more active ingredients",
      "description" : "Shows an example of a branded medication, Stribild, containing four active ingredients and defined as a tablet for the *AU Base Medication* profile.",
      "exampleCanonical" : "http://hl7.org.au/fhir/StructureDefinition/au-medication"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Medication"
      }],
      "reference" : {
        "reference" : "Medication/BrandProductwithBatchDetails0"
      },
      "name" : "Medication - Branded Pack with Batch Details",
      "description" : "Shows an example of a branded medication, Norvasc, containing the active ingredient amlodipine (10 mg) as a tablet, with batch details including lot number and expiration date, for the *AU Base Medication* profile",
      "exampleCanonical" : "http://hl7.org.au/fhir/StructureDefinition/au-medication"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Medication"
      }],
      "reference" : {
        "reference" : "Medication/StrengthExtension0"
      },
      "name" : "Medication - with Generic Name and Medication Strength Extensions",
      "description" : "Shows an example of a medication, Panadeine, as a caplet, with the generic name and medication strength specified in extensions, for the *AU Base Medication* profile",
      "exampleCanonical" : "http://hl7.org.au/fhir/StructureDefinition/au-medication"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Medication"
      }],
      "reference" : {
        "reference" : "Medication/StrengthExtension1"
      },
      "name" : "Medication - with Medication Strength Extension",
      "description" : "Shows an example of a medication, Zolgensma, as a solution for infusion, with the medication strength specified in an extension, for the *AU Base Medication* profile",
      "exampleCanonical" : "http://hl7.org.au/fhir/StructureDefinition/au-medication"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Medication"
      }],
      "reference" : {
        "reference" : "Medication/IngredientStrengthExtension0"
      },
      "name" : "Medication - with backported R5 Ingredient Strength Element",
      "description" : "Shows an example of a medication, Tadim, containing the ingredient colistimethate (1 Million IU) as a powder, with ingredient strength specified using the preadopted R5 element strengthCodeableConcept, for the *AU Base Medication* profile",
      "exampleCanonical" : "http://hl7.org.au/fhir/StructureDefinition/au-medication"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Composition"
      }],
      "reference" : {
        "reference" : "Composition/multiple-information-recipients"
      },
      "name" : "Composition - with multiple information recipients",
      "description" : "Shows an example of a composition with multiple information recipients for the *AU Base Composition* profile. Patient: Stella Franklin.",
      "exampleCanonical" : "http://hl7.org.au/fhir/StructureDefinition/au-composition"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Composition"
      }],
      "reference" : {
        "reference" : "Composition/different-authors"
      },
      "name" : "​Composition - with some sections having a different section author to the composition author",
      "description" : "Shows an example of a composition with sections authored by different individuals for the *AU Base Composition* profile. Patient: Stella Franklin.",
      "exampleCanonical" : "http://hl7.org.au/fhir/StructureDefinition/au-composition"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Composition"
      }],
      "reference" : {
        "reference" : "Composition/example0"
      },
      "name" : "Composition - Patient’s preference upon death",
      "description" : "Shows an example of a composition representing patient goals, preferences, and priorities upon death, including a related person as the author and attester, for the *AU Base Composition* profile. Patient: Stella Franklin.",
      "exampleCanonical" : "http://hl7.org.au/fhir/StructureDefinition/au-composition"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationStatement"
      }],
      "reference" : {
        "reference" : "MedicationStatement/example0"
      },
      "name" : "MedicationStatement - of a record of a patient's use of medication",
      "description" : "Shows an example of a medication statement for the *AU Base MedicationStatement* profile, representing a patient's active use of a branded medication with specific timing and dosage details. Patient: Stella Franklin.",
      "exampleCanonical" : "http://hl7.org.au/fhir/StructureDefinition/au-medicationstatement"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationStatement"
      }],
      "reference" : {
        "reference" : "MedicationStatement/example1"
      },
      "name" : "MedicationStatement - of a record of a patient's long-term use of medication",
      "description" : "Shows an example of a medication statement for the *AU Base MedicationStatement* profile, including informative record of a patient's long-term use of medication. Patient: Stella Franklin.",
      "exampleCanonical" : "http://hl7.org.au/fhir/StructureDefinition/au-medicationstatement"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationStatement"
      }],
      "reference" : {
        "reference" : "MedicationStatement/example2"
      },
      "name" : "MedicationStatement - Practitioner reports patient has taken Diflucan in the past but is not taking it any more",
      "description" : "Shows an example of a medication statement for the *AU Base MedicationStatement* profile, representing a practitioner reporting that the patient has taken Diflucan in the past but is not taking it anymore. Patient: Stella Franklin.",
      "exampleCanonical" : "http://hl7.org.au/fhir/StructureDefinition/au-medicationstatement"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationRequest"
      }],
      "reference" : {
        "reference" : "MedicationRequest/example0"
      },
      "name" : "MedicationRequest - a prescription for codeine with paracetamol",
      "description" : "Shows an example of a medication request for the *AU Base MedicationRequest* profile, representing a practitioner's order for a patient to take paracetamol 500 mg + codeine phosphate hemihydrate 30 mg tablets for pain management. Patient: Stella Franklin.",
      "exampleCanonical" : "http://hl7.org.au/fhir/StructureDefinition/au-medicationrequest"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationRequest"
      }],
      "reference" : {
        "reference" : "MedicationRequest/example1"
      },
      "name" : "MedicationRequest - a prescription for Stribild tablet",
      "description" : "Shows an example of a medication request for the *AU Base MedicationRequest* profile, representing a practitioner's order for a patient to take Stribild daily for human immunodeficiency virus (HIV) infection, with all repeats supplied concurrently for overseas travel. Patient: Stella Franklin.",
      "exampleCanonical" : "http://hl7.org.au/fhir/StructureDefinition/au-medicationrequest"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationRequest"
      }],
      "reference" : {
        "reference" : "MedicationRequest/example2"
      },
      "name" : "MedicationRequest - Prescription with brand and generic name extensions",
      "description" : "Shows an example of a medication request for the *AU Base MedicationRequest* profile, representing a practitioner's order for the patient to take Reaptan for pain management, with detailed dosage instructions and dispensing information. Patient: Stella Franklin.",
      "exampleCanonical" : "http://hl7.org.au/fhir/StructureDefinition/au-medicationrequest"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Encounter"
      }],
      "reference" : {
        "reference" : "Encounter/example0"
      },
      "name" : "Encounter - with description",
      "description" : "Shows an example of an encounter with an encounter description for the *AU Base Encounter* profile.",
      "exampleCanonical" : "http://hl7.org.au/fhir/StructureDefinition/au-encounter"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Encounter"
      }],
      "reference" : {
        "reference" : "Encounter/example1"
      },
      "name" : "Encounter - Annual check up",
      "description" : "Shows an example of an encounter for the *AU Base Encounter* profile, representing an annual check up encounter for [Observation-healthprogramparticipation-example0](https://build.fhir.org/ig/hl7au/au-fhir-base/Observation-healthprogramparticipation-example0.html). Patient: Suzanne Simmons.",
      "exampleCanonical" : "http://hl7.org.au/fhir/StructureDefinition/au-encounter"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "List"
      }],
      "reference" : {
        "reference" : "List/example0"
      },
      "name" : "List - Medicine list with referenced entries",
      "description" : "Shows an example of a medication list for the *AU Medicine List* profile, representing a snapshot of a patient's current medications. Patient: Stella Franklin.",
      "exampleCanonical" : "http://hl7.org.au/fhir/StructureDefinition/au-medlist"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "List"
      }],
      "reference" : {
        "reference" : "List/example1"
      },
      "name" : "List - Medicine list with no known current medicine",
      "description" : "Shows an example of a medication list with no current medications for the *AU Medicine List* profile. Patient: Stella Franklin.",
      "exampleCanonical" : "http://hl7.org.au/fhir/StructureDefinition/au-medlist"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Bundle"
      }],
      "reference" : {
        "reference" : "Bundle/example0"
      },
      "name" : "Bundle - Medicine list in a bundle",
      "description" : "Shows an example of a FHIR Bundle containing resources related to the *AU Medicine List* profile. Patient: Nicholas Jones.",
      "exampleCanonical" : "http://hl7.org.au/fhir/StructureDefinition/au-medlist"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "List"
      }],
      "reference" : {
        "reference" : "List/example2"
      },
      "name" : "List - Medicine list with changes",
      "description" : "Shows an example of a medication list for the *AU Medicine List* profile, representing a snapshot of a patient's current, amended, and ceased medications. Patient: David Goodpatient.",
      "exampleCanonical" : "http://hl7.org.au/fhir/StructureDefinition/au-medlist"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "List"
      }],
      "reference" : {
        "reference" : "List/example3"
      },
      "name" : "List - Medicine list authored by a related person",
      "description" : "Shows an example of a medication list authored by a related person for the *AU Medicine List* profile. Patient: Suzanne Simmons",
      "exampleCanonical" : "http://hl7.org.au/fhir/StructureDefinition/au-medlist"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/au-diagnosticrequest"
      },
      "name" : "AU Base Diagnostic Request",
      "description" : "This profile defines a service request structure to represent a request for a diagnostic investigation in an Australian context. This profile is intended to support ordering for pathology, radiology, and specialist diagnostic investigations.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/au-servicerequest"
      },
      "name" : "AU Base ServiceRequest",
      "description" : "This profile defines a service request structure that localises core concepts, including terminology, for use in an Australian context. The purpose of this profile is to provide national level agreement on core localised concepts. This profile does not force conformance to core localised concepts. It enables implementers and modellers to make their own rules, i.e. [profiling](http://hl7.org/fhir/profiling.html), about how to support these concepts for specific implementation needs.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/date-of-arrival"
      },
      "name" : "Date of Arrival in Australia",
      "description" : "This extension applies to the Patient, RelatedPerson, and Practitioner resources and is used to represent a person's date of arrival in an Australian context (see [Australian Bureau of Statistics](https://www.abs.gov.au/AUSSTATS/abs@.nsf/Lookup/1200.0.55.007Main+Features12014,%20Version%201.5?OpenDocument) for further information). The date of arrival is when a person (born outside of Australia) first arrived in Australia, from another country, with the intention of living in Australia for one year or more. This date is recorded once for a person and is not subsequently updated with subsequent arrivals. This element is a part of Cultural and Linguistic Diversity (CALD) data set. It is an important indicator of cultural identity, and provides further information about a person's cultural values and practices which can be significant in determining service type, support required, and possible needs.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:complex-type"
      }],
      "reference" : {
        "reference" : "StructureDefinition/au-localorderidentifier"
      },
      "name" : "AU Local Order Identifier",
      "description" : "This identifier profile defines a local order identifier in an Australian context. A local order identifier is an organisation's identifier for an order in that organisation's local system set of orders.\n\nTypically a local order identifier will be either a [placer identifier](https://confluence.hl7australia.com/display/OOADRM20181/5+Observation+Ordering#id-5ObservationOrdering-5.4.1.2ORC-2Placerordernumber(EI)00216) or a [filler identifier](https://confluence.hl7australia.com/display/OOADRM20181/5+Observation+Ordering#id-5ObservationOrdering-5.4.1.3ORC-3Fillerordernumber(EI)00217) (sometimes known as filler order number). A placer identifier is an identifier for a request or group of requests where the identifier is issued by the entity making the request. A filler identifier is an identifier for a request or group of requests where the identifier is issued by the entity that produces the observations or fulfills the request.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:complex-type"
      }],
      "reference" : {
        "reference" : "StructureDefinition/au-localreportidentifier"
      },
      "name" : "AU Local Report Identifier",
      "description" : "This identifier profile defines a local report identifier in an Australian context. A local report identifier is an organisation's identifier for a report in that organisation's local system set of reports. A report identifier must uniquely identify the report from all other reports in a particular system (e.g. diagnostic imaging system, clinical laboratory system, document management system, referral systems). In some laboratory systems, the report identifier may be a concatenation of a lab number and report panel code (e.g. 19P123456-FBC), where the panel code makes the identifier unique from other reports under the same lab number.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:complex-type"
      }],
      "reference" : {
        "reference" : "StructureDefinition/au-accessionnumber"
      },
      "name" : "AU Accession Number",
      "description" : "This identifier profile defines an accession number in an Australian context. Accession numbers are typically assigned by a diagnostic imaging system or clinical laboratory system and depending on the domain an accession number may for example identify a specimen, imaging examination, or biological polymer sequence.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationDispense"
      }],
      "reference" : {
        "reference" : "MedicationDispense/example0"
      },
      "name" : "MedicationDispense - First dispense for Reaptan",
      "description" : "Shows an example of a medication dispense for the *AU Base MedicationDispense* profile, representing the first dispensing of Reaptan 10 mg/10 mg (perindopril arginine/amlodipine) tablets. Patient: Stella Franklin.",
      "exampleCanonical" : "http://hl7.org.au/fhir/StructureDefinition/au-medicationdispense"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:complex-type"
      }],
      "reference" : {
        "reference" : "StructureDefinition/au-residentialagedcareserviceidentifier"
      },
      "name" : "AU Residential Aged Care Service Identifier",
      "description" : "This identifier profile defines a residential aged care service identifier (RACS ID) in an Australian context.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "HealthcareService"
      }],
      "reference" : {
        "reference" : "HealthcareService/example4"
      },
      "name" : "HealthcareService - Leafy Grove Home for the Aged",
      "description" : "Shows an example of an aged care residential service, Leafy Grove Home for the Aged, for the *AU Base HealthcareService* profile.",
      "exampleCanonical" : "http://hl7.org.au/fhir/StructureDefinition/au-healthcareservice"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "HealthcareService"
      }],
      "reference" : {
        "reference" : "HealthcareService/example5"
      },
      "name" : "HealthcareService - Honourable Mark's Home For Aged Men",
      "description" : "Shows an example of an aged care residential service, Honourable Mark's Home For Aged Men, for the *AU Base HealthcareService* profile.",
      "exampleCanonical" : "http://hl7.org.au/fhir/StructureDefinition/au-healthcareservice"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Location"
      }],
      "reference" : {
        "reference" : "Location/example8"
      },
      "name" : "Location - Leafy Grove Home for the Aged",
      "description" : "Shows an example of a location for the *AU Base Location* profile, representing a nursing home 'Leafy Grove Home for the Aged' as a location.",
      "exampleCanonical" : "http://hl7.org.au/fhir/StructureDefinition/au-location"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Location"
      }],
      "reference" : {
        "reference" : "Location/example9"
      },
      "name" : "Location - Leafy Grove Home for the Not Very Aged",
      "description" : "Shows an example of a location for the *AU Base Location* profile, representing a nursing home 'Honourable Mark's Home For Aged Men' as a location.",
      "exampleCanonical" : "http://hl7.org.au/fhir/StructureDefinition/au-location"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationDispense"
      }],
      "reference" : {
        "reference" : "MedicationDispense/example1"
      },
      "name" : "MedicationDispense - Second dispense for Reaptan",
      "description" : "Shows an example of a medication dispense for the *AU Base MedicationDispense* profile, representing the second dispensing of Reaptan 10 mg/10 mg (perindopril arginine/amlodipine) tablets. Patient: Stella Franklin.",
      "exampleCanonical" : "http://hl7.org.au/fhir/StructureDefinition/au-medicationdispense"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Organization"
      }],
      "reference" : {
        "reference" : "Organization/example5"
      },
      "name" : "Organization - The Corporation of the Council of the Ward of Nundah",
      "description" : "Shows an example of a religious institution, The Corporation of the Synod of the Diocese of Nundah, for the *AU Base Organization* profile, with an ABN, address and contact details.",
      "exampleCanonical" : "http://hl7.org.au/fhir/StructureDefinition/au-organization"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Substance"
      }],
      "reference" : {
        "reference" : "Substance/example0"
      },
      "name" : "Substance - body substance of epiglottic mucus",
      "description" : "Shows an example for a body substance of epiglottic mucus for the AU Base Substance profile.",
      "exampleCanonical" : "http://hl7.org.au/fhir/StructureDefinition/au-substance"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Substance"
      }],
      "reference" : {
        "reference" : "Substance/example1"
      },
      "name" : "Substance - peanuts as an allergen",
      "description" : "Shows an example for an allergen substance of peanuts for the *AU Base Substance* profile.",
      "exampleCanonical" : "http://hl7.org.au/fhir/StructureDefinition/au-substance"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationAdministration"
      }],
      "reference" : {
        "reference" : "MedicationAdministration/example0"
      },
      "name" : "MedicationAdministration - Administration of Chlorsig eye drops",
      "description" : "Shows an example of administration of Chlorsig to a patient for the *AU Base MedicationAdministration* profile, administered by a related person. Patient: Harry Dan.",
      "exampleCanonical" : "http://hl7.org.au/fhir/StructureDefinition/au-medicationadministration"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationAdministration"
      }],
      "reference" : {
        "reference" : "MedicationAdministration/example1"
      },
      "name" : "MedicationAdministration - Self-administration of lantus 100 units/mL injection",
      "description" : "Shows an example of a medication administration that is a self-administration of lantus 100 units/mL injection for the *AU Base MedicationAdministration* profile. Patient: Sarah Simmons.",
      "exampleCanonical" : "http://hl7.org.au/fhir/StructureDefinition/au-medicationadministration"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Procedure"
      }],
      "reference" : {
        "reference" : "Procedure/example0"
      },
      "name" : "Procedure - Cryotherapy",
      "description" : "Shows an example of a completed cryotherapy procedure for the *AU Base Procedure* profile. Patient: William Rigny.",
      "exampleCanonical" : "http://hl7.org.au/fhir/StructureDefinition/au-procedure"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Procedure"
      }],
      "reference" : {
        "reference" : "Procedure/example1"
      },
      "name" : "Procedure - Cardiac catheterisation",
      "description" : "Shows an example of a completed cardiac catheterisation procedure for the *AU Base Procedure* profile. Patient: Harry Dan.",
      "exampleCanonical" : "http://hl7.org.au/fhir/StructureDefinition/au-procedure"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Procedure"
      }],
      "reference" : {
        "reference" : "Procedure/example2"
      },
      "name" : "Procedure - Stent placement",
      "description" : "Shows an example of a completed procedure for the *AU Base Procedure* profile. Patient: Harry Dan.",
      "exampleCanonical" : "http://hl7.org.au/fhir/StructureDefinition/au-procedure"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Endpoint"
      }],
      "reference" : {
        "reference" : "Endpoint/example1"
      },
      "name" : "Downunder Hospital FHIR API",
      "exampleCanonical" : "http://hl7.org.au/fhir/StructureDefinition/au-endpoint"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:complex-type"
      }],
      "reference" : {
        "reference" : "StructureDefinition/au-hae"
      },
      "name" : "AU HAE",
      "description" : "This identifier profile defines a Health Administration Entity (HAE) identifier in an Australian context (see [Healthcare Identifiers Act 2010 legislative framework reforms Frequently Asked Questions](https://www.health.gov.au/sites/default/files/2025-12/amendments-to-the-healthcare-identifiers-act-2010-frequently-asked-questions.pdf), the current version of [Health Identifiers Act 2010](https://www.legislation.gov.au/C2010A00072/latest/text), and [Australian Digital Health Agency: Healthcare Identifiers (HI) Service](https://developer.digitalhealth.gov.au/resources/services/healthcare-identifiers-service-hi) for further information). An HAE is assigned under the HI Service to organisations that provide administrative support for health services and programs without delivering direct clinical care, for example a Primary Health Network."
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:complex-type"
      }],
      "reference" : {
        "reference" : "StructureDefinition/au-hspo"
      },
      "name" : "AU HSP-O",
      "description" : "This identifier profile defines a Healthcare Support Service Provider - Organisation (HSP-O) identifier in an Australian context (see [Healthcare Identifiers Act 2010 legislative framework reforms Frequently Asked Questions](https://www.health.gov.au/sites/default/files/2025-12/amendments-to-the-healthcare-identifiers-act-2010-frequently-asked-questions.pdf), the current version of [Health Identifiers Act 2010](https://www.legislation.gov.au/C2010A00072/latest/text), and [Australian Digital Health Agency: Healthcare Identifiers (HI) Service](https://developer.digitalhealth.gov.au/resources/services/healthcare-identifiers-service-hi) for further information). An HSP-O is assigned under the HI Service to an organisation that does not directly provide healthcare services but provides care and support services, such as in-home care support and personal care services."
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      }],
      "reference" : {
        "reference" : "SearchParameter/servicerequest-supporting-info"
      },
      "name" : "ServiceRequestSupportingInfo",
      "description" : "This search parameter returns service requests that reference the specified resource in ServiceRequest.supportingInfo."
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/au-coverage-type-extended"
      },
      "name" : "Coverage Type and Self-Pay Codes - AU Extended",
      "description" : "Coverage type codes extended for use in an Australian context. Includes HL7 international codes plus Australian additions to create a complete set."
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/rsg-source"
      },
      "name" : "AU Recorded Sex or Gender (RSG) Source",
      "description" : "The AU Recorded Sex or Gender (RSG) Source value set includes codes that can be used to represent the non-document source where the sex or gender value is recorded."
    }],
    "page" : {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status",
        "valueCode" : "informative"
      },
      {
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
        "valueUrl" : "toc.html"
      }],
      "nameUrl" : "toc.html",
      "title" : "Table of Contents",
      "generation" : "html",
      "page" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status",
          "valueCode" : "informative"
        },
        {
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "index.html"
        }],
        "nameUrl" : "index.html",
        "title" : "Home",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status",
          "valueCode" : "informative"
        },
        {
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "guidance.html"
        }],
        "nameUrl" : "guidance.html",
        "title" : "Guidance",
        "generation" : "markdown",
        "page" : [{
          "extension" : [{
            "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status",
            "valueCode" : "informative"
          },
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "generalguidance.html"
          }],
          "nameUrl" : "generalguidance.html",
          "title" : "General Guidance",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status",
            "valueCode" : "informative"
          },
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "sexgender.html"
          }],
          "nameUrl" : "sexgender.html",
          "title" : "Sex and Gender",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status",
            "valueCode" : "informative"
          },
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "relationship.html"
          }],
          "nameUrl" : "relationship.html",
          "title" : "Relationship with other IGs",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status",
            "valueCode" : "informative"
          },
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "future.html"
          }],
          "nameUrl" : "future.html",
          "title" : "Future of AU Base",
          "generation" : "markdown"
        }]
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status",
          "valueCode" : "informative"
        },
        {
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "fhirartefacts.html"
        }],
        "nameUrl" : "fhirartefacts.html",
        "title" : "FHIR Artefacts",
        "generation" : "markdown",
        "page" : [{
          "extension" : [{
            "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status",
            "valueCode" : "informative"
          },
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "artifacts.html"
          }],
          "nameUrl" : "artifacts.html",
          "title" : "Artefacts Summary",
          "generation" : "html"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status",
            "valueCode" : "informative"
          },
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "profiles-and-extensions.html"
          }],
          "nameUrl" : "profiles-and-extensions.html",
          "title" : "Profiles and Extensions",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status",
            "valueCode" : "informative"
          },
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "search-parameters.html"
          }],
          "nameUrl" : "search-parameters.html",
          "title" : "Search Parameters",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status",
            "valueCode" : "informative"
          },
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "terminology.html"
          }],
          "nameUrl" : "terminology.html",
          "title" : "Terminology",
          "generation" : "markdown"
        }]
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status",
          "valueCode" : "informative"
        },
        {
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "examples.html"
        }],
        "nameUrl" : "examples.html",
        "title" : "Examples",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status",
          "valueCode" : "informative"
        },
        {
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "support.html"
        }],
        "nameUrl" : "support.html",
        "title" : "Support",
        "generation" : "markdown",
        "page" : [{
          "extension" : [{
            "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status",
            "valueCode" : "informative"
          },
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "downloads.html"
          }],
          "nameUrl" : "downloads.html",
          "title" : "Downloads",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status",
            "valueCode" : "informative"
          },
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "license.html"
          }],
          "nameUrl" : "license.html",
          "title" : "License and Legal",
          "generation" : "markdown"
        }]
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status",
          "valueCode" : "informative"
        },
        {
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "changes.html"
        }],
        "nameUrl" : "changes.html",
        "title" : "Change Log",
        "generation" : "markdown"
      }]
    },
    "parameter" : [{
      "code" : "path-resource",
      "value" : "input/resources"
    },
    {
      "code" : "path-resource",
      "value" : "input/capabilities"
    },
    {
      "code" : "path-resource",
      "value" : "input/examples"
    },
    {
      "code" : "path-resource",
      "value" : "input/extensions"
    },
    {
      "code" : "path-resource",
      "value" : "input/models"
    },
    {
      "code" : "path-resource",
      "value" : "input/operations"
    },
    {
      "code" : "path-resource",
      "value" : "input/profiles"
    },
    {
      "code" : "path-resource",
      "value" : "input/vocabulary"
    },
    {
      "code" : "path-resource",
      "value" : "input/testing"
    },
    {
      "code" : "path-resource",
      "value" : "input/history"
    },
    {
      "code" : "path-resource",
      "value" : "fsh-generated/resources"
    },
    {
      "code" : "path-pages",
      "value" : "template/config"
    },
    {
      "code" : "path-pages",
      "value" : "input/images"
    },
    {
      "code" : "path-tx-cache",
      "value" : "input-cache/txcache"
    }]
  }
}

```
