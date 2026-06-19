# AU G-NAF Identifier - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **AU G-NAF Identifier**

## Data Type Profile: AU G-NAF Identifier 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://hl7.org.au/fhir/StructureDefinition/au-gnafidentifier | *Version*:6.0.1-ci-build | |
| * Standards status: *[Trial-use](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](generalguidance.md#maturity-levels): 2 | *Computable Name*:AUGNAFIdentifier |
| **Copyright/Legal**: HL7 Australia© 2018+; Licensed Under Creative Commons No Rights Reserved. | | |

 
This identifier profile defines a Geocoded National Address File (G-NAF) identifier in an Australian context. The [PSMA G-NAF](https://data.gov.au/data/dataset/geocoded-national-address-file-g-naf) is Australia’s authoritative, geocoded address file. A G-NAF identifier (sometimes referred to as G-NAF ID, or G-NAF PID, or GNAF ID, or address_detail_pid) identifies an address in the PSMA G-NAF. 

### Usage Notes

**Usages:**

* Use this DataType Profile: [Australian Address](StructureDefinition-au-address.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.au.base|current/StructureDefinition/StructureDefinition-au-gnafidentifier.json)

**Changes since version 6.0.0:**

* No changes

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-au-gnafidentifier.csv), [Excel](StructureDefinition-au-gnafidentifier.xlsx), [Schematron](StructureDefinition-au-gnafidentifier.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "au-gnafidentifier",
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
  "url" : "http://hl7.org.au/fhir/StructureDefinition/au-gnafidentifier",
  "version" : "6.0.1-ci-build",
  "name" : "AUGNAFIdentifier",
  "title" : "AU G-NAF Identifier",
  "status" : "active",
  "date" : "2026-06-19T01:46:09+00:00",
  "publisher" : "HL7 Australia",
  "contact" : [{
    "name" : "HL7 Australia FHIR Working Group",
    "telecom" : [{
      "system" : "url",
      "value" : "https://confluence.hl7.org/display/HAFWG",
      "use" : "work"
    }]
  }],
  "description" : "This identifier profile defines a Geocoded National Address File (G-NAF) identifier in an Australian context. The [PSMA G-NAF](https://data.gov.au/data/dataset/geocoded-national-address-file-g-naf) is Australia’s authoritative, geocoded address file. A G-NAF identifier (sometimes referred to as G-NAF ID, or G-NAF PID, or GNAF ID, or address_detail_pid) identifies an address in the PSMA G-NAF.",
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
      "short" : "Geocoded National Address File (G-NAF) Identifier",
      "definition" : "Geocoded National Address File (G-NAF) identifier assigned to a location address in the G-NAF."
    },
    {
      "id" : "Identifier.type",
      "path" : "Identifier.type",
      "short" : "Coded identifier type for G-NAF",
      "min" : 1,
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org.au/CodeSystem/v2-0203",
          "code" : "GNAF"
        }]
      }
    },
    {
      "id" : "Identifier.system",
      "path" : "Identifier.system",
      "min" : 1,
      "fixedUri" : "http://hl7.org.au/id/gnafidentifier"
    },
    {
      "id" : "Identifier.value",
      "path" : "Identifier.value",
      "short" : "G-NAF identifier",
      "min" : 1,
      "example" : [{
        "label" : "G-NAF identifier",
        "valueString" : "GAVIC411711441"
      }],
      "maxLength" : 15
    }]
  }
}

```
