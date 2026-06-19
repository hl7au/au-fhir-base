# AU HPI-O - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **AU HPI-O**

## Data Type Profile: AU HPI-O 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://hl7.org.au/fhir/StructureDefinition/au-hpio | *Version*:6.0.1-ci-build | |
| * Standards status: *[Trial-use](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](generalguidance.md#maturity-levels): 2 | *Computable Name*:AUHPIO |
| **Copyright/Legal**: HL7 Australia© 2018+; Licensed Under Creative Commons No Rights Reserved. | | |

 
This identifier profile defines a Healthcare Provider Identifier – Organisation in an Australian context (see [Australian Digital Health Agency](https://developer.digitalhealth.gov.au/specifications/national-infrastructure/ep-1826-2014/nehta-1163-2010) for further information). An HPI-O is assigned under the HI Service to an organisation (such as a hospital or medical clinic) where healthcare is provided. 

### Usage Notes

**Usages:**

* Use this DataType Profile: [AU Base HealthcareService](StructureDefinition-au-healthcareservice.md) and [AU Base Organization](StructureDefinition-au-organization.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.au.base|current/StructureDefinition/StructureDefinition-au-hpio.json)

**Changes since version 6.0.0:**

* No changes

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-au-hpio.csv), [Excel](StructureDefinition-au-hpio.xlsx), [Schematron](StructureDefinition-au-hpio.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "au-hpio",
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
  "url" : "http://hl7.org.au/fhir/StructureDefinition/au-hpio",
  "version" : "6.0.1-ci-build",
  "name" : "AUHPIO",
  "title" : "AU HPI-O",
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
  "description" : "This identifier profile defines a Healthcare Provider Identifier – Organisation in an Australian context (see [Australian Digital Health Agency](https://developer.digitalhealth.gov.au/specifications/national-infrastructure/ep-1826-2014/nehta-1163-2010) for further information). An HPI-O is assigned under the HI Service to an organisation (such as a hospital or medical clinic) where healthcare is provided.",
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
      "short" : "Healthcare Provider Identifier – Organisation (HPI-O)",
      "definition" : "Healthcare Provider Identifier – Organisation (HPI-O) assigned under the HI Service to an organisation (such as a hospital or medical clinic) where healthcare is provided.",
      "constraint" : [{
        "key" : "inv-hpio-0",
        "severity" : "error",
        "human" : "HPI-O shall be 16 digits",
        "expression" : "value.matches('^([0-9]{16})$')",
        "source" : "http://hl7.org.au/fhir/StructureDefinition/au-hpio"
      },
      {
        "key" : "inv-hpio-1",
        "severity" : "error",
        "human" : "HPI-O prefix shall be 800362",
        "expression" : "value.startsWith('800362')",
        "source" : "http://hl7.org.au/fhir/StructureDefinition/au-hpio"
      },
      {
        "key" : "inv-hpio-2",
        "severity" : "error",
        "human" : "HPI-O shall pass the Luhn algorithm check",
        "expression" : "(((select(value.substring(0,1).toInteger()).select(iif($this<5, $this*2, (($this*2)-9))))+(value.substring(1,1).toInteger())+(select(value.substring(2,1).toInteger()).select(iif($this<5, $this*2, (($this*2)-9))))+(value.substring(3,1).toInteger())+(select(value.substring(4,1).toInteger()).select(iif($this<5, $this*2, (($this*2)-9))))+(value.substring(5,1).toInteger())+(select(value.substring(6,1).toInteger()).select(iif($this<5, $this*2, (($this*2)-9))))+(value.substring(7,1).toInteger())+(select(value.substring(8,1).toInteger()).select(iif($this<5, $this*2, (($this*2)-9))))+(value.substring(9,1).toInteger())+(select(value.substring(10,1).toInteger()).select(iif($this<5, $this*2, (($this*2)-9))))+(value.substring(11,1).toInteger())+(select(value.substring(12,1).toInteger()).select(iif($this<5, $this*2, (($this*2)-9))))+(value.substring(13,1).toInteger())+(select(value.substring(14,1).toInteger()).select(iif($this<5, $this*2, (($this*2)-9))))+(value.substring(15,1).toInteger()))mod 10=0)",
        "source" : "http://hl7.org.au/fhir/StructureDefinition/au-hpio"
      }]
    },
    {
      "id" : "Identifier.type",
      "path" : "Identifier.type",
      "min" : 1,
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org.au/CodeSystem/v2-0203",
          "code" : "NOI"
        }]
      }
    },
    {
      "id" : "Identifier.system",
      "path" : "Identifier.system",
      "min" : 1,
      "fixedUri" : "http://ns.electronichealth.net.au/id/hi/hpio/1.0"
    },
    {
      "id" : "Identifier.value",
      "path" : "Identifier.value",
      "short" : "HPI-O",
      "comment" : "This concept is equivalent to Australian Institute of Health and Welfare data element 426830 [Healthcare provider—organisation identifier, N(16)](https://meteor.aihw.gov.au/content/index.phtml/itemId/426830).",
      "min" : 1,
      "example" : [{
        "label" : "HPI-O",
        "valueString" : "8003621566684455"
      }],
      "maxLength" : 16,
      "condition" : ["inv-hpio-0", "inv-hpio-1", "inv-hpio-2"]
    }]
  }
}

```
