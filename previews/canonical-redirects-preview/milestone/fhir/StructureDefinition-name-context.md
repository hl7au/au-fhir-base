# Name Context - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **Name Context**

## Extension: Name Context 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://hl7.org.au/fhir/StructureDefinition/name-context | *Version*:6.0.1-ci-build | |
| * Standards status: *[Trial-use](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](generalguidance.md#maturity-levels): 1 | *Computable Name*:NameContext |
| **Copyright/Legal**: HL7 Australia© 2018+; Licensed Under Creative Commons No Rights Reserved. | | |

This extension applies to the [HumanName](http://hl7.org/fhir/R4/datatypes.html#HumanName) data type, in the context of Patient, Person, Practitioner or RelatedPerson resources and is used to indicate a suitable use of the associated name. The usage described may be varied in nature including suitability for a particular purpose e.g. IHI validation, or highlighting (in)appropriate use when referring to an individual e.g. deceased Aboriginal name, transgender deadname.

**Context of Use**

**Usage info**

**Usages:**

* Examples for this Extension: [Patient/example0](Patient-example0.md) and [Practitioner/example0](Practitioner-example0.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.au.base|current/StructureDefinition/StructureDefinition-name-context.json)

**Changes since version 6.0.0:**

* No changes

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-name-context.csv), [Excel](StructureDefinition-name-context.xlsx), [Schematron](StructureDefinition-name-context.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "name-context",
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
  "url" : "http://hl7.org.au/fhir/StructureDefinition/name-context",
  "version" : "6.0.1-ci-build",
  "name" : "NameContext",
  "title" : "Name Context",
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
  "description" : "This extension applies to the [HumanName](http://hl7.org/fhir/R4/datatypes.html#HumanName) data type, in the context of Patient, Person, Practitioner or RelatedPerson resources and is used to indicate a suitable use of the associated name.\nThe usage described may be varied in nature including suitability for a particular purpose e.g. IHI validation, or highlighting (in)appropriate use when referring to an individual e.g. deceased Aboriginal name, transgender deadname.",
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
    "expression" : "Patient.name"
  },
  {
    "type" : "element",
    "expression" : "RelatedPerson.name"
  },
  {
    "type" : "element",
    "expression" : "Person.name"
  },
  {
    "type" : "element",
    "expression" : "Practitioner.name"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Name Context",
      "definition" : "A suitable context of use for a patient, person, practitioner or related person name can be indicated using this extension. \nThis includes an ability to provide a coded concept or text description of a suitable use of the associated name.\nThe usage described may be varied in nature including suitability for a particular purpose e.g. IHI validation, or highlighting (in)appropriate\nuse when referring to an individual e.g. deceased Aboriginal name, transgender deadname."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://hl7.org.au/fhir/StructureDefinition/name-context"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "short" : "Name context",
      "min" : 1,
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://terminology.hl7.org.au/ValueSet/name-context"
      }
    }]
  }
}

```
