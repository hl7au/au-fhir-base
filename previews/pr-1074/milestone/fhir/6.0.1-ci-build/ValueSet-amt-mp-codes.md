# AMT Medicinal Product and Substances - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **AMT Medicinal Product and Substances**

## ValueSet: AMT Medicinal Product and Substances 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://terminology.hl7.org.au/ValueSet/amt-mp-codes | *Version*:6.0.1-ci-build | |
| * Standards status: *[Deprecated](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](generalguidance.md#maturity-levels): 3 | *Computable Name*:AMTMedicinalProductAndSubstances |
| *Other Identifiers:*OID:2.16.840.1.113883.2.3.4.2.4.16 | | |
| **Copyright/Legal**: This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement | | |

 
The AMT Medicinal Product and Substances value set includes values that may be used to identify a substance or a medicinal product that is an ingredient of a medication. 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

**Changes since version 6.0.0:**

* No changes

This value set is deprecated in AU Base and replaced by the NCTS [Medication Ingredient](https://healthterminologies.gov.au/fhir/ValueSet/medication-ingredient-1) value set for binding to Medication.ingredient.item[x] in the [AU Base Medication](StructureDefinition-au-medication.md) profile.

### Logical Definition (CLD)

 

### Expansion

Expansions are not generated for retired value sets

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
  "id" : "amt-mp-codes",
  "meta" : {
    "profile" : ["https://healthterminologies.gov.au/fhir/StructureDefinition/composed-value-set-4"]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm",
    "valueInteger" : 3
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status",
    "valueCode" : "deprecated",
    "_valueCode" : {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status-reason",
        "valueMarkdown" : "This value set is deprecated in AU Base and replaced by the NCTS [Medication Ingredient](https://healthterminologies.gov.au/fhir/ValueSet/medication-ingredient-1) value set for binding to Medication.ingredient.item[x] in the [AU Base Medication](StructureDefinition-au-medication.html) profile."
      }]
    }
  }],
  "url" : "http://terminology.hl7.org.au/ValueSet/amt-mp-codes",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.2.3.4.2.4.16"
  }],
  "version" : "6.0.1-ci-build",
  "name" : "AMTMedicinalProductAndSubstances",
  "title" : "AMT Medicinal Product and Substances",
  "status" : "retired",
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
  "description" : "The AMT Medicinal Product and Substances value set includes values that may be used to identify a substance or a medicinal product that is an ingredient of a medication. ",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "AU"
    }]
  }],
  "copyright" : "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement",
  "compose" : {
    "include" : [{
      "system" : "http://snomed.info/sct",
      "version" : "http://snomed.info/sct/32506021000036107",
      "filter" : [{
        "property" : "concept",
        "op" : "in",
        "value" : "929360061000036106"
      }]
    },
    {
      "valueSet" : ["https://healthterminologies.gov.au/fhir/ValueSet/substance-1"]
    }]
  }
}

```
