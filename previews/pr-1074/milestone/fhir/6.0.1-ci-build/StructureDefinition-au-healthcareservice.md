# AU Base HealthcareService - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **AU Base HealthcareService**

## Resource Profile: AU Base HealthcareService 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://hl7.org.au/fhir/StructureDefinition/au-healthcareservice | *Version*:6.0.1-ci-build | |
| * Standards status: *[Trial-use](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](generalguidance.md#maturity-levels): 3 | *Computable Name*:AUBaseHealthcareService |
| **Copyright/Legal**: HL7 Australia© 2018+; Licensed Under Creative Commons No Rights Reserved. | | |

 
This profile defines a healthcare service structure that localises core concepts, including identifiers and terminology, for use in an Australian context. The purpose of this profile is to provide national level agreement on core localised concepts. This profile does not force conformance to core localised concepts. It enables implementers and modellers to make their own rules, i.e. [profiling](http://hl7.org/fhir/profiling.html), about how to support these concepts for specific implementation needs. 

### Usage Notes

**Profile specific implementation guidance:**

* An HPI-O can be sent in `HealthcareService.identifier` when supporting the case where network HPI-Os are issued for sub-organisations, departments, or other logical divisions acting as specific healthcare services. This is useful in the absence of any specific national identifier for healthcare service entities.
* See each Identifier profile page for guidance related to that identifier type.
* If a system needs to differentiate contacts for a practitioner in a role by purpose: 
* contact information is sent in `HealthcareService.telecom`
* purpose for the contact is sent using the [Contact Purpose](StructureDefinition-contact-purpose.md) extension in `HealthcareService.telecom.extension`
 
* See the [AU Base Location](StructureDefinition-au-location.md) profile for guidance on using a Location resource as part of defining a type of mobile or remotely delivered service.
* When populating available times for a health care service, e.g. `HealthcareService.availableTime.availableStartTime`, an Australian time zone offset is represented using the [Timezone Code](http://hl7.org/fhir/StructureDefinition/timezone) extension as profiled by [Australian Time Zone Usage](StructureDefinition-au-timezone-usage.md).

**Potentially useful extensions:**

* HealthcareService.telecom: [Contact Purpose](StructureDefinition-contact-purpose.md)

**Usages:**

* Examples for this Profile: [Cardiothoracic Services](HealthcareService-example0.md), [Albion Hospital Radiology Service](HealthcareService-example1.md), [Albion Hospital Pathology Service](HealthcareService-example2.md) and [General Practitioner services](HealthcareService-example3.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.au.base|current/StructureDefinition/StructureDefinition-au-healthcareservice.json)

**Changes since version 6.0.0:**

* The data elements list has changed

* One or more text definitions, invariants or bindings have changed

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-au-healthcareservice.csv), [Excel](StructureDefinition-au-healthcareservice.xlsx), [Schematron](StructureDefinition-au-healthcareservice.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "au-healthcareservice",
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
  "url" : "http://hl7.org.au/fhir/StructureDefinition/au-healthcareservice",
  "version" : "6.0.1-ci-build",
  "name" : "AUBaseHealthcareService",
  "title" : "AU Base HealthcareService",
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
  "description" : "This profile defines a healthcare service structure that localises core concepts, including identifiers and terminology, for use in an Australian context. The purpose of this profile is to provide national level agreement on core localised concepts. This profile does not force conformance to core localised concepts. It enables implementers and modellers to make their own rules, i.e. [profiling](http://hl7.org/fhir/profiling.html), about how to support these concepts for specific implementation needs.",
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
  "type" : "HealthcareService",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/HealthcareService",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "HealthcareService",
      "path" : "HealthcareService",
      "short" : "A healthcare service in an Australian healthcare context"
    },
    {
      "id" : "HealthcareService.identifier",
      "path" : "HealthcareService.identifier",
      "short" : "External identifiers for this item",
      "definition" : "External identifiers for this item.",
      "type" : [{
        "code" : "Identifier",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/Identifier",
        "http://hl7.org.au/fhir/StructureDefinition/au-hpio",
        "http://hl7.org.au/fhir/StructureDefinition/au-residentialagedcareserviceidentifier"]
      }]
    },
    {
      "id" : "HealthcareService.type",
      "path" : "HealthcareService.type",
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "https://healthterminologies.gov.au/fhir/ValueSet/service-type-1"
      }
    },
    {
      "id" : "HealthcareService.specialty",
      "path" : "HealthcareService.specialty",
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "https://healthterminologies.gov.au/fhir/ValueSet/clinical-specialty-1"
      }
    },
    {
      "id" : "HealthcareService.serviceProvisionCode",
      "path" : "HealthcareService.serviceProvisionCode",
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "http://terminology.hl7.org.au/ValueSet/service-provision-conditions"
      }
    },
    {
      "id" : "HealthcareService.communication",
      "path" : "HealthcareService.communication",
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://healthterminologies.gov.au/fhir/ValueSet/common-languages-australia-2"
      }
    },
    {
      "id" : "HealthcareService.availableTime.availableStartTime.extension:timeZone",
      "path" : "HealthcareService.availableTime.availableStartTime.extension",
      "sliceName" : "timeZone",
      "comment" : "Use [Australian Time Zone Usage](StructureDefinition-au-timezone-usage.html) for Australian state and territory time zone offsets.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/timezone"]
      }]
    },
    {
      "id" : "HealthcareService.availableTime.availableEndTime.extension:timeZone",
      "path" : "HealthcareService.availableTime.availableEndTime.extension",
      "sliceName" : "timeZone",
      "comment" : "Use [Australian Time Zone Usage](StructureDefinition-au-timezone-usage.html) for Australian state and territory time zone offsets.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/timezone"]
      }]
    }]
  }
}

```
