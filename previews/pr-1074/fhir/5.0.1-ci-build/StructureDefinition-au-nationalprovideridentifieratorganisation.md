# AU National Provider Identifier At Organisation - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **AU National Provider Identifier At Organisation**

## Data Type Profile: AU National Provider Identifier At Organisation 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://hl7.org.au/fhir/StructureDefinition/au-nationalprovideridentifieratorganisation | *Version*:6.0.1-ci-build | |
| * Standards status: *[Trial-use](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](generalguidance.md#maturity-levels): 2 | *Computable Name*:AUNationalProviderIdentifierAtOrganisation |
| **Copyright/Legal**: HL7 Australia© 2018+; Licensed Under Creative Commons No Rights Reserved. | | |

 
This identifier profile defines a National Provider Identifier at Organisation (NPIO) in an Australian context. An NPIO identifies an individual practitioner at an organisation using the practitioner's HPI-I and organisation's HPI-O to form the NPIO. 

### Usage Notes

**Usages:**

* Use this DataType Profile: [AU Base PractitionerRole](StructureDefinition-au-practitionerrole.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.au.base|current/StructureDefinition/StructureDefinition-au-nationalprovideridentifieratorganisation.json)

**Changes since version 6.0.0:**

* No changes

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-au-nationalprovideridentifieratorganisation.csv), [Excel](StructureDefinition-au-nationalprovideridentifieratorganisation.xlsx), [Schematron](StructureDefinition-au-nationalprovideridentifieratorganisation.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "au-nationalprovideridentifieratorganisation",
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
  "url" : "http://hl7.org.au/fhir/StructureDefinition/au-nationalprovideridentifieratorganisation",
  "version" : "6.0.1-ci-build",
  "name" : "AUNationalProviderIdentifierAtOrganisation",
  "title" : "AU National Provider Identifier At Organisation",
  "status" : "active",
  "date" : "2026-06-18T15:06:23+00:00",
  "publisher" : "HL7 Australia",
  "contact" : [{
    "name" : "HL7 Australia FHIR Working Group",
    "telecom" : [{
      "system" : "url",
      "value" : "https://confluence.hl7.org/display/HAFWG",
      "use" : "work"
    }]
  }],
  "description" : "This identifier profile defines a National Provider Identifier at Organisation (NPIO) in an Australian context. An NPIO identifies an individual practitioner at an organisation using the practitioner's HPI-I and organisation's HPI-O to form the NPIO.",
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
      "short" : "National Provider Identifier at Organisation (NPIO)",
      "definition" : "National Provider Identifier at Organisation (NPIO) identifies an individual practitioner at an organisation using the practitioner's HPI-I and organisation's HPI-O to form the NPIO.",
      "constraint" : [{
        "key" : "inv-npio-0",
        "severity" : "error",
        "human" : "NPIO shall be 33 characters",
        "expression" : "value.length() = 33",
        "source" : "http://hl7.org.au/fhir/StructureDefinition/au-nationalprovideridentifieratorganisation"
      },
      {
        "key" : "inv-npio-1",
        "severity" : "error",
        "human" : "NPIO shall start with '800361', then 10 digits, then '@', then '800362', then 10 digits",
        "expression" : "value.matches('^(800361)([0-9]{10})(@)(800362)([0-9]{10})$')",
        "source" : "http://hl7.org.au/fhir/StructureDefinition/au-nationalprovideridentifieratorganisation"
      }]
    },
    {
      "id" : "Identifier.type",
      "path" : "Identifier.type",
      "min" : 1,
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org.au/CodeSystem/v2-0203",
          "code" : "NPIO"
        }]
      }
    },
    {
      "id" : "Identifier.system",
      "path" : "Identifier.system",
      "min" : 1,
      "fixedUri" : "http://hl7.org.au/id/npio"
    },
    {
      "id" : "Identifier.value",
      "path" : "Identifier.value",
      "short" : "NPIO",
      "min" : 1,
      "example" : [{
        "label" : "NPIO",
        "valueString" : "8003619900015717@8003621566684455"
      }],
      "condition" : ["inv-npio-0", "inv-npio-1"]
    }]
  }
}

```
