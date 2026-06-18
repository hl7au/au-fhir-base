# AU Base Specimen - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **AU Base Specimen**

## Resource Profile: AU Base Specimen 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://hl7.org.au/fhir/StructureDefinition/au-specimen | *Version*:6.0.1-ci-build | |
| * Standards status: *[Trial-use](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](generalguidance.md#maturity-levels): 1 | *Computable Name*:AUBaseSpecimen |
| **Copyright/Legal**: HL7 Australia© 2018+; Licensed Under Creative Commons No Rights Reserved. | | |

 
This profile defines a specimen structure that localises core concepts, including terminology, for use in an Australian context. The purpose of this profile is to provide national level agreement on core localised concepts. This profile does not force conformance to core localised concepts. It enables implementers and modellers to make their own rules, i.e. [profiling](http://hl7.org/fhir/profiling.html), about how to support these concepts for specific implementation needs. 

### Usage Notes

**Usages:**

* Refer to this Profile: [AU Base DiagnosticReport](StructureDefinition-au-diagnosticreport.md), [AU Base Diagnostic Request](StructureDefinition-au-diagnosticrequest.md), [AU Base Pathology Report](StructureDefinition-au-pathologyreport.md), [AU Base Pathology Result](StructureDefinition-au-pathologyresult.md) and [AU Base Specimen](StructureDefinition-au-specimen.md)
* Examples for this Profile: [Specimen/serum](Specimen-serum.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.au.base|current/StructureDefinition/StructureDefinition-au-specimen.json)

**Changes since version 6.0.0:**

* No changes

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-au-specimen.csv), [Excel](StructureDefinition-au-specimen.xlsx), [Schematron](StructureDefinition-au-specimen.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "au-specimen",
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
  "url" : "http://hl7.org.au/fhir/StructureDefinition/au-specimen",
  "version" : "6.0.1-ci-build",
  "name" : "AUBaseSpecimen",
  "title" : "AU Base Specimen",
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
  "description" : "This profile defines a specimen structure that localises core concepts, including terminology, for use in an Australian context. The purpose of this profile is to provide national level agreement on core localised concepts. This profile does not force conformance to core localised concepts. It enables implementers and modellers to make their own rules, i.e. [profiling](http://hl7.org/fhir/profiling.html), about how to support these concepts for specific implementation needs.",
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
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Specimen",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Specimen",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Specimen",
      "path" : "Specimen",
      "short" : "A specimen in an Australian healthcare context"
    },
    {
      "id" : "Specimen.type",
      "path" : "Specimen.type",
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "https://healthterminologies.gov.au/fhir/ValueSet/specimen-type-1"
      }
    },
    {
      "id" : "Specimen.parent",
      "path" : "Specimen.parent",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org.au/fhir/StructureDefinition/au-specimen"]
      }]
    },
    {
      "id" : "Specimen.collection",
      "path" : "Specimen.collection"
    },
    {
      "id" : "Specimen.collection.method",
      "path" : "Specimen.collection.method",
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "https://healthterminologies.gov.au/fhir/ValueSet/specimen-collection-procedure-1"
      }
    },
    {
      "id" : "Specimen.collection.bodySite",
      "path" : "Specimen.collection.bodySite",
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "https://healthterminologies.gov.au/fhir/ValueSet/body-site-1"
      }
    },
    {
      "id" : "Specimen.container",
      "path" : "Specimen.container",
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "https://healthterminologies.gov.au/fhir/ValueSet/specimen-container-type-1"
      }
    }]
  }
}

```
