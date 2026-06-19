# AU DVA Number - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **AU DVA Number**

## Data Type Profile: AU DVA Number 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://hl7.org.au/fhir/StructureDefinition/au-dvanumber | *Version*:6.0.1-ci-build | |
| * Standards status: *[Trial-use](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](generalguidance.md#maturity-levels): 2 | *Computable Name*:AUDVANumber |
| **Copyright/Legal**: HL7 Australia© 2018+; Licensed Under Creative Commons No Rights Reserved. | | |

 
This identifier profile defines a Department of Veterans' Affairs (DVA) number) in an Australian context. This definition supports sending an individual's state-based DVA file number as displayed on a [Veteran Card](https://www.dva.gov.au/health-and-treatment/veteran-healthcare-cards/veteran-card), i.e. a Gold, White, or Orange Card. A Veteran Card may be issued by DVA to eligible individuals to allowing access to specific goods and services at a concessional rate. 

### Usage Notes

**Usages:**

* Use this DataType Profile: [AU Base Coverage](StructureDefinition-au-coverage.md), [AU Base Patient](StructureDefinition-au-patient.md) and [AU Base RelatedPerson](StructureDefinition-au-relatedperson.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.au.base|current/StructureDefinition/StructureDefinition-au-dvanumber.json)

**Changes since version 6.0.0:**

* No changes

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-au-dvanumber.csv), [Excel](StructureDefinition-au-dvanumber.xlsx), [Schematron](StructureDefinition-au-dvanumber.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "au-dvanumber",
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
  "url" : "http://hl7.org.au/fhir/StructureDefinition/au-dvanumber",
  "version" : "6.0.1-ci-build",
  "name" : "AUDVANumber",
  "title" : "AU DVA Number",
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
  "description" : "This identifier profile defines a Department of Veterans' Affairs (DVA) number) in an Australian context. This definition supports sending an individual's state-based DVA file number as displayed on a [Veteran Card](https://www.dva.gov.au/health-and-treatment/veteran-healthcare-cards/veteran-card), i.e. a Gold, White, or Orange Card. A Veteran Card may be issued by DVA to eligible individuals to allowing access to specific goods and services at a concessional rate.",
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
      "short" : "Department of Veterans' Affairs (DVA) Number",
      "definition" : "Department of Veterans’ Affairs (DVA) file number displayed on a Veteran Card."
    },
    {
      "id" : "Identifier.type",
      "path" : "Identifier.type",
      "definition" : "Entitlement type associated with a DVA issued Veteran Card.",
      "min" : 1,
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://terminology.hl7.org.au/ValueSet/dva-entitlement"
      }
    },
    {
      "id" : "Identifier.system",
      "path" : "Identifier.system",
      "min" : 1,
      "fixedUri" : "http://ns.electronichealth.net.au/id/dva"
    },
    {
      "id" : "Identifier.value",
      "path" : "Identifier.value",
      "short" : "DVA number",
      "comment" : "This concept is equivalent to Australian Institute of Health and Welfare data element 339127 [Person—government funding identifier, Department of Veterans' Affairs file number AAXXNNNNA](https://meteor.aihw.gov.au/content/index.phtml/itemId/339127).",
      "min" : 1,
      "example" : [{
        "label" : "DVA number",
        "valueString" : "NBUR9080"
      }],
      "maxLength" : 9
    }]
  }
}

```
