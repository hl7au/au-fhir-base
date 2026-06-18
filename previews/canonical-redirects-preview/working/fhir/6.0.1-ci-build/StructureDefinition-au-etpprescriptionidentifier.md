# AU ETP Prescription Identifier - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **AU ETP Prescription Identifier**

## Data Type Profile: AU ETP Prescription Identifier 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://hl7.org.au/fhir/StructureDefinition/au-etpprescriptionidentifier | *Version*:6.0.1-ci-build | |
| * Standards status: *[Trial-use](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](generalguidance.md#maturity-levels): 1 | *Computable Name*:AUETPPrescriptionIdentifier |
| **Copyright/Legal**: HL7 Australia© 2018+; Licensed Under Creative Commons No Rights Reserved. | | |

 
This identifier profile defines an Electronic Transfer of Prescription (ETP) prescription identifier in an Australian context. An ETP prescription identifier is assigned to a prescription by an ETP vendor, e.g. ERx or Medisecure, and is the assigned numeric value of the barcode on a prescription instance. 

### Usage Notes

**Usages:**

* Use this DataType Profile: [AU Base MedicationRequest](StructureDefinition-au-medicationrequest.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.au.base|current/StructureDefinition/StructureDefinition-au-etpprescriptionidentifier.json)

**Changes since version 6.0.0:**

* No changes

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-au-etpprescriptionidentifier.csv), [Excel](StructureDefinition-au-etpprescriptionidentifier.xlsx), [Schematron](StructureDefinition-au-etpprescriptionidentifier.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "au-etpprescriptionidentifier",
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
  "url" : "http://hl7.org.au/fhir/StructureDefinition/au-etpprescriptionidentifier",
  "version" : "6.0.1-ci-build",
  "name" : "AUETPPrescriptionIdentifier",
  "title" : "AU ETP Prescription Identifier",
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
  "description" : "This identifier profile defines an Electronic Transfer of Prescription (ETP) prescription identifier in an Australian context. An ETP prescription identifier is assigned to a prescription by an ETP vendor, e.g. ERx or Medisecure, and is the assigned numeric value of the barcode on a prescription instance.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "AU"
    }]
  }],
  "copyright" : "HL7 Australia© 2018+; Licensed Under Creative Commons No Rights Reserved.",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
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
    "identity" : "servd",
    "uri" : "http://www.omg.org/spec/ServD/1.0/",
    "name" : "ServD"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "type" : "Identifier",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Identifier",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Identifier",
      "path" : "Identifier",
      "short" : "Electronic Transfer of Prescription (ETP) Prescription Identifier",
      "definition" : "Electronic Transfer of Prescription (ETP) prescription identifier assigned by an ETP vendor, e.g. ERx or Medisecure, to a prescription. This identifier is the assigned numeric value of the barcode on a prescription instance."
    },
    {
      "id" : "Identifier.type",
      "path" : "Identifier.type",
      "short" : "Coded identifier type for ETP prescription identifier",
      "min" : 1,
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org.au/CodeSystem/v2-0203",
          "code" : "ETP"
        }]
      }
    },
    {
      "id" : "Identifier.system",
      "path" : "Identifier.system",
      "short" : "System identifier namespace for the ETP vendor that assigned the identifier",
      "min" : 1
    },
    {
      "id" : "Identifier.value",
      "path" : "Identifier.value",
      "short" : "ETP prescription identifier",
      "min" : 1
    },
    {
      "id" : "Identifier.assigner",
      "path" : "Identifier.assigner",
      "short" : "ETP vendor",
      "min" : 1
    },
    {
      "id" : "Identifier.assigner.display",
      "path" : "Identifier.assigner.display",
      "short" : "ETP vendor's name",
      "min" : 1
    }]
  }
}

```
