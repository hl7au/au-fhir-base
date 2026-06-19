# AU Insurance Member Number - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **AU Insurance Member Number**

## Data Type Profile: AU Insurance Member Number 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://hl7.org.au/fhir/StructureDefinition/au-insurancemembernumber | *Version*:6.0.1-ci-build | |
| * Standards status: *[Trial-use](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](generalguidance.md#maturity-levels): 2 | *Computable Name*:AUInsuranceMemberNumber |
| **Copyright/Legal**: HL7 Australia© 2018+; Licensed Under Creative Commons No Rights Reserved. | | |

 
This identifier profile defines an insurance member number in an Australian context. An insurance member number is the unique member number assigned to an individual by an insurer and is typically displayed on their insurance card. An individual will not have more than one member number per insurer. 
This definition supports the sending of an insurance member number that is relevant in a healthcare context and may be used to capture Australian and International health insurer issued member numbers. In Australia this will typically be a private health insurance member number. This identifier should not be confused with an insurance policy number. 

### Usage Notes

**Usages:**

* Use this DataType Profile: [AU Base Coverage](StructureDefinition-au-coverage.md), [AU Base Patient](StructureDefinition-au-patient.md) and [AU Base RelatedPerson](StructureDefinition-au-relatedperson.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.au.base|current/StructureDefinition/StructureDefinition-au-insurancemembernumber.json)

**Changes since version 6.0.0:**

* No changes

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-au-insurancemembernumber.csv), [Excel](StructureDefinition-au-insurancemembernumber.xlsx), [Schematron](StructureDefinition-au-insurancemembernumber.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "au-insurancemembernumber",
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
  "url" : "http://hl7.org.au/fhir/StructureDefinition/au-insurancemembernumber",
  "version" : "6.0.1-ci-build",
  "name" : "AUInsuranceMemberNumber",
  "title" : "AU Insurance Member Number",
  "status" : "active",
  "date" : "2026-06-19T08:07:27+00:00",
  "publisher" : "HL7 Australia",
  "contact" : [{
    "name" : "HL7 Australia FHIR Working Group",
    "telecom" : [{
      "system" : "url",
      "value" : "https://confluence.hl7.org/display/HAFWG",
      "use" : "work"
    }]
  }],
  "description" : "This identifier profile defines an insurance member number in an Australian context. An insurance member number is the unique member number assigned to an individual by an insurer and is typically displayed on their insurance card. An individual will not have more than one member number per insurer.\n\nThis definition supports the sending of an insurance member number that is relevant in a healthcare context and may be used to capture Australian and International health insurer issued member numbers. In Australia this will typically be a private health insurance member number. This identifier should not be confused with an insurance policy number.",
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
      "short" : "Insurance Member Number",
      "definition" : "Insurance member number assigned to an individual by an insurer as their unique member number. It is typically displayed on their insurance card and an individual will not have more than one member number per insurer. This identifier should not be confused with an insurance policy number."
    },
    {
      "id" : "Identifier.type",
      "path" : "Identifier.type",
      "min" : 1,
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
          "code" : "MB"
        }]
      }
    },
    {
      "id" : "Identifier.system",
      "path" : "Identifier.system",
      "short" : "System identifier namespace for the insurer that assigned the insurance member number",
      "min" : 1
    },
    {
      "id" : "Identifier.value",
      "path" : "Identifier.value",
      "short" : "Insurance member number",
      "min" : 1
    },
    {
      "id" : "Identifier.assigner",
      "path" : "Identifier.assigner",
      "short" : "Insurer",
      "min" : 1
    },
    {
      "id" : "Identifier.assigner.display",
      "path" : "Identifier.assigner.display",
      "short" : "Name of insurer",
      "min" : 1
    }]
  }
}

```
