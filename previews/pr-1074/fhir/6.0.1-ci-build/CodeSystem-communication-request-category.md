# Communication Request Category - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **Communication Request Category**

## CodeSystem: Communication Request Category 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://terminology.hl7.org.au/CodeSystem/communication-request-category | *Version*:6.0.1-ci-build | |
| * Standards status: *[Trial-use](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](generalguidance.md#maturity-levels): 1 | *Computable Name*:CommunicationRequestCategory |
| *Other Identifiers:*OID:2.16.840.1.113883.2.3.4.1.4.37 | | |
| **Copyright/Legal**: HL7 Australia© 2018+; Licensed Under Creative Commons No Rights Reserved. | | |

 
The Communication Request Category code system defines concepts that represent the category for a communication request. 

 This Code system is referenced in the content logical definition of the following value sets: 

* This CodeSystem is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

**Changes since version 6.0.0:**

* No changes



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "communication-request-category",
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
  "url" : "http://terminology.hl7.org.au/CodeSystem/communication-request-category",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.2.3.4.1.4.37"
  }],
  "version" : "6.0.1-ci-build",
  "name" : "CommunicationRequestCategory",
  "title" : "Communication Request Category",
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
  "description" : "The Communication Request Category code system defines concepts that represent the category for a communication request.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "AU"
    }]
  }],
  "copyright" : "HL7 Australia© 2018+; Licensed Under Creative Commons No Rights Reserved.",
  "caseSensitive" : true,
  "valueSet" : "http://terminology.hl7.org.au/ValueSet/communication-request-category",
  "compositional" : false,
  "versionNeeded" : false,
  "content" : "complete",
  "count" : 3,
  "concept" : [{
    "code" : "urgent-results",
    "display" : "Urgent Results",
    "definition" : "A request for results to be communicated urgently to the nominated recipient(s)."
  },
  {
    "code" : "patient-preference",
    "display" : "Patient Preference",
    "definition" : "A patient's preferences on communication to them from a service provider."
  },
  {
    "code" : "copyto-reports",
    "display" : "Copy To Reports",
    "definition" : "A request for reports to be copied to additional recipient(s)."
  }]
}

```
