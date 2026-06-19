# DegreeLicenseCertificate AU - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **DegreeLicenseCertificate AU**

## CodeSystem: DegreeLicenseCertificate AU 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://terminology.hl7.org.au/CodeSystem/v2-0360 | *Version*:6.0.1-ci-build | |
| * Standards status: *[Trial-use](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](generalguidance.md#maturity-levels): 1 | *Computable Name*:DegreeLicenseCertificateAU |
| *Other Identifiers:*OID:2.16.840.1.113883.2.3.4.1.3.360 | | |
| **Copyright/Legal**: HL7 Australia© 2018+; Licensed Under Creative Commons No Rights Reserved. | | |

 
Additional concept codes for qualification defined for use in an Australian context. These codes are used as extensions to the HL7 International code set. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Hl7VSDegreeLicenseCertificateAUExtended](ValueSet-au-v2-0360-extended.md)

**Changes since version 6.0.0:**

* No changes



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "au-v2-0360",
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
  "url" : "http://terminology.hl7.org.au/CodeSystem/v2-0360",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.2.3.4.1.3.360"
  }],
  "version" : "6.0.1-ci-build",
  "name" : "DegreeLicenseCertificateAU",
  "title" : "DegreeLicenseCertificate AU",
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
  "description" : "Additional concept codes for qualification defined for use in an Australian context. These codes are used as extensions to the HL7 International code set.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "AU"
    }]
  }],
  "copyright" : "HL7 Australia© 2018+; Licensed Under Creative Commons No Rights Reserved.",
  "caseSensitive" : true,
  "valueSet" : "http://terminology.hl7.org.au/ValueSet/v2-0360",
  "compositional" : false,
  "versionNeeded" : false,
  "content" : "complete",
  "count" : 3,
  "property" : [{
    "code" : "status",
    "uri" : "http://hl7.org/fhir/concept-properties#status",
    "description" : "A property that indicates the status of the concept. One of active, experimental,   deprecated, retired",
    "type" : "code"
  },
  {
    "code" : "deprecationDate",
    "uri" : "http://hl7.org/fhir/concept-properties#deprecationDate",
    "description" : "The date at which a concept was deprecated. Concepts that are deprecated but not   inactive can still be used, but their use is discouraged",
    "type" : "dateTime"
  }],
  "concept" : [{
    "code" : "AHPRA",
    "display" : "Ahpra Registration",
    "definition" : "An Australian Health Practitioner Regulation Authority (Ahpra) Registration.",
    "designation" : [{
      "use" : {
        "system" : "http://snomed.info/sct",
        "code" : "900000000000013009"
      },
      "value" : "Ahpra Registration"
    }]
  },
  {
    "code" : "AUAHPRAProfession",
    "display" : "AHPRA Profession",
    "definition" : "An Australian Health Practitioner Regulation Authority (Ahpra) profession. ***Deprecation Comment:*** This code has been deprecated along with the corresponding AU Base Ahpra Profession Details extension. Use the qualification type term AHPRA in association with an Ahpra registration.",
    "designation" : [{
      "use" : {
        "system" : "http://snomed.info/sct",
        "code" : "900000000000013009"
      },
      "value" : "Ahpra Profession"
    }],
    "property" : [{
      "code" : "status",
      "valueCode" : "deprecated"
    },
    {
      "code" : "deprecationDate",
      "valueDateTime" : "2025-07-23"
    }]
  },
  {
    "code" : "AUAHPRARegistration",
    "display" : "AHPRA Registration",
    "definition" : "An Australian Health Practitioner Regulation Authority (Ahpra) registration. ***Deprecation Comment:*** This code has been deprecated along with the corresponding AU Base Ahpra Registration Details extension. Use the qualification type term AHPRA in association with an Ahpra registration.",
    "designation" : [{
      "use" : {
        "system" : "http://snomed.info/sct",
        "code" : "900000000000013009"
      },
      "value" : "Ahpra Registration"
    }],
    "property" : [{
      "code" : "status",
      "valueCode" : "deprecated"
    },
    {
      "code" : "deprecationDate",
      "valueDateTime" : "2025-07-23"
    }]
  }]
}

```
