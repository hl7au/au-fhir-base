# AU Ahpra Registration Number - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **AU Ahpra Registration Number**

## Data Type Profile: AU Ahpra Registration Number 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://hl7.org.au/fhir/StructureDefinition/au-ahpraregistrationnumber | *Version*:6.0.1-ci-build | |
| * Standards status: *[Trial-use](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](generalguidance.md#maturity-levels): 1 | *Computable Name*:AUAhpraRegistrationNumber |
| **Copyright/Legal**: HL7 Australia© 2018+; Licensed Under Creative Commons No Rights Reserved. | | |

 
This identifier profile defines an Australian Health Practitioner Regulation Agency (Ahpra) registration number in an Australian context (see [Ahpra](https://www.ahpra.gov.au) for further information). 

### Usage Notes

**Usages:**

* Use this DataType Profile: [AU Base Practitioner](StructureDefinition-au-practitioner.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.au.base|current/StructureDefinition/StructureDefinition-au-ahpraregistrationnumber.json)

**Changes since version 6.0.0:**

* No changes

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-au-ahpraregistrationnumber.csv), [Excel](StructureDefinition-au-ahpraregistrationnumber.xlsx), [Schematron](StructureDefinition-au-ahpraregistrationnumber.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "au-ahpraregistrationnumber",
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
  "url" : "http://hl7.org.au/fhir/StructureDefinition/au-ahpraregistrationnumber",
  "version" : "6.0.1-ci-build",
  "name" : "AUAhpraRegistrationNumber",
  "title" : "AU Ahpra Registration Number",
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
  "description" : "This identifier profile defines an Australian Health Practitioner Regulation Agency (Ahpra) registration number in an Australian context (see [Ahpra](https://www.ahpra.gov.au) for further information).",
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
      "short" : "Australian Health Practitioner Regulation Agency (Ahpra) Registration Number",
      "definition" : "Australian Health Practitioner Regulation Authority (Ahpra) registration number assigned to a practitioner.",
      "constraint" : [{
        "key" : "inv-ahpra-0",
        "severity" : "error",
        "human" : "Ahpra identifier shall be 3 uppercase letters, followed by 10 digits",
        "expression" : "value.matches('^[A-Z]{3}[0-9]{10}$')",
        "source" : "http://hl7.org.au/fhir/StructureDefinition/au-ahpraregistrationnumber"
      }]
    },
    {
      "id" : "Identifier.type",
      "path" : "Identifier.type",
      "min" : 1,
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org.au/CodeSystem/v2-0203",
          "code" : "AHPRA"
        }]
      }
    },
    {
      "id" : "Identifier.system",
      "path" : "Identifier.system",
      "min" : 1,
      "fixedUri" : "http://hl7.org.au/id/ahpra-registration-number"
    },
    {
      "id" : "Identifier.value",
      "path" : "Identifier.value",
      "short" : "Ahpra registration number",
      "min" : 1,
      "example" : [{
        "label" : "Ahpra registration number",
        "valueString" : "MED0000932846"
      }],
      "condition" : ["inv-ahpra-0"]
    }]
  }
}

```
