# Task Business Status - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **Task Business Status**

## CodeSystem: Task Business Status 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://terminology.hl7.org.au/CodeSystem/task-business-status | *Version*:6.0.1-ci-build | |
| * Standards status: *[Trial-use](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](generalguidance.md#maturity-levels): 1 | *Computable Name*:TaskBusinessStatus |
| *Other Identifiers:*OID:2.16.840.1.113883.2.3.4.1.4.39 | | |
| **Copyright/Legal**: HL7 Australia© 2018+; Licensed Under Creative Commons No Rights Reserved. | | |

 
The Task Business Status code system defines concepts that represent business status values for a task. 

 This Code system is referenced in the content logical definition of the following value sets: 

* This CodeSystem is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

**Changes since version 6.0.0:**

* No changes



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "task-business-status",
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
  "url" : "http://terminology.hl7.org.au/CodeSystem/task-business-status",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.2.3.4.1.4.39"
  }],
  "version" : "6.0.1-ci-build",
  "name" : "TaskBusinessStatus",
  "title" : "Task Business Status",
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
  "description" : "The Task Business Status code system defines concepts that represent business status values for a task.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "AU"
    }]
  }],
  "copyright" : "HL7 Australia© 2018+; Licensed Under Creative Commons No Rights Reserved.",
  "caseSensitive" : true,
  "valueSet" : "http://terminology.hl7.org.au/ValueSet/task-business-status",
  "compositional" : false,
  "versionNeeded" : false,
  "content" : "complete",
  "count" : 10,
  "concept" : [{
    "code" : "service-booked",
    "display" : "Service booked",
    "definition" : "Service has been booked."
  },
  {
    "code" : "request-claimed",
    "display" : "Request claimed",
    "definition" : "Task has been cancelled as the request has been claimed by another filler."
  },
  {
    "code" : "request-cancelled-placer",
    "display" : "Request cancelled by placer",
    "definition" : "Task has been cancelled as the request has been cancelled by the placer."
  },
  {
    "code" : "cancel-handled",
    "display" : "Cancel handled",
    "definition" : "Cancelled task has been handled by the filler."
  },
  {
    "code" : "request-data-issue",
    "display" : "Request rejected with data issue",
    "definition" : "Rejected fulfilment task due to an issue with the request data."
  },
  {
    "code" : "preliminary-results",
    "display" : "Preliminary results",
    "definition" : "There are preliminary results."
  },
  {
    "code" : "addendum-report-complete",
    "display" : "Addendum report complete",
    "definition" : "Addendum report is complete."
  },
  {
    "code" : "specimen-collected",
    "display" : "Specimen collected",
    "definition" : "Specimen has been collected."
  },
  {
    "code" : "pathology-in-lab",
    "display" : "Pathology specimen in lab",
    "definition" : "Specimen is in a pathology lab."
  },
  {
    "code" : "image-acquired",
    "display" : "Image acquired",
    "definition" : "Image acquisition complete."
  }]
}

```
