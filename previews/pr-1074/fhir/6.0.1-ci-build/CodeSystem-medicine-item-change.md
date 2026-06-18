# Medicine Item Change - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **Medicine Item Change**

## CodeSystem: Medicine Item Change 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://terminology.hl7.org.au/CodeSystem/medicine-item-change | *Version*:6.0.1-ci-build | |
| * Standards status: *[Trial-use](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](generalguidance.md#maturity-levels): 1 | *Computable Name*:MedicineItemChange |
| *Other Identifiers:*OID:2.16.840.1.113883.2.3.4.1.4.6 | | |
| **Copyright/Legal**: HL7 Australia© 2018+; Licensed Under Creative Commons No Rights Reserved. | | |

 
The Medicine Item Change code system defines concepts that identify a change that has been made, or is recommended to be made, to a medicine item. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [MedicineItemChange](ValueSet-medicine-item-change.md)

**Changes since version 6.0.0:**

* No changes



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "medicine-item-change",
  "meta" : {
    "profile" : ["https://healthterminologies.gov.au/fhir/StructureDefinition/complete-code-system-4"]
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
  "url" : "http://terminology.hl7.org.au/CodeSystem/medicine-item-change",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.2.3.4.1.4.6"
  }],
  "version" : "6.0.1-ci-build",
  "name" : "MedicineItemChange",
  "title" : "Medicine Item Change",
  "status" : "active",
  "experimental" : false,
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
  "description" : "The Medicine Item Change code system defines concepts that identify a change that has been made, or is recommended to be made, to a medicine item.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "AU"
    }]
  }],
  "copyright" : "HL7 Australia© 2018+; Licensed Under Creative Commons No Rights Reserved.",
  "caseSensitive" : true,
  "valueSet" : "http://terminology.hl7.org.au/ValueSet/medicine-item-change",
  "hierarchyMeaning" : "is-a",
  "compositional" : false,
  "versionNeeded" : false,
  "content" : "complete",
  "count" : 15,
  "concept" : [{
    "code" : "nochange",
    "display" : "Unchanged",
    "definition" : "No change has been made to this medicine."
  },
  {
    "code" : "changed",
    "display" : "Change occurred",
    "definition" : "A change has been made to this medicine; for example, new medicine prescribed or dosage change.",
    "concept" : [{
      "code" : "new",
      "display" : "New",
      "definition" : "A new medicine item is introduced.",
      "concept" : [{
        "code" : "prescribed",
        "display" : "New prescription",
        "definition" : "A new medicine item has been prescribed."
      }]
    },
    {
      "code" : "ceased",
      "display" : "Ceased",
      "definition" : "A medicine that was previously taken by the individual may actually be ceased as it required immediate attention. This cessation is anticipated to be permanent. Example uses: the medicine in question is considered ineffective or has caused serious adverse effects."
    },
    {
      "code" : "suspended",
      "display" : "Suspended",
      "definition" : "A medicine that was previously taken by the individual may be temporarily stopped. Example uses: medication in question may reach toxicity blood level, or suspected to have caused some undesirable effects; or needs to be suspended before a surgical/diagnostic procedure."
    },
    {
      "code" : "cancelled",
      "display" : "Cancelled",
      "definition" : "The prescription for this medicine item was cancelled. The patient may be advised to complete the course of the prescribed medicine. This advice is a clinical decision made based on assessment of the patients clinical condition."
    },
    {
      "code" : "amended",
      "display" : "Amended",
      "definition" : "The current medicine item has been changed in some way, e.g. dose, form, route, frequency change."
    }]
  },
  {
    "code" : "recommended",
    "display" : "Change was recommended",
    "definition" : "A change has been recommended to this medicine but may not have occurred yet, e.g. medicine recommended to be stopped.",
    "concept" : [{
      "code" : "new-recommended",
      "display" : "New recommended medicine",
      "definition" : "A new medicine item is recommended.",
      "concept" : [{
        "code" : "prescription-recommended",
        "display" : "Prescription recommended",
        "definition" : "It may be recommended that the usual GP prescribe a new medicine to be taken by the individual. The addition may not be urgent or there may be an arrangement that all medicine changes are to be enacted by the GP as the coordinator of the individual‘s overall care."
      }]
    },
    {
      "code" : "review-recommended",
      "display" : "Review recommended",
      "definition" : "It may be recommended to the usual GP that a medicine that was previously taken by the individual be reviewed. The outcome of the review may be that the medicine is amended or stopped."
    },
    {
      "code" : "cessation-recommended",
      "display" : "Cessation recommended",
      "definition" : "It may be recommended to the usual GP that a medicine that was previously taken by the individual be ceased."
    },
    {
      "code" : "suspension-recommended",
      "display" : "Suspension recommended",
      "definition" : "It may be recommended to the usual GP that a medicine item that was previously taken by the individual be temporarily stopped. Example uses: medication in question may reach toxicity blood level, or suspected to have caused some undesirable effects; or needs to be suspended before a surgical/diagnostic procedure."
    },
    {
      "code" : "cancellation-recommended",
      "display" : "Cancellation recommended",
      "definition" : "The prescription for this medicine item is recommended to be cancelled. The patient may be advised to complete the course of the prescribed medicine. This advice is a clinical decision made based on assessment of the patients clinical condition."
    }]
  }]
}

```
