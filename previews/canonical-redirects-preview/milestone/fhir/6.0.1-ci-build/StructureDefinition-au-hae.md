# AU HAE - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **AU HAE**

## Data Type Profile: AU HAE 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://hl7.org.au/fhir/StructureDefinition/au-hae | *Version*:6.0.1-ci-build | |
| * Standards status: *[Draft](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](generalguidance.md#maturity-levels): 0 | *Computable Name*:AUHAE |
| **Copyright/Legal**: HL7 Australia© 2018+; Licensed Under Creative Commons No Rights Reserved. | | |

 
This identifier profile defines a Health Administration Entity (HAE) identifier in an Australian context (see [Healthcare Identifiers Act 2010 legislative framework reforms Frequently Asked Questions](https://www.health.gov.au/sites/default/files/2025-12/amendments-to-the-healthcare-identifiers-act-2010-frequently-asked-questions.pdf), the current version of [Health Identifiers Act 2010](https://www.legislation.gov.au/C2010A00072/latest/text), and [Australian Digital Health Agency: Healthcare Identifiers (HI) Service](https://developer.digitalhealth.gov.au/resources/services/healthcare-identifiers-service-hi) for further information). An HAE is assigned under the HI Service to organisations that provide administrative support for health services and programs without delivering direct clinical care, for example a Primary Health Network. 

Note that currently there are no published example valid values for this identifier.

### Usage Notes

**Usages:**

* Use this DataType Profile: [AU Base Organization](StructureDefinition-au-organization.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.au.base|current/StructureDefinition/StructureDefinition-au-hae.json)

**Changes since version 6.0.0:**

* New Content

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-au-hae.csv), [Excel](StructureDefinition-au-hae.xlsx), [Schematron](StructureDefinition-au-hae.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "au-hae",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm",
    "valueInteger" : 0
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status",
    "valueCode" : "draft"
  }],
  "url" : "http://hl7.org.au/fhir/StructureDefinition/au-hae",
  "version" : "6.0.1-ci-build",
  "name" : "AUHAE",
  "title" : "AU HAE",
  "status" : "draft",
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
  "description" : "This identifier profile defines a Health Administration Entity (HAE) identifier in an Australian context (see [Healthcare Identifiers Act 2010 legislative framework reforms Frequently Asked Questions](https://www.health.gov.au/sites/default/files/2025-12/amendments-to-the-healthcare-identifiers-act-2010-frequently-asked-questions.pdf), the current version of [Health Identifiers Act 2010](https://www.legislation.gov.au/C2010A00072/latest/text), and [Australian Digital Health Agency: Healthcare Identifiers (HI) Service](https://developer.digitalhealth.gov.au/resources/services/healthcare-identifiers-service-hi) for further information). An HAE is assigned under the HI Service to organisations that provide administrative support for health services and programs without delivering direct clinical care, for example a Primary Health Network.",
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
      "short" : "Health Administration Entity (HAE) identifier",
      "definition" : "Health Administration Entity (HAE) identifier assigned under the HI Service to organisations that provide administrative support for health services and programs without delivering direct clinical care.",
      "constraint" : [{
        "key" : "inv-hae-0",
        "severity" : "error",
        "human" : "HAE shall be 16 digits",
        "expression" : "value.matches('^([0-9]{16})$')",
        "source" : "http://hl7.org.au/fhir/StructureDefinition/au-hae"
      },
      {
        "key" : "inv-hae-1",
        "severity" : "error",
        "human" : "HAE prefix shall be 8003641100",
        "expression" : "value.startsWith('8003641100')",
        "source" : "http://hl7.org.au/fhir/StructureDefinition/au-hae"
      },
      {
        "key" : "inv-hae-2",
        "severity" : "error",
        "human" : "HAE shall pass the Luhn algorithm check",
        "expression" : "(((select(value.substring(0,1).toInteger()).select(iif($this<5, $this*2, (($this*2)-9))))+(value.substring(1,1).toInteger())+(select(value.substring(2,1).toInteger()).select(iif($this<5, $this*2, (($this*2)-9))))+(value.substring(3,1).toInteger())+(select(value.substring(4,1).toInteger()).select(iif($this<5, $this*2, (($this*2)-9))))+(value.substring(5,1).toInteger())+(select(value.substring(6,1).toInteger()).select(iif($this<5, $this*2, (($this*2)-9))))+(value.substring(7,1).toInteger())+(select(value.substring(8,1).toInteger()).select(iif($this<5, $this*2, (($this*2)-9))))+(value.substring(9,1).toInteger())+(select(value.substring(10,1).toInteger()).select(iif($this<5, $this*2, (($this*2)-9))))+(value.substring(11,1).toInteger())+(select(value.substring(12,1).toInteger()).select(iif($this<5, $this*2, (($this*2)-9))))+(value.substring(13,1).toInteger())+(select(value.substring(14,1).toInteger()).select(iif($this<5, $this*2, (($this*2)-9))))+(value.substring(15,1).toInteger()))mod 10=0)",
        "source" : "http://hl7.org.au/fhir/StructureDefinition/au-hae"
      }]
    },
    {
      "id" : "Identifier.type",
      "path" : "Identifier.type",
      "min" : 1,
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org.au/CodeSystem/v2-0203",
          "code" : "HAE"
        }]
      }
    },
    {
      "id" : "Identifier.system",
      "path" : "Identifier.system",
      "min" : 1,
      "fixedUri" : "http://ns.electronichealth.net.au/id/hi/hae/1.0"
    },
    {
      "id" : "Identifier.value",
      "path" : "Identifier.value",
      "short" : "HAE",
      "min" : 1,
      "maxLength" : 16,
      "condition" : ["inv-hae-0", "inv-hae-1", "inv-hae-2"]
    }]
  }
}

```
