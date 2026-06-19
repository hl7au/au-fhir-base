# AU Local Dispense Identifier - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **AU Local Dispense Identifier**

## Data Type Profile: AU Local Dispense Identifier 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://hl7.org.au/fhir/StructureDefinition/au-localdispenseidentifier | *Version*:6.0.1-ci-build | |
| * Standards status: *[Trial-use](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](generalguidance.md#maturity-levels): 1 | *Computable Name*:AULocalDispenseIdentifier |
| **Copyright/Legal**: HL7 Australia© 2018+; Licensed Under Creative Commons No Rights Reserved. | | |

 
This identifier profile defines a local dispense identifier in an Australian context. A local dispense identifier is an organisation's identifier for a dispense record in that organisation's local system set of dispense records. A dispense record identifier is typically assigned by the dispensing system and allows linking of a dispensing record to the dispensing system's local identifier. 

### Usage Notes

**Profile specific implementation guidance:**

* An organisation should use their own local system identifier namespace but if that is not available then see the guidance on [Business Identifiers](generalguidance.md#business-identifiers) on using an HPI-O to construct a legal globally unique identifier system for local identifiers.

**Usages:**

* Use this DataType Profile: [AU Base MedicationDispense](StructureDefinition-au-medicationdispense.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.au.base|current/StructureDefinition/StructureDefinition-au-localdispenseidentifier.json)

**Changes since version 6.0.0:**

* No changes

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-au-localdispenseidentifier.csv), [Excel](StructureDefinition-au-localdispenseidentifier.xlsx), [Schematron](StructureDefinition-au-localdispenseidentifier.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "au-localdispenseidentifier",
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
  "url" : "http://hl7.org.au/fhir/StructureDefinition/au-localdispenseidentifier",
  "version" : "6.0.1-ci-build",
  "name" : "AULocalDispenseIdentifier",
  "title" : "AU Local Dispense Identifier",
  "status" : "active",
  "date" : "2026-06-19T08:07:27+00:00",
  "publisher" : "HL7 Australia",
  "contact" : [{
    "name" : "HL7 Australia FHIR Working Group",
    "telecom" : [{
      "system" : "url",
      "value" : "https://confluence.hl7.org/display/HAFWG",
      "use" : "work"
    }]
  }],
  "description" : "This identifier profile defines a local dispense identifier in an Australian context. A local dispense identifier is an organisation's identifier for a dispense record in that organisation's local system set of dispense records. A dispense record identifier is typically assigned by the dispensing system and allows linking of a dispensing record to the dispensing system's local identifier.",
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
      "short" : "Local Dispense Identifier",
      "definition" : "Local dispense identifier assigned by an organisation to a dispense record in that organisation's set of dispense records."
    },
    {
      "id" : "Identifier.type",
      "path" : "Identifier.type",
      "short" : "Coded identifier type for local dispense identifier",
      "min" : 1,
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org.au/CodeSystem/v2-0203",
          "code" : "LDI"
        }]
      }
    },
    {
      "id" : "Identifier.system",
      "path" : "Identifier.system",
      "short" : "System identifier namespace for the organisation that assigned the dispense identifier",
      "min" : 1
    },
    {
      "id" : "Identifier.value",
      "path" : "Identifier.value",
      "short" : "Dispense identifier",
      "min" : 1
    },
    {
      "id" : "Identifier.assigner",
      "path" : "Identifier.assigner",
      "short" : "Organisation that assigned the dispense identifier",
      "min" : 1
    },
    {
      "id" : "Identifier.assigner.display",
      "path" : "Identifier.assigner.display",
      "short" : "Name of the assigning organisation",
      "min" : 1
    }]
  }
}

```
