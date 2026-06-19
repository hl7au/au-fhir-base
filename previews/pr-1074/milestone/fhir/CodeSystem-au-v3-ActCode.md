# ActCode AU - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **ActCode AU**

## CodeSystem: ActCode AU 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://terminology.hl7.org.au/CodeSystem/v3-ActCode | *Version*:6.0.1-ci-build | |
| * Standards status: *[Trial-use](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](generalguidance.md#maturity-levels): 1 | *Computable Name*:ActCodeAU |
| *Other Identifiers:*OID:2.16.840.1.113883.2.3.4.1.4.20 | | |
| **Copyright/Legal**: HL7 Australia© 2018+; Licensed Under Creative Commons No Rights Reserved. | | |

 
Additional concept codes for act coding defined for use in an Australian context. These codes are used as extensions to the HL7 International code set. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [CoverageTypeandSelfPayCodesAUExtended](ValueSet-au-coverage-type-extended.md)
* [ActEncounterCodeAUExtended](ValueSet-au-v3-ActEncounterCode-extended.md)

**Changes since version 6.0.0:**

* No changes



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "au-v3-ActCode",
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
  "url" : "http://terminology.hl7.org.au/CodeSystem/v3-ActCode",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.2.3.4.1.4.20"
  }],
  "version" : "6.0.1-ci-build",
  "name" : "ActCodeAU",
  "title" : "ActCode AU",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-06-19T03:25:57+00:00",
  "publisher" : "HL7 Australia",
  "contact" : [{
    "name" : "HL7 Australia FHIR Working Group",
    "telecom" : [{
      "system" : "url",
      "value" : "https://confluence.hl7.org/display/HAFWG",
      "use" : "work"
    }]
  }],
  "description" : "Additional concept codes for act coding defined for use in an Australian context. These codes are used as extensions to the HL7 International code set.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "AU"
    }]
  }],
  "copyright" : "HL7 Australia© 2018+; Licensed Under Creative Commons No Rights Reserved.",
  "caseSensitive" : true,
  "valueSet" : "http://terminology.hl7.org.au/ValueSet/v3-ActCode",
  "compositional" : false,
  "versionNeeded" : false,
  "content" : "complete",
  "count" : 6,
  "concept" : [{
    "code" : "PHONE",
    "display" : "Telephone Consultation",
    "definition" : "Encounter by telephone communication."
  },
  {
    "code" : "VIDEO",
    "display" : "Video Conferencing",
    "definition" : "Encounter by video conferencing."
  },
  {
    "code" : "RACF",
    "display" : "Residential Aged Care Facility",
    "definition" : "Encounter in a residential aged care facility setting."
  },
  {
    "code" : "EMAIL",
    "display" : "E-mail Correspondence",
    "definition" : "Encounter by e-mail correspondence."
  },
  {
    "code" : "SMS",
    "display" : "SMS",
    "definition" : "Encounter by SMS (short message service)."
  },
  {
    "code" : "AUPUBHOSP",
    "display" : "Australian Public Hospital Scheme",
    "definition" : "An insurance scheme funded for Australian Public Hospital coverage."
  }]
}

```
