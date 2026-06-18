# Monthly Index of Medical Specialties (MIMS) - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **Monthly Index of Medical Specialties (MIMS)**

## CodeSystem: Monthly Index of Medical Specialties (MIMS) 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://www.mims.com.au/codes | *Version*:6.0.1-ci-build | |
| * Standards status: *[Trial-use](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](generalguidance.md#maturity-levels): 2 | *Computable Name*:MIMS |
| *Other Identifiers:*OID:1.2.36.1.2001.1005.11.1 | | |
| **Copyright/Legal**: Copyright (c) MIMS Australia Pty Ltd. | | |

 
This CodeSystem resource represents the Monthly Index of Medical Specialties (MIMS) code system published by MIMS Australia. The intended use of MIMS data is to fully specify the product as a combination of product code, form code, and pack code. For example, when providing a MIMS Code within a Clinical Document Architecture (CDA) document, the MIMS code will be a minimum of 5 digits (in most cases, will be 8 digits).This is not the canonical publication of this code system nor it is intended to be publication on behalf of the MIMS Australia. For the complete content of the code system contact the publisher. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [MIMS](ValueSet-mims.md)

**Changes since version 6.0.0:**

* No changes



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "mims-external",
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
  "url" : "http://www.mims.com.au/codes",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:1.2.36.1.2001.1005.11.1"
  }],
  "version" : "6.0.1-ci-build",
  "name" : "MIMS",
  "title" : "Monthly Index of Medical Specialties (MIMS)",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-06-18T16:30:51+00:00",
  "publisher" : "HL7 Australia",
  "contact" : [{
    "name" : "HL7 Australia FHIR Working Group",
    "telecom" : [{
      "system" : "url",
      "value" : "https://confluence.hl7.org/display/HAFWG",
      "use" : "work"
    }]
  }],
  "description" : "This CodeSystem resource represents the Monthly Index of Medical Specialties (MIMS) code system published by MIMS Australia. The intended use of MIMS data is to fully specify the product as a combination of product code, form code, and pack code. For example, when providing a MIMS Code within a Clinical Document Architecture (CDA) document, the MIMS code will be a minimum of 5 digits (in most cases, will be 8 digits).This is not the canonical publication of this code system nor it is intended to be publication on behalf of the MIMS Australia. For the complete content of the code system contact the publisher.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "AU"
    }]
  }],
  "copyright" : "Copyright (c) MIMS Australia Pty Ltd.",
  "caseSensitive" : true,
  "compositional" : false,
  "versionNeeded" : false,
  "content" : "not-present"
}

```
