# AU Base Practitioner - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **AU Base Practitioner**

## Resource Profile: AU Base Practitioner 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://hl7.org.au/fhir/StructureDefinition/au-practitioner | *Version*:6.0.1-ci-build | |
| * Standards status: *[Trial-use](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](generalguidance.md#maturity-levels): 3 | *Computable Name*:AUBasePractitioner |
| **Copyright/Legal**: HL7 Australia© 2018+; Licensed Under Creative Commons No Rights Reserved. | | |

 
This profile defines a practitioner structure that localises core concepts, including identifiers and terminology, for use in an Australian context. The purpose of this profile is to provide national level agreement on core localised concepts. This profile does not force conformance to core localised concepts. It enables implementers and modellers to make their own rules, i.e. [profiling](http://hl7.org/fhir/profiling.html), about how to support these concepts for specific implementation needs. 

### Usage Notes

**Profile specific implementation guidance:**

* See each Identifier profile page for guidance related to that identifier type.
* This profile supports the sex, gender, and related concepts of: Name to Use, Gender Identity, Individual Pronouns, Recorded Sex or Gender, Sex Assigned at Birth: 
* When exchanging concepts of sex or gender, refer to the guidance in [Sex and Gender](sexgender.md) and the [Gender Harmony Implementation Guide](http://hl7.org/xprod/ig/uv/gender-harmony/).
 
* When constructing an address: 
* an international address can be represented using the core [Address](http://hl7.org/fhir/R4/datatypes.html#Address) data type
* an Australian address can be represented using the [Australian Address](StructureDefinition-au-address.md) data type profile
 
* A tertiary qualification or professional membership (e.g. Ahpra) is represented by `Practitioner.qualification` 
* If none of the codes from the preferred value set are suitable then at least text should be sent in `Practitioner.qualification.code`
 

**Usages:**

* Examples for this Profile: [Practitioner/example-sex-and-gender](Practitioner-example-sex-and-gender.md), [Practitioner/example0](Practitioner-example0.md), [Practitioner/example1](Practitioner-example1.md), [Practitioner/example2](Practitioner-example2.md)... Show 2 more, [Practitioner/example3](Practitioner-example3.md) and [Practitioner/example4](Practitioner-example4.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.au.base|current/StructureDefinition/StructureDefinition-au-practitioner.json)

**Changes since version 6.0.0:**

* The data elements list has changed

* One or more text definitions, invariants or bindings have changed

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-au-practitioner.csv), [Excel](StructureDefinition-au-practitioner.xlsx), [Schematron](StructureDefinition-au-practitioner.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "au-practitioner",
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
  "url" : "http://hl7.org.au/fhir/StructureDefinition/au-practitioner",
  "version" : "6.0.1-ci-build",
  "name" : "AUBasePractitioner",
  "title" : "AU Base Practitioner",
  "status" : "active",
  "date" : "2026-06-18T15:40:18+00:00",
  "publisher" : "HL7 Australia",
  "contact" : [{
    "name" : "HL7 Australia FHIR Working Group",
    "telecom" : [{
      "system" : "url",
      "value" : "https://confluence.hl7.org/display/HAFWG",
      "use" : "work"
    }]
  }],
  "description" : "This profile defines a practitioner structure that localises core concepts, including identifiers and terminology, for use in an Australian context. The purpose of this profile is to provide national level agreement on core localised concepts. This profile does not force conformance to core localised concepts. It enables implementers and modellers to make their own rules, i.e. [profiling](http://hl7.org/fhir/profiling.html), about how to support these concepts for specific implementation needs.",
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
  "type" : "Practitioner",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Practitioner",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Practitioner",
      "path" : "Practitioner",
      "short" : "A practitioner in an Australian healthcare context",
      "constraint" : [{
        "key" : "inv-pra-0",
        "severity" : "warning",
        "human" : "Individual gender identity shall be a member of the Gender Identity Response value set if any codes within that value set can apply",
        "expression" : "extension('http://hl7.org/fhir/StructureDefinition/individual-genderIdentity').extension('value').empty() or extension('http://hl7.org/fhir/StructureDefinition/individual-genderIdentity').extension('value').value.all(memberOf('https://healthterminologies.gov.au/fhir/ValueSet/gender-identity-response-1'))",
        "source" : "http://hl7.org.au/fhir/StructureDefinition/au-practitioner"
      },
      {
        "key" : "inv-pra-1",
        "severity" : "warning",
        "human" : "Individual pronouns shall be a member of the Australian Pronouns value set if any codes within that value set can apply",
        "expression" : "extension('http://hl7.org/fhir/StructureDefinition/individual-pronouns').empty() or extension('http://hl7.org/fhir/StructureDefinition/individual-pronouns').extension('value').value.all(memberOf('https://healthterminologies.gov.au/fhir/ValueSet/australian-pronouns-1'))",
        "source" : "http://hl7.org.au/fhir/StructureDefinition/au-practitioner"
      },
      {
        "key" : "inv-pra-2",
        "severity" : "warning",
        "human" : "Recorded sex or gender type shall be a member of the AU Recorded Sex or Gender Type value set if any codes within that value set can apply",
        "expression" : "extension('http://hl7.org/fhir/StructureDefinition/individual-recordedSexOrGender').extension('type').empty() or extension('http://hl7.org/fhir/StructureDefinition/individual-recordedSexOrGender').extension('type').value.all(memberOf('http://terminology.hl7.org.au/ValueSet/rsg-type'))",
        "source" : "http://hl7.org.au/fhir/StructureDefinition/au-practitioner"
      },
      {
        "key" : "inv-pra-3",
        "severity" : "warning",
        "human" : "Recorded sex or gender source document type shall be a member of the AU Recorded Sex or Gender (RSG) Source Document Type value set if any codes within that value set can apply",
        "expression" : "extension('http://hl7.org/fhir/StructureDefinition/individual-recordedSexOrGender').extension('sourceDocument').empty() or extension('http://hl7.org/fhir/StructureDefinition/individual-recordedSexOrGender').extension('sourceDocument').value.ofType(CodeableConcept).all(memberOf('http://terminology.hl7.org.au/ValueSet/rsg-source-document-type'))",
        "source" : "http://hl7.org.au/fhir/StructureDefinition/au-practitioner"
      },
      {
        "key" : "inv-pra-4",
        "severity" : "warning",
        "human" : "Recorded sex or gender jurisdiction shall be a member of the Jurisdiction ValueSet - AU Extended value set if any codes within that value set can apply",
        "expression" : "extension('http://hl7.org/fhir/StructureDefinition/individual-recordedSexOrGender').extension('jurisdiction').empty() or extension('http://hl7.org/fhir/StructureDefinition/individual-recordedSexOrGender').extension('jurisdiction').value.all(memberOf('http://terminology.hl7.org.au/ValueSet/jurisdiction-extended'))",
        "source" : "http://hl7.org.au/fhir/StructureDefinition/au-practitioner"
      },
      {
        "key" : "inv-pra-5",
        "severity" : "warning",
        "human" : "Recorded sex or gender source shall be a member of the AU Recorded Sex or Gender (RSG) Source value set if any codes within that value set can apply",
        "expression" : "extension('http://hl7.org/fhir/StructureDefinition/individual-recordedSexOrGender').extension('source').empty() or extension('http://hl7.org/fhir/StructureDefinition/individual-recordedSexOrGender').extension('source').value.ofType(CodeableConcept).all(memberOf('http://terminology.hl7.org.au/ValueSet/rsg-source'))",
        "source" : "http://hl7.org.au/fhir/StructureDefinition/au-practitioner"
      }]
    },
    {
      "id" : "Practitioner.extension",
      "path" : "Practitioner.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "rules" : "open"
      }
    },
    {
      "id" : "Practitioner.extension:genderIdentity",
      "path" : "Practitioner.extension",
      "sliceName" : "genderIdentity",
      "short" : "Gender identity shall be a member of the Gender Identity Response value set if any codes within that value set can apply",
      "comment" : "The individual's gender identity is populated in the `extension:value.value[x]` of the [Individual Gender Identity](http://hl7.org/fhir/StructureDefinition/individual-genderIdentity) extension and shall contain one of the codes from the [Gender Identity Response](https://healthterminologies.gov.au/fhir/ValueSet/gender-identity-response-1) value set if any of the codes within the value set can apply.\n\nSee [Australian Bureau of Statics (ABS) Standard for Sex, Gender, Variations of Sex Characteristics and Sexual Orientation Variables, 2020](https://www.abs.gov.au/statistics/standards/standard-sex-gender-variations-sex-characteristics-and-sexual-orientation-variables/latest-release#gender) for further materials.",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/individual-genderIdentity"]
      }],
      "condition" : ["inv-pra-1"]
    },
    {
      "id" : "Practitioner.extension:individualPronouns",
      "path" : "Practitioner.extension",
      "sliceName" : "individualPronouns",
      "short" : "Pronouns shall be a member of the Australian Pronouns value set if any codes within that value set can apply",
      "comment" : "The individual's pronouns are populated in the `extension:value.value[x]` of the [Individual Pronouns](http://hl7.org/fhir/StructureDefinition/individual-pronouns) extension and shall contain one of the codes from the [Australian Pronouns](https://healthterminologies.gov.au/fhir/ValueSet/australian-pronouns-1) value set if any of the codes within the value set can apply.",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/individual-pronouns"]
      }]
    },
    {
      "id" : "Practitioner.extension:recordedSexOrGender",
      "path" : "Practitioner.extension",
      "sliceName" : "recordedSexOrGender",
      "short" : "Recorded sex or gender type shall be a member of the AU Recorded Sex or Gender Type value set if any codes within that value set can apply. Recorded sex or gender source document type shall be a member of the AU Recorded Sex or Gender (RSG) Source Document Type value set if any codes within that value set can apply. Recorded sex or gender jurisdiction shall be a member of the Jurisdiction ValueSet - AU Extended value set if any codes within that value set can apply. Recorded sex or gender source shall be a member of the AU Recorded Sex or Gender (RSG) Source value set if any codes within that value set can apply.",
      "comment" : "The type of recorded sex or gender is populated in the `extension:type.value[x]` of the [Person Recorded Sex or Gender](http://hl7.org/fhir/StructureDefinition/individual-recordedSexOrGender) extension and shall contain one of the codes from the [AU Recorded Sex or Gender Type](https://build.fhir.org/ig/hl7au/au-fhir-base/ValueSet-rsg-type.html) value set if any of the codes within the value set can apply.\n\nThe document from which the sex or gender property was acquired is populated in the `extension:sourceDocument.value[x]` of the [Person Recorded Sex or Gender](http://hl7.org/fhir/StructureDefinition/individual-recordedSexOrGender) extension and shall contain one of the codes from the [AU Recorded Sex or Gender (RSG) Source Document Type](https://build.fhir.org/ig/hl7au/au-fhir-base/ValueSet-rsg-source-document-type.html) value set if any of the codes within the value set can apply.\n\nThe jurisdiction that issued the document where the sex or gender was acquired is populated in the `extension:jurisdiction.value[x]` of the [Person Recorded Sex or Gender](http://hl7.org/fhir/StructureDefinition/individual-recordedSexOrGender) extension and shall contain one of the codes from the [Jurisdiction ValueSet - AU Extended](https://build.fhir.org/ig/hl7au/au-fhir-base/ValueSet-au-jurisdiction-extended.html) value set if any of the codes within the value set can apply. \n\nThe non-document source from which the sex or gender property was acquired is populated in the `extension:source.value[x]` of the [Person Recorded Sex or Gender](http://hl7.org/fhir/StructureDefinition/individual-recordedSexOrGender) extension and shall contain one of the codes from the [AU Recorded Sex or Gender (RSG) Source](https://build.fhir.org/ig/hl7au/au-fhir-base/ValueSet-rsg-source.html) value set if any of the codes within the value set can apply.",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/individual-recordedSexOrGender"]
      }],
      "condition" : ["inv-pra-2", "inv-pra-3", "inv-pra-4", "inv-pra-5"]
    },
    {
      "id" : "Practitioner.identifier",
      "path" : "Practitioner.identifier",
      "type" : [{
        "code" : "Identifier",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/Identifier",
        "http://hl7.org.au/fhir/StructureDefinition/au-hpii",
        "http://hl7.org.au/fhir/StructureDefinition/au-pbsprescribernumber",
        "http://hl7.org.au/fhir/StructureDefinition/au-careagencyemployeeidentifier",
        "http://hl7.org.au/fhir/StructureDefinition/au-ahpraregistrationnumber"]
      }]
    },
    {
      "id" : "Practitioner.address",
      "path" : "Practitioner.address",
      "comment" : "The address is intended to describe postal addresses for administrative purposes, not to describe absolute geographical coordinates. Postal addresses are often used as proxies for physical locations (also see the Location resource).",
      "type" : [{
        "code" : "Address",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/Address",
        "http://hl7.org.au/fhir/StructureDefinition/au-address"]
      }]
    },
    {
      "id" : "Practitioner.qualification",
      "path" : "Practitioner.qualification"
    },
    {
      "id" : "Practitioner.qualification.code",
      "path" : "Practitioner.qualification.code",
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "http://terminology.hl7.org.au/ValueSet/v2-0360-extended"
      }
    },
    {
      "id" : "Practitioner.communication",
      "path" : "Practitioner.communication",
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://healthterminologies.gov.au/fhir/ValueSet/common-languages-australia-2"
      }
    }]
  }
}

```
