# Order Identifier Type - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **Order Identifier Type**

## ValueSet: Order Identifier Type 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://terminology.hl7.org.au/ValueSet/order-identifier-type | *Version*:6.0.1-ci-build | |
| * Standards status: *[Trial-use](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](generalguidance.md#maturity-levels): 1 | *Computable Name*:OrderIdentifierType |
| *Other Identifiers:*OID:2.16.840.1.113883.2.3.4.2.4.24 | | |
| **Copyright/Legal**: HL7 Australia© 2018+; Licensed Under Creative Commons No Rights Reserved. | | |

 
Identifier types that may be associated with an order identifier in an Australian context. 

 **References** 

* [AU Local Order Identifier](StructureDefinition-au-localorderidentifier.md)

**Changes since version 6.0.0:**

* No changes

### Logical Definition (CLD)

 

### Expansion

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R4/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "order-identifier-type",
  "meta" : {
    "profile" : ["https://healthterminologies.gov.au/fhir/StructureDefinition/composed-value-set-4"]
  },
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
  "url" : "http://terminology.hl7.org.au/ValueSet/order-identifier-type",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.2.3.4.2.4.24"
  }],
  "version" : "6.0.1-ci-build",
  "name" : "OrderIdentifierType",
  "title" : "Order Identifier Type",
  "status" : "active",
  "experimental" : false,
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
  "description" : "Identifier types that may be associated with an order identifier in an Australian context.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "AU"
    }]
  }],
  "copyright" : "HL7 Australia© 2018+; Licensed Under Creative Commons No Rights Reserved.",
  "compose" : {
    "include" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
      "version" : "5.0.0",
      "concept" : [{
        "code" : "FGN"
      },
      {
        "code" : "FILL"
      },
      {
        "code" : "PGN"
      },
      {
        "code" : "PLAC"
      }]
    }]
  }
}

```
