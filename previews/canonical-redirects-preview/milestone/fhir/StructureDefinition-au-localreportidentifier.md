# AU Local Report Identifier - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **AU Local Report Identifier**

## Data Type Profile: AU Local Report Identifier 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://hl7.org.au/fhir/StructureDefinition/au-localreportidentifier | *Version*:6.0.1-ci-build | |
| * Standards status: *[Trial-use](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](generalguidance.md#maturity-levels): 1 | *Computable Name*:AULocalReportIdentifier |
| **Copyright/Legal**: HL7 Australia© 2018+; Licensed Under Creative Commons No Rights Reserved. | | |

 
This identifier profile defines a local report identifier in an Australian context. A local report identifier is an organisation's identifier for a report in that organisation's local system set of reports. A report identifier must uniquely identify the report from all other reports in a particular system (e.g. diagnostic imaging system, clinical laboratory system, document management system, referral systems). In some laboratory systems, the report identifier may be a concatenation of a lab number and report panel code (e.g. 19P123456-FBC), where the panel code makes the identifier unique from other reports under the same lab number. 

### Usage Notes

In many systems the report identifier is fulfilled by the concept filler order number in the HL7 V2 specification if there is only a single filler order number per report. When sending a filler order number the [AU Local Order Identifier](StructureDefinition-au-localorderidentifier.md) is the recommended applicable profile.

In diagnostic imaging and some laboratory systems the report identifier is fulfilled by the concept accession number if there is only a single accession number per report. When sending an accession number the [AU Accession Number](StructureDefinition-au-accessionnumber.md) is the recommended applicable profile.

**Profile specific implementation guidance:**

* An organisation should use their own local system identifier namespace but if that is not available then see the guidance on [Business Identifiers](generalguidance.md#business-identifiers) on using an HPI-O to construct a legal globally unique identifier system for local identifiers.

**Usages:**

* Use this DataType Profile: [AU Base DiagnosticReport](StructureDefinition-au-diagnosticreport.md), [AU Base Diagnostic Imaging Report](StructureDefinition-au-imagingreport.md) and [AU Base Pathology Report](StructureDefinition-au-pathologyreport.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.au.base|current/StructureDefinition/StructureDefinition-au-localreportidentifier.json)

**Changes since version 6.0.0:**

* No changes

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-au-localreportidentifier.csv), [Excel](StructureDefinition-au-localreportidentifier.xlsx), [Schematron](StructureDefinition-au-localreportidentifier.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "au-localreportidentifier",
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
  "url" : "http://hl7.org.au/fhir/StructureDefinition/au-localreportidentifier",
  "version" : "6.0.1-ci-build",
  "name" : "AULocalReportIdentifier",
  "title" : "AU Local Report Identifier",
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
  "description" : "This identifier profile defines a local report identifier in an Australian context. A local report identifier is an organisation's identifier for a report in that organisation's local system set of reports. A report identifier must uniquely identify the report from all other reports in a particular system (e.g. diagnostic imaging system, clinical laboratory system, document management system, referral systems). In some laboratory systems, the report identifier may be a concatenation of a lab number and report panel code (e.g. 19P123456-FBC), where the panel code makes the identifier unique from other reports under the same lab number.",
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
      "short" : "Local Report Identifier",
      "definition" : "Local report identifier assigned by an organisation to a report in that organisation's set of reports. A local report identifier is a unique identifier for each report and must uniquely identify the report from all other reports in a particular system (e.g. diagnostic imaging system, clinical laboratory system, document management system, referral systems)."
    },
    {
      "id" : "Identifier.type",
      "path" : "Identifier.type",
      "short" : "Coded identifier type for local report identifier",
      "min" : 1,
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org.au/CodeSystem/v2-0203",
          "code" : "LRI"
        }]
      }
    },
    {
      "id" : "Identifier.system",
      "path" : "Identifier.system",
      "short" : "System identifier namespace for the organisation that assigned the report identifier",
      "min" : 1
    },
    {
      "id" : "Identifier.value",
      "path" : "Identifier.value",
      "short" : "Report identifier",
      "min" : 1
    },
    {
      "id" : "Identifier.assigner",
      "path" : "Identifier.assigner",
      "short" : "Organisation that assigned the report identifier",
      "min" : 1
    },
    {
      "id" : "Identifier.assigner.display",
      "path" : "Identifier.assigner.display",
      "short" : "Name of the assigning organisation",
      "min" : 1
    }]
  }
}

```
