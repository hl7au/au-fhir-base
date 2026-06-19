# Encounter Description - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **Encounter Description**

## Extension: Encounter Description 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://hl7.org.au/fhir/StructureDefinition/encounter-description | *Version*:6.0.1-ci-build | |
| * Standards status: *[Deprecated](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](generalguidance.md#maturity-levels): 1 | *Computable Name*:EncounterDescription |
| **Copyright/Legal**: HL7 Australia© 2018+; Licensed Under Creative Commons No Rights Reserved. | | |

This extension applies to the Encounter resource and is used to represent a narrative description of the healthcare event or encounter. The description may include a summary of the issues or problems, management strategies, outcomes or progress, possible prognosis, and the patient’s understanding of the healthcare event. The description may capture text about the encounter that is not captured in other fields.

**Context of Use**

### Usage Notes

**Usage info**

**Usages:**

* This Extension is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.au.base|current/StructureDefinition/StructureDefinition-encounter-description.json)

**Changes since version 6.0.0:**

* No changes

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-encounter-description.csv), [Excel](StructureDefinition-encounter-description.xlsx), [Schematron](StructureDefinition-encounter-description.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "encounter-description",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm",
    "valueInteger" : 1
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status",
    "valueCode" : "deprecated",
    "_valueCode" : {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status-reason",
        "valueMarkdown" : "This extension is deprecated as supporting clinical summary information (including clinical notes) in a resource-level extension is not in alignment with widely implemented approaches internationally and not considered best practice.\n\nSupport for clinical notes in Australia is subject to further discussion and input is sought from the community."
      }]
    }
  }],
  "url" : "http://hl7.org.au/fhir/StructureDefinition/encounter-description",
  "version" : "6.0.1-ci-build",
  "name" : "EncounterDescription",
  "title" : "Encounter Description",
  "status" : "retired",
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
  "description" : "This extension applies to the Encounter resource and is used to represent a narrative description of the healthcare event or encounter. The description may include a summary of the issues or problems, management strategies, outcomes or progress, possible prognosis, and the patient’s understanding of the healthcare event. The description may capture text about the encounter that is not captured in other fields.",
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
    "expression" : "Encounter"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Deprecated: Description, overview or summary of an encounter",
      "definition" : "This extension is deprecated as supporting clinical summary information (including clinical notes) in a resource-level extension is not in alignment with widely implemented approaches internationally and not considered best practice. Support for clinical notes in Australia is subject to further discussion and input is sought from the community.\n\nDescription, overview or summary of a clinical event and its reasons.",
      "max" : "1"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://hl7.org.au/fhir/StructureDefinition/encounter-description"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "short" : "Encounter description",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
