# Australian Digital Health Source System - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **Australian Digital Health Source System**

## CodeSystem: Australian Digital Health Source System 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://terminology.hl7.org.au/CodeSystem/au-digital-health-source-system | *Version*:6.0.1-ci-build | |
| * Standards status: *[Trial-use](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](generalguidance.md#maturity-levels): 1 | *Computable Name*:AustralianDigitalHealthSourceSystem |
| *Other Identifiers:*OID:2.16.840.1.113883.2.3.4.1.4.36 | | |
| **Copyright/Legal**: HL7 Australia© 2018+; Licensed Under Creative Commons No Rights Reserved. | | |

 
The Australian Digital Health Source System code system defines concepts that represent Australian digital health sources. These concepts may be used to represent which system clinical and/or administrative information is sourced. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [AURecordedSexOrGenderSource](ValueSet-rsg-source.md)

**Changes since version 6.0.0:**

* No changes



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "au-digital-health-source-system",
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
  "url" : "http://terminology.hl7.org.au/CodeSystem/au-digital-health-source-system",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.2.3.4.1.4.36"
  }],
  "version" : "6.0.1-ci-build",
  "name" : "AustralianDigitalHealthSourceSystem",
  "title" : "Australian Digital Health Source System",
  "status" : "active",
  "experimental" : false,
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
  "description" : "The Australian Digital Health Source System code system defines concepts that represent Australian digital health sources. These concepts may be used to represent which system clinical and/or administrative information is sourced.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "AU"
    }]
  }],
  "copyright" : "HL7 Australia© 2018+; Licensed Under Creative Commons No Rights Reserved.",
  "caseSensitive" : true,
  "valueSet" : "http://terminology.hl7.org.au/ValueSet/au-digital-health-source-system",
  "compositional" : false,
  "versionNeeded" : false,
  "content" : "complete",
  "count" : 4,
  "concept" : [{
    "code" : "au-hi",
    "display" : "Australian Healthcare Identifiers Service",
    "definition" : "Indicates the source of information is the Australian Healthcare Identifiers (HI) Service."
  },
  {
    "code" : "au-ahpra",
    "display" : "Australian Health Practitioner Regulation Agency",
    "definition" : "Indicates the source of information is the Australian Health Practitioner Regulation Agency."
  },
  {
    "code" : "au-medicare",
    "display" : "Australian Medicare",
    "definition" : "Indicates the source of information is the Australian Medicare universal health insurance scheme."
  },
  {
    "code" : "au-nhsd",
    "display" : "Australian National Health Services Directory",
    "definition" : "Indicates the source of information is the Australian National Health Services Directory."
  }]
}

```
