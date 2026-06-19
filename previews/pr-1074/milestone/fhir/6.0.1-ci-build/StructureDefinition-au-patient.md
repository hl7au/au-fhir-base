# AU Base Patient - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **AU Base Patient**

## Resource Profile: AU Base Patient 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://hl7.org.au/fhir/StructureDefinition/au-patient | *Version*:6.0.1-ci-build | |
| * Standards status: *[Trial-use](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](generalguidance.md#maturity-levels): 3 | *Computable Name*:AUBasePatient |
| **Copyright/Legal**: HL7 Australia© 2018+; Licensed Under Creative Commons No Rights Reserved. | | |

 
This profile defines a patient structure that localises core concepts, including identifiers and terminology, for use in an Australian context. The purpose of this profile is to provide national level agreement on core localised concepts. This profile does not force conformance to core localised concepts. It enables implementers and modellers to make their own rules, i.e. [profiling](http://hl7.org/fhir/profiling.html), about how to support these concepts for specific implementation needs. 

### Usage Notes

**Profile specific implementation guidance:**

* See each Identifier profile page for guidance related to that identifier type.
* This profile supports the sex, gender, and related concepts of Name to Use, Gender Identity, Individual Pronouns, Recorded Sex or Gender, Sex Assigned at Birth, and Sex Parameter for Clinical Use: 
* When exchanging concepts of sex or gender, refer to the guidance in [Sex and Gender](sexgender.md) and the [Gender Harmony Implementation Guide](http://hl7.org/xprod/ig/uv/gender-harmony/).
* The `Patient.gender` value **SHALL** be regarded as a Recorded Sex or Gender (RSG) value. If assertions regarding the nature of the `Patient.gender` value are required, a single instance of the [Person Recorded Sex or Gender](https://hl7.org/fhir/extensions/StructureDefinition-individual-recordedSexOrGender.html) extension can be included with these assertions and its `genderElementQualifier` subelement set to a value of "true".
 
* When constructing an address: 
* an international address can be represented using the core [Address](http://hl7.org/fhir/R4/datatypes.html#Address) data type
* an Australian address can be represented using the [Australian Address](StructureDefinition-au-address.md) data type profile
 
* See [Representing Communication Preferences](generalguidance.md#representing-communication-preferences) for guidance on how to represent languages that may be used to communicate with the patient about their health including preferred language and if an interpreter is required.

**Extensions under consideration:**

* Patient: [Ethnicity](StructureDefinition-ethnicity.md)

**Usages:**

* Examples for this Profile: [Patient/example-sex-and-gender](Patient-example-sex-and-gender.md), [Patient/example0](Patient-example0.md), [Patient/example1](Patient-example1.md), [Patient/example2](Patient-example2.md)... Show 6 more, [Patient/example3](Patient-example3.md), [Patient/example4](Patient-example4.md), [Patient/example5](Patient-example5.md), [Patient/example6](Patient-example6.md), [Patient/example7](Patient-example7.md) and [Patient/example8](Patient-example8.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.au.base|current/StructureDefinition/StructureDefinition-au-patient.json)

**Changes since version 6.0.0:**

* The data elements list has changed

* One or more text definitions, invariants or bindings have changed

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-au-patient.csv), [Excel](StructureDefinition-au-patient.xlsx), [Schematron](StructureDefinition-au-patient.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "au-patient",
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
  "url" : "http://hl7.org.au/fhir/StructureDefinition/au-patient",
  "version" : "6.0.1-ci-build",
  "name" : "AUBasePatient",
  "title" : "AU Base Patient",
  "status" : "active",
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
  "description" : "This profile defines a patient structure that localises core concepts, including identifiers and terminology, for use in an Australian context. The purpose of this profile is to provide national level agreement on core localised concepts. This profile does not force conformance to core localised concepts. It enables implementers and modellers to make their own rules, i.e. [profiling](http://hl7.org/fhir/profiling.html), about how to support these concepts for specific implementation needs.",
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
    "identity" : "cda",
    "uri" : "http://hl7.org/v3/cda",
    "name" : "CDA (R2)"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "loinc",
    "uri" : "http://loinc.org",
    "name" : "LOINC code for the element"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Patient",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Patient",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Patient",
      "path" : "Patient",
      "short" : "A patient in an Australian healthcare context",
      "definition" : "Demographics and other administrative information about an individual receiving care or other health-related services.",
      "constraint" : [{
        "key" : "inv-pat-0",
        "severity" : "error",
        "human" : "If present, birth time's date shall be the birth date",
        "expression" : "birthDate.extension('http://hl7.org/fhir/StructureDefinition/patient-birthTime').exists() implies birthDate.extension('http://hl7.org/fhir/StructureDefinition/patient-birthTime').value.toString().substring(0,10) = birthDate.toString()",
        "source" : "http://hl7.org.au/fhir/StructureDefinition/au-patient"
      },
      {
        "key" : "inv-pat-1",
        "severity" : "warning",
        "human" : "Individual gender identity shall be a member of the Gender Identity Response value set if any codes within that value set can apply",
        "expression" : "extension('http://hl7.org/fhir/StructureDefinition/individual-genderIdentity').extension('value').empty() or extension('http://hl7.org/fhir/StructureDefinition/individual-genderIdentity').extension('value').value.all(memberOf('https://healthterminologies.gov.au/fhir/ValueSet/gender-identity-response-1'))",
        "source" : "http://hl7.org.au/fhir/StructureDefinition/au-patient"
      },
      {
        "key" : "inv-pat-2",
        "severity" : "warning",
        "human" : "Individual pronouns shall be a member of the Australian Pronouns value set if any codes within that value set can apply",
        "expression" : "extension('http://hl7.org/fhir/StructureDefinition/individual-pronouns').empty() or extension('http://hl7.org/fhir/StructureDefinition/individual-pronouns').extension('value').value.all(memberOf('https://healthterminologies.gov.au/fhir/ValueSet/australian-pronouns-1'))",
        "source" : "http://hl7.org.au/fhir/StructureDefinition/au-patient"
      },
      {
        "key" : "inv-pat-3",
        "severity" : "warning",
        "human" : "Recorded sex or gender type shall be a member of the AU Recorded Sex or Gender Type value set if any codes within that value set can apply",
        "expression" : "extension('http://hl7.org/fhir/StructureDefinition/individual-recordedSexOrGender').extension('type').empty() or extension('http://hl7.org/fhir/StructureDefinition/individual-recordedSexOrGender').extension('type').value.all(memberOf('http://terminology.hl7.org.au/ValueSet/rsg-type'))",
        "source" : "http://hl7.org.au/fhir/StructureDefinition/au-patient"
      },
      {
        "key" : "inv-pat-4",
        "severity" : "warning",
        "human" : "Recorded sex or gender source document type shall be a member of the AU Recorded Sex or Gender (RSG) Source Document Type value set if any codes within that value set can apply",
        "expression" : "extension('http://hl7.org/fhir/StructureDefinition/individual-recordedSexOrGender').extension('sourceDocument').empty() or extension('http://hl7.org/fhir/StructureDefinition/individual-recordedSexOrGender').extension('sourceDocument').value.ofType(CodeableConcept).all(memberOf('http://terminology.hl7.org.au/ValueSet/rsg-source-document-type'))",
        "source" : "http://hl7.org.au/fhir/StructureDefinition/au-patient"
      },
      {
        "key" : "inv-pat-5",
        "severity" : "warning",
        "human" : "Recorded sex or gender jurisdiction shall be a member of the Jurisdiction ValueSet - AU Extended value set if any codes within that value set can apply",
        "expression" : "extension('http://hl7.org/fhir/StructureDefinition/individual-recordedSexOrGender').extension('jurisdiction').empty() or extension('http://hl7.org/fhir/StructureDefinition/individual-recordedSexOrGender').extension('jurisdiction').value.all(memberOf('http://terminology.hl7.org.au/ValueSet/jurisdiction-extended'))",
        "source" : "http://hl7.org.au/fhir/StructureDefinition/au-patient"
      },
      {
        "key" : "inv-pat-6",
        "severity" : "warning",
        "human" : "Recorded sex or gender source shall be a member of the AU Recorded Sex or Gender (RSG) Source value set if any codes within that value set can apply",
        "expression" : "extension('http://hl7.org/fhir/StructureDefinition/individual-recordedSexOrGender').extension('source').empty() or extension('http://hl7.org/fhir/StructureDefinition/individual-recordedSexOrGender').extension('source').value.ofType(CodeableConcept).all(memberOf('http://terminology.hl7.org.au/ValueSet/rsg-source'))",
        "source" : "http://hl7.org.au/fhir/StructureDefinition/au-patient"
      }]
    },
    {
      "id" : "Patient.extension",
      "path" : "Patient.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "rules" : "open"
      }
    },
    {
      "id" : "Patient.extension:birthPlace",
      "path" : "Patient.extension",
      "sliceName" : "birthPlace",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/patient-birthPlace"]
      }]
    },
    {
      "id" : "Patient.extension:indigenousStatus",
      "path" : "Patient.extension",
      "sliceName" : "indigenousStatus",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org.au/fhir/StructureDefinition/indigenous-status"]
      }]
    },
    {
      "id" : "Patient.extension:veteranStatus",
      "path" : "Patient.extension",
      "sliceName" : "veteranStatus",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org.au/fhir/StructureDefinition/veteran-status"]
      }]
    },
    {
      "id" : "Patient.extension:closingTheGapRegistration",
      "path" : "Patient.extension",
      "sliceName" : "closingTheGapRegistration",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org.au/fhir/StructureDefinition/closing-the-gap-registration"]
      }]
    },
    {
      "id" : "Patient.extension:mothersMaidenName",
      "path" : "Patient.extension",
      "sliceName" : "mothersMaidenName",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/patient-mothersMaidenName"]
      }]
    },
    {
      "id" : "Patient.extension:interpreterRequired",
      "path" : "Patient.extension",
      "sliceName" : "interpreterRequired",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/patient-interpreterRequired"]
      }]
    },
    {
      "id" : "Patient.extension:dateOfArrival",
      "path" : "Patient.extension",
      "sliceName" : "dateOfArrival",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org.au/fhir/StructureDefinition/date-of-arrival"]
      }]
    },
    {
      "id" : "Patient.extension:genderIdentity",
      "path" : "Patient.extension",
      "sliceName" : "genderIdentity",
      "short" : "Gender identity shall be a member of the Gender Identity Response value set if any codes within that value set can apply",
      "comment" : "The individual's gender identity is populated in the `extension:value.value[x]` of the [Individual Gender Identity](http://hl7.org/fhir/StructureDefinition/individual-genderIdentity) extension and shall contain one of the codes from the [Gender Identity Response](https://healthterminologies.gov.au/fhir/ValueSet/gender-identity-response-1) value set if any of the codes within the value set can apply.\n\nSee [Australian Bureau of Statics (ABS) Standard for Sex, Gender, Variations of Sex Characteristics and Sexual Orientation Variables, 2020](https://www.abs.gov.au/statistics/standards/standard-sex-gender-variations-sex-characteristics-and-sexual-orientation-variables/latest-release#gender) for further materials.",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/individual-genderIdentity"]
      }],
      "condition" : ["inv-pat-1"]
    },
    {
      "id" : "Patient.extension:individualPronouns",
      "path" : "Patient.extension",
      "sliceName" : "individualPronouns",
      "short" : "Pronouns shall be a member of the Australian Pronouns value set if any codes within that value set can apply",
      "comment" : "The individual's pronouns are populated in the `extension:value.value[x]` of the [Individual Pronouns](http://hl7.org/fhir/StructureDefinition/individual-pronouns) extension and shall contain one of the codes from the [Australian Pronouns](https://healthterminologies.gov.au/fhir/ValueSet/australian-pronouns-1) value set if any of the codes within the value set can apply.",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/individual-pronouns"]
      }],
      "condition" : ["inv-pat-2"]
    },
    {
      "id" : "Patient.extension:recordedSexOrGender",
      "path" : "Patient.extension",
      "sliceName" : "recordedSexOrGender",
      "short" : "Recorded sex or gender type shall be a member of the AU Recorded Sex or Gender Type value set if any codes within that value set can apply. Recorded sex or gender source document type shall be a member of the AU Recorded Sex or Gender (RSG) Source Document Type value set if any codes within that value set can apply. Recorded sex or gender jurisdiction shall be a member of the Jurisdiction - ValueSet AU Extended value set if any codes within that value set can apply. Recorded sex or gender source shall be a member of the AU Recorded Sex or Gender (RSG) Source value set if any codes within that value set can apply.",
      "comment" : "The type of recorded sex or gender is populated in the `extension:type.value[x]` of the [Person Recorded Sex or Gender](http://hl7.org/fhir/StructureDefinition/individual-recordedSexOrGender) extension and shall contain one of the codes from the [AU Recorded Sex or Gender Type](https://build.fhir.org/ig/hl7au/au-fhir-base/ValueSet-rsg-type.html) value set if any of the codes within the value set can apply.\n\nThe document from which the sex or gender property was acquired is populated in the `extension:sourceDocument.value[x]` of the [Person Recorded Sex or Gender](http://hl7.org/fhir/StructureDefinition/individual-recordedSexOrGender) extension and shall contain one of the codes from the [AU Recorded Sex or Gender (RSG) Source Document Type](https://build.fhir.org/ig/hl7au/au-fhir-base/ValueSet-rsg-source-document-type.html) value set if any of the codes within the value set can apply.\n\nThe jurisdiction that issued the document where the sex or gender was acquired is populated in the `extension:jurisdiction.value[x]` of the [Person Recorded Sex or Gender](http://hl7.org/fhir/StructureDefinition/individual-recordedSexOrGender) extension and shall contain one of the codes from the [Jurisdiction ValueSet - AU Extended](https://build.fhir.org/ig/hl7au/au-fhir-base/ValueSet-au-jurisdiction-extended.html) value set if any of the codes within the value set can apply.\n\nThe non-document source from which the sex or gender property was acquired is populated in the `extension:source.value[x]` of the [Person Recorded Sex or Gender](http://hl7.org/fhir/StructureDefinition/individual-recordedSexOrGender) extension and shall contain one of the codes from the [AU Recorded Sex or Gender (RSG) Source](https://build.fhir.org/ig/hl7au/au-fhir-base/ValueSet-rsg-source.html) value set if any of the codes within the value set can apply.",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/individual-recordedSexOrGender"]
      }],
      "condition" : ["inv-pat-3", "inv-pat-4", "inv-pat-5", "inv-pat-6"]
    },
    {
      "id" : "Patient.extension:sexParameterForClinicalUse",
      "path" : "Patient.extension",
      "sliceName" : "sexParameterForClinicalUse",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/patient-sexParameterForClinicalUse"]
      }]
    },
    {
      "id" : "Patient.identifier",
      "path" : "Patient.identifier",
      "short" : "Identifies this patient across multiple systems",
      "type" : [{
        "code" : "Identifier",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/Identifier",
        "http://hl7.org.au/fhir/StructureDefinition/au-ihi",
        "http://hl7.org.au/fhir/StructureDefinition/au-medicarecardnumber",
        "http://hl7.org.au/fhir/StructureDefinition/au-dvanumber",
        "http://hl7.org.au/fhir/StructureDefinition/au-healthcarecardnumber",
        "http://hl7.org.au/fhir/StructureDefinition/au-pensionerconcessioncardnumber",
        "http://hl7.org.au/fhir/StructureDefinition/au-cwlthseniorshealthcardnumber",
        "http://hl7.org.au/fhir/StructureDefinition/au-medicalrecordnumber",
        "http://hl7.org.au/fhir/StructureDefinition/au-insurancemembernumber",
        "http://hl7.org.au/fhir/StructureDefinition/au-pi"]
      }]
    },
    {
      "id" : "Patient.birthDate",
      "path" : "Patient.birthDate",
      "short" : "Date of birth extended for time and accuracy indicator",
      "requirements" : "Age of the individual drives many clinical processes. May include accuracy indicator and specific birth time.",
      "condition" : ["inv-pat-0"]
    },
    {
      "id" : "Patient.birthDate.extension",
      "path" : "Patient.birthDate.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "rules" : "open"
      }
    },
    {
      "id" : "Patient.birthDate.extension:accuracyIndicator",
      "path" : "Patient.birthDate.extension",
      "sliceName" : "accuracyIndicator",
      "short" : "Birth date accuracy indicator",
      "comment" : "In some circumstances, systems may only have date or datetime data that has unknown or estimated parts.  This coding establishes the accuracy of the day, month and year parts.",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org.au/fhir/StructureDefinition/date-accuracy-indicator"]
      }]
    },
    {
      "id" : "Patient.birthDate.extension:birthTime",
      "path" : "Patient.birthDate.extension",
      "sliceName" : "birthTime",
      "short" : "Birth time",
      "definition" : "The time of day that the patient was born. This includes the date to ensure that the timezone information can be communicated effectively.",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/patient-birthTime"]
      }],
      "condition" : ["inv-pat-0"]
    },
    {
      "id" : "Patient.deceased[x]",
      "path" : "Patient.deceased[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "rules" : "closed"
      },
      "definition" : "Indicates if the individual is deceased or not. Deceased date accuracy indicator is optional."
    },
    {
      "id" : "Patient.deceased[x]:deceasedBoolean",
      "path" : "Patient.deceased[x]",
      "sliceName" : "deceasedBoolean",
      "short" : "Deceased indicator",
      "definition" : "Boolean indicator if the individual is deceased or not.",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "Patient.deceased[x]:deceasedDateTime",
      "path" : "Patient.deceased[x]",
      "sliceName" : "deceasedDateTime",
      "short" : "Deceased date time",
      "definition" : "Individual deceased date-time with optional accuracy indicator.",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "Patient.deceased[x]:deceasedDateTime.extension",
      "path" : "Patient.deceased[x].extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "rules" : "open"
      }
    },
    {
      "id" : "Patient.deceased[x]:deceasedDateTime.extension:accuracyIndicator",
      "path" : "Patient.deceased[x].extension",
      "sliceName" : "accuracyIndicator",
      "short" : "Deceased date accuracy indicator",
      "comment" : "In some circumstances, systems may only have date or datetime data that has unknown or estimated parts.  This coding establishes the accuracy of the day, month and year parts.",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org.au/fhir/StructureDefinition/date-accuracy-indicator"]
      }]
    },
    {
      "id" : "Patient.address",
      "path" : "Patient.address",
      "short" : "An address for the individual",
      "comment" : "The address is intended to describe postal addresses for administrative purposes, not to describe absolute geographical coordinates. Postal addresses are often used as proxies for physical locations (also see the Location resource).",
      "type" : [{
        "code" : "Address",
        "profile" : ["http://hl7.org.au/fhir/StructureDefinition/au-address",
        "http://hl7.org/fhir/StructureDefinition/Address"]
      }]
    },
    {
      "id" : "Patient.contact.relationship",
      "path" : "Patient.contact.relationship",
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://healthterminologies.gov.au/fhir/ValueSet/contact-relationship-type-3"
      }
    },
    {
      "id" : "Patient.contact.address",
      "path" : "Patient.contact.address",
      "short" : "Address for the contact person",
      "comment" : "The address is intended to describe postal addresses for administrative purposes, not to describe absolute geographical coordinates. Postal addresses are often used as proxies for physical locations (also see the Location resource).",
      "type" : [{
        "code" : "Address",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/Address",
        "http://hl7.org.au/fhir/StructureDefinition/au-address"]
      }]
    },
    {
      "id" : "Patient.communication.language",
      "path" : "Patient.communication.language",
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://healthterminologies.gov.au/fhir/ValueSet/common-languages-australia-2"
      }
    },
    {
      "id" : "Patient.link",
      "path" : "Patient.link",
      "short" : "Link to a Patient or RelatedPerson resource that concerns the same actual person",
      "definition" : "Link to a Patient or RelatedPerson resource that concerns the same actual person."
    }]
  }
}

```
