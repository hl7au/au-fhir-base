# AU Employee Number - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **AU Employee Number**

## Data Type Profile: AU Employee Number 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://hl7.org.au/fhir/StructureDefinition/au-employeenumber | *Version*:6.0.1-ci-build | |
| * Standards status: *[Trial-use](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](generalguidance.md#maturity-levels): 2 | *Computable Name*:AUEmployeeNumber |
| **Copyright/Legal**: HL7 Australia© 2018+; Licensed Under Creative Commons No Rights Reserved. | | |

 
This identifier profile defines an employee number (sometimes referred to as an employee identifier (EI)) in an Australian context. An employee number is an organisation's identifier for an individual employed by that organisation. 

### Usage Notes

**Profile specific implementation guidance:**

* An organisation should use their own local system identifier namespace but if that is not available then see the guidance on [Business Identifiers](generalguidance.md#business-identifiers) on using an HPI-O or ABN to construct a legal globally unique identifier system for local identifiers.

**Usages:**

* Use this DataType Profile: [AU Base PractitionerRole](StructureDefinition-au-practitionerrole.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.au.base|current/StructureDefinition/StructureDefinition-au-employeenumber.json)

**Changes since version 6.0.0:**

* No changes

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-au-employeenumber.csv), [Excel](StructureDefinition-au-employeenumber.xlsx), [Schematron](StructureDefinition-au-employeenumber.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "au-employeenumber",
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
  "url" : "http://hl7.org.au/fhir/StructureDefinition/au-employeenumber",
  "version" : "6.0.1-ci-build",
  "name" : "AUEmployeeNumber",
  "title" : "AU Employee Number",
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
  "description" : "This identifier profile defines an employee number (sometimes referred to as an employee identifier (EI)) in an Australian context. An employee number is an organisation's identifier for an individual employed by that organisation.",
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
      "short" : "Employee Number",
      "definition" : "Employee number for an individual staff member or service provider as issued by an employing organisation."
    },
    {
      "id" : "Identifier.type",
      "path" : "Identifier.type",
      "min" : 1,
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
          "code" : "EI"
        }]
      }
    },
    {
      "id" : "Identifier.system",
      "path" : "Identifier.system",
      "short" : "System identifier namespace for the employing organisation",
      "min" : 1
    },
    {
      "id" : "Identifier.value",
      "path" : "Identifier.value",
      "short" : "Employee number",
      "min" : 1
    },
    {
      "id" : "Identifier.assigner",
      "path" : "Identifier.assigner",
      "short" : "Employing organisation",
      "min" : 1
    },
    {
      "id" : "Identifier.assigner.display",
      "path" : "Identifier.assigner.display",
      "short" : "Employing organisation's name",
      "min" : 1
    }]
  }
}

```
