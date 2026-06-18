# ServiceRequest - for Hepatitis B surface antibody measurement - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **ServiceRequest - for Hepatitis B surface antibody measurement**

## Example ServiceRequest: ServiceRequest - for Hepatitis B surface antibody measurement

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

Profile: [AU Base ServiceRequest](StructureDefinition-au-servicerequest.md)

**identifier**: Placer Identifier/1122334455

**status**: Completed

**intent**: Order

**code**: Hepatitis B surface antibody

**subject**: [Stella Franklin (official) Female, DoB: 1985-10-14 ( IHI: Austalian Healthcare Identifier - Individual#8003608833357361)](Patient-example0.md)

**authoredOn**: 2019-09-23

**requester**: [PractitionerRole General practitioner](PractitionerRole-example3.md)

**reasonCode**: Hepatitis B surface antibody status



## Resource Content

```json
{
  "resourceType" : "ServiceRequest",
  "id" : "hepatitis-b-antibody",
  "meta" : {
    "profile" : ["http://hl7.org.au/fhir/StructureDefinition/au-servicerequest"]
  },
  "identifier" : [{
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "PLAC",
        "display" : "Placer Identifier"
      }]
    },
    "system" : "https://dfmc.example.com/labs/order-identifier",
    "value" : "1122334455",
    "assigner" : {
      "reference" : "Organization/example3",
      "display" : "Devonport Family Medicine Clinic"
    }
  }],
  "status" : "completed",
  "intent" : "order",
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "65911000",
      "display" : "Hepatitis B surface antibody measurement"
    }],
    "text" : "Hepatitis B surface antibody"
  },
  "subject" : {
    "reference" : "Patient/example0"
  },
  "authoredOn" : "2019-09-23",
  "requester" : {
    "reference" : "PractitionerRole/example3"
  },
  "reasonCode" : [{
    "text" : "Hepatitis B surface antibody status"
  }]
}

```
