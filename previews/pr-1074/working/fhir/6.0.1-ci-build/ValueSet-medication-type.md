# Medication Type - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **Medication Type**

## ValueSet: Medication Type 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://terminology.hl7.org.au/ValueSet/medication-type | *Version*:6.0.1-ci-build | |
| * Standards status: *[Trial-use](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](generalguidance.md#maturity-levels): 2 | *Computable Name*:MedicationType |
| *Other Identifiers:*OID:2.16.840.1.113883.2.3.4.2.4.1 | | |
| **Copyright/Legal**: HL7 Australia© 2018+; Licensed Under Creative Commons No Rights Reserved. | | |

 
The Medication Type value set may be used to classify the nature of properties defined by the code e.g. branded product with no strength or form. This allows the distinction between codes provided containing container, pack, strength and form explicitly especially where terminologies supplied are unknown or terminology services are unavailable. 

 **References** 

* [Medication Type](StructureDefinition-medication-type.md)

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
  "id" : "medication-type",
  "meta" : {
    "profile" : ["https://healthterminologies.gov.au/fhir/StructureDefinition/composed-value-set-4"]
  },
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
  "url" : "http://terminology.hl7.org.au/ValueSet/medication-type",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.2.3.4.2.4.1"
  }],
  "version" : "6.0.1-ci-build",
  "name" : "MedicationType",
  "title" : "Medication Type",
  "status" : "active",
  "experimental" : false,
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
  "description" : "The Medication Type value set may be used to classify the nature of properties defined by the code e.g. branded product with no strength or form. This allows the distinction between codes provided containing container, pack, strength and form explicitly especially where terminologies supplied are unknown or terminology services are unavailable.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "AU"
    }]
  }],
  "copyright" : "HL7 Australia© 2018+; Licensed Under Creative Commons No Rights Reserved.",
  "compose" : {
    "include" : [{
      "system" : "http://terminology.hl7.org.au/CodeSystem/medication-type"
    }]
  }
}

```
