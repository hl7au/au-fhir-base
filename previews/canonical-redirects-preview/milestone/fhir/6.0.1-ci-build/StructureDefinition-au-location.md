# AU Base Location - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **AU Base Location**

## Resource Profile: AU Base Location 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://hl7.org.au/fhir/StructureDefinition/au-location | *Version*:6.0.1-ci-build | |
| * Standards status: *[Trial-use](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](generalguidance.md#maturity-levels): 3 | *Computable Name*:AUBaseLocation |
| **Copyright/Legal**: HL7 Australia© 2018+; Licensed Under Creative Commons No Rights Reserved. | | |

 
This profile defines a location structure that localises core concepts, including identifiers and terminology, for use in an Australian context. The purpose of this profile is to provide national level agreement on core localised concepts. This profile does not force conformance to core localised concepts. It enables implementers and modellers to make their own rules, i.e. [profiling](http://hl7.org/fhir/profiling.html), about how to support these concepts for specific implementation needs. 

### Usage Notes

**Profile specific implementation guidance:**

* When defining a type of mobile or remotely delivered service location: 
* `Location.mode` is sent as "kind"
* One instance of `Location.type` is sent as "MOBL"
* Additional types of `Location.type` indicate the service is tailored for delivery in these kinds of locations (e.g. "AMB", "COMM", "PTRES", "SCHOOL", or "WORK").
 
* When defining a remotely delivered service location: 
* `Location.mode` is sent as "kind"
* `Location.type` is sent as "VI"
* `Location.physicalType` is sent as "vi"
 
* When constructing an address: 
* an international address can be represented using the core [Address](http://hl7.org/fhir/R4/datatypes.html#Address) data type
* an Australian address **SHOULD** be represented using the [Australian Address](http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-address.html) data type profile
 

**Usages:**

* Examples for this Profile: [Downunder Hospital Blacktown](Location-example0.md), [Location/example1](Location-example1.md), [Location/example2](Location-example2.md), [Location/example3](Location-example3.md)... Show 4 more, [Telehealth](Location-example4.md), [Mobile, home-based](Location-example5.md), [Mobile, school-based](Location-example6.md) and [Mobile, residential-care-based](Location-example7.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.au.base|current/StructureDefinition/StructureDefinition-au-location.json)

**Changes since version 6.0.0:**

* No changes

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-au-location.csv), [Excel](StructureDefinition-au-location.xlsx), [Schematron](StructureDefinition-au-location.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "au-location",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm",
    "valueInteger" : 3
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
  "url" : "http://hl7.org.au/fhir/StructureDefinition/au-location",
  "version" : "6.0.1-ci-build",
  "name" : "AUBaseLocation",
  "title" : "AU Base Location",
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
  "description" : "This profile defines a location structure that localises core concepts, including identifiers and terminology, for use in an Australian context. The purpose of this profile is to provide national level agreement on core localised concepts. This profile does not force conformance to core localised concepts. It enables implementers and modellers to make their own rules, i.e. [profiling](http://hl7.org/fhir/profiling.html), about how to support these concepts for specific implementation needs.",
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
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Location",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Location",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Location",
      "path" : "Location",
      "short" : "A location in an Australian healthcare context"
    },
    {
      "id" : "Location.identifier",
      "path" : "Location.identifier",
      "short" : "Unique code or number identifying the location to its users",
      "definition" : "Unique code or number identifying the location to its users.",
      "type" : [{
        "code" : "Identifier",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/Identifier",
        "http://hl7.org.au/fhir/StructureDefinition/au-locationspecificpracticenumber",
        "http://hl7.org.au/fhir/StructureDefinition/au-natasitenumber"]
      }]
    },
    {
      "id" : "Location.type",
      "path" : "Location.type",
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://terminology.hl7.org.au/ValueSet/v3-ServiceDeliveryLocationRoleType-extended"
      }
    },
    {
      "id" : "Location.address",
      "path" : "Location.address",
      "comment" : "This is primarily used for the physical address of the location. The Organization however uses the address property for administrative purposes.",
      "type" : [{
        "code" : "Address",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/Address",
        "http://hl7.org.au/fhir/StructureDefinition/au-address"]
      }]
    },
    {
      "id" : "Location.physicalType",
      "path" : "Location.physicalType",
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "http://terminology.hl7.org.au/ValueSet/location-physical-type-extended"
      }
    }]
  }
}

```
