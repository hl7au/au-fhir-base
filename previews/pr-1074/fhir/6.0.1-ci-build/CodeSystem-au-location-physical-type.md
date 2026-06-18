# Location Type (Physical) AU - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **Location Type (Physical) AU**

## CodeSystem: Location Type (Physical) AU 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://terminology.hl7.org.au/CodeSystem/location-physical-type | *Version*:6.0.1-ci-build | |
| * Standards status: *[Trial-use](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](generalguidance.md#maturity-levels): 1 | *Computable Name*:LocationTypePhysicalAU |
| *Other Identifiers:*OID:2.16.840.1.113883.2.3.4.1.4.25 | | |
| **Copyright/Legal**: HL7 Australia© 2018+; Licensed Under Creative Commons No Rights Reserved. | | |

 
Additional concept codes for location physical type defined for use in Australian context. These codes are used as extensions to the HL7 International code set. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [LocationPhysicalTypeAUExtended](ValueSet-au-location-physical-type-extended.md)

**Changes since version 6.0.0:**

* No changes



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "au-location-physical-type",
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
  "url" : "http://terminology.hl7.org.au/CodeSystem/location-physical-type",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.2.3.4.1.4.25"
  }],
  "version" : "6.0.1-ci-build",
  "name" : "LocationTypePhysicalAU",
  "title" : "Location Type (Physical) AU",
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
  "description" : "Additional concept codes for location physical type defined for use in Australian context. These codes are used as extensions to the HL7 International code set.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "AU"
    }]
  }],
  "copyright" : "HL7 Australia© 2018+; Licensed Under Creative Commons No Rights Reserved.",
  "caseSensitive" : true,
  "valueSet" : "http://terminology.hl7.org.au/ValueSet/location-physical-type",
  "compositional" : false,
  "versionNeeded" : false,
  "content" : "complete",
  "count" : 1,
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
    "code" : "vi",
    "display" : "Virtual",
    "definition" : "Location of services delivered at a virtual location, such as by phone or on-line. ***Deprecation Comment:*** This code has been deprecated as it has been replaced by an equivalent term provided by HL7 international.",
    "property" : [{
      "code" : "status",
      "valueCode" : "deprecated"
    },
    {
      "code" : "deprecationDate",
      "valueDateTime" : "2023-02-15"
    }]
  }]
}

```
