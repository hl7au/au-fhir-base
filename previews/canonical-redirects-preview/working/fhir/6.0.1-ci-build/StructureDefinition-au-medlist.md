# AU Medicine List - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **AU Medicine List**

## Resource Profile: AU Medicine List 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://hl7.org.au/fhir/StructureDefinition/au-medlist | *Version*:6.0.1-ci-build | |
| * Standards status: *[Trial-use](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](generalguidance.md#maturity-levels): 1 | *Computable Name*:AUMedicineList |
| **Copyright/Legal**: HL7 Australia© 2018+; Licensed Under Creative Commons No Rights Reserved. | | |

 
This profile defines a list structure that localises core concepts for use as a medicines list in an Australian context. This profile is intended to offer a common structure and expectations for a list of medications associated with a patient in an Australian healthcare context. 

### Usage Notes

**Profile specific implementation guidance:**

* It is important to clearly differentiate between representing the extent of a system's information for a patient versus clinical judgement of no relevant finding: 
* When asserting clinical judgement that there are no items of specific interest, (e.g. no current medications or no history of vaccination), `List.entry.item` with a reference to a supported FHIR resource containing the record of assertion should be sent. [AU Assertion of No Relevant Finding](StructureDefinition-au-norelevantfinding.md) is defined in this implementation guide for this concept.
* When a statement is about the nature or extent of the information the system has access to or is permitted to share, (e.g. not asked or information withheld), `List.emptyReason` should be sent with an appropriate code from the [ListEmptyReasons](http://hl7.org/fhir/R4/valueset-list-empty-reason.html) value set.
 
* When a related person is the author of the list, the [Author as a RelatedPerson](StructureDefinition-author-related-person.md) extension is used and `List.source` is not included.
* If both the `List.entry.changeDescription` extension and `List.entry.flag` are populated, the extension is expected to only be used to expand on the `List.entry.flag` concept and not contradict its meaning.

**Usages:**

* Examples for this Profile: [List/example0](List-example0.md), [List/example1](List-example1.md), [List/example2](List-example2.md) and [List/example3](List-example3.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.au.base|current/StructureDefinition/StructureDefinition-au-medlist.json)

**Changes since version 6.0.0:**

* No changes

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-au-medlist.csv), [Excel](StructureDefinition-au-medlist.xlsx), [Schematron](StructureDefinition-au-medlist.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "au-medlist",
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
  "url" : "http://hl7.org.au/fhir/StructureDefinition/au-medlist",
  "version" : "6.0.1-ci-build",
  "name" : "AUMedicineList",
  "title" : "AU Medicine List",
  "status" : "active",
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
  "description" : "This profile defines a list structure that localises core concepts for use as a medicines list in an Australian context. This profile is intended to offer a common structure and expectations for a list of medications associated with a patient in an Australian healthcare context.",
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
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "List",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/List",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "List",
      "path" : "List",
      "short" : "A list of medications in an Australian healthcare context",
      "definition" : "A medicines list is a curated collection of medication resources."
    },
    {
      "id" : "List.extension",
      "path" : "List.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "rules" : "open"
      }
    },
    {
      "id" : "List.extension:sourceRelatedPerson",
      "path" : "List.extension",
      "sliceName" : "sourceRelatedPerson",
      "short" : "Related person that defined the list contents (aka Author)",
      "definition" : "The related person responsible for deciding what the contents of the list were. This is the same as the author of the list.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org.au/fhir/StructureDefinition/author-related-person"]
      }]
    },
    {
      "id" : "List.entry",
      "path" : "List.entry"
    },
    {
      "id" : "List.entry.extension",
      "path" : "List.entry.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "rules" : "open"
      }
    },
    {
      "id" : "List.entry.extension:changeDescription",
      "path" : "List.entry.extension",
      "sliceName" : "changeDescription",
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org.au/fhir/StructureDefinition/change-description"]
      }]
    },
    {
      "id" : "List.entry.flag",
      "path" : "List.entry.flag",
      "short" : "Medicine item change",
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "http://terminology.hl7.org.au/ValueSet/medicine-item-change"
      }
    },
    {
      "id" : "List.entry.item",
      "path" : "List.entry.item",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/MedicationStatement",
        "http://hl7.org/fhir/StructureDefinition/MedicationRequest",
        "http://hl7.org/fhir/StructureDefinition/MedicationDispense",
        "http://hl7.org/fhir/StructureDefinition/MedicationAdministration",
        "http://hl7.org/fhir/StructureDefinition/Immunization",
        "http://hl7.org.au/fhir/StructureDefinition/au-norelevantfinding"]
      }]
    }]
  }
}

```
