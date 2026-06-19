# AU Recorded Sex or Gender (RSG) Source - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **AU Recorded Sex or Gender (RSG) Source**

## ValueSet: AU Recorded Sex or Gender (RSG) Source 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://terminology.hl7.org.au/ValueSet/rsg-source | *Version*:6.0.1-ci-build | |
| * Standards status: *[Trial-use](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](generalguidance.md#maturity-levels): 1 | *Computable Name*:AURecordedSexOrGenderSource |
| *Other Identifiers:*OID:2.16.840.1.113883.2.3.4.2.4.42 | | |
| **Copyright/Legal**: HL7 Australia© 2018+; Licensed Under Creative Commons No Rights Reserved. | | |

 
The AU Recorded Sex or Gender (RSG) Source value set includes codes that can be used to represent the non-document source where the sex or gender value is recorded. 

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
  "id" : "rsg-source",
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
  "url" : "http://terminology.hl7.org.au/ValueSet/rsg-source",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.2.3.4.2.4.42"
  }],
  "version" : "6.0.1-ci-build",
  "name" : "AURecordedSexOrGenderSource",
  "title" : "AU Recorded Sex or Gender (RSG) Source",
  "status" : "active",
  "experimental" : false,
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
  "description" : "The AU Recorded Sex or Gender (RSG) Source value set includes codes that can be used to represent the non-document source where the sex or gender value is recorded.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "AU"
    }]
  }],
  "copyright" : "HL7 Australia© 2018+; Licensed Under Creative Commons No Rights Reserved.",
  "compose" : {
    "include" : [{
      "system" : "http://terminology.hl7.org.au/CodeSystem/au-digital-health-source-system",
      "concept" : [{
        "code" : "au-hi"
      },
      {
        "code" : "au-ahpra"
      },
      {
        "code" : "au-medicare"
      },
      {
        "code" : "au-nhsd"
      }]
    }]
  }
}

```
