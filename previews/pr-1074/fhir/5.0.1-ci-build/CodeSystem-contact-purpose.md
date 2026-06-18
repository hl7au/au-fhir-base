# Contact Purpose - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **Contact Purpose**

## CodeSystem: Contact Purpose 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://terminology.hl7.org.au/CodeSystem/contact-purpose | *Version*:6.0.1-ci-build | |
| * Standards status: *[Trial-use](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](generalguidance.md#maturity-levels): 1 | *Computable Name*:ContactPurpose |
| *Other Identifiers:*OID:2.16.840.1.113883.2.3.4.1.4.19 | | |
| **Copyright/Legal**: HL7 Australia© 2018+; Licensed Under Creative Commons No Rights Reserved. | | |

 
Purpose for associated contact information. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [ContactPurpose](ValueSet-contact-purpose.md)

**Changes since version 6.0.0:**

* No changes



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "contact-purpose",
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
  "url" : "http://terminology.hl7.org.au/CodeSystem/contact-purpose",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.2.3.4.1.4.19"
  }],
  "version" : "6.0.1-ci-build",
  "name" : "ContactPurpose",
  "title" : "Contact Purpose",
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
  "description" : "Purpose for associated contact information.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "AU"
    }]
  }],
  "copyright" : "HL7 Australia© 2018+; Licensed Under Creative Commons No Rights Reserved.",
  "caseSensitive" : true,
  "compositional" : false,
  "versionNeeded" : false,
  "content" : "complete",
  "count" : 6,
  "concept" : [{
    "code" : "after-hours",
    "display" : "After Hours",
    "definition" : "Contact to be used during an after hours period as determined by the contact entity. An after hours period is a period of time outside of normal operating periods of the entity or service."
  },
  {
    "code" : "medical-record",
    "display" : "Medical Record",
    "definition" : "Contact for medical/clinical records including provision of results to a practitioner or the correction of a clinical record."
  },
  {
    "code" : "emergency",
    "display" : "Emergency",
    "definition" : "Contact to be used in an emergency."
  },
  {
    "code" : "clinical-emergency",
    "display" : "Clinical Emergency",
    "definition" : "Contact to be used in a clinical emergency."
  },
  {
    "code" : "legal",
    "display" : "Legal",
    "definition" : "Contact for legal concerns or enquiries."
  },
  {
    "code" : "privacy",
    "display" : "Privacy",
    "definition" : "Contact for concerns or enquiries relating to privacy of information."
  }]
}

```
