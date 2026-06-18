# HL7 V2 Assigning Authority - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **HL7 V2 Assigning Authority**

## Extension: HL7 V2 Assigning Authority 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://hl7.org.au/fhir/StructureDefinition/au-assigningauthority | *Version*:6.0.1-ci-build | |
| * Standards status: *[Trial-use](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](generalguidance.md#maturity-levels): 3 | *Computable Name*:HL7V2AssigningAuthority |
| **Copyright/Legal**: HL7 Australia© 2018+; Licensed Under Creative Commons No Rights Reserved. | | |

This extension applies to the [Identifier](http://hl7.org/fhir/datatypes.html#identifier) data type and is used to represent HL7 V2 assigning authority details for HL7 V2 identification for routing.

**Context of Use**

This content provides the values for a sender to use where assigning authority components should be valued in fields in HL7 messages.

Example HL7 V2 fields that will use this are:

* PRD-7 Provider Identifiers (CM)
* PV1-9 Consulting Doctor (XCN)
* OBR-28 Result copies to (XCN)

### Usage Notes

**Usage info**

**Usages:**

* Examples for this Extension: [PractitionerRole/example4](PractitionerRole-example4.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.au.base|current/StructureDefinition/StructureDefinition-au-assigningauthority.json)

**Changes since version 6.0.0:**

* No changes

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-au-assigningauthority.csv), [Excel](StructureDefinition-au-assigningauthority.xlsx), [Schematron](StructureDefinition-au-assigningauthority.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "au-assigningauthority",
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
  "url" : "http://hl7.org.au/fhir/StructureDefinition/au-assigningauthority",
  "version" : "6.0.1-ci-build",
  "name" : "HL7V2AssigningAuthority",
  "title" : "HL7 V2 Assigning Authority",
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
  "description" : "This extension applies to the [Identifier](http://hl7.org/fhir/datatypes.html#identifier) data type and is used to represent HL7 V2 assigning authority details for HL7 V2 identification for routing.",
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
      "short" : "HL7 V2 assigning authority",
      "definition" : "Values for routing HL7 V2 messages, useful for PRD-7 provider identifier"
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
      }
    },
    {
      "id" : "Extension.extension:namespace-id",
      "path" : "Extension.extension",
      "sliceName" : "namespace-id",
      "short" : "Application Identifier",
      "max" : "1"
    },
    {
      "id" : "Extension.extension:namespace-id.url",
      "path" : "Extension.extension.url",
      "type" : [{
        "code" : "uri"
      }],
      "fixedUri" : "namespace-id"
    },
    {
      "id" : "Extension.extension:namespace-id.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "Extension.extension:universal-id",
      "path" : "Extension.extension",
      "sliceName" : "universal-id",
      "short" : "Universal Identifier Value",
      "definition" : "Identifier values following the universal-id-type defined scheme.",
      "max" : "1"
    },
    {
      "id" : "Extension.extension:universal-id.url",
      "path" : "Extension.extension.url",
      "type" : [{
        "code" : "uri"
      }],
      "fixedUri" : "universal-id"
    },
    {
      "id" : "Extension.extension:universal-id.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "Extension.extension:universal-id-type",
      "path" : "Extension.extension",
      "sliceName" : "universal-id-type",
      "short" : "Type scheme of universal-id",
      "definition" : "Provides scheme to use to interpret the universal-id value .e.g. GUID, ISO etc. see HL7 V2 Table 0301 - Universal ID type.",
      "max" : "1"
    },
    {
      "id" : "Extension.extension:universal-id-type.url",
      "path" : "Extension.extension.url",
      "type" : [{
        "code" : "uri"
      }],
      "fixedUri" : "universal-id-type"
    },
    {
      "id" : "Extension.extension:universal-id-type.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://hl7.org.au/fhir/StructureDefinition/au-assigningauthority"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "min" : 0,
      "max" : "0"
    }]
  }
}

```
