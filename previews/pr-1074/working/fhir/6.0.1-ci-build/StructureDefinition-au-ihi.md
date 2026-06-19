# AU IHI - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **AU IHI**

## Data Type Profile: AU IHI 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://hl7.org.au/fhir/StructureDefinition/au-ihi | *Version*:6.0.1-ci-build | |
| * Standards status: *[Trial-use](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](generalguidance.md#maturity-levels): 2 | *Computable Name*:AUIHI |
| **Copyright/Legal**: HL7 Australia© 2018+; Licensed Under Creative Commons No Rights Reserved. | | |

 
This identifier profile defines an Individual Healthcare Identifier in an Australian context (see [Australian Digital Health Agency](https://developer.digitalhealth.gov.au/specifications/national-infrastructure/ep-1826-2014/nehta-1163-2010) for further information). An IHI is assigned under the Healthcare Identifiers (HI) Service to a patient. 

### Usage Notes

**Profile specific implementation guidance:**

* Multiple Individual Healthcare Identifiers (IHIs) can be used in where the IHI status and/or IHI record status varies (e.g. deceased, provisional) though implementers should be aware when exchanging patient information that systems may not support multiple IHIs for an individual.

**Usages:**

* Use this DataType Profile: [AU Base Patient](StructureDefinition-au-patient.md) and [AU Base RelatedPerson](StructureDefinition-au-relatedperson.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.au.base|current/StructureDefinition/StructureDefinition-au-ihi.json)

**Changes since version 6.0.0:**

* No changes

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-au-ihi.csv), [Excel](StructureDefinition-au-ihi.xlsx), [Schematron](StructureDefinition-au-ihi.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "au-ihi",
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
  "url" : "http://hl7.org.au/fhir/StructureDefinition/au-ihi",
  "version" : "6.0.1-ci-build",
  "name" : "AUIHI",
  "title" : "AU IHI",
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
  "description" : "This identifier profile defines an Individual Healthcare Identifier in an Australian context (see [Australian Digital Health Agency](https://developer.digitalhealth.gov.au/specifications/national-infrastructure/ep-1826-2014/nehta-1163-2010) for further information). An IHI is assigned under the Healthcare Identifiers (HI) Service to a patient.",
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
      "short" : "Individual Healthcare Identifier (IHI)",
      "definition" : "Individual Healthcare Identifier (IHI) assigned under the HI Service to a patient.",
      "constraint" : [{
        "key" : "inv-ihi-value-0",
        "severity" : "error",
        "human" : "IHI shall be an exactly 16 digit number",
        "expression" : "value.matches('^([0-9]{16})$')",
        "source" : "http://hl7.org.au/fhir/StructureDefinition/au-ihi"
      },
      {
        "key" : "inv-ihi-value-1",
        "severity" : "error",
        "human" : "IHI prefix is 800360",
        "expression" : "value.startsWith('800360')",
        "source" : "http://hl7.org.au/fhir/StructureDefinition/au-ihi"
      },
      {
        "key" : "inv-ihi-value-2",
        "severity" : "error",
        "human" : "IHI shall pass the Luhn algorithm check",
        "expression" : "(((select(value.substring(0,1).toInteger()).select(iif($this<5, $this*2, (($this*2)-9))))+(value.substring(1,1).toInteger())+(select(value.substring(2,1).toInteger()).select(iif($this<5, $this*2, (($this*2)-9))))+(value.substring(3,1).toInteger())+(select(value.substring(4,1).toInteger()).select(iif($this<5, $this*2, (($this*2)-9))))+(value.substring(5,1).toInteger())+(select(value.substring(6,1).toInteger()).select(iif($this<5, $this*2, (($this*2)-9))))+(value.substring(7,1).toInteger())+(select(value.substring(8,1).toInteger()).select(iif($this<5, $this*2, (($this*2)-9))))+(value.substring(9,1).toInteger())+(select(value.substring(10,1).toInteger()).select(iif($this<5, $this*2, (($this*2)-9))))+(value.substring(11,1).toInteger())+(select(value.substring(12,1).toInteger()).select(iif($this<5, $this*2, (($this*2)-9))))+(value.substring(13,1).toInteger())+(select(value.substring(14,1).toInteger()).select(iif($this<5, $this*2, (($this*2)-9))))+(value.substring(15,1).toInteger()))mod 10=0)",
        "source" : "http://hl7.org.au/fhir/StructureDefinition/au-ihi"
      }]
    },
    {
      "id" : "Identifier.extension",
      "path" : "Identifier.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "rules" : "open"
      }
    },
    {
      "id" : "Identifier.extension:ihiStatus",
      "path" : "Identifier.extension",
      "sliceName" : "ihiStatus",
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org.au/fhir/StructureDefinition/ihi-status"]
      }]
    },
    {
      "id" : "Identifier.extension:ihiRecordStatus",
      "path" : "Identifier.extension",
      "sliceName" : "ihiRecordStatus",
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org.au/fhir/StructureDefinition/ihi-record-status"]
      }]
    },
    {
      "id" : "Identifier.extension:ihiVerifiedDate",
      "path" : "Identifier.extension",
      "sliceName" : "ihiVerifiedDate",
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org.au/fhir/StructureDefinition/ihi-verified-date"]
      }]
    },
    {
      "id" : "Identifier.type",
      "path" : "Identifier.type",
      "min" : 1,
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
          "code" : "NI"
        }]
      }
    },
    {
      "id" : "Identifier.system",
      "path" : "Identifier.system",
      "min" : 1,
      "fixedUri" : "http://ns.electronichealth.net.au/id/hi/ihi/1.0"
    },
    {
      "id" : "Identifier.value",
      "path" : "Identifier.value",
      "short" : "IHI",
      "comment" : "This concept is equivalent to Australian Institute of Health and Welfare data element 743458 [Person—Individual Healthcare Identifier, N(16)](https://meteor.aihw.gov.au/content/index.phtml/itemId/743458).",
      "min" : 1,
      "example" : [{
        "label" : "IHI",
        "valueString" : "8003608833357361"
      }],
      "maxLength" : 16,
      "condition" : ["inv-ihi-0", "inv-ihi-1", "inv-ihi-2"]
    }]
  }
}

```
