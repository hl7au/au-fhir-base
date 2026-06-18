# AU Base Organization - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **AU Base Organization**

## Resource Profile: AU Base Organization 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://hl7.org.au/fhir/StructureDefinition/au-organization | *Version*:6.0.1-ci-build | |
| * Standards status: *[Trial-use](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](generalguidance.md#maturity-levels): 3 | *Computable Name*:AUBaseOrganization |
| **Copyright/Legal**: HL7 Australia© 2018+; Licensed Under Creative Commons No Rights Reserved. | | |

 
This profile defines an organisation structure that localises core concepts, including identifiers and terminology, for use in an Australian context. The purpose of this profile is to provide national level agreement on core localised concepts. This profile does not force conformance to core localised concepts. It enables implementers and modellers to make their own rules, i.e. [profiling](http://hl7.org/fhir/profiling.html), about how to support these concepts for specific implementation needs. 

### Usage Notes

**Profile specific implementation guidance:**

* See each Identifier profile page for guidance related to that identifier type.
* When selecting a code for `Organization.type`: 
* Where possible a code from the preferred [Healthcare Organisation Role Type](https://healthterminologies.gov.au/fhir/ValueSet/healthcare-organisation-role-type-1) value set should be selected.
* If a system is unable to provide a code from the preferred value set because the implementation context is not restricted to healthcare practitioner providers then it is recommended to select a suitable code from SNOMED CT.
* If a suitable code from SNOMED CT is not available, a code from the code system [Australian and New Zealand Standard Industrial Classification (ANZSIC), 2006 (Revision 2.0)](https://www.healthterminologies.gov.au/integration/R4/fhir/CodeSystem/anzsic-2006-20130626) may be used.
 
* When constructing an address: 
* an international address can be represented using the core [Address](http://hl7.org/fhir/R4/datatypes.html#Address) data type
* an Australian address can be represented using the [Australian Address](StructureDefinition-au-address.md) data type profile
 
* Additional considerations for systems aligning to HL7 AU Base: 
* Contact details and associated contact purpose are encouraged to be sent in `Organization.contact` over making use of the [Contact Purpose](StructureDefinition-contact-purpose.md) extension.
 

**Usages:**

* Examples for this Profile: [Test Org -DigitalHealth 5](Organization-5-8631-1.md), [Downunder Hospital](Organization-example0.md), [Albion Hospital](Organization-example1.md), [Holistic Medical Pty Ltd as trustee for Smith Family Trust](Organization-example2.md)... Show 5 more, [Devonport Family Medicine Clinic](Organization-example3.md), [Downunder Hospital](Organization-example4.md), [ACME Pathology](Organization-example6.md), [Sunshine Home Care Services](Organization-example7.md) and [Metro Health Administration Services](Organization-example8.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.au.base|current/StructureDefinition/StructureDefinition-au-organization.json)

**Changes since version 6.0.0:**

* No changes

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-au-organization.csv), [Excel](StructureDefinition-au-organization.xlsx), [Schematron](StructureDefinition-au-organization.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "au-organization",
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
  "url" : "http://hl7.org.au/fhir/StructureDefinition/au-organization",
  "version" : "6.0.1-ci-build",
  "name" : "AUBaseOrganization",
  "title" : "AU Base Organization",
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
  "description" : "This profile defines an organisation structure that localises core concepts, including identifiers and terminology, for use in an Australian context. The purpose of this profile is to provide national level agreement on core localised concepts. This profile does not force conformance to core localised concepts. It enables implementers and modellers to make their own rules, i.e. [profiling](http://hl7.org/fhir/profiling.html), about how to support these concepts for specific implementation needs.",
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
  "type" : "Organization",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Organization",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Organization",
      "path" : "Organization",
      "short" : "An organisation in an Australian healthcare context"
    },
    {
      "id" : "Organization.identifier",
      "path" : "Organization.identifier",
      "short" : "Identifies this organization across multiple systems",
      "definition" : "Identifier for the organization that is used to identify the organization across multiple disparate systems.",
      "type" : [{
        "code" : "Identifier",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/Identifier",
        "http://hl7.org.au/fhir/StructureDefinition/au-hpio",
        "http://hl7.org.au/fhir/StructureDefinition/au-hae",
        "http://hl7.org.au/fhir/StructureDefinition/au-hspo",
        "http://hl7.org.au/fhir/StructureDefinition/au-paioidentifier",
        "http://hl7.org.au/fhir/StructureDefinition/au-cspregistrationnumber",
        "http://hl7.org.au/fhir/StructureDefinition/au-australianbusinessnumber",
        "http://hl7.org.au/fhir/StructureDefinition/au-australiancompanynumber",
        "http://hl7.org.au/fhir/StructureDefinition/au-australianregistredbodynumber",
        "http://hl7.org.au/fhir/StructureDefinition/au-nataaccreditationnumber",
        "http://hl7.org.au/fhir/StructureDefinition/au-pharmacyapprovalnumber"]
      }]
    },
    {
      "id" : "Organization.type",
      "path" : "Organization.type",
      "comment" : "When selecting a code for Organization type, if a system is unable to provide a code from the preferred value set [Healthcare Organisation Role Type](https://healthterminologies.gov.au/fhir/ValueSet/healthcare-organisation-role-type-1) because the implementation context is not restricted to healthcare practitioner providers then it is recommended to select from the wider set available in SNOMED CT. If a suitable code from SNOMED CT is not available, a code from the code system [Australian and New Zealand Standard Industrial Classification (ANZSIC), 2006 (Revision 2.0)](https://www.healthterminologies.gov.au/integration/R4/fhir/CodeSystem/anzsic-2006-20130626) may be used.",
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "https://healthterminologies.gov.au/fhir/ValueSet/healthcare-organisation-role-type-1"
      }
    },
    {
      "id" : "Organization.address",
      "path" : "Organization.address",
      "comment" : "The address is intended to describe postal addresses for administrative purposes, not to describe absolute geographical coordinates. Postal addresses are often used as proxies for physical locations (also see the Location resource).",
      "type" : [{
        "code" : "Address",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/Address",
        "http://hl7.org.au/fhir/StructureDefinition/au-address"]
      }]
    },
    {
      "id" : "Organization.contact",
      "path" : "Organization.contact"
    },
    {
      "id" : "Organization.contact.purpose",
      "path" : "Organization.contact.purpose",
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://terminology.hl7.org.au/ValueSet/contact-purpose"
      }
    }]
  }
}

```
