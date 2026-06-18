# AU Medicare Card Number - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **AU Medicare Card Number**

## Data Type Profile: AU Medicare Card Number 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://hl7.org.au/fhir/StructureDefinition/au-medicarecardnumber | *Version*:6.0.1-ci-build | |
| * Standards status: *[Trial-use](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](generalguidance.md#maturity-levels): 2 | *Computable Name*:AUMedicareCardNumber |
| **Copyright/Legal**: HL7 Australia© 2018+; Licensed Under Creative Commons No Rights Reserved. | | |

 
This identifier profile defines a Medicare card number in an Australian context. A Medicare card is provided to individuals who are enrolled in [Medicare](https://www.servicesaustralia.gov.au/individuals/medicare). This definition supports sending either the 10 digit Medicare card number or the 11 digit number (includes the individual reference number (IRN)). 

### Usage Notes

The 10 digit format is supported as some systems do not support the 11 digit Medicare card number.

The 10 digit Medicare card number is not sufficient to uniquely identify the number associated with an individual on a Medicare card as a card may include up to 9 individuals. If required, profiles can constrain this profile further to restrict usage to 11 digits only as desired.

Medicare card numbers are not used for uniquely identifying patients, they are identifying information that can be used in conjunction with other elements such as name and date of birth appropriately to confirm identity.

**Usages:**

* Use this DataType Profile: [AU Base Coverage](StructureDefinition-au-coverage.md), [AU Base Patient](StructureDefinition-au-patient.md) and [AU Base RelatedPerson](StructureDefinition-au-relatedperson.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.au.base|current/StructureDefinition/StructureDefinition-au-medicarecardnumber.json)

**Changes since version 6.0.0:**

* No changes

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-au-medicarecardnumber.csv), [Excel](StructureDefinition-au-medicarecardnumber.xlsx), [Schematron](StructureDefinition-au-medicarecardnumber.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "au-medicarecardnumber",
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
  "url" : "http://hl7.org.au/fhir/StructureDefinition/au-medicarecardnumber",
  "version" : "6.0.1-ci-build",
  "name" : "AUMedicareCardNumber",
  "title" : "AU Medicare Card Number",
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
  "description" : "This identifier profile defines a Medicare card number in an Australian context. A Medicare card is provided to individuals who are enrolled in [Medicare](https://www.servicesaustralia.gov.au/individuals/medicare). This definition supports sending either the 10 digit Medicare card number or the 11 digit number (includes the individual reference number (IRN)).",
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
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "type" : "Identifier",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Identifier",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Identifier",
      "path" : "Identifier",
      "short" : "Medicare Card Number",
      "definition" : "Medicare card number as either the the 10 digit Medicare card number or the 11 digit number (includes the individual reference number (IRN)). A Medicare card is provided to individuals who are enrolled in Medicare."
    },
    {
      "id" : "Identifier.type",
      "path" : "Identifier.type",
      "min" : 1,
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
          "code" : "MC"
        }]
      }
    },
    {
      "id" : "Identifier.system",
      "path" : "Identifier.system",
      "min" : 1,
      "fixedUri" : "http://ns.electronichealth.net.au/id/medicare-number"
    },
    {
      "id" : "Identifier.value",
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/minLength",
        "valueInteger" : 10
      }],
      "path" : "Identifier.value",
      "short" : "Medicare card number",
      "min" : 1,
      "example" : [{
        "label" : "Medicare card number",
        "valueString" : "32788511952"
      }],
      "maxLength" : 11
    },
    {
      "id" : "Identifier.period",
      "path" : "Identifier.period"
    },
    {
      "id" : "Identifier.period.end",
      "path" : "Identifier.period.end",
      "short" : "Medicare card expiry date",
      "definition" : "The expiry date for the Medicare card. While this is typically only month and year, the day date part may be included when the card is a temporary Medicare card."
    }]
  }
}

```
