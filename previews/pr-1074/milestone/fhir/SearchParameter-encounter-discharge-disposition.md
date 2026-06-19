# EncounterDischargeDisposition - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **EncounterDischargeDisposition**

## SearchParameter: EncounterDischargeDisposition 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://hl7.org.au/fhir/SearchParameter/encounter-discharge-disposition | *Version*:6.0.1-ci-build | |
| * Standards status: *[Trial-use](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](generalguidance.md#maturity-levels): 1 | *Computable Name*:EncounterDischargeDisposition |
| **Copyright/Legal**: HL7 Australia© 2018+; Licensed Under Creative Commons No Rights Reserved. | | |

 
This search parameter returns encounters with a discharge-disposition matching the specified code. 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "encounter-discharge-disposition",
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
  "url" : "http://hl7.org.au/fhir/SearchParameter/encounter-discharge-disposition",
  "version" : "6.0.1-ci-build",
  "name" : "EncounterDischargeDisposition",
  "status" : "active",
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
  "description" : "This search parameter returns encounters with a discharge-disposition matching the specified code.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "AU"
    }]
  }],
  "code" : "discharge-disposition",
  "base" : ["Encounter"],
  "type" : "token",
  "expression" : "Encounter.hospitalization.dischargeDisposition",
  "multipleOr" : true,
  "_multipleOr" : {
    "extension" : [{
      "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
      "valueCode" : "MAY"
    }]
  },
  "multipleAnd" : true,
  "_multipleAnd" : {
    "extension" : [{
      "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
      "valueCode" : "MAY"
    }]
  }
}

```
