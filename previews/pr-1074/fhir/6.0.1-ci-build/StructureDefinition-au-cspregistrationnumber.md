# AU CSP Registration Number - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **AU CSP Registration Number**

## Data Type Profile: AU CSP Registration Number 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://hl7.org.au/fhir/StructureDefinition/au-cspregistrationnumber | *Version*:6.0.1-ci-build | |
| * Standards status: *[Trial-use](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](generalguidance.md#maturity-levels): 1 | *Computable Name*:AUCSPRegistrationNumber |
| **Copyright/Legal**: HL7 Australia© 2018+; Licensed Under Creative Commons No Rights Reserved. | | |

 
This identifier profile defines a Contracted Service Provider (CSP) registration number in an Australian context (see [My Health Record](https://www.myhealthrecord.gov.au/for-healthcare-professionals/howtos/contracted-service-provider-registration) for further information). A CSP registration number may be issued to organisations who wish to participate in the My Health Record and/or the Healthcare Identifiers Service as a CSP. 

### Usage Notes

**Usages:**

* Use this DataType Profile: [AU Base Organization](StructureDefinition-au-organization.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.au.base|current/StructureDefinition/StructureDefinition-au-cspregistrationnumber.json)

**Changes since version 6.0.0:**

* No changes

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-au-cspregistrationnumber.csv), [Excel](StructureDefinition-au-cspregistrationnumber.xlsx), [Schematron](StructureDefinition-au-cspregistrationnumber.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "au-cspregistrationnumber",
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
  "url" : "http://hl7.org.au/fhir/StructureDefinition/au-cspregistrationnumber",
  "version" : "6.0.1-ci-build",
  "name" : "AUCSPRegistrationNumber",
  "title" : "AU CSP Registration Number",
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
  "description" : "This identifier profile defines a Contracted Service Provider (CSP) registration number in an Australian context (see [My Health Record](https://www.myhealthrecord.gov.au/for-healthcare-professionals/howtos/contracted-service-provider-registration) for further information). A CSP registration number may be issued to organisations who wish to participate in the My Health Record and/or the Healthcare Identifiers Service as a CSP.",
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
      "short" : "Contracted Service Provider (CSP) Registration Number",
      "definition" : "Contracted Service Provider (CSP) registration number assigned to an organisation.",
      "constraint" : [{
        "key" : "inv-csp-0",
        "severity" : "error",
        "human" : "CSP registration number shall be 16 digits",
        "expression" : "value.matches('^([0-9]{16})$')",
        "source" : "http://hl7.org.au/fhir/StructureDefinition/au-cspregistrationnumber"
      },
      {
        "key" : "inv-csp-1",
        "severity" : "error",
        "human" : "CSP registration number prefix shall be 800363",
        "expression" : "value.startsWith('800363')",
        "source" : "http://hl7.org.au/fhir/StructureDefinition/au-cspregistrationnumber"
      },
      {
        "key" : "inv-csp-2",
        "severity" : "error",
        "human" : "CSP registration number shall pass the Luhn algorithm check",
        "expression" : "(((select(value.substring(0,1).toInteger()).select(iif($this<5, $this*2, (($this*2)-9))))+(value.substring(1,1).toInteger())+(select(value.substring(2,1).toInteger()).select(iif($this<5, $this*2, (($this*2)-9))))+(value.substring(3,1).toInteger())+(select(value.substring(4,1).toInteger()).select(iif($this<5, $this*2, (($this*2)-9))))+(value.substring(5,1).toInteger())+(select(value.substring(6,1).toInteger()).select(iif($this<5, $this*2, (($this*2)-9))))+(value.substring(7,1).toInteger())+(select(value.substring(8,1).toInteger()).select(iif($this<5, $this*2, (($this*2)-9))))+(value.substring(9,1).toInteger())+(select(value.substring(10,1).toInteger()).select(iif($this<5, $this*2, (($this*2)-9))))+(value.substring(11,1).toInteger())+(select(value.substring(12,1).toInteger()).select(iif($this<5, $this*2, (($this*2)-9))))+(value.substring(13,1).toInteger())+(select(value.substring(14,1).toInteger()).select(iif($this<5, $this*2, (($this*2)-9))))+(value.substring(15,1).toInteger()))mod 10=0)",
        "source" : "http://hl7.org.au/fhir/StructureDefinition/au-cspregistrationnumber"
      }]
    },
    {
      "id" : "Identifier.type",
      "path" : "Identifier.type",
      "min" : 1,
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org.au/CodeSystem/v2-0203",
          "code" : "CSPRN"
        }]
      }
    },
    {
      "id" : "Identifier.system",
      "path" : "Identifier.system",
      "min" : 1,
      "fixedUri" : "http://ns.electronichealth.net.au/id/hi/csp/1.0"
    },
    {
      "id" : "Identifier.value",
      "path" : "Identifier.value",
      "short" : "CSP registration number",
      "min" : 1,
      "example" : [{
        "label" : "CSP registration number",
        "valueString" : "8003639900027009"
      }],
      "maxLength" : 16
    }]
  }
}

```
