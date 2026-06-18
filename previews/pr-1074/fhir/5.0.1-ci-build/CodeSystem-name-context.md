# Name Context - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **Name Context**

## CodeSystem: Name Context 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://terminology.hl7.org.au/CodeSystem/name-context | *Version*:6.0.1-ci-build | |
| * Standards status: *[Trial-use](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](generalguidance.md#maturity-levels): 1 | *Computable Name*:NameContext |
| *Other Identifiers:*OID:2.16.840.1.113883.2.3.4.1.4.31 | | |
| **Copyright/Legal**: HL7 Australia© 2018+; Licensed Under Creative Commons No Rights Reserved. | | |

 
The Name Context code system defines concepts describing usage of names. This provides well known concepts that can be used to indicate usage to achieve an associated purpose e.g. identifier validation. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [NameContext](ValueSet-name-context.md)

**Changes since version 6.0.0:**

* No changes



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "name-context",
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
  "url" : "http://terminology.hl7.org.au/CodeSystem/name-context",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.2.3.4.1.4.31"
  }],
  "version" : "6.0.1-ci-build",
  "name" : "NameContext",
  "title" : "Name Context",
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
  "description" : "The Name Context code system defines concepts describing usage of names. This provides well known concepts that can be used to indicate usage to achieve an associated purpose e.g. identifier validation.",
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
  "count" : 2,
  "concept" : [{
    "code" : "ihi-validation",
    "display" : "IHI Validation",
    "definition" : "Indicates associated name is for IHI (Individual Healthcare Identifier) validation."
  },
  {
    "code" : "hpii-validation",
    "display" : "HPI-I Validation",
    "definition" : "Indicates associated name is for HPI-I (Healthcare Provider Identifier - Individual) validation."
  }]
}

```
