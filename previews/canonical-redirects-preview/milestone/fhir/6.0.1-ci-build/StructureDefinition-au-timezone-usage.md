# Australian Time Zone Usage - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **Australian Time Zone Usage**

## Extension: Australian Time Zone Usage 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://hl7.org.au/fhir/StructureDefinition/au-timezone-usage | *Version*:6.0.1-ci-build | |
| * Standards status: *[Trial-use](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](generalguidance.md#maturity-levels): 1 | *Computable Name*:AustralianTimeZoneUsage |
| **Copyright/Legal**: HL7 Australia© 2018+; Licensed Under Creative Commons No Rights Reserved. | | |

This profile defines specific usage of Australian time zones (states and territories) with the FHIR [Timezone Code extension](https://hl7.org/fhir/extensions/StructureDefinition-timezone.html).

**Context of Use**

### Usage Notes

**Examples:**

* Examples for this Extension Profile: [Albion Hospital Radiology Service](HealthcareService-example1.md) and [PractitionerRole/example2](PractitionerRole-example2.md)

**Usage info**

**Usages:**

* This Extension is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.au.base|current/StructureDefinition/StructureDefinition-au-timezone-usage.json)

**Changes since version 6.0.0:**

* No changes

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-au-timezone-usage.csv), [Excel](StructureDefinition-au-timezone-usage.xlsx), [Schematron](StructureDefinition-au-timezone-usage.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "au-timezone-usage",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm",
    "valueInteger" : 1
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-bind"
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
  "url" : "http://hl7.org.au/fhir/StructureDefinition/au-timezone-usage",
  "version" : "6.0.1-ci-build",
  "name" : "AustralianTimeZoneUsage",
  "title" : "Australian Time Zone Usage",
  "status" : "active",
  "date" : "2026-06-18T23:22:00+00:00",
  "publisher" : "HL7 Australia",
  "contact" : [{
    "name" : "HL7 Australia FHIR Working Group",
    "telecom" : [{
      "system" : "url",
      "value" : "https://confluence.hl7.org/display/HAFWG",
      "use" : "work"
    }]
  }],
  "description" : "This profile defines specific usage of Australian time zones (states and territories) with the FHIR [Timezone Code extension](https://hl7.org/fhir/extensions/StructureDefinition-timezone.html).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "AU"
    }]
  }],
  "copyright" : "HL7 Australia© 2018+; Licensed Under Creative Commons No Rights Reserved.",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "date"
  },
  {
    "type" : "element",
    "expression" : "dateTime"
  },
  {
    "type" : "element",
    "expression" : "instant"
  },
  {
    "type" : "element",
    "expression" : "Meta"
  },
  {
    "type" : "element",
    "expression" : "time"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/timezone",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Australian time zone expressed as IANA Timezone Code per BCP 175",
      "definition" : "An IANA timezone code, restricted to only Australian state and territory time zone offsets, as per BCP 175. For data types allowing the offset (all except date and time), this extension SHALL agree with the offset if provided and cannot be used in place of the offset if the precision expressed requires an offset. Where an offset is provided, this extension provides a more legible display of the zone associated with the offset. Where an offset is not present, this extension can be used to provide zone information not otherwise available."
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "short" : "Australian time zone",
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://terminology.hl7.org.au/ValueSet/au-timezone"
      }
    }]
  }
}

```
