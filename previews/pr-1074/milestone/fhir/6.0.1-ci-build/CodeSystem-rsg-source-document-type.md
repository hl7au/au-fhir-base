# AU Recorded Sex or Gender Source Document Type - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **AU Recorded Sex or Gender Source Document Type**

## CodeSystem: AU Recorded Sex or Gender Source Document Type 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://terminology.hl7.org.au/CodeSystem/rsg-source-document-type | *Version*:6.0.1-ci-build | |
| * Standards status: *[Trial-use](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](generalguidance.md#maturity-levels): 1 | *Computable Name*:AURecordedSexOrGenderSourceDocumentType |
| *Other Identifiers:*OID:2.16.840.1.113883.2.3.4.1.4.30 | | |
| **Copyright/Legal**: HL7 Australia© 2018+; Licensed Under Creative Commons No Rights Reserved. | | |

 
The AU Recorded Sex or Gender Source Document Type code system defines concepts that represent the type of document where this sex or gender value is recorded. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [AURecordedSexOrGenderSourceDocumentType](ValueSet-rsg-source-document-type.md)

**Changes since version 6.0.0:**

* No changes



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "rsg-source-document-type",
  "meta" : {
    "profile" : ["https://healthterminologies.gov.au/fhir/StructureDefinition/complete-code-system-4"]
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
  "url" : "http://terminology.hl7.org.au/CodeSystem/rsg-source-document-type",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.2.3.4.1.4.30"
  }],
  "version" : "6.0.1-ci-build",
  "name" : "AURecordedSexOrGenderSourceDocumentType",
  "title" : "AU Recorded Sex or Gender Source Document Type",
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
  "description" : "The AU Recorded Sex or Gender Source Document Type code system defines concepts that represent the type of document where this sex or gender value is recorded.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "AU"
    }]
  }],
  "copyright" : "HL7 Australia© 2018+; Licensed Under Creative Commons No Rights Reserved.",
  "caseSensitive" : true,
  "valueSet" : "http://terminology.hl7.org.au/ValueSet/au-recorded-sex-or-gender-source-document-type",
  "hierarchyMeaning" : "is-a",
  "compositional" : false,
  "versionNeeded" : false,
  "content" : "complete",
  "count" : 3,
  "concept" : [{
    "code" : "passport",
    "display" : "Passport",
    "definition" : "A passport issued by a jurisdiction."
  },
  {
    "code" : "citizenship-certificate",
    "display" : "Citizenship Certificate",
    "definition" : "A citizenship certificate issued by a jurisdiction."
  },
  {
    "code" : "birth-notification",
    "display" : "Birth Notification",
    "definition" : "A notification of a birth from the health service in which the birth occurred."
  }]
}

```
