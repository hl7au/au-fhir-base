# AU PAI-O Identifier - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **AU PAI-O Identifier**

## Data Type Profile: AU PAI-O Identifier 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://hl7.org.au/fhir/StructureDefinition/au-paioidentifier | *Version*:6.0.1-ci-build | |
| * Standards status: *[Trial-use](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](generalguidance.md#maturity-levels): 2 | *Computable Name*:AUPAIOIdentifier |
| **Copyright/Legal**: HL7 Australia© 2018+; Licensed Under Creative Commons No Rights Reserved. | | |

 
This identifier profile defines a My Health Record Assigned Identity - Organisation (PAI-O) identifier in an Australian context. A PAI-O may be issued to organisations who wish to participate in the My Health Record and who are not eligible for a Healthcare Provider Identifier - Organisation (HPI-O). 

### Usage Notes

**Usages:**

* Use this DataType Profile: [AU Base Organization](StructureDefinition-au-organization.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.au.base|current/StructureDefinition/StructureDefinition-au-paioidentifier.json)

**Changes since version 6.0.0:**

* No changes

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-au-paioidentifier.csv), [Excel](StructureDefinition-au-paioidentifier.xlsx), [Schematron](StructureDefinition-au-paioidentifier.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "au-paioidentifier",
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
  "url" : "http://hl7.org.au/fhir/StructureDefinition/au-paioidentifier",
  "version" : "6.0.1-ci-build",
  "name" : "AUPAIOIdentifier",
  "title" : "AU PAI-O Identifier",
  "status" : "active",
  "date" : "2026-06-18T23:22:00+00:00",
  "publisher" : "HL7 Australia",
  "contact" : [{
    "name" : "HL7 Australia FHIR Working Group",
    "telecom" : [{
      "system" : "url",
      "value" : "https://confluence.hl7.org/display/HAFWG",
      "use" : "work"
    }]
  }],
  "description" : "This identifier profile defines a My Health Record Assigned Identity - Organisation (PAI-O) identifier in an Australian context. A PAI-O may be issued to organisations who wish to participate in the My Health Record and who are not eligible for a Healthcare Provider Identifier - Organisation (HPI-O).",
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
      "short" : "My Health Record Assigned Identity - Organisation (PAI-O) Identifier",
      "definition" : "My Health Record Assigned Identity - Organisation (PAI-O) identifier assigned to an organisation.",
      "constraint" : [{
        "key" : "inv-paio-0",
        "severity" : "error",
        "human" : "PAI-O shall be 16 digits",
        "expression" : "value.matches('^([0-9]{16})$')",
        "source" : "http://hl7.org.au/fhir/StructureDefinition/au-paioidentifier"
      },
      {
        "key" : "inv-paio-1",
        "severity" : "error",
        "human" : "PAI-O prefix shall be 800364",
        "expression" : "value.startsWith('800364')",
        "source" : "http://hl7.org.au/fhir/StructureDefinition/au-paioidentifier"
      },
      {
        "key" : "inv-paio-2",
        "severity" : "error",
        "human" : "PAI-O shall pass the Luhn algorithm",
        "expression" : "(((select(value.substring(0,1).toInteger()).select(iif($this<5, $this*2, (($this*2)-9))))+(value.substring(1,1).toInteger())+(select(value.substring(2,1).toInteger()).select(iif($this<5, $this*2, (($this*2)-9))))+(value.substring(3,1).toInteger())+(select(value.substring(4,1).toInteger()).select(iif($this<5, $this*2, (($this*2)-9))))+(value.substring(5,1).toInteger())+(select(value.substring(6,1).toInteger()).select(iif($this<5, $this*2, (($this*2)-9))))+(value.substring(7,1).toInteger())+(select(value.substring(8,1).toInteger()).select(iif($this<5, $this*2, (($this*2)-9))))+(value.substring(9,1).toInteger())+(select(value.substring(10,1).toInteger()).select(iif($this<5, $this*2, (($this*2)-9))))+(value.substring(11,1).toInteger())+(select(value.substring(12,1).toInteger()).select(iif($this<5, $this*2, (($this*2)-9))))+(value.substring(13,1).toInteger())+(select(value.substring(14,1).toInteger()).select(iif($this<5, $this*2, (($this*2)-9))))+(value.substring(15,1).toInteger()))mod 10=0)",
        "source" : "http://hl7.org.au/fhir/StructureDefinition/au-paioidentifier"
      }]
    },
    {
      "id" : "Identifier.type",
      "path" : "Identifier.type",
      "short" : "Coded identifier type for PAI-O",
      "min" : 1,
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org.au/CodeSystem/v2-0203",
          "code" : "PAIO"
        }]
      }
    },
    {
      "id" : "Identifier.system",
      "path" : "Identifier.system",
      "min" : 1,
      "fixedUri" : "http://ns.electronichealth.net.au/id/pcehr/paio/1.0"
    },
    {
      "id" : "Identifier.value",
      "path" : "Identifier.value",
      "short" : "PAI-O",
      "comment" : "PAI-O values may be test values or production (real) values. A production PAI-O is in the format 8003640001xxxxxz, a test PAI-O is in the format 8003640011xxxxxz.",
      "min" : 1,
      "example" : [{
        "label" : "PAI-O",
        "valueString" : "8003640011000059"
      }],
      "maxLength" : 16,
      "condition" : ["inv-paio-0", "inv-paio-1", "inv-paio-2"]
    }]
  }
}

```
