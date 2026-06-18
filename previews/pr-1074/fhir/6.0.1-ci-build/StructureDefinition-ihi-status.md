# IHI Status - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **IHI Status**

## Extension: IHI Status 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://hl7.org.au/fhir/StructureDefinition/ihi-status | *Version*:6.0.1-ci-build | |
| * Standards status: *[Trial-use](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](generalguidance.md#maturity-levels): 3 | *Computable Name*:IHIStatus |
| **Copyright/Legal**: HL7 Australia© 2018+; Licensed Under Creative Commons No Rights Reserved. | | |

This extension applies to the [Identifier](http://hl7.org/fhir/datatypes.html#identifier) data type and is used to represent the status of the associated Individual Healthcare Identifier (IHI) and indicates whether the status of the IHI is active or otherwise.

**Context of Use**

### Usage Notes

**Usage info**

**Usages:**

* Use this Extension: [AU IHI](StructureDefinition-au-ihi.md)
* Examples for this Extension: [Bundle/example0](Bundle-example0.md), [Patient/example0](Patient-example0.md), [Patient/example1](Patient-example1.md) and [Patient/example8](Patient-example8.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.au.base|current/StructureDefinition/StructureDefinition-ihi-status.json)

**Changes since version 6.0.0:**

* No changes

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ihi-status.csv), [Excel](StructureDefinition-ihi-status.xlsx), [Schematron](StructureDefinition-ihi-status.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ihi-status",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm",
    "valueInteger" : 3
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
  "url" : "http://hl7.org.au/fhir/StructureDefinition/ihi-status",
  "version" : "6.0.1-ci-build",
  "name" : "IHIStatus",
  "title" : "IHI Status",
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
  "description" : "This extension applies to the [Identifier](http://hl7.org/fhir/datatypes.html#identifier) data type and is used to represent the status of the associated Individual Healthcare Identifier (IHI) and indicates whether the status of the IHI is active or otherwise.",
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
    "expression" : "Identifier"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "IHI status",
      "definition" : "IHI number status associated with an IHI identifier.",
      "max" : "1"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://hl7.org.au/fhir/StructureDefinition/ihi-status"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "short" : "IHI number status",
      "definition" : "IHI number status associated with an IHI identifier.",
      "comment" : "This concept is equivalent to Australian Institute of Health and Welfare data element 743466 [Identifier—identifier status, Individual Healthcare Identifier number status code N](https://meteor.aihw.gov.au/content/index.phtml/itemId/743466).",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://healthterminologies.gov.au/fhir/ValueSet/ihi-status-1"
      }
    }]
  }
}

```
