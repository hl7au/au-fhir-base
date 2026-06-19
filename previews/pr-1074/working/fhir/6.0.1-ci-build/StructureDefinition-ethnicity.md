# Ethnicity - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **Ethnicity**

## Extension: Ethnicity 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://hl7.org.au/fhir/StructureDefinition/ethnicity | *Version*:6.0.1-ci-build | |
| * Standards status: *[Trial-use](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](generalguidance.md#maturity-levels): 0 | *Computable Name*:Ethnicity |
| **Copyright/Legal**: HL7 Australia© 2018+; Licensed Under Creative Commons No Rights Reserved. | | |

This extension applies to the Patient resource and is used to represent ethnic identity (see [Australian Bureau of Statistics](https://www.abs.gov.au/statistics/classifications/australian-standard-classification-cultural-and-ethnic-groups-ascceg/2019) for further information). This extension is to support the provision of healthcare services to patients with specific cultural identities. This extension provides further information about a person’s cultural values and practices which can be significant in determining service type, support required and possible needs.

The words 'ethnicity' and 'ethnic' are associated with many different meanings, but for the purpose of this extension ethnicity refers to the shared identity or similarity of a group of people on the basis of one or more distinguishing sociological characteristics, such as language, shared history, religion, cultural traditions or geographic origin etc. This extension supports Australian Aboriginal and Torres Strait Islander peoples as well as ethnicities originating from outside of Australia.

**Context of Use**

There is concern on the appropriateness of the [Australian Standard Classification of Cultural and Ethnic Groups (ASCCEG) 2019](https://www.abs.gov.au/statistics/classifications/australian-standard-classification-cultural-and-ethnic-groups-ascceg/2019) and the more specific [ancestry coding index.](https://www.abs.gov.au/statistics/classifications/australian-standard-classification-cultural-and-ethnic-groups-ascceg/2019#index-for-coding-responses) Feedback is sought on the suitability of these coding standards in supporting targeted provision of culturally appropriate healthcare services.

This extension is not suitable for use when an ethnic identity is comprised of an unstructured string of potentially multiple composites (e.g. 'Of Malaysian and German descent but associates more as a Malay'). Feedback is sought on how to support an unstructured string, including the possibility of a string alternative to cater for narrative or composite text statements.

### Usage Notes

**Usage info**

**Usages:**

* Examples for this Extension: [Patient/example4](Patient-example4.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.au.base|current/StructureDefinition/StructureDefinition-ethnicity.json)

**Changes since version 6.0.0:**

* New Content

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ethnicity.csv), [Excel](StructureDefinition-ethnicity.xlsx), [Schematron](StructureDefinition-ethnicity.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ethnicity",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm",
    "valueInteger" : 0
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
  "url" : "http://hl7.org.au/fhir/StructureDefinition/ethnicity",
  "version" : "6.0.1-ci-build",
  "name" : "Ethnicity",
  "title" : "Ethnicity",
  "status" : "draft",
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
  "description" : "This extension applies to the Patient resource and is used to represent ethnic identity (see [Australian Bureau of Statistics](https://www.abs.gov.au/statistics/classifications/australian-standard-classification-cultural-and-ethnic-groups-ascceg/2019) for further information). This extension is to support the provision of healthcare services to patients with specific cultural identities. This extension provides further information about a person’s cultural values and practices which can be significant in determining service type, support required and possible needs.\n\nThe words 'ethnicity' and 'ethnic' are associated with many different meanings, but for the purpose of this extension ethnicity refers to the shared identity or similarity of a group of people on the basis of one or more distinguishing sociological characteristics, such as language, shared history, religion, cultural traditions or geographic origin etc. This extension supports Australian Aboriginal and Torres Strait Islander peoples as well as ethnicities originating from outside of Australia.",
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
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Ethnicity",
      "definition" : "Ethnicity refers to the shared identity or similarity of a group of people on the basis of one or more distinguishing characteristics. These characteristics include a long shared history, the memory of which is kept alive; a cultural tradition, including family and social customs, sometimes religiously based; a common geographic origin; a common language (but not necessarily limited to that group); a common literature (written or oral); a common religion; being a minority (often with a sense of being oppressed) and being racially conspicuous.",
      "comment" : "The words 'ethnicity' and 'ethnic' are associated with many different meanings, but for the purpose of this extension ethnicity refers to the shared identity or similarity of a group of people on the basis of one or more distinguishing sociological characteristics, such as language, shared history, religion, cultural traditions or geographic origin etc. This extension supports Australian Aboriginal and Torres Strait Islander peoples as well as ethnicities originating from outside of Australia. See [Australian Standard Classification of Cultural and Ethnic Groups (ASCCEG)](https://www.abs.gov.au/statistics/classifications/australian-standard-classification-cultural-and-ethnic-groups-ascceg/2019) for further information."
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://hl7.org.au/fhir/StructureDefinition/ethnicity"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "short" : "Coded ethnicity",
      "min" : 1,
      "type" : [{
        "code" : "CodeableConcept"
      }]
    }]
  }
}

```
