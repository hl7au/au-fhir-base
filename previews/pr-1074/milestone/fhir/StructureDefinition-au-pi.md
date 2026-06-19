# AU Patient Internal Identifier - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **AU Patient Internal Identifier**

## Data Type Profile: AU Patient Internal Identifier 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://hl7.org.au/fhir/StructureDefinition/au-pi | *Version*:6.0.1-ci-build | |
| * Standards status: *[Trial-use](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](generalguidance.md#maturity-levels): 1 | *Computable Name*:AUPatientInternalIdentifier |
| **Copyright/Legal**: HL7 Australia© 2018+; Licensed Under Creative Commons No Rights Reserved. | | |

 
This identifier profile defines a patient internal identifier in an Australian context. A patient internal identifier is assigned to a patient by an application (e.g. practice management system or a cloud-based electronic medical record) to uniquely identify a patient within that application. 
While a patient internal identifier can be exchanged with other applications, its scope for sharing is limited and typically occurs for context-specific patient matching (e.g. a patient internal identifier included in a pathology request can be returned in the associated pathology report). This identifier is only unique within the assigning application and is not suitable for broader use as a persistent identifier, unlike a Medical Record Number (MRN), which is unique within an institution. 

### Usage Notes

**Profile specific implementation guidance:**

* The scope of patient internal identifier and MRN differ in that: 
* An MRN uniquely identifies a patient in a specific institution (e.g. a hospital), and is intended to be referenced and shared by different applications within that institution. An MRN is assigned and managed by an assigning application (e.g. a Patient Master Index).
* A patient internal identifier uniquely identifies a patient within an application, and is not intended to be broadly shared with other applications.
 
* When constructing local identifiers such as a patient internal identifier, see the guidance in [Business Identifiers](generalguidance.md#business-identifiers).

**Usages:**

* Use this DataType Profile: [AU Base Patient](StructureDefinition-au-patient.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.au.base|current/StructureDefinition/StructureDefinition-au-pi.json)

**Changes since version 6.0.0:**

* No changes

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-au-pi.csv), [Excel](StructureDefinition-au-pi.xlsx), [Schematron](StructureDefinition-au-pi.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "au-pi",
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
  "url" : "http://hl7.org.au/fhir/StructureDefinition/au-pi",
  "version" : "6.0.1-ci-build",
  "name" : "AUPatientInternalIdentifier",
  "title" : "AU Patient Internal Identifier",
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
  "description" : "This identifier profile defines a patient internal identifier in an Australian context. A patient internal identifier is assigned to a patient by an application (e.g. practice management system or a cloud-based electronic medical record) to uniquely identify a patient within that application.\n\nWhile a patient internal identifier can be exchanged with other applications, its scope for sharing is limited and typically occurs for context-specific patient matching (e.g. a patient internal identifier included in a pathology request can be returned in the associated pathology report). This identifier is only unique within the assigning application and is not suitable for broader use as a persistent identifier, unlike a Medical Record Number (MRN), which is unique within an institution.",
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
      "short" : "Patient Internal Identifier",
      "definition" : "A patient internal identifier is assigned to a patient by an application (e.g. a practice management system or a cloud-based electronic medical record) to uniquely identify the patient within that application. It may be exchanged with other applications in specific contexts to support patient matching (e.g. a patient internal identifier included in a pathology request may be returned in the resulting pathology report). However, unlike an MRN, a patient internal identifier is not intended for broad sharing across applications and should not be relied on as a stable identifier outside the assigning application."
    },
    {
      "id" : "Identifier.type",
      "path" : "Identifier.type",
      "min" : 1,
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
          "code" : "PI"
        }]
      }
    },
    {
      "id" : "Identifier.system",
      "path" : "Identifier.system",
      "short" : "System identifier namespace for the application that assigned the patient internal identifier",
      "min" : 1
    },
    {
      "id" : "Identifier.value",
      "path" : "Identifier.value",
      "short" : "Patient internal identifier",
      "min" : 1
    },
    {
      "id" : "Identifier.assigner",
      "path" : "Identifier.assigner",
      "short" : "Organisation that assigned the patient internal identifier",
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
