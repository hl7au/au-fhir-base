# Ahpra Profession Details - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **Ahpra Profession Details**

## Extension: Ahpra Profession Details 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://hl7.org.au/fhir/StructureDefinition/ahpraprofession-details | *Version*:6.0.1-ci-build | |
| * Standards status: *[Deprecated](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](generalguidance.md#maturity-levels): 1 | *Computable Name*:AhpraProfessionDetails |
| **Copyright/Legal**: HL7 Australia© 2018+; Licensed Under Creative Commons No Rights Reserved. | | |

This extension applies to the Practitioner.qualification element and is used to represent Australian Health Practitioner Regulation Agency (Ahpra) profession details (see [Ahpra](https://www.ahpra.gov.au/Support/Glossary.aspx#Registration%20Number) for further information). This extension supports the inclusion of the Ahpra profession code and information about conditions, undertakings, reprimands and cautions in a qualification element instance representing a practitioner’s Ahpra profession.

**Context of Use**

### Usage Notes

**Profile specific implementation guidance:**

* See [Australian Health Practitioner Regulation Agency (Ahpra) Data Guidance](generalguidance.md#australian-health-practitioner-regulation-agency-ahpra-data-guidance) for detailed guidance on representing Ahpra data using this extension.

**Usage info**

**Usages:**

* This Extension is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.au.base|current/StructureDefinition/StructureDefinition-ahpraprofession-details.json)

**Changes since version 6.0.0:**

* No changes

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ahpraprofession-details.csv), [Excel](StructureDefinition-ahpraprofession-details.xlsx), [Schematron](StructureDefinition-ahpraprofession-details.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ahpraprofession-details",
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
        "valueMarkdown" : "This extesion is deprecated in AU Base as no continued use or intent for further maturity development has been indicated by the community.  Representing a simple Ahpra registration qualification is supported in AU Base Practitioner as `Practitioner.qualification` with the code AHPRA."
      }]
    }
  }],
  "url" : "http://hl7.org.au/fhir/StructureDefinition/ahpraprofession-details",
  "version" : "6.0.1-ci-build",
  "name" : "AhpraProfessionDetails",
  "title" : "Ahpra Profession Details",
  "status" : "retired",
  "date" : "2026-06-18T16:30:51+00:00",
  "publisher" : "HL7 Australia",
  "contact" : [{
    "name" : "HL7 Australia FHIR Working Group",
    "telecom" : [{
      "system" : "url",
      "value" : "https://confluence.hl7.org/display/HAFWG",
      "use" : "work"
    }]
  }],
  "description" : "This extension applies to the Practitioner.qualification element and is used to represent Australian Health Practitioner Regulation Agency (Ahpra) profession details (see [Ahpra](https://www.ahpra.gov.au/Support/Glossary.aspx#Registration%20Number) for further information). This extension supports the inclusion of the Ahpra profession code and information about conditions, undertakings, reprimands and cautions in a qualification element instance representing a practitioner’s Ahpra profession.",
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
    "expression" : "Practitioner.qualification"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Deprecated: Ahpra Profession Details",
      "definition" : "This extesion is deprecated in AU Base as no continued use or intent for further maturity development has been indicated by the community. Representing a simple Ahpra registration qualification is supported in AU Base Practitioner as `Practitioner.qualification` with the code AHPRA. Details on the registered Ahpra profession."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "rules" : "open"
      }
    },
    {
      "id" : "Extension.extension:ahpraProfession",
      "path" : "Extension.extension",
      "sliceName" : "ahpraProfession",
      "short" : "Ahpra registered profession",
      "definition" : "Details on the Ahpra profession registration."
    },
    {
      "id" : "Extension.extension:ahpraProfession.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "ahpraProfession"
    },
    {
      "id" : "Extension.extension:ahpraProfession.value[x]",
      "path" : "Extension.extension.value[x]",
      "short" : "Ahpra registered profession type code",
      "definition" : "Ahpra registered profession type coded value.",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "Extension.extension:ahpraCondition",
      "path" : "Extension.extension",
      "sliceName" : "ahpraCondition",
      "short" : "Work conditions detail",
      "definition" : "Practitioner is subject to testing and work practice conditions detail."
    },
    {
      "id" : "Extension.extension:ahpraCondition.extension",
      "path" : "Extension.extension.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "rules" : "open"
      }
    },
    {
      "id" : "Extension.extension:ahpraCondition.extension:ahpraConditionEditDate",
      "path" : "Extension.extension.extension",
      "sliceName" : "ahpraConditionEditDate",
      "short" : "Work condition last edited date details",
      "definition" : "Practitioner testing and work practice condition last edited date details.",
      "max" : "1"
    },
    {
      "id" : "Extension.extension:ahpraCondition.extension:ahpraConditionEditDate.url",
      "path" : "Extension.extension.extension.url",
      "fixedUri" : "ahpraConditionEditDate"
    },
    {
      "id" : "Extension.extension:ahpraCondition.extension:ahpraConditionEditDate.value[x]",
      "path" : "Extension.extension.extension.value[x]",
      "short" : "Work condition last edited date value",
      "definition" : "Practitioner testing and work practice condition last edited date value.",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "Extension.extension:ahpraCondition.extension:ahpraConditionType",
      "path" : "Extension.extension.extension",
      "sliceName" : "ahpraConditionType",
      "short" : "Work conditions type details",
      "definition" : "Practitioner testing and work practice condition type details.",
      "max" : "1"
    },
    {
      "id" : "Extension.extension:ahpraCondition.extension:ahpraConditionType.url",
      "path" : "Extension.extension.extension.url",
      "fixedUri" : "ahpraConditionType"
    },
    {
      "id" : "Extension.extension:ahpraCondition.extension:ahpraConditionType.value[x]",
      "path" : "Extension.extension.extension.value[x]",
      "short" : "Work conditions type value",
      "definition" : "Practitioner testing and work practice condition type value. e.g.Health, Practice, Registration, Other.",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "Extension.extension:ahpraCondition.extension:ahpraConditionDetail",
      "path" : "Extension.extension.extension",
      "sliceName" : "ahpraConditionDetail",
      "short" : "Work conditions description details",
      "definition" : "Practitioner testing and work practice conditions description details.",
      "max" : "1"
    },
    {
      "id" : "Extension.extension:ahpraCondition.extension:ahpraConditionDetail.url",
      "path" : "Extension.extension.extension.url",
      "fixedUri" : "ahpraConditionDetail"
    },
    {
      "id" : "Extension.extension:ahpraCondition.extension:ahpraConditionDetail.value[x]",
      "path" : "Extension.extension.extension.value[x]",
      "short" : "Work conditions description value",
      "definition" : "Practitioner testing and work practice conditions description value.",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "Extension.extension:ahpraCondition.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "ahpraCondition"
    },
    {
      "id" : "Extension.extension:ahpraCondition.value[x]",
      "path" : "Extension.extension.value[x]",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:ahpraUndertaking",
      "path" : "Extension.extension",
      "sliceName" : "ahpraUndertaking",
      "short" : "Work undertakings detail",
      "definition" : "Practitioner is subject to testing and workplace practice undertakings detail."
    },
    {
      "id" : "Extension.extension:ahpraUndertaking.extension",
      "path" : "Extension.extension.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "rules" : "open"
      }
    },
    {
      "id" : "Extension.extension:ahpraUndertaking.extension:ahpraUndertakingEditDate",
      "path" : "Extension.extension.extension",
      "sliceName" : "ahpraUndertakingEditDate",
      "short" : "Work undertaking last edited date details",
      "definition" : "Practitioner testing and workplace practice undertakings last edited date details.",
      "max" : "1"
    },
    {
      "id" : "Extension.extension:ahpraUndertaking.extension:ahpraUndertakingEditDate.url",
      "path" : "Extension.extension.extension.url",
      "fixedUri" : "ahpraUndertakingEditDate"
    },
    {
      "id" : "Extension.extension:ahpraUndertaking.extension:ahpraUndertakingEditDate.value[x]",
      "path" : "Extension.extension.extension.value[x]",
      "short" : "Work undertaking last edited date value",
      "definition" : "Practitioner testing and workplace practice undertakings last edited date value.",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "Extension.extension:ahpraUndertaking.extension:ahpraUndertakingType",
      "path" : "Extension.extension.extension",
      "sliceName" : "ahpraUndertakingType",
      "short" : "Work undertakings type details",
      "definition" : "Practitioner testing and workplace practice undertakings type details.",
      "max" : "1"
    },
    {
      "id" : "Extension.extension:ahpraUndertaking.extension:ahpraUndertakingType.url",
      "path" : "Extension.extension.extension.url",
      "fixedUri" : "ahpraUndertakingType"
    },
    {
      "id" : "Extension.extension:ahpraUndertaking.extension:ahpraUndertakingType.value[x]",
      "path" : "Extension.extension.extension.value[x]",
      "short" : "Work undertakings type value",
      "definition" : "Practitioner testing and workplace practice undertakings type value.",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "Extension.extension:ahpraUndertaking.extension:ahpraUndertakingDetail",
      "path" : "Extension.extension.extension",
      "sliceName" : "ahpraUndertakingDetail",
      "short" : "Work undertakings description details",
      "definition" : "Practitioner testing and workplace practice undertakings description details.",
      "max" : "1"
    },
    {
      "id" : "Extension.extension:ahpraUndertaking.extension:ahpraUndertakingDetail.url",
      "path" : "Extension.extension.extension.url",
      "fixedUri" : "ahpraUndertakingDetail"
    },
    {
      "id" : "Extension.extension:ahpraUndertaking.extension:ahpraUndertakingDetail.value[x]",
      "path" : "Extension.extension.extension.value[x]",
      "short" : "Work undertakings description value",
      "definition" : "Practitioner testing and workplace practice undertakings description value.",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "Extension.extension:ahpraUndertaking.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "ahpraUndertaking"
    },
    {
      "id" : "Extension.extension:ahpraUndertaking.value[x]",
      "path" : "Extension.extension.value[x]",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:ahpraReprimand",
      "path" : "Extension.extension",
      "sliceName" : "ahpraReprimand",
      "short" : "Work reprimands detail",
      "definition" : "Practitioner is subject to testing and work practice reprimands detail."
    },
    {
      "id" : "Extension.extension:ahpraReprimand.extension",
      "path" : "Extension.extension.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "rules" : "open"
      }
    },
    {
      "id" : "Extension.extension:ahpraReprimand.extension:ahpraReprimandEditDate",
      "path" : "Extension.extension.extension",
      "sliceName" : "ahpraReprimandEditDate",
      "short" : "Work reprimands last edited date details",
      "definition" : "Practitioner testing and work practice reprimands last edited date details.",
      "max" : "1"
    },
    {
      "id" : "Extension.extension:ahpraReprimand.extension:ahpraReprimandEditDate.url",
      "path" : "Extension.extension.extension.url",
      "fixedUri" : "ahpraReprimandEditDate"
    },
    {
      "id" : "Extension.extension:ahpraReprimand.extension:ahpraReprimandEditDate.value[x]",
      "path" : "Extension.extension.extension.value[x]",
      "short" : "Work reprimands last edited date value",
      "definition" : "Practitioner testing and work practice reprimands last edited date value.",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "Extension.extension:ahpraReprimand.extension:ahpraReprimandType",
      "path" : "Extension.extension.extension",
      "sliceName" : "ahpraReprimandType",
      "short" : "Work reprimands type details",
      "definition" : "Practitioner testing and work practice reprimands type details.",
      "max" : "1"
    },
    {
      "id" : "Extension.extension:ahpraReprimand.extension:ahpraReprimandType.url",
      "path" : "Extension.extension.extension.url",
      "fixedUri" : "ahpraReprimandType"
    },
    {
      "id" : "Extension.extension:ahpraReprimand.extension:ahpraReprimandType.value[x]",
      "path" : "Extension.extension.extension.value[x]",
      "short" : "Work reprimands type value",
      "definition" : "Practitioner testing and work practice reprimands type value.",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "Extension.extension:ahpraReprimand.extension:ahpraReprimandDetail",
      "path" : "Extension.extension.extension",
      "sliceName" : "ahpraReprimandDetail",
      "short" : "Work reprimands description details",
      "definition" : "Practitioner testing and work practice reprimands description details.",
      "max" : "1"
    },
    {
      "id" : "Extension.extension:ahpraReprimand.extension:ahpraReprimandDetail.url",
      "path" : "Extension.extension.extension.url",
      "fixedUri" : "ahpraReprimandDetail"
    },
    {
      "id" : "Extension.extension:ahpraReprimand.extension:ahpraReprimandDetail.value[x]",
      "path" : "Extension.extension.extension.value[x]",
      "short" : "Work reprimands description value",
      "definition" : "Practitioner testing and work practice reprimands description value.",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "Extension.extension:ahpraReprimand.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "ahpraReprimand"
    },
    {
      "id" : "Extension.extension:ahpraReprimand.value[x]",
      "path" : "Extension.extension.value[x]",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:ahpraCaution",
      "path" : "Extension.extension",
      "sliceName" : "ahpraCaution",
      "short" : "Work cautions detail",
      "definition" : "Practitioner is subject to testing and work practice cautions detail."
    },
    {
      "id" : "Extension.extension:ahpraCaution.extension",
      "path" : "Extension.extension.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "rules" : "open"
      }
    },
    {
      "id" : "Extension.extension:ahpraCaution.extension:ahpraCautionEditDate",
      "path" : "Extension.extension.extension",
      "sliceName" : "ahpraCautionEditDate",
      "short" : "Work cautions last edited date details",
      "definition" : "Practitioner testing and work practice cautions last edited date details.",
      "max" : "1"
    },
    {
      "id" : "Extension.extension:ahpraCaution.extension:ahpraCautionEditDate.url",
      "path" : "Extension.extension.extension.url",
      "fixedUri" : "ahpraCautionEditDate"
    },
    {
      "id" : "Extension.extension:ahpraCaution.extension:ahpraCautionEditDate.value[x]",
      "path" : "Extension.extension.extension.value[x]",
      "short" : "Work cautions last edited date value",
      "definition" : "Practitioner testing and work practice cautions last edited date value.",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "Extension.extension:ahpraCaution.extension:ahpraCautionType",
      "path" : "Extension.extension.extension",
      "sliceName" : "ahpraCautionType",
      "short" : "Work cautions type details",
      "definition" : "Practitioner testing and work practice cautions type details.",
      "max" : "1"
    },
    {
      "id" : "Extension.extension:ahpraCaution.extension:ahpraCautionType.url",
      "path" : "Extension.extension.extension.url",
      "fixedUri" : "ahpraCautionType"
    },
    {
      "id" : "Extension.extension:ahpraCaution.extension:ahpraCautionType.value[x]",
      "path" : "Extension.extension.extension.value[x]",
      "short" : "Work cautions type value",
      "definition" : "Practitioner testing and work practice cautions type value.",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "Extension.extension:ahpraCaution.extension:ahpraCautionDetail",
      "path" : "Extension.extension.extension",
      "sliceName" : "ahpraCautionDetail",
      "short" : "Work cautions description details",
      "definition" : "Practitioner testing and work practice cautions description details.",
      "max" : "1"
    },
    {
      "id" : "Extension.extension:ahpraCaution.extension:ahpraCautionDetail.url",
      "path" : "Extension.extension.extension.url",
      "fixedUri" : "ahpraCautionDetail"
    },
    {
      "id" : "Extension.extension:ahpraCaution.extension:ahpraCautionDetail.value[x]",
      "path" : "Extension.extension.extension.value[x]",
      "short" : "Work cautions description value",
      "definition" : "Practitioner testing and work practice cautions description value.",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "Extension.extension:ahpraCaution.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "ahpraCaution"
    },
    {
      "id" : "Extension.extension:ahpraCaution.value[x]",
      "path" : "Extension.extension.value[x]",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://hl7.org.au/fhir/StructureDefinition/ahpraprofession-details"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "max" : "0"
    }]
  }
}

```
