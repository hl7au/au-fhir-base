# AU Recorded Sex or Gender (RSG) Source Document Type - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **AU Recorded Sex or Gender (RSG) Source Document Type**

## ValueSet: AU Recorded Sex or Gender (RSG) Source Document Type 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://terminology.hl7.org.au/ValueSet/rsg-source-document-type | *Version*:6.0.1-ci-build | |
| * Standards status: *[Trial-use](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](generalguidance.md#maturity-levels): 1 | *Computable Name*:AURecordedSexOrGenderSourceDocumentType |
| *Other Identifiers:*OID:2.16.840.1.113883.2.3.4.2.4.32 | | |
| **Copyright/Legal**: This material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc | | |

 
The AU Recorded Sex or Gender (RSG) Source Document Type value set includes codes that can be used to represent the type of document where this sex or gender value is recorded. 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

**Changes since version 6.0.0:**

* No changes

### Logical Definition (CLD)

 

### Expansion

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R4/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "rsg-source-document-type",
  "meta" : {
    "profile" : ["https://healthterminologies.gov.au/fhir/StructureDefinition/composed-value-set-4"]
  },
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
  "url" : "http://terminology.hl7.org.au/ValueSet/rsg-source-document-type",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.2.3.4.2.4.32"
  }],
  "version" : "6.0.1-ci-build",
  "name" : "AURecordedSexOrGenderSourceDocumentType",
  "title" : "AU Recorded Sex or Gender (RSG) Source Document Type",
  "status" : "active",
  "experimental" : false,
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
  "description" : "The AU Recorded Sex or Gender (RSG) Source Document Type value set includes codes that can be used to represent the type of document where this sex or gender value is recorded.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "AU"
    }]
  }],
  "copyright" : "This material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc",
  "compose" : {
    "include" : [{
      "system" : "http://loinc.org",
      "concept" : [{
        "code" : "71230-7"
      },
      {
        "code" : "53245-7"
      }]
    },
    {
      "system" : "http://terminology.hl7.org.au/CodeSystem/rsg-source-document-type",
      "concept" : [{
        "code" : "passport"
      },
      {
        "code" : "citizenship-certificate"
      },
      {
        "code" : "birth-notification"
      }]
    }]
  }
}

```
