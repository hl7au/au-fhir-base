# AU Care Agency Employee Identifier - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **AU Care Agency Employee Identifier**

## Data Type Profile: AU Care Agency Employee Identifier 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://hl7.org.au/fhir/StructureDefinition/au-careagencyemployeeidentifier | *Version*:6.0.1-ci-build | |
| * Standards status: *[Trial-use](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](generalguidance.md#maturity-levels): 1 | *Computable Name*:AUCareAgencyEmployeeIdentifier |
| **Copyright/Legal**: HL7 Australia© 2018+; Licensed Under Creative Commons No Rights Reserved. | | |

 
This identifier profile defines a care agency employee (CAE) identifier in an Australian context. A CAE identifier may be issued to an employee of, or person under contracted arrangement with, a care agency who wishes to participate in the My Health Record. 

### Usage Notes

**Usages:**

* Use this DataType Profile: [AU Base Practitioner](StructureDefinition-au-practitioner.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.au.base|current/StructureDefinition/StructureDefinition-au-careagencyemployeeidentifier.json)

**Changes since version 6.0.0:**

* No changes

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-au-careagencyemployeeidentifier.csv), [Excel](StructureDefinition-au-careagencyemployeeidentifier.xlsx), [Schematron](StructureDefinition-au-careagencyemployeeidentifier.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "au-careagencyemployeeidentifier",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm",
    "valueInteger" : 1
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
  "url" : "http://hl7.org.au/fhir/StructureDefinition/au-careagencyemployeeidentifier",
  "version" : "6.0.1-ci-build",
  "name" : "AUCareAgencyEmployeeIdentifier",
  "title" : "AU Care Agency Employee Identifier",
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
  "description" : "This identifier profile defines a care agency employee (CAE) identifier in an Australian context. A CAE identifier may be issued to an employee of, or person under contracted arrangement with, a care agency who wishes to participate in the My Health Record.",
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
      "short" : "Care Agency Employee (CAE) Identifier",
      "definition" : "Care agency employee (CAE) identifier assigned to a person. A CAE identifier may be issued to an employee of, or person under contracted arrangement with, a care agency who wishes to participate in the My Health Record.",
      "constraint" : [{
        "key" : "inv-caei-0",
        "severity" : "error",
        "human" : "CAE identifier shall be 16 digits",
        "expression" : "value.matches('^([0-9]{16})$')",
        "source" : "http://hl7.org.au/fhir/StructureDefinition/au-careagencyemployeeidentifier"
      },
      {
        "key" : "inv-caei-1",
        "severity" : "error",
        "human" : "CAE identifier prefix shall be 900360",
        "expression" : "value.startsWith('900360')",
        "source" : "http://hl7.org.au/fhir/StructureDefinition/au-careagencyemployeeidentifier"
      },
      {
        "key" : "inv-caei-2",
        "severity" : "error",
        "human" : "CAE identifier shall pass the Luhn algorithm check",
        "expression" : "(((select(value.substring(0,1).toInteger()).select(iif($this<5, $this*2, (($this*2)-9))))+(value.substring(1,1).toInteger())+(select(value.substring(2,1).toInteger()).select(iif($this<5, $this*2, (($this*2)-9))))+(value.substring(3,1).toInteger())+(select(value.substring(4,1).toInteger()).select(iif($this<5, $this*2, (($this*2)-9))))+(value.substring(5,1).toInteger())+(select(value.substring(6,1).toInteger()).select(iif($this<5, $this*2, (($this*2)-9))))+(value.substring(7,1).toInteger())+(select(value.substring(8,1).toInteger()).select(iif($this<5, $this*2, (($this*2)-9))))+(value.substring(9,1).toInteger())+(select(value.substring(10,1).toInteger()).select(iif($this<5, $this*2, (($this*2)-9))))+(value.substring(11,1).toInteger())+(select(value.substring(12,1).toInteger()).select(iif($this<5, $this*2, (($this*2)-9))))+(value.substring(13,1).toInteger())+(select(value.substring(14,1).toInteger()).select(iif($this<5, $this*2, (($this*2)-9))))+(value.substring(15,1).toInteger()))mod 10=0)",
        "source" : "http://hl7.org.au/fhir/StructureDefinition/au-careagencyemployeeidentifier"
      }]
    },
    {
      "id" : "Identifier.type",
      "path" : "Identifier.type",
      "min" : 1,
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org.au/CodeSystem/v2-0203",
          "code" : "CAEI"
        }]
      }
    },
    {
      "id" : "Identifier.system",
      "path" : "Identifier.system",
      "min" : 1,
      "fixedUri" : "http://ns.electronichealth.net.au/id/pcehr/caei/1.0"
    },
    {
      "id" : "Identifier.value",
      "path" : "Identifier.value",
      "short" : "CAE identifier",
      "min" : 1,
      "example" : [{
        "label" : "CAE identifier",
        "valueString" : "9003600003999997"
      }],
      "maxLength" : 16
    }]
  }
}

```
