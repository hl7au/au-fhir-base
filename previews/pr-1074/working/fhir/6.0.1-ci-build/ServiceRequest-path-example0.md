# ServiceRequest - full blood count, and sex parameter for clinical use - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **ServiceRequest - full blood count, and sex parameter for clinical use**

## Example ServiceRequest: ServiceRequest - full blood count, and sex parameter for clinical use

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

Profile: [AU Base ServiceRequest](StructureDefinition-au-servicerequest.md)

> **Patient Sex Parameter For Clinical Use**
* value: Apply female-typical setting or reference range
* comment: Apply female-type setting for Haematology, Lipids, LFT, TSH, T4 pathology tests

**identifier**: Placer Identifier/789012345

**status**: Active

**intent**: Order

**code**: Full blood count

**subject**: [Patricia Roth Male, DoB: 1974-12-25 ( Medical record number (use: usual, ))](Patient-example-sex-and-gender.md)

**authoredOn**: 2022-04-02

**requester**: [PractitionerRole General practitioner](PractitionerRole-example3.md)

**performer**: [Organization ACME Pathology](Organization-example6.md)

**reasonCode**: Past history lymphoma



## Resource Content

```json
{
  "resourceType" : "ServiceRequest",
  "id" : "path-example0",
  "meta" : {
    "profile" : ["http://hl7.org.au/fhir/StructureDefinition/au-servicerequest"]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/patient-sexParameterForClinicalUse",
    "extension" : [{
      "url" : "value",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/sex-parameter-for-clinical-use",
          "code" : "female-typical",
          "display" : "Apply female-typical setting or reference range"
        }]
      }
    },
    {
      "url" : "comment",
      "valueString" : "Apply female-type setting for Haematology, Lipids, LFT, TSH, T4 pathology tests"
    }]
  }],
  "identifier" : [{
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "PLAC",
        "display" : "Placer Identifier"
      }]
    },
    "system" : "https://albionhospital.example.com/labs/order-identifier",
    "value" : "789012345",
    "assigner" : {
      "reference" : "Organization/example1",
      "display" : "Albion Hospital"
    }
  }],
  "status" : "active",
  "intent" : "order",
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "26604007",
      "display" : "Full blood count"
    }],
    "text" : "Full blood count"
  },
  "subject" : {
    "reference" : "Patient/example-sex-and-gender"
  },
  "authoredOn" : "2022-04-02",
  "requester" : {
    "reference" : "PractitionerRole/example3"
  },
  "performer" : [{
    "reference" : "Organization/example6"
  }],
  "reasonCode" : [{
    "text" : "Past history lymphoma"
  }]
}

```
