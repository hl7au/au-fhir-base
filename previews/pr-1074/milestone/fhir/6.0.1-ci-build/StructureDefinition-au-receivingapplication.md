# HL7 V2 Receiving Application - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **HL7 V2 Receiving Application**

## Extension: HL7 V2 Receiving Application 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://hl7.org.au/fhir/StructureDefinition/au-receivingapplication | *Version*:6.0.1-ci-build | |
| * Standards status: *[Trial-use](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](generalguidance.md#maturity-levels): 3 | *Computable Name*:HL7V2ReceivingApplication |
| **Copyright/Legal**: HL7 Australia© 2018+; Licensed Under Creative Commons No Rights Reserved. | | |

This extension applies to the Endpoint resource and is used to represent routing HL7 V2 message payload details associated with an endpoint. This content allows a sender using these endpoint details to include Receiving Application (MSH-5) information in HL7 V2 messages sent via this channel which allow correct delivery within the receiving system.

**Context of Use**

### Usage Notes

**Usage info**

**Usages:**

* Examples for this Extension: [Telstra Health Secure Messaging Endpoint](Endpoint-example0.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.au.base|current/StructureDefinition/StructureDefinition-au-receivingapplication.json)

**Changes since version 6.0.0:**

* No changes

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-au-receivingapplication.csv), [Excel](StructureDefinition-au-receivingapplication.xlsx), [Schematron](StructureDefinition-au-receivingapplication.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "au-receivingapplication",
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
  "url" : "http://hl7.org.au/fhir/StructureDefinition/au-receivingapplication",
  "version" : "6.0.1-ci-build",
  "name" : "HL7V2ReceivingApplication",
  "title" : "HL7 V2 Receiving Application",
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
  "description" : "This extension applies to the Endpoint resource and is used to represent routing HL7 V2 message payload details associated with an endpoint. This content allows a sender using these endpoint details to include Receiving Application (MSH-5) information in HL7 V2 messages sent via this channel which allow correct delivery within the receiving system.",
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
    "expression" : "Endpoint"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "HL7 V2 receiving application",
      "definition" : "Values for routing HL7 V2 message payloads associated with an endpoint. Suitable for MSH-5."
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
      "fixedUri" : "http://hl7.org.au/fhir/StructureDefinition/au-receivingapplication"
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
