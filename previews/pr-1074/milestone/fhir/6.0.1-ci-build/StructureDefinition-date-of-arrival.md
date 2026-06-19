# Date of Arrival in Australia - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **Date of Arrival in Australia**

## Extension: Date of Arrival in Australia 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://hl7.org.au/fhir/StructureDefinition/date-of-arrival | *Version*:6.0.1-ci-build | |
| * Standards status: *[Trial-use](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](generalguidance.md#maturity-levels): 1 | *Computable Name*:DateOfArrivalAustralia |
| **Copyright/Legal**: HL7 Australia© 2018+; Licensed Under Creative Commons No Rights Reserved. | | |

This extension applies to the Patient, RelatedPerson, and Practitioner resources and is used to represent a person's date of arrival in an Australian context (see [Australian Bureau of Statistics](https://www.abs.gov.au/AUSSTATS/abs@.nsf/Lookup/1200.0.55.007Main+Features12014,%20Version%201.5?OpenDocument) for further information). The date of arrival is when a person (born outside of Australia) first arrived in Australia, from another country, with the intention of living in Australia for one year or more. This date is recorded once for a person and is not subsequently updated with subsequent arrivals. This element is a part of Cultural and Linguistic Diversity (CALD) data set. It is an important indicator of cultural identity, and provides further information about a person's cultural values and practices which can be significant in determining service type, support required, and possible needs.

**Context of Use**

### Usage Notes

**Usage info**

**Usages:**

* Use this Extension: [AU Base Patient](StructureDefinition-au-patient.md)
* Examples for this Extension: [Patient/example7](Patient-example7.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.au.base|current/StructureDefinition/StructureDefinition-date-of-arrival.json)

**Changes since version 6.0.0:**

* No changes

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-date-of-arrival.csv), [Excel](StructureDefinition-date-of-arrival.xlsx), [Schematron](StructureDefinition-date-of-arrival.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "date-of-arrival",
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
  "url" : "http://hl7.org.au/fhir/StructureDefinition/date-of-arrival",
  "version" : "6.0.1-ci-build",
  "name" : "DateOfArrivalAustralia",
  "title" : "Date of Arrival in Australia",
  "status" : "active",
  "date" : "2026-06-19T01:46:09+00:00",
  "publisher" : "HL7 Australia",
  "contact" : [{
    "name" : "HL7 Australia FHIR Working Group",
    "telecom" : [{
      "system" : "url",
      "value" : "https://confluence.hl7.org/display/HAFWG",
      "use" : "work"
    }]
  }],
  "description" : "This extension applies to the Patient, RelatedPerson, and Practitioner resources and is used to represent a person's date of arrival in an Australian context (see [Australian Bureau of Statistics](https://www.abs.gov.au/AUSSTATS/abs@.nsf/Lookup/1200.0.55.007Main+Features12014,%20Version%201.5?OpenDocument) for further information). The date of arrival is when a person (born outside of Australia) first arrived in Australia, from another country, with the intention of living in Australia for one year or more. This date is recorded once for a person and is not subsequently updated with subsequent arrivals. This element is a part of Cultural and Linguistic Diversity (CALD) data set. It is an important indicator of cultural identity, and provides further information about a person's cultural values and practices which can be significant in determining service type, support required, and possible needs.",
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
    "expression" : "Patient"
  },
  {
    "type" : "element",
    "expression" : "RelatedPerson"
  },
  {
    "type" : "element",
    "expression" : "Practitioner"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "The date a person first arrived in Australia, from another country, with the intention of living in Australia for one year or more",
      "definition" : "The date a person first arrived in Australia, from another country, with the intention of living in Australia for one year or more. This date is captured once for a person and is not subsequently updated with subsequent arrivals.",
      "comment" : "See [Australian Bureau of Statics (ABS) 1200.0.55.007 - Year of Arrival Standard, 2014, Version 1.5](https://www.abs.gov.au/statistics/standards/year-arrival-standard/2014-version-15) for further information. This concept is equivalent to Australian Institute of Health and Welfare data element 269447 [Person—year of first arrival in Australia](https://meteor.aihw.gov.au/content/index.phtml/itemId/269447).",
      "max" : "1"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://hl7.org.au/fhir/StructureDefinition/date-of-arrival"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "short" : "Date of first arrival in Australia",
      "min" : 1,
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "Extension.value[x].extension",
      "path" : "Extension.value[x].extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "rules" : "open"
      }
    },
    {
      "id" : "Extension.value[x].extension:date-accuracy-indicator",
      "path" : "Extension.value[x].extension",
      "sliceName" : "date-accuracy-indicator",
      "short" : "Date accuracy indicator",
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org.au/fhir/StructureDefinition/date-accuracy-indicator"]
      }]
    },
    {
      "id" : "Extension.value[x].extension:date-accuracy-indicator.url",
      "path" : "Extension.value[x].extension.url",
      "fixedUri" : "date-accuracy-indicator"
    },
    {
      "id" : "Extension.value[x].extension:date-accuracy-indicator.value[x]",
      "path" : "Extension.value[x].extension.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }]
    }]
  }
}

```
