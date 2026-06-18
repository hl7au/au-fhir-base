# Ahpra Registration Details - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **Ahpra Registration Details**

## Extension: Ahpra Registration Details 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://hl7.org.au/fhir/StructureDefinition/ahpraregistration-details | *Version*:6.0.1-ci-build | |
| * Standards status: *[Deprecated](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](generalguidance.md#maturity-levels): 1 | *Computable Name*:AhpraRegistrationDetails |
| **Copyright/Legal**: HL7 Australia© 2018+; Licensed Under Creative Commons No Rights Reserved. | | |

This extension applies to the Practitioner.qualification element and is used to represent Australian Health Practitioner Regulation Agency (Ahpra) registration details (see [Ahpra](https://www.ahpra.gov.au/Support/Glossary.aspx#Registration%20Number) for further information). This extension supports the inclusion of the Ahpra profession code and information about division, speciality, registration status, endorsements and notations in a qualification element instance representing a practitioner’s Ahpra registration.

**Context of Use**

### Usage Notes

**Profile specific implementation guidance:**

* See [Australian Health Practitioner Regulation Agency (Ahpra) Data Guidance](generalguidance.md#australian-health-practitioner-regulation-agency-ahpra-data-guidance) for detailed guidance on representing Ahpra data using this extension.

**Usage info**

**Usages:**

* This Extension is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.au.base|current/StructureDefinition/StructureDefinition-ahpraregistration-details.json)

**Changes since version 6.0.0:**

* No changes

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ahpraregistration-details.csv), [Excel](StructureDefinition-ahpraregistration-details.xlsx), [Schematron](StructureDefinition-ahpraregistration-details.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ahpraregistration-details",
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
        "valueMarkdown" : "This extesion is deprecated in AU Base as no continued use or intent for further maturity development has been indicated by the community. Representing a simple Ahpra registration qualification is supported in AU Base Practitioner as `Practitioner.qualification` with the code AHPRA."
      }]
    }
  }],
  "url" : "http://hl7.org.au/fhir/StructureDefinition/ahpraregistration-details",
  "version" : "6.0.1-ci-build",
  "name" : "AhpraRegistrationDetails",
  "title" : "Ahpra Registration Details",
  "status" : "retired",
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
  "description" : "This extension applies to the Practitioner.qualification element and is used to represent Australian Health Practitioner Regulation Agency (Ahpra) registration details (see [Ahpra](https://www.ahpra.gov.au/Support/Glossary.aspx#Registration%20Number) for further information). This extension supports the inclusion of the Ahpra profession code and information about division, speciality, registration status, endorsements and notations in a qualification element instance representing a practitioner’s Ahpra registration.",
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
      "short" : "Deprecated: Ahpra Registration Details",
      "definition" : "This extesion is deprecated in AU Base as no continued use or intent for further maturity development has been indicated by the community. Representing a simple Ahpra registration qualification is supported in AU Base Practitioner as `Practitioner.qualification` with the code AHPRA. Details on the Ahpra registration of profession."
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
      "id" : "Extension.extension:ahpraRegistrationRecordNumber",
      "path" : "Extension.extension",
      "sliceName" : "ahpraRegistrationRecordNumber",
      "short" : "Ahpra registration number details",
      "definition" : "Ahpra registration number details."
    },
    {
      "id" : "Extension.extension:ahpraRegistrationRecordNumber.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "ahpraRegistrationRecordNumber"
    },
    {
      "id" : "Extension.extension:ahpraRegistrationRecordNumber.value[x]",
      "path" : "Extension.extension.value[x]",
      "short" : "Ahpra registration number value",
      "definition" : "Ahpra registration number value.",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "Extension.extension:ahpraDivision",
      "path" : "Extension.extension",
      "sliceName" : "ahpraDivision",
      "short" : "Ahpra registration division details",
      "definition" : "Ahpra registration division details."
    },
    {
      "id" : "Extension.extension:ahpraDivision.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "ahpraDivision"
    },
    {
      "id" : "Extension.extension:ahpraDivision.value[x]",
      "path" : "Extension.extension.value[x]",
      "short" : "Ahpra registration division value",
      "definition" : "Ahpra registration division value.",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "Extension.extension:ahpraRegistrationType",
      "path" : "Extension.extension",
      "sliceName" : "ahpraRegistrationType",
      "short" : "Ahpra registration type details",
      "definition" : "Ahpra registration type details."
    },
    {
      "id" : "Extension.extension:ahpraRegistrationType.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "ahpraRegistrationType"
    },
    {
      "id" : "Extension.extension:ahpraRegistrationType.value[x]",
      "path" : "Extension.extension.value[x]",
      "short" : "Ahpra registration type value",
      "definition" : "Ahpra registration type value.",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "Extension.extension:ahpraRegistrationSubtype",
      "path" : "Extension.extension",
      "sliceName" : "ahpraRegistrationSubtype",
      "short" : "Ahpra registration subtype details",
      "definition" : "Ahpra registration subtype details."
    },
    {
      "id" : "Extension.extension:ahpraRegistrationSubtype.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "ahpraRegistrationSubtype"
    },
    {
      "id" : "Extension.extension:ahpraRegistrationSubtype.value[x]",
      "path" : "Extension.extension.value[x]",
      "short" : "Ahpra registration subtype value",
      "definition" : "Ahpra registration subtype value.",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "Extension.extension:ahpraRegistrationStatus",
      "path" : "Extension.extension",
      "sliceName" : "ahpraRegistrationStatus",
      "short" : "Ahpra registration status details",
      "definition" : "Ahpra registration status details."
    },
    {
      "id" : "Extension.extension:ahpraRegistrationStatus.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "ahpraRegistrationStatus"
    },
    {
      "id" : "Extension.extension:ahpraRegistrationStatus.value[x]",
      "path" : "Extension.extension.value[x]",
      "short" : "Ahpra registration status value",
      "definition" : "Ahpra registration status value.",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "Extension.extension:ahpraSpecialty",
      "path" : "Extension.extension",
      "sliceName" : "ahpraSpecialty",
      "short" : "Ahpra registration specialty details",
      "definition" : "Ahpra registration specialty details."
    },
    {
      "id" : "Extension.extension:ahpraSpecialty.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "ahpraSpecialty"
    },
    {
      "id" : "Extension.extension:ahpraSpecialty.value[x]",
      "path" : "Extension.extension.value[x]",
      "short" : "Ahpra registration specialty value",
      "definition" : "Ahpra registration specialty value.",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "Extension.extension:ahpraFieldofSpecialtyPractice",
      "path" : "Extension.extension",
      "sliceName" : "ahpraFieldofSpecialtyPractice",
      "short" : "Ahpra registered field of specialty practice details",
      "definition" : "Ahpra registered field of specialty practice details."
    },
    {
      "id" : "Extension.extension:ahpraFieldofSpecialtyPractice.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "ahpraFieldofSpecialtyPractice"
    },
    {
      "id" : "Extension.extension:ahpraFieldofSpecialtyPractice.value[x]",
      "path" : "Extension.extension.value[x]",
      "short" : "Ahpra registered field of specialty practice value",
      "definition" : "Ahpra registered field of specialty practice value.",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "Extension.extension:ahpraEndorsement",
      "path" : "Extension.extension",
      "sliceName" : "ahpraEndorsement",
      "short" : "Ahpra registered endorsement details",
      "definition" : "Ahpra registered endorsement details."
    },
    {
      "id" : "Extension.extension:ahpraEndorsement.extension",
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
      "id" : "Extension.extension:ahpraEndorsement.extension:ahpraEndorsementEditDate",
      "path" : "Extension.extension.extension",
      "sliceName" : "ahpraEndorsementEditDate",
      "short" : "Ahpra registered endorsement edited date details",
      "definition" : "Ahpra registered endorsement last edited date details.",
      "max" : "1"
    },
    {
      "id" : "Extension.extension:ahpraEndorsement.extension:ahpraEndorsementEditDate.url",
      "path" : "Extension.extension.extension.url",
      "fixedUri" : "ahpraEndorsementEditDate"
    },
    {
      "id" : "Extension.extension:ahpraEndorsement.extension:ahpraEndorsementEditDate.value[x]",
      "path" : "Extension.extension.extension.value[x]",
      "short" : "Ahpra registered endorsement edited date value",
      "definition" : "Ahpra registered endorsement last edited date value.",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "Extension.extension:ahpraEndorsement.extension:ahpraEndorsementType",
      "path" : "Extension.extension.extension",
      "sliceName" : "ahpraEndorsementType",
      "short" : "Ahpra registered endorsement type details",
      "definition" : "Ahpra registered endorsement type details.",
      "max" : "1"
    },
    {
      "id" : "Extension.extension:ahpraEndorsement.extension:ahpraEndorsementType.url",
      "path" : "Extension.extension.extension.url",
      "fixedUri" : "ahpraEndorsementType"
    },
    {
      "id" : "Extension.extension:ahpraEndorsement.extension:ahpraEndorsementType.value[x]",
      "path" : "Extension.extension.extension.value[x]",
      "short" : "Ahpra registered endorsement type value",
      "definition" : "Ahpra registered endorsement type value.",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "Extension.extension:ahpraEndorsement.extension:ahpraEndorsementSubtype",
      "path" : "Extension.extension.extension",
      "sliceName" : "ahpraEndorsementSubtype",
      "short" : "Ahpra registered endorsement subtype details",
      "definition" : "Ahpra registered endorsement subtype details.",
      "max" : "1"
    },
    {
      "id" : "Extension.extension:ahpraEndorsement.extension:ahpraEndorsementSubtype.url",
      "path" : "Extension.extension.extension.url",
      "fixedUri" : "ahpraEndorsementSubtype"
    },
    {
      "id" : "Extension.extension:ahpraEndorsement.extension:ahpraEndorsementSubtype.value[x]",
      "path" : "Extension.extension.extension.value[x]",
      "short" : "Ahpra registered endorsement subtype value",
      "definition" : "Ahpra registered endorsement subtype value.",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "Extension.extension:ahpraEndorsement.extension:ahpraEndorsementDetail",
      "path" : "Extension.extension.extension",
      "sliceName" : "ahpraEndorsementDetail",
      "short" : "Ahpra registered endorsement descriptive details",
      "definition" : "Ahpra registered endorsement descriptive details.",
      "max" : "1"
    },
    {
      "id" : "Extension.extension:ahpraEndorsement.extension:ahpraEndorsementDetail.url",
      "path" : "Extension.extension.extension.url",
      "fixedUri" : "ahpraEndorsementDetail"
    },
    {
      "id" : "Extension.extension:ahpraEndorsement.extension:ahpraEndorsementDetail.value[x]",
      "path" : "Extension.extension.extension.value[x]",
      "short" : "Ahpra registered endorsement descriptive details value",
      "definition" : "Ahpra registered endorsement descriptive details value.",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "Extension.extension:ahpraEndorsement.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "ahpraEndorsement"
    },
    {
      "id" : "Extension.extension:ahpraEndorsement.value[x]",
      "path" : "Extension.extension.value[x]",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:ahpraNotation",
      "path" : "Extension.extension",
      "sliceName" : "ahpraNotation",
      "short" : "Ahpra other notation details",
      "definition" : "Ahpra other notation details."
    },
    {
      "id" : "Extension.extension:ahpraNotation.extension",
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
      "id" : "Extension.extension:ahpraNotation.extension:ahpraNotationEditDate",
      "path" : "Extension.extension.extension",
      "sliceName" : "ahpraNotationEditDate",
      "short" : "Ahpra notation edit date details",
      "definition" : "Ahpra notation last edit date details.",
      "max" : "1"
    },
    {
      "id" : "Extension.extension:ahpraNotation.extension:ahpraNotationEditDate.url",
      "path" : "Extension.extension.extension.url",
      "fixedUri" : "ahpraNotationEditDate"
    },
    {
      "id" : "Extension.extension:ahpraNotation.extension:ahpraNotationEditDate.value[x]",
      "path" : "Extension.extension.extension.value[x]",
      "short" : "Ahpra notation edit date value",
      "definition" : "Ahpra notation last edit date value.",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "Extension.extension:ahpraNotation.extension:ahpraNotationType",
      "path" : "Extension.extension.extension",
      "sliceName" : "ahpraNotationType",
      "short" : "Ahpra notation type details",
      "definition" : "Ahpra notation type details.",
      "max" : "1"
    },
    {
      "id" : "Extension.extension:ahpraNotation.extension:ahpraNotationType.url",
      "path" : "Extension.extension.extension.url",
      "fixedUri" : "ahpraNotationType"
    },
    {
      "id" : "Extension.extension:ahpraNotation.extension:ahpraNotationType.value[x]",
      "path" : "Extension.extension.extension.value[x]",
      "short" : "Ahpra notation type value",
      "definition" : "Ahpra notation type value.",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "Extension.extension:ahpraNotation.extension:ahpraNotationDetail",
      "path" : "Extension.extension.extension",
      "sliceName" : "ahpraNotationDetail",
      "short" : "Ahpra notation descriptive details",
      "definition" : "Ahpra notation descriptive details.",
      "max" : "1"
    },
    {
      "id" : "Extension.extension:ahpraNotation.extension:ahpraNotationDetail.url",
      "path" : "Extension.extension.extension.url",
      "fixedUri" : "ahpraNotationDetail"
    },
    {
      "id" : "Extension.extension:ahpraNotation.extension:ahpraNotationDetail.value[x]",
      "path" : "Extension.extension.extension.value[x]",
      "short" : "Ahpra notation descriptive details value",
      "definition" : "Ahpra notation descriptive details value.",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "Extension.extension:ahpraNotation.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "ahpraNotation"
    },
    {
      "id" : "Extension.extension:ahpraNotation.value[x]",
      "path" : "Extension.extension.value[x]",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://hl7.org.au/fhir/StructureDefinition/ahpraregistration-details"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "max" : "0"
    }]
  }
}

```
