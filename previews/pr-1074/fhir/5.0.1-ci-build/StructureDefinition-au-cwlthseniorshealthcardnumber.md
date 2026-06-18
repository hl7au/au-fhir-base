# AU Commonwealth Seniors Health Card Number - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **AU Commonwealth Seniors Health Card Number**

## Data Type Profile: AU Commonwealth Seniors Health Card Number 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://hl7.org.au/fhir/StructureDefinition/au-cwlthseniorshealthcardnumber | *Version*:6.0.1-ci-build | |
| * Standards status: *[Trial-use](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](generalguidance.md#maturity-levels): 2 | *Computable Name*:AUCwlthSeniorsHealthCardNumber |
| **Copyright/Legal**: HL7 Australia© 2018+; Licensed Under Creative Commons No Rights Reserved. | | |

 
This identifier profile defines a Commonwealth Seniors Health Card number in an Australian context (see [Services Australia](https://www.servicesaustralia.gov.au/individuals/services/centrelink/commonwealth-seniors-health-card) or [Department of Veterans' Affairs](https://www.dva.gov.au/health-and-treatment/veteran-healthcare-cards/commonwealth-seniors-health-card) for further information). 
This definition supports sending the Centrelink Customer Reference Number (CRN) (also referred to as unique identifier number (UIN) in the Centrelink Confirmation eServices (CCeS)) as displayed on the individual's Commonwealth Seniors Health Card (see [Services Australia](https://www.servicesaustralia.gov.au/individuals/subjects/centrelink-customer-reference-number-crn) for further information). An individual's CRN is present as the primary identifier on different concession cards and is used to confirm concessions by most government agencies and utility providers. 
A Commonwealth Seniors Health Card may be issued by Services Australia or Department of Veterans' Affairs (DVA) to retirees of age pension qualification age to assist with certain living costs by allowing access to specific goods and services at a concessional rate. 

### Usage Notes

**Profile specific implementation guidance:**

* The value of the identifier is the CRN. Implementers should be aware that a DVA-issued card will also include an individual's state-based DVA file number but only the CRN should be sent as the Commonwealth Seniors Health Card number.

**Usages:**

* Use this DataType Profile: [AU Base Coverage](StructureDefinition-au-coverage.md), [AU Base Patient](StructureDefinition-au-patient.md) and [AU Base RelatedPerson](StructureDefinition-au-relatedperson.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.au.base|current/StructureDefinition/StructureDefinition-au-cwlthseniorshealthcardnumber.json)

**Changes since version 6.0.0:**

* No changes

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-au-cwlthseniorshealthcardnumber.csv), [Excel](StructureDefinition-au-cwlthseniorshealthcardnumber.xlsx), [Schematron](StructureDefinition-au-cwlthseniorshealthcardnumber.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "au-cwlthseniorshealthcardnumber",
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
  "url" : "http://hl7.org.au/fhir/StructureDefinition/au-cwlthseniorshealthcardnumber",
  "version" : "6.0.1-ci-build",
  "name" : "AUCwlthSeniorsHealthCardNumber",
  "title" : "AU Commonwealth Seniors Health Card Number",
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
  "description" : "This identifier profile defines a Commonwealth Seniors Health Card number in an Australian context (see [Services Australia](https://www.servicesaustralia.gov.au/individuals/services/centrelink/commonwealth-seniors-health-card) or [Department of Veterans' Affairs](https://www.dva.gov.au/health-and-treatment/veteran-healthcare-cards/commonwealth-seniors-health-card) for further information).\n\nThis definition supports sending the Centrelink Customer Reference Number (CRN) (also referred to as unique identifier number (UIN) in the Centrelink Confirmation eServices (CCeS)) as displayed on the individual's Commonwealth Seniors Health Card (see [Services Australia](https://www.servicesaustralia.gov.au/individuals/subjects/centrelink-customer-reference-number-crn) for further information). An individual's CRN is present as the primary identifier on different concession cards and is used to confirm concessions by most government agencies and utility providers.\n\nA Commonwealth Seniors Health Card may be issued by Services Australia or Department of Veterans' Affairs (DVA) to retirees of age pension qualification age to assist with certain living costs by allowing access to specific goods and services at a concessional rate.",
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
      "short" : "Commonwealth Seniors Health Card Number",
      "definition" : "Commonwealth Seniors Health Card number as the Centrelink Customer Reference Number (CRN) (also referred to as unique identifier number (UIN) in the Centrelink Confirmation eServices (CCeS)) displayed on the individual's Commonwealth Seniors Health Card."
    },
    {
      "id" : "Identifier.type",
      "path" : "Identifier.type",
      "min" : 1,
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org.au/CodeSystem/v2-0203",
          "code" : "SEN"
        }]
      }
    },
    {
      "id" : "Identifier.system",
      "path" : "Identifier.system",
      "min" : 1,
      "fixedUri" : "http://ns.electronichealth.net.au/id/centrelink-customer-reference-number"
    },
    {
      "id" : "Identifier.value",
      "path" : "Identifier.value",
      "short" : "Centrelink CRN as displayed on the Commonwealth Seniors Health Card",
      "comment" : "A Centrelink CRN is a 10 character identifier in the format of 9 digits ending with a letter. This concept is equivalent to Australian Institute of Health and Welfare data element 690579 [Person—government funding identifier, Centrelink customer reference number N(9)A](https://meteor.aihw.gov.au/content/index.phtml/itemId/690579).",
      "min" : 1,
      "example" : [{
        "label" : "Centrelink CRN",
        "valueString" : "307111942H"
      }],
      "maxLength" : 10
    }]
  }
}

```
