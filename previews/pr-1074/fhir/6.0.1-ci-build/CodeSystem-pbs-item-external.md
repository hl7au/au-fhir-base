# PBS Item Codes - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **PBS Item Codes**

## CodeSystem: PBS Item Codes 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://pbs.gov.au/code/item | *Version*:6.0.1-ci-build | |
| * Standards status: *[Trial-use](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](generalguidance.md#maturity-levels): 2 | *Computable Name*:PBSItemCodes |
| **Copyright/Legal**: Copyright (c) Department of Health, Commonwealth of Australia. | | |

 
This CodeSystem resource represents the items listed on the Australian Pharmaceutical Benefits Scheme (PBS) schedule published by the Department of Health. Codes are represented as five or six characters in format (n)nnnna and the display is the PBS prescribing rule preferred term. This is not the canonical publication of this code system nor it is intended to be publication on behalf of the Department of Health. For the complete content of the code system contact the publisher. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [PBSItemCodes](ValueSet-pbs-item.md)

**Changes since version 6.0.0:**

* No changes



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "pbs-item-external",
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
  "url" : "http://pbs.gov.au/code/item",
  "version" : "6.0.1-ci-build",
  "name" : "PBSItemCodes",
  "title" : "PBS Item Codes",
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
  "description" : "This CodeSystem resource represents the items listed on the Australian Pharmaceutical Benefits Scheme (PBS) schedule published by the Department of Health. Codes are represented as five or six characters in format (n)nnnna and the display is the PBS prescribing rule preferred term. This is not the canonical publication of this code system nor it is intended to be publication on behalf of the Department of Health. For the complete content of the code system contact the publisher.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "AU"
    }]
  }],
  "copyright" : "Copyright (c) Department of Health, Commonwealth of Australia.",
  "caseSensitive" : false,
  "compositional" : false,
  "versionNeeded" : false,
  "content" : "not-present"
}

```
