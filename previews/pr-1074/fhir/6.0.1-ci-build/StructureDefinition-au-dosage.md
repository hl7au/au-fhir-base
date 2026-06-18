# AU Base Dosage - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **AU Base Dosage**

## Data Type Profile: AU Base Dosage 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://hl7.org.au/fhir/StructureDefinition/au-dosage | *Version*:6.0.1-ci-build | |
| * Standards status: *[Trial-use](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](generalguidance.md#maturity-levels): 2 | *Computable Name*:AUBaseDosage |
| **Copyright/Legal**: HL7 Australia© 2018+; Licensed Under Creative Commons No Rights Reserved. | | |

 
This profile defines a dosage structure that localises core concepts for use in an Australian context. The purpose of this profile is to provide national level agreement on core localised concepts. This profile does not force conformance to core localised concepts. It enables implementers and modellers to make their own rules, i.e. [profiling](http://hl7.org/fhir/profiling.html), about how to support these concepts for specific implementation needs. 

### Usage Notes

**Usages:**

* Use this DataType Profile: [AU Base MedicationDispense](StructureDefinition-au-medicationdispense.md), [AU Base MedicationRequest](StructureDefinition-au-medicationrequest.md) and [AU Base MedicationStatement](StructureDefinition-au-medicationstatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.au.base|current/StructureDefinition/StructureDefinition-au-dosage.json)

**Changes since version 6.0.0:**

* No changes

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-au-dosage.csv), [Excel](StructureDefinition-au-dosage.xlsx), [Schematron](StructureDefinition-au-dosage.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "au-dosage",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm",
    "valueInteger" : 2
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
  "url" : "http://hl7.org.au/fhir/StructureDefinition/au-dosage",
  "version" : "6.0.1-ci-build",
  "name" : "AUBaseDosage",
  "title" : "AU Base Dosage",
  "status" : "active",
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
  "description" : "This profile defines a dosage structure that localises core concepts for use in an Australian context. The purpose of this profile is to provide national level agreement on core localised concepts. This profile does not force conformance to core localised concepts. It enables implementers and modellers to make their own rules, i.e. [profiling](http://hl7.org/fhir/profiling.html), about how to support these concepts for specific implementation needs.",
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
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "type" : "Dosage",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Dosage",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Dosage",
      "path" : "Dosage",
      "short" : "Dosage information in an Australian healthcare context"
    },
    {
      "id" : "Dosage.additionalInstruction",
      "path" : "Dosage.additionalInstruction",
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "http://hl7.org/fhir/ValueSet/additional-instruction-codes"
      }
    },
    {
      "id" : "Dosage.asNeeded[x]",
      "path" : "Dosage.asNeeded[x]",
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "https://healthterminologies.gov.au/fhir/ValueSet/clinical-finding-1"
      }
    },
    {
      "id" : "Dosage.site",
      "path" : "Dosage.site",
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "https://healthterminologies.gov.au/fhir/ValueSet/body-site-1"
      }
    },
    {
      "id" : "Dosage.route",
      "path" : "Dosage.route",
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "https://healthterminologies.gov.au/fhir/ValueSet/route-of-administration-1"
      }
    },
    {
      "id" : "Dosage.method",
      "path" : "Dosage.method",
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "http://hl7.org/fhir/ValueSet/administration-method-codes"
      }
    }]
  }
}

```
