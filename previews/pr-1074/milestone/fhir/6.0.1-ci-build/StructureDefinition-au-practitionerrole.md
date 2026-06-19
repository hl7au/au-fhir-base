# AU Base PractitionerRole - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **AU Base PractitionerRole**

## Resource Profile: AU Base PractitionerRole 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://hl7.org.au/fhir/StructureDefinition/au-practitionerrole | *Version*:6.0.1-ci-build | |
| * Standards status: *[Trial-use](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](generalguidance.md#maturity-levels): 3 | *Computable Name*:AUBasePractitionerRole |
| **Copyright/Legal**: HL7 Australia© 2018+; Licensed Under Creative Commons No Rights Reserved. | | |

 
This profile defines a practitioner role structure that localises core concepts, including identifiers and terminology, for use in an Australian context. The purpose of this profile is to provide national level agreement on core localised concepts. This profile does not force conformance to core localised concepts. It enables implementers and modellers to make their own rules, i.e. [profiling](http://hl7.org/fhir/profiling.html), about how to support these concepts for specific implementation needs. 

### Usage Notes

**Profile specific implementation guidance:**

* If a system needs to differentiate contacts for a practitioner in a role by purpose: 
* contact information is sent in `PractitionerRole.telecom`
* purpose for the contact is sent using the [Contact Purpose](StructureDefinition-contact-purpose.md) extension in `PractitionerRole.telecom.extension`
 
* When selecting a code for `PractitionerRole.code`: 
* Where possible a code from the preferred [Practitioner Role](https://healthterminologies.gov.au/fhir/ValueSet/practitioner-role-1) value set should be selected.
* If a system is unable to provide a code from the preferred value set because the implementation context is not restricted to healthcare practitioner providers then it is recommended to select a suitable code from SNOMED CT.
* If a suitable code from SNOMED CT is not available a code from the value set [Australian and New Zealand Standard Classification of Occupations](https://healthterminologies.gov.au/fhir/ValueSet/anzsco-1) may be used.
 
* See each Identifier profile page for guidance related to that identifier type.
* When populating available times for a practitioner role, e.g. `PractitionerRole.availableTime.availableStartTime`, an Australian time zone offset is represented using the [Timezone Code](http://hl7.org/fhir/StructureDefinition/timezone) extension as profiled by [Australian Time Zone Usage](StructureDefinition-au-timezone-usage.md).

**Potentially useful extensions:**

* PractitionerRole.telecom: [Contact Purpose](StructureDefinition-contact-purpose.md)

**Usages:**

* Examples for this Profile: [PractitionerRole/example0](PractitionerRole-example0.md), [PractitionerRole/example1](PractitionerRole-example1.md), [PractitionerRole/example2](PractitionerRole-example2.md), [PractitionerRole/example3](PractitionerRole-example3.md) and [PractitionerRole/example4](PractitionerRole-example4.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.au.base|current/StructureDefinition/StructureDefinition-au-practitionerrole.json)

**Changes since version 6.0.0:**

* The data elements list has changed

* One or more text definitions, invariants or bindings have changed

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-au-practitionerrole.csv), [Excel](StructureDefinition-au-practitionerrole.xlsx), [Schematron](StructureDefinition-au-practitionerrole.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "au-practitionerrole",
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
  "url" : "http://hl7.org.au/fhir/StructureDefinition/au-practitionerrole",
  "version" : "6.0.1-ci-build",
  "name" : "AUBasePractitionerRole",
  "title" : "AU Base PractitionerRole",
  "status" : "active",
  "date" : "2026-06-19T01:46:09+00:00",
  "publisher" : "HL7 Australia",
  "contact" : [{
    "name" : "HL7 Australia FHIR Working Group",
    "telecom" : [{
      "system" : "url",
      "value" : "https://confluence.hl7.org/display/HAFWG",
      "use" : "work"
    }]
  }],
  "description" : "This profile defines a practitioner role structure that localises core concepts, including identifiers and terminology, for use in an Australian context. The purpose of this profile is to provide national level agreement on core localised concepts. This profile does not force conformance to core localised concepts. It enables implementers and modellers to make their own rules, i.e. [profiling](http://hl7.org/fhir/profiling.html), about how to support these concepts for specific implementation needs.",
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
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "PractitionerRole",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/PractitionerRole",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "PractitionerRole",
      "path" : "PractitionerRole",
      "short" : "A practitioner in a healthcare role in an Australian healthcare context"
    },
    {
      "id" : "PractitionerRole.identifier",
      "path" : "PractitionerRole.identifier",
      "short" : "Business Identifiers that are specific to a role/location",
      "definition" : "Business Identifiers that are specific to a role/location.",
      "type" : [{
        "code" : "Identifier",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/Identifier",
        "http://hl7.org.au/fhir/StructureDefinition/au-medicareprovidernumber",
        "http://hl7.org.au/fhir/StructureDefinition/au-nationalprovideridentifieratorganisation",
        "http://hl7.org.au/fhir/StructureDefinition/au-employeenumber"]
      }]
    },
    {
      "id" : "PractitionerRole.code",
      "path" : "PractitionerRole.code",
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "https://healthterminologies.gov.au/fhir/ValueSet/practitioner-role-1"
      }
    },
    {
      "id" : "PractitionerRole.specialty",
      "path" : "PractitionerRole.specialty",
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "https://healthterminologies.gov.au/fhir/ValueSet/clinical-specialty-1"
      }
    },
    {
      "id" : "PractitionerRole.availableTime.availableStartTime.extension:timeZone",
      "path" : "PractitionerRole.availableTime.availableStartTime.extension",
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
      "id" : "PractitionerRole.availableTime.availableEndTime.extension:timeZone",
      "path" : "PractitionerRole.availableTime.availableEndTime.extension",
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
