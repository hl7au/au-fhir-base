# AU HSP-O - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **AU HSP-O**

## Data Type Profile: AU HSP-O 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://hl7.org.au/fhir/StructureDefinition/au-hspo | *Version*:6.0.1-ci-build | |
| * Standards status: *[Draft](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](generalguidance.md#maturity-levels): 0 | *Computable Name*:AUHSPO |
| **Copyright/Legal**: HL7 Australia© 2018+; Licensed Under Creative Commons No Rights Reserved. | | |

 
This identifier profile defines a Healthcare Support Service Provider - Organisation (HSP-O) identifier in an Australian context (see [Healthcare Identifiers Act 2010 legislative framework reforms Frequently Asked Questions](https://www.health.gov.au/sites/default/files/2025-12/amendments-to-the-healthcare-identifiers-act-2010-frequently-asked-questions.pdf), the current version of [Health Identifiers Act 2010](https://www.legislation.gov.au/C2010A00072/latest/text), and [Australian Digital Health Agency: Healthcare Identifiers (HI) Service](https://developer.digitalhealth.gov.au/resources/services/healthcare-identifiers-service-hi) for further information). An HSP-O is assigned under the HI Service to an organisation that does not directly provide healthcare services but provides care and support services, such as in-home care support and personal care services. 

Note that currently there are no published example valid values for this identifier.

### Usage Notes

**Usages:**

* Use this DataType Profile: [AU Base Organization](StructureDefinition-au-organization.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.au.base|current/StructureDefinition/StructureDefinition-au-hspo.json)

**Changes since version 6.0.0:**

* New Content

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-au-hspo.csv), [Excel](StructureDefinition-au-hspo.xlsx), [Schematron](StructureDefinition-au-hspo.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "au-hspo",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm",
    "valueInteger" : 0
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status",
    "valueCode" : "draft"
  }],
  "url" : "http://hl7.org.au/fhir/StructureDefinition/au-hspo",
  "version" : "6.0.1-ci-build",
  "name" : "AUHSPO",
  "title" : "AU HSP-O",
  "status" : "draft",
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
  "description" : "This identifier profile defines a Healthcare Support Service Provider - Organisation (HSP-O) identifier in an Australian context (see [Healthcare Identifiers Act 2010 legislative framework reforms Frequently Asked Questions](https://www.health.gov.au/sites/default/files/2025-12/amendments-to-the-healthcare-identifiers-act-2010-frequently-asked-questions.pdf), the current version of [Health Identifiers Act 2010](https://www.legislation.gov.au/C2010A00072/latest/text), and [Australian Digital Health Agency: Healthcare Identifiers (HI) Service](https://developer.digitalhealth.gov.au/resources/services/healthcare-identifiers-service-hi) for further information). An HSP-O is assigned under the HI Service to an organisation that does not directly provide healthcare services but provides care and support services, such as in-home care support and personal care services.",
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
      "short" : "Healthcare Support Service Provider - Organisation (HSP-O) identifier",
      "definition" : "Healthcare Support Service Provider - Organisation (HSP-O) identifier assigned under the HI Service to an organisation that does not directly provide healthcare services but provides care and support services, such as in-home care support and personal care services.",
      "constraint" : [{
        "key" : "inv-hspo-0",
        "severity" : "error",
        "human" : "HSP-O shall be 16 digits",
        "expression" : "value.matches('^([0-9]{16})$')",
        "source" : "http://hl7.org.au/fhir/StructureDefinition/au-hspo"
      },
      {
        "key" : "inv-hspo-1",
        "severity" : "error",
        "human" : "HSP-O prefix shall be 800364100[0-9]",
        "expression" : "value.matches('^800364100[0-9]{7}$')",
        "source" : "http://hl7.org.au/fhir/StructureDefinition/au-hspo"
      },
      {
        "key" : "inv-hspo-2",
        "severity" : "error",
        "human" : "HSP-O shall pass the Luhn algorithm check",
        "expression" : "(((select(value.substring(0,1).toInteger()).select(iif($this<5, $this*2, (($this*2)-9))))+(value.substring(1,1).toInteger())+(select(value.substring(2,1).toInteger()).select(iif($this<5, $this*2, (($this*2)-9))))+(value.substring(3,1).toInteger())+(select(value.substring(4,1).toInteger()).select(iif($this<5, $this*2, (($this*2)-9))))+(value.substring(5,1).toInteger())+(select(value.substring(6,1).toInteger()).select(iif($this<5, $this*2, (($this*2)-9))))+(value.substring(7,1).toInteger())+(select(value.substring(8,1).toInteger()).select(iif($this<5, $this*2, (($this*2)-9))))+(value.substring(9,1).toInteger())+(select(value.substring(10,1).toInteger()).select(iif($this<5, $this*2, (($this*2)-9))))+(value.substring(11,1).toInteger())+(select(value.substring(12,1).toInteger()).select(iif($this<5, $this*2, (($this*2)-9))))+(value.substring(13,1).toInteger())+(select(value.substring(14,1).toInteger()).select(iif($this<5, $this*2, (($this*2)-9))))+(value.substring(15,1).toInteger()))mod 10=0)",
        "source" : "http://hl7.org.au/fhir/StructureDefinition/au-hspo"
      }]
    },
    {
      "id" : "Identifier.type",
      "path" : "Identifier.type",
      "min" : 1,
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org.au/CodeSystem/v2-0203",
          "code" : "HSPO"
        }]
      }
    },
    {
      "id" : "Identifier.system",
      "path" : "Identifier.system",
      "min" : 1,
      "fixedUri" : "http://ns.electronichealth.net.au/id/hi/hspo/1.0"
    },
    {
      "id" : "Identifier.value",
      "path" : "Identifier.value",
      "short" : "HSP-O",
      "min" : 1,
      "maxLength" : 16,
      "condition" : ["inv-hspo-0", "inv-hspo-1", "inv-hspo-2"]
    }]
  }
}

```
