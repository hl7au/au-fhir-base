# Australian Indigenous Status - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **Australian Indigenous Status**

## Extension: Australian Indigenous Status 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://hl7.org.au/fhir/StructureDefinition/indigenous-status | *Version*:6.0.1-ci-build | |
| * Standards status: *[Trial-use](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](generalguidance.md#maturity-levels): 4 | *Computable Name*:AustralianIndigenousStatus |
| **Copyright/Legal**: HL7 Australia© 2018+; Licensed Under Creative Commons No Rights Reserved. | | |

This extension applies to the Patient, Person, and RelatedPerson resources and is used to indicate whether a person identifies as being of Aboriginal or Torres Strait Islander origin.

**Context of Use**

### Usage Notes

**Usage info**

**Usages:**

* Use this Extension: [AU Base Patient](StructureDefinition-au-patient.md)
* Examples for this Extension: [Bundle/example0](Bundle-example0.md), [List/example2](List-example2.md), [Patient/example0](Patient-example0.md), [Patient/example1](Patient-example1.md)... Show 3 more, [Patient/example2](Patient-example2.md), [Patient/example6](Patient-example6.md) and [Patient/example8](Patient-example8.md)
* Search Parameters using this Extension: [AustralianIndigenousStatus](SearchParameter-indigenous-status.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.au.base|current/StructureDefinition/StructureDefinition-indigenous-status.json)

**Changes since version 6.0.0:**

* No changes

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-indigenous-status.csv), [Excel](StructureDefinition-indigenous-status.xlsx), [Schematron](StructureDefinition-indigenous-status.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "indigenous-status",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm",
    "valueInteger" : 4
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
  "url" : "http://hl7.org.au/fhir/StructureDefinition/indigenous-status",
  "version" : "6.0.1-ci-build",
  "name" : "AustralianIndigenousStatus",
  "title" : "Australian Indigenous Status",
  "status" : "active",
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
  "description" : "This extension applies to the Patient, Person, and RelatedPerson resources and is used to indicate whether a person identifies as being of Aboriginal or Torres Strait Islander origin.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "AU"
    }]
  }],
  "copyright" : "HL7 Australia© 2018+; Licensed Under Creative Commons No Rights Reserved.",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "Patient"
  },
  {
    "type" : "element",
    "expression" : "RelatedPerson"
  },
  {
    "type" : "element",
    "expression" : "Person"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Indigenous status",
      "definition" : "National Health Data Dictionary (NHDD) based indigenous status for a person.",
      "comment" : "This concept is equivalent to Australian Institute of Health and Welfare data element 602543 [Person—Indigenous status, code N](https://meteor.aihw.gov.au/content/index.phtml/itemId/602543).",
      "max" : "1"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://hl7.org.au/fhir/StructureDefinition/indigenous-status"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "short" : "Indigenous status",
      "definition" : "NHDD based indigenous status code.",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://healthterminologies.gov.au/fhir/ValueSet/australian-indigenous-status-1"
      }
    }]
  }
}

```
