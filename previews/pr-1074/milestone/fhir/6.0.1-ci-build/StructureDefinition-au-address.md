# Australian Address - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **Australian Address**

## Data Type Profile: Australian Address 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://hl7.org.au/fhir/StructureDefinition/au-address | *Version*:6.0.1-ci-build | |
| * Standards status: *[Trial-use](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](generalguidance.md#maturity-levels): 2 | *Computable Name*:AustralianAddress |
| **Copyright/Legal**: HL7 Australia© 2018+; Licensed Under Creative Commons No Rights Reserved. | | |

 
This profile defines an address structure that localises core concepts, including identifiers and terminology, for use in an Australian context, to specifically represent an Australian (location) address. The purpose of this profile is to provide best practice guidance on Australian address representation, where some constraint on content is desirable to guarantee the quality of an Australian address. 

### Usage Notes

**Profile specific implementation guidance:**

* An international address can be represented using the core [Address](http://hl7.org/fhir/R4/datatypes.html#Address) data type.

**Potentially useful extensions:**

* Address.line: [Unit](http://hl7.org/fhir/R4/extension-iso21090-adxp-unitid.html)
* Address.line: [House Number](http://hl7.org/fhir/R4/extension-iso21090-adxp-housenumber.html)
* Address.line: [Street Name](http://hl7.org/fhir/R4/extension-iso21090-adxp-streetname.html)
* Address.line: [Street Name Type](http://hl7.org/fhir/R4/extension-iso21090-adxp-streetnametype.html)
* Address.line: [Street Name Base](http://hl7.org/fhir/R4/extension-iso21090-adxp-streetnamebase.html)

**Usages:**

* Use this DataType Profile: [AU Base Location](StructureDefinition-au-location.md), [AU Base Organization](StructureDefinition-au-organization.md), [AU Base Patient](StructureDefinition-au-patient.md), [AU Base Practitioner](StructureDefinition-au-practitioner.md) and [AU Base RelatedPerson](StructureDefinition-au-relatedperson.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.au.base|current/StructureDefinition/StructureDefinition-au-address.json)

**Changes since version 6.0.0:**

* No changes

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-au-address.csv), [Excel](StructureDefinition-au-address.xlsx), [Schematron](StructureDefinition-au-address.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "au-address",
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
  "url" : "http://hl7.org.au/fhir/StructureDefinition/au-address",
  "version" : "6.0.1-ci-build",
  "name" : "AustralianAddress",
  "title" : "Australian Address",
  "status" : "active",
  "date" : "2026-06-18T16:30:51+00:00",
  "publisher" : "HL7 Australia",
  "contact" : [{
    "name" : "HL7 Australia FHIR Working Group",
    "telecom" : [{
      "system" : "url",
      "value" : "https://confluence.hl7.org/display/HAFWG",
      "use" : "work"
    }]
  }],
  "description" : "This profile defines an address structure that localises core concepts, including identifiers and terminology, for use in an Australian context, to specifically represent an Australian (location) address. The purpose of this profile is to provide best practice guidance on Australian address representation, where some constraint on content is desirable to guarantee the quality of an Australian address.",
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
    "identity" : "vcard",
    "uri" : "http://w3.org/vcard",
    "name" : "vCard Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "type" : "Address",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Address",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Address",
      "path" : "Address",
      "short" : "An address in Australia for use within an Australian healthcare context",
      "definition" : "An Australian address expressed using postal conventions (as opposed to GPS or other location definition formats).",
      "constraint" : [{
        "key" : "inv-add-0",
        "severity" : "error",
        "human" : "The address shall at least have text or a line",
        "expression" : "text.exists() or line.exists()",
        "source" : "http://hl7.org.au/fhir/StructureDefinition/au-address"
      },
      {
        "key" : "inv-add-1",
        "severity" : "error",
        "human" : "If asserting no fixed address, the type shall be 'physical'",
        "expression" : "extension('http://hl7.org.au/fhir/StructureDefinition/no-fixed-address').exists() implies type='physical'",
        "source" : "http://hl7.org.au/fhir/StructureDefinition/au-address"
      },
      {
        "key" : "inv-add-2",
        "severity" : "error",
        "human" : "If asserting no fixed address, the address text shall begin with 'NO FIXED ADDRESS'",
        "expression" : "extension('http://hl7.org.au/fhir/StructureDefinition/no-fixed-address').exists() implies text.startsWith('NO FIXED ADDRESS')",
        "source" : "http://hl7.org.au/fhir/StructureDefinition/au-address"
      }]
    },
    {
      "id" : "Address.extension",
      "path" : "Address.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "rules" : "open"
      }
    },
    {
      "id" : "Address.extension:identifier",
      "path" : "Address.extension",
      "sliceName" : "identifier",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org.au/fhir/StructureDefinition/address-identifier"]
      }]
    },
    {
      "id" : "Address.extension:identifier.value[x]",
      "path" : "Address.extension.value[x]",
      "type" : [{
        "code" : "Identifier",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/Identifier",
        "http://hl7.org.au/fhir/StructureDefinition/au-deliverypointidentifier",
        "http://hl7.org.au/fhir/StructureDefinition/au-gnafidentifier"]
      }]
    },
    {
      "id" : "Address.extension:noFixedAddress",
      "path" : "Address.extension",
      "sliceName" : "noFixedAddress",
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org.au/fhir/StructureDefinition/no-fixed-address"]
      }],
      "condition" : ["inv-add-1", "inv-add-2"]
    },
    {
      "id" : "Address.type",
      "path" : "Address.type",
      "condition" : ["inv-add-1"]
    },
    {
      "id" : "Address.text",
      "path" : "Address.text",
      "condition" : ["inv-add-0", "inv-add-2"]
    },
    {
      "id" : "Address.line",
      "path" : "Address.line",
      "condition" : ["inv-add-0"]
    },
    {
      "id" : "Address.city",
      "path" : "Address.city",
      "short" : "Name of city, town or suburb"
    },
    {
      "id" : "Address.state",
      "path" : "Address.state",
      "short" : "Australian state or territory",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://healthterminologies.gov.au/fhir/ValueSet/australian-states-territories-2"
      }
    },
    {
      "id" : "Address.postalCode",
      "path" : "Address.postalCode",
      "condition" : ["inv-add-3"],
      "constraint" : [{
        "key" : "inv-add-3",
        "severity" : "error",
        "human" : "Postal code shall be 4 digits",
        "expression" : "matches('^[0-9]{4}$')",
        "source" : "http://hl7.org.au/fhir/StructureDefinition/au-address"
      }]
    },
    {
      "id" : "Address.country",
      "path" : "Address.country",
      "short" : "Australia as a 2 digit ISO 3166 code",
      "definition" : "Fixed value if present otherwise assumed to be Australia in this context.",
      "fixedString" : "AU"
    }]
  }
}

```
