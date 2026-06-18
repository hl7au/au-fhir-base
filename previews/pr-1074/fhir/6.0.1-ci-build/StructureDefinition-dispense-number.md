# Dispense Number - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **Dispense Number**

## Extension: Dispense Number 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://hl7.org.au/fhir/StructureDefinition/dispense-number | *Version*:6.0.1-ci-build | |
| * Standards status: *[Trial-use](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](generalguidance.md#maturity-levels): 2 | *Computable Name*:DispenseNumber |
| **Copyright/Legal**: HL7 Australia© 2018+; Licensed Under Creative Commons No Rights Reserved. | | |

This extension applies to the MedicationDispense resource and is used to represent the dispense number or sequence number that has been reached for a therapeutic good prescribed with repeats.

**Context of Use**

### Usage Notes

**Profile specific implementation guidance:**

* Set to "1" if there are no repeats.
* Increment by one each time a dispense act is successfully completed.

**Usage info**

**Usages:**

* Use this Extension: [AU Base MedicationDispense](StructureDefinition-au-medicationdispense.md)
* Examples for this Extension: [MedicationDispense/example0](MedicationDispense-example0.md) and [MedicationDispense/example1](MedicationDispense-example1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.au.base|current/StructureDefinition/StructureDefinition-dispense-number.json)

**Changes since version 6.0.0:**

* No changes

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-dispense-number.csv), [Excel](StructureDefinition-dispense-number.xlsx), [Schematron](StructureDefinition-dispense-number.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "dispense-number",
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
  "url" : "http://hl7.org.au/fhir/StructureDefinition/dispense-number",
  "version" : "6.0.1-ci-build",
  "name" : "DispenseNumber",
  "title" : "Dispense Number",
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
  "description" : "This extension applies to the MedicationDispense resource and is used to represent the dispense number or sequence number that has been reached for a therapeutic good prescribed with repeats.",
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
    "expression" : "MedicationDispense"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Number of this dispense",
      "definition" : "Dispense number or sequence number that has been reached for a therapeutic good prescribed with repeats. ",
      "comment" : "The value of this extension is 1 when there are no repeats. The value increments by one each time a dispense act is successfully completed.",
      "max" : "1"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://hl7.org.au/fhir/StructureDefinition/dispense-number"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "short" : "Dispense number",
      "min" : 1,
      "type" : [{
        "code" : "integer"
      }]
    }]
  }
}

```
