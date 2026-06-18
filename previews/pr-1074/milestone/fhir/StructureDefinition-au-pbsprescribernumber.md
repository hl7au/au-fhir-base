# AU PBS Prescriber Number - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **AU PBS Prescriber Number**

## Data Type Profile: AU PBS Prescriber Number 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://hl7.org.au/fhir/StructureDefinition/au-pbsprescribernumber | *Version*:6.0.1-ci-build | |
| * Standards status: *[Trial-use](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](generalguidance.md#maturity-levels): 2 | *Computable Name*:AUPBSPrescriberNumber |
| **Copyright/Legal**: HL7 Australia© 2018+; Licensed Under Creative Commons No Rights Reserved. | | |

 
This identifier profile defines a Pharmaceutical Benefits Scheme (PBS) prescriber number in an Australian context (see [PBS](https://www.pbs.gov.au/info/healthpro/explanatory-notes/section1/Section_1_2_Explanatory_Notes) for further information). A PBS prescriber number, previously referred to as Medicare prescriber number in earlier versions of this implementation guide, is assigned by Services Australia under the Pharmaceutical Benefits Scheme to practitioners who are approved to prescribe PBS medicines under the National Health Act 1953. 

### Usage Notes

**Usages:**

* Use this DataType Profile: [AU Base Practitioner](StructureDefinition-au-practitioner.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.au.base|current/StructureDefinition/StructureDefinition-au-pbsprescribernumber.json)

**Changes since version 6.0.0:**

* No changes

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-au-pbsprescribernumber.csv), [Excel](StructureDefinition-au-pbsprescribernumber.xlsx), [Schematron](StructureDefinition-au-pbsprescribernumber.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "au-pbsprescribernumber",
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
  "url" : "http://hl7.org.au/fhir/StructureDefinition/au-pbsprescribernumber",
  "version" : "6.0.1-ci-build",
  "name" : "AUPBSPrescriberNumber",
  "title" : "AU PBS Prescriber Number",
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
  "description" : "This identifier profile defines a Pharmaceutical Benefits Scheme (PBS) prescriber number in an Australian context (see [PBS](https://www.pbs.gov.au/info/healthpro/explanatory-notes/section1/Section_1_2_Explanatory_Notes) for further information). A PBS prescriber number, previously referred to as Medicare prescriber number in earlier versions of this implementation guide, is assigned by Services Australia under the Pharmaceutical Benefits Scheme to practitioners who are approved to prescribe PBS medicines under the National Health Act 1953.",
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
      "short" : "PBS Prescriber Number",
      "definition" : "PBS prescriber number, previously referred to as Medicare prescriber number, assigned under the Pharmaceutical Benefits Scheme (to a practitioner who is approved to prescribe PBS medicines."
    },
    {
      "id" : "Identifier.type",
      "path" : "Identifier.type",
      "min" : 1,
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org.au/CodeSystem/v2-0203",
          "code" : "PRES"
        }]
      }
    },
    {
      "id" : "Identifier.system",
      "path" : "Identifier.system",
      "min" : 1,
      "fixedUri" : "http://ns.electronichealth.net.au/id/medicare-prescriber-number"
    },
    {
      "id" : "Identifier.value",
      "path" : "Identifier.value",
      "short" : "PBS prescriber number",
      "comment" : "This concept is equivalent to Australian Institute of Health and Welfare data element 600762 [Pharmaceutical Benefits Scheme (PBS) prescription—prescriber identifier, identifier N[N(19)]](https://meteor.aihw.gov.au/content/index.phtml/itemId/600762).",
      "min" : 1,
      "example" : [{
        "label" : "PBS prescriber number",
        "valueString" : "453221"
      }]
    }]
  }
}

```
