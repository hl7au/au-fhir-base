# AU Location Specific Practice Number - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **AU Location Specific Practice Number**

## Data Type Profile: AU Location Specific Practice Number 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://hl7.org.au/fhir/StructureDefinition/au-locationspecificpracticenumber | *Version*:6.0.1-ci-build | |
| * Standards status: *[Trial-use](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](generalguidance.md#maturity-levels): 1 | *Computable Name*:AULocationSpecificPracticeNumber |
| **Copyright/Legal**: HL7 Australia© 2018+; Licensed Under Creative Commons No Rights Reserved. | | |

 
This identifier profile defines a Location Specific Practice Number (LSPN) in an Australian context (see [Services Australia](https://www.servicesaustralia.gov.au/organisations/health-professionals/services/medicare/medicare-eligibility-provide-diagnostic-imaging-and-radiation-oncology-services#a2) and [Department of Health and Aged Care](https://www1.health.gov.au/internet/main/publishing.nsf/Content/stage-two-diag-img-acc-scheme-loc-spec-prac-num-fact-sheet) for further information). An LSPN is an identifier assigned to a specific location by Services Australia under the Medicare program and identifies an accredited practice site that provides diagnostic imaging and radiation oncology services. 

### Usage Notes

**Usages:**

* Use this DataType Profile: [AU Base Location](StructureDefinition-au-location.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.au.base|current/StructureDefinition/StructureDefinition-au-locationspecificpracticenumber.json)

**Changes since version 6.0.0:**

* No changes

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-au-locationspecificpracticenumber.csv), [Excel](StructureDefinition-au-locationspecificpracticenumber.xlsx), [Schematron](StructureDefinition-au-locationspecificpracticenumber.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "au-locationspecificpracticenumber",
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
  "url" : "http://hl7.org.au/fhir/StructureDefinition/au-locationspecificpracticenumber",
  "version" : "6.0.1-ci-build",
  "name" : "AULocationSpecificPracticeNumber",
  "title" : "AU Location Specific Practice Number",
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
  "description" : "This identifier profile defines a Location Specific Practice Number (LSPN) in an Australian context (see [Services Australia](https://www.servicesaustralia.gov.au/organisations/health-professionals/services/medicare/medicare-eligibility-provide-diagnostic-imaging-and-radiation-oncology-services#a2) and [Department of Health and Aged Care](https://www1.health.gov.au/internet/main/publishing.nsf/Content/stage-two-diag-img-acc-scheme-loc-spec-prac-num-fact-sheet) for further information). An LSPN is an identifier assigned to a specific location by Services Australia under the Medicare program and identifies an accredited practice site that provides diagnostic imaging and radiation oncology services.",
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
      "short" : "Location Specific Practice Number (LSPN)",
      "definition" : "Location Specific Practice Number (LSPN) assigned to a specific location by Services Australia. An LSPN identifies an accredited practice site that provides diagnostic imaging and radiation oncology services."
    },
    {
      "id" : "Identifier.type",
      "path" : "Identifier.type",
      "short" : "Coded identifier type for LSPN",
      "min" : 1,
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org.au/CodeSystem/v2-0203",
          "code" : "LSPN"
        }]
      }
    },
    {
      "id" : "Identifier.system",
      "path" : "Identifier.system",
      "min" : 1,
      "fixedUri" : "http://ns.electronichealth.net.au/id/location-specific-practice-number"
    },
    {
      "id" : "Identifier.value",
      "path" : "Identifier.value",
      "short" : "LSPN",
      "min" : 1,
      "example" : [{
        "label" : "LSPN",
        "valueString" : "100302"
      }]
    }]
  }
}

```
