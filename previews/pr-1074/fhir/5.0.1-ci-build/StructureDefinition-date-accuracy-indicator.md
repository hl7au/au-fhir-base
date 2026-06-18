# Date Accuracy Indicator - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **Date Accuracy Indicator**

## Extension: Date Accuracy Indicator 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://hl7.org.au/fhir/StructureDefinition/date-accuracy-indicator | *Version*:6.0.1-ci-build | |
| * Standards status: *[Trial-use](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](generalguidance.md#maturity-levels): 2 | *Computable Name*:DateAccuracyIndicator |
| **Copyright/Legal**: HL7 Australia© 2018+; Licensed Under Creative Commons No Rights Reserved. | | |

This extension applies to the [date](http://hl7.org/fhir/R4/datatypes.html#date) and [dateTime](http://hl7.org/fhir/R4/datatypes.html#dateTime) data types and is used to represent the accuracy of the associated date.

**Context of Use**

### Usage Notes

**Usage info**

**Usages:**

* Use this Extension: [AU Base Patient](StructureDefinition-au-patient.md) and [Date of Arrival in Australia](StructureDefinition-date-of-arrival.md)
* Examples for this Extension: [Patient/DateAccuracyIndicatorAAAexample0](Patient-DateAccuracyIndicatorAAAexample0.md), [Patient/DateAccuracyIndicatorAAUexample1](Patient-DateAccuracyIndicatorAAUexample1.md), [Patient/DateAccuracyIndicatorUAAexample2](Patient-DateAccuracyIndicatorUAAexample2.md), [Patient/DateAccuracyIndicatorUEAexample3](Patient-DateAccuracyIndicatorUEAexample3.md)... Show 2 more, [Patient/DateAccuracyIndicatorUUUexample4](Patient-DateAccuracyIndicatorUUUexample4.md) and [Patient/example3](Patient-example3.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.au.base|current/StructureDefinition/StructureDefinition-date-accuracy-indicator.json)

**Changes since version 6.0.0:**

* No changes

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-date-accuracy-indicator.csv), [Excel](StructureDefinition-date-accuracy-indicator.xlsx), [Schematron](StructureDefinition-date-accuracy-indicator.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "date-accuracy-indicator",
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
  "url" : "http://hl7.org.au/fhir/StructureDefinition/date-accuracy-indicator",
  "version" : "6.0.1-ci-build",
  "name" : "DateAccuracyIndicator",
  "title" : "Date Accuracy Indicator",
  "status" : "active",
  "date" : "2026-06-18T15:06:23+00:00",
  "publisher" : "HL7 Australia",
  "contact" : [{
    "name" : "HL7 Australia FHIR Working Group",
    "telecom" : [{
      "system" : "url",
      "value" : "https://confluence.hl7.org/display/HAFWG",
      "use" : "work"
    }]
  }],
  "description" : "This extension applies to the [date](http://hl7.org/fhir/R4/datatypes.html#date) and [dateTime](http://hl7.org/fhir/R4/datatypes.html#dateTime) data types and is used to represent the accuracy of the associated date.",
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
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "date"
  },
  {
    "type" : "element",
    "expression" : "dateTime"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Date accuracy indicator",
      "definition" : "General date accuracy indicator coding.",
      "comment" : "In some circumstances, systems may capture date or dateTime data that has unknown or estimated parts. This coding indicates the accuracy of the day, month and year parts. This concept is equivalent to Australian Institute of Health and Welfare data element 294418 [Date—accuracy indicator](https://meteor.aihw.gov.au/content/index.phtml/itemId/294418).",
      "max" : "1"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://hl7.org.au/fhir/StructureDefinition/date-accuracy-indicator"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "short" : "Date accuracy coding",
      "definition" : "Coding of the accuracy of a date.",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "description" : "Date accuracy coding",
        "valueSet" : "https://healthterminologies.gov.au/fhir/ValueSet/date-accuracy-indicator-1"
      }
    }]
  }
}

```
