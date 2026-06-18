# AU Recorded Sex or Gender Type - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **AU Recorded Sex or Gender Type**

## CodeSystem: AU Recorded Sex or Gender Type 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://terminology.hl7.org.au/CodeSystem/rsg-type | *Version*:6.0.1-ci-build | |
| * Standards status: *[Trial-use](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](generalguidance.md#maturity-levels): 1 | *Computable Name*:AURecordedSexOrGenderType |
| *Other Identifiers:*OID:2.16.840.1.113883.2.3.4.1.4.29 | | |
| **Copyright/Legal**: HL7 Australia© 2018+; Licensed Under Creative Commons No Rights Reserved. | | |

 
The AU Recorded Sex or Gender Type code system defines concepts that represent the type or category of sex or gender that is recorded. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [AURecordedSexOrGenderType](ValueSet-rsg-type.md)

**Changes since version 6.0.0:**

* No changes



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "rsg-type",
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
  "url" : "http://terminology.hl7.org.au/CodeSystem/rsg-type",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.2.3.4.1.4.29"
  }],
  "version" : "6.0.1-ci-build",
  "name" : "AURecordedSexOrGenderType",
  "title" : "AU Recorded Sex or Gender Type",
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
  "description" : "The AU Recorded Sex or Gender Type code system defines concepts that represent the type or category of sex or gender that is recorded.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "AU"
    }]
  }],
  "copyright" : "HL7 Australia© 2018+; Licensed Under Creative Commons No Rights Reserved.",
  "caseSensitive" : true,
  "valueSet" : "http://terminology.hl7.org.au/ValueSet/au-recorded-sex-or-gender-type",
  "hierarchyMeaning" : "is-a",
  "compositional" : false,
  "versionNeeded" : false,
  "content" : "complete",
  "count" : 1,
  "concept" : [{
    "code" : "sex-gender",
    "display" : "Sex/Gender",
    "definition" : "A sex or gender recorded as an interchangeable sex and/or gender value."
  }]
}

```
