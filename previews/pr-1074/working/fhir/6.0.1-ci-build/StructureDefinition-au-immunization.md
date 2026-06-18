# AU Base Immunization - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **AU Base Immunization**

## Resource Profile: AU Base Immunization 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://hl7.org.au/fhir/StructureDefinition/au-immunization | *Version*:6.0.1-ci-build | |
| * Standards status: *[Trial-use](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](generalguidance.md#maturity-levels): 3 | *Computable Name*:AUBaseImmunization |
| **Copyright/Legal**: HL7 Australia© 2018+; Licensed Under Creative Commons No Rights Reserved. | | |

 
This profile defines an immunisation structure that localises core concepts, including terminology, for use in an Australian context. The purpose of this profile is to provide national level agreement on core localised concepts. This profile does not force conformance to core localised concepts. It enables implementers and modellers to make their own rules, i.e. [profiling](http://hl7.org/fhir/profiling.html), about how to support these concepts for specific implementation needs. 

### Usage Notes

**Usages:**

* Examples for this Profile: [Immunization/example0](Immunization-example0.md), [Immunization/example1](Immunization-example1.md), [Immunization/example2](Immunization-example2.md) and [Immunization/example3](Immunization-example3.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.au.base|current/StructureDefinition/StructureDefinition-au-immunization.json)

**Changes since version 6.0.0:**

* No changes

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-au-immunization.csv), [Excel](StructureDefinition-au-immunization.xlsx), [Schematron](StructureDefinition-au-immunization.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "au-immunization",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm",
    "valueInteger" : 3
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
  "url" : "http://hl7.org.au/fhir/StructureDefinition/au-immunization",
  "version" : "6.0.1-ci-build",
  "name" : "AUBaseImmunization",
  "title" : "AU Base Immunization",
  "status" : "active",
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
  "description" : "This profile defines an immunisation structure that localises core concepts, including terminology, for use in an Australian context. The purpose of this profile is to provide national level agreement on core localised concepts. This profile does not force conformance to core localised concepts. It enables implementers and modellers to make their own rules, i.e. [profiling](http://hl7.org/fhir/profiling.html), about how to support these concepts for specific implementation needs.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "AU"
    }]
  }],
  "copyright" : "HL7 Australia© 2018+; Licensed Under Creative Commons No Rights Reserved.",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "cda",
    "uri" : "http://hl7.org/v3/cda",
    "name" : "CDA (R2)"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Immunization",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Immunization",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Immunization",
      "path" : "Immunization",
      "short" : "An immunisation statement in an Australian healthcare context"
    },
    {
      "id" : "Immunization.extension",
      "path" : "Immunization.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "rules" : "open"
      }
    },
    {
      "id" : "Immunization.extension:vaccineVialSerialNumber",
      "path" : "Immunization.extension",
      "sliceName" : "vaccineVialSerialNumber",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org.au/fhir/StructureDefinition/vaccine-serial-number"]
      }]
    },
    {
      "id" : "Immunization.statusReason",
      "path" : "Immunization.statusReason",
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "https://healthterminologies.gov.au/fhir/ValueSet/reason-vaccine-not-administered-3"
      }
    },
    {
      "id" : "Immunization.vaccineCode",
      "path" : "Immunization.vaccineCode",
      "binding" : {
        "extension" : [{
          "extension" : [{
            "url" : "key",
            "valueId" : "adb-imm-amt-pref"
          },
          {
            "url" : "purpose",
            "valueCode" : "preferred"
          },
          {
            "url" : "valueSet",
            "valueCanonical" : "https://healthterminologies.gov.au/fhir/ValueSet/amt-vaccine-1"
          },
          {
            "url" : "documentation",
            "valueMarkdown" : "This value set is for use when AMT (Australian Medicines Terminology) codes are preferred."
          }],
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
        },
        {
          "extension" : [{
            "url" : "key",
            "valueId" : "adb-imm-air-pref"
          },
          {
            "url" : "purpose",
            "valueCode" : "preferred"
          },
          {
            "url" : "valueSet",
            "valueCanonical" : "https://healthterminologies.gov.au/fhir/ValueSet/australian-immunisation-register-vaccine-1"
          },
          {
            "url" : "documentation",
            "valueMarkdown" : "This value set is for use when AIR (Australian Immunisation Register) codes are preferred."
          }],
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
        }],
        "strength" : "example"
      }
    },
    {
      "id" : "Immunization.manufacturer",
      "path" : "Immunization.manufacturer",
      "definition" : "Physical vaccine product manufacturer."
    },
    {
      "id" : "Immunization.site",
      "path" : "Immunization.site",
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "https://healthterminologies.gov.au/fhir/ValueSet/immunisation-anatomical-site-1"
      }
    },
    {
      "id" : "Immunization.route",
      "path" : "Immunization.route",
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "https://healthterminologies.gov.au/fhir/ValueSet/immunisation-route-of-administration-1"
      }
    },
    {
      "id" : "Immunization.performer",
      "path" : "Immunization.performer",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "function"
        }],
        "rules" : "open"
      }
    },
    {
      "id" : "Immunization.performer.function",
      "path" : "Immunization.performer.function",
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://terminology.hl7.org.au/ValueSet/v2-0443-extended"
      }
    },
    {
      "id" : "Immunization.performer:administeredBy",
      "path" : "Immunization.performer",
      "sliceName" : "administeredBy",
      "short" : "Immunisation Administered By",
      "max" : "1"
    },
    {
      "id" : "Immunization.performer:administeredBy.function",
      "path" : "Immunization.performer.function",
      "short" : "Administering role",
      "min" : 1,
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0443",
          "code" : "AP"
        }]
      }
    },
    {
      "id" : "Immunization.performer:administeredBy.actor",
      "path" : "Immunization.performer.actor",
      "short" : "Administering performer"
    },
    {
      "id" : "Immunization.performer:approvedBy",
      "path" : "Immunization.performer",
      "sliceName" : "approvedBy",
      "short" : "Immunisation Approved By",
      "max" : "1"
    },
    {
      "id" : "Immunization.performer:approvedBy.function",
      "path" : "Immunization.performer.function",
      "short" : "Approver role",
      "min" : 1,
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0443",
          "code" : "OP"
        }]
      }
    },
    {
      "id" : "Immunization.performer:approvedBy.actor",
      "path" : "Immunization.performer.actor",
      "short" : "Approver"
    },
    {
      "id" : "Immunization.reasonCode",
      "path" : "Immunization.reasonCode",
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "https://healthterminologies.gov.au/fhir/ValueSet/reason-vaccine-administered-1"
      }
    },
    {
      "id" : "Immunization.protocolApplied.targetDisease",
      "path" : "Immunization.protocolApplied.targetDisease",
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "https://healthterminologies.gov.au/fhir/ValueSet/vaccination-target-disease-1"
      }
    }]
  }
}

```
