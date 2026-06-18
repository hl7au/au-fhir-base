# AU Delivery Point Identifier - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **AU Delivery Point Identifier**

## Data Type Profile: AU Delivery Point Identifier 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://hl7.org.au/fhir/StructureDefinition/au-deliverypointidentifier | *Version*:6.0.1-ci-build | |
| * Standards status: *[Trial-use](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](generalguidance.md#maturity-levels): 2 | *Computable Name*:AUDeliveryPointIdentifier |
| **Copyright/Legal**: HL7 Australia© 2018+; Licensed Under Creative Commons No Rights Reserved. | | |

 
This identifier profile defines an Australia Post Delivery Point Identifier (DPID) in an Australian context (see [Australia Post](https://auspost.com.au/content/dam/auspost_corp/media/documents/australia-post-data-guide.pdf) for further information). A DPID is a randomly generated, unique 8-digit number, allocated by Australia Post to an address. A DPID enables each delivery point in Australia to be uniquely identified. 

### Usage Notes

**Usages:**

* Use this DataType Profile: [Australian Address](StructureDefinition-au-address.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.au.base|current/StructureDefinition/StructureDefinition-au-deliverypointidentifier.json)

**Changes since version 6.0.0:**

* No changes

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-au-deliverypointidentifier.csv), [Excel](StructureDefinition-au-deliverypointidentifier.xlsx), [Schematron](StructureDefinition-au-deliverypointidentifier.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "au-deliverypointidentifier",
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
  "url" : "http://hl7.org.au/fhir/StructureDefinition/au-deliverypointidentifier",
  "version" : "6.0.1-ci-build",
  "name" : "AUDeliveryPointIdentifier",
  "title" : "AU Delivery Point Identifier",
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
  "description" : "This identifier profile defines an Australia Post Delivery Point Identifier (DPID) in an Australian context (see [Australia Post](https://auspost.com.au/content/dam/auspost_corp/media/documents/australia-post-data-guide.pdf) for further information). A DPID is a randomly generated, unique 8-digit number, allocated by Australia Post to an address. A DPID enables each delivery point in Australia to be uniquely identified.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "AU"
    }]
  }],
  "copyright" : "HL7 Australia© 2018+; Licensed Under Creative Commons No Rights Reserved.",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
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
    "identity" : "servd",
    "uri" : "http://www.omg.org/spec/ServD/1.0/",
    "name" : "ServD"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "type" : "Identifier",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Identifier",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Identifier",
      "path" : "Identifier",
      "short" : "Australia Post Delivery Point Identifier (DPID)",
      "definition" : "Australia Post Delivery Point Identifier (DPID) allocated to a location address. A DPID enables each delivery point in Australia to be uniquely identified.",
      "constraint" : [{
        "key" : "inv-dpid-0",
        "severity" : "error",
        "human" : "DPID shall be 8 digits",
        "expression" : "value.matches('^([0-9]{8})$')"
      }]
    },
    {
      "id" : "Identifier.type",
      "path" : "Identifier.type",
      "short" : "Coded identifier type for DPID",
      "min" : 1,
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org.au/CodeSystem/v2-0203",
          "code" : "DPID"
        }]
      }
    },
    {
      "id" : "Identifier.system",
      "path" : "Identifier.system",
      "min" : 1,
      "fixedUri" : "http://hl7.org.au/id/dpid"
    },
    {
      "id" : "Identifier.value",
      "path" : "Identifier.value",
      "short" : "DPID",
      "comment" : "This concept is equivalent to Australian Institute of Health and Welfare data element 287218 [Postal delivery point identifier {N(8)}](https://meteor.aihw.gov.au/content/index.phtml/itemId/287218).",
      "min" : 1,
      "example" : [{
        "label" : "DPID",
        "valueString" : "34567890"
      }],
      "condition" : ["inv-dpid-0"]
    }]
  }
}

```
