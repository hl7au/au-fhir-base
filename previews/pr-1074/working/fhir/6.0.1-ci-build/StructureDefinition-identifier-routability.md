# Identifier Routability - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **Identifier Routability**

## Extension: Identifier Routability 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://hl7.org.au/fhir/StructureDefinition/identifier-routability | *Version*:6.0.1-ci-build | |
| * Standards status: *[Trial-use](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](generalguidance.md#maturity-levels): 2 | *Computable Name*:IdentifierRoutability |
| **Copyright/Legal**: HL7 Australia© 2018+; Licensed Under Creative Commons No Rights Reserved. | | |

This extension applies to the [Identifier](http://hl7.org/fhir/datatypes.html#identifier) data type. Identifier routability preferences for an asserter.

**Context of Use**

### Usage Notes

**Usage info**

**Usages:**

* This Extension is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.au.base|current/StructureDefinition/StructureDefinition-identifier-routability.json)

**Changes since version 6.0.0:**

* No changes

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-identifier-routability.csv), [Excel](StructureDefinition-identifier-routability.xlsx), [Schematron](StructureDefinition-identifier-routability.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "identifier-routability",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm",
    "valueInteger" : 2
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
  "url" : "http://hl7.org.au/fhir/StructureDefinition/identifier-routability",
  "version" : "6.0.1-ci-build",
  "name" : "IdentifierRoutability",
  "title" : "Identifier Routability",
  "status" : "active",
  "date" : "2026-06-19T03:25:57+00:00",
  "publisher" : "HL7 Australia",
  "contact" : [{
    "name" : "HL7 Australia FHIR Working Group",
    "telecom" : [{
      "system" : "url",
      "value" : "https://confluence.hl7.org/display/HAFWG",
      "use" : "work"
    }]
  }],
  "description" : "This extension applies to the [Identifier](http://hl7.org/fhir/datatypes.html#identifier) data type. Identifier routability preferences for an asserter.",
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
      "short" : "Identifier routability",
      "definition" : "Asserted routing preferences for the associated identifier.",
      "max" : "1",
      "constraint" : [{
        "key" : "inv-idrout-0",
        "severity" : "error",
        "human" : "preference is required when flag is true",
        "expression" : "extension.where(url='routability-flag').value.single()=true implies extension.where(url='routability-preference').exists()",
        "source" : "http://hl7.org.au/fhir/StructureDefinition/identifier-routability"
      }]
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "rules" : "open"
      },
      "min" : 2
    },
    {
      "id" : "Extension.extension:routability-flag",
      "path" : "Extension.extension",
      "sliceName" : "routability-flag",
      "short" : "Indicates asserter can route associated identifier",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:routability-flag.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "routability-flag"
    },
    {
      "id" : "Extension.extension:routability-flag.value[x]",
      "path" : "Extension.extension.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "boolean"
      }],
      "condition" : ["inv-routability-preference"]
    },
    {
      "id" : "Extension.extension:routability-preference",
      "path" : "Extension.extension",
      "sliceName" : "routability-preference",
      "short" : "Indicates the asserter's preference for selection of this identifier for routing",
      "definition" : "Lower value is higher preference.  0 is highest priority.",
      "max" : "1"
    },
    {
      "id" : "Extension.extension:routability-preference.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "routability-preference"
    },
    {
      "id" : "Extension.extension:routability-preference.value[x]",
      "path" : "Extension.extension.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "unsignedInt"
      }],
      "condition" : ["inv-routability-preference"]
    },
    {
      "id" : "Extension.extension:routability-asserter",
      "path" : "Extension.extension",
      "sliceName" : "routability-asserter",
      "short" : "Identifies asserter",
      "min" : 1
    },
    {
      "id" : "Extension.extension:routability-asserter.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "routability-asserter"
    },
    {
      "id" : "Extension.extension:routability-asserter.value[x]",
      "path" : "Extension.extension.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "uri"
      }]
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://hl7.org.au/fhir/StructureDefinition/identifier-routability"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "max" : "0"
    }]
  }
}

```
