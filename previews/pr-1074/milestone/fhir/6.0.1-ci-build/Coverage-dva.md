# Coverage - DVA Gold Card - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **Coverage - DVA Gold Card**

## Example Coverage: Coverage - DVA Gold Card

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

Profile: [AU Base Coverage](StructureDefinition-au-coverage.md)

**identifier**: DVA Number (Gold)/NBUR9080

**status**: Active

**type**: veteran health program

**beneficiary**: [Harry Dan Male, DoB: 1939-08-25 ( IHI: Austalian Healthcare Identifier - Individual#8003608833357361)](Patient-example1.md)

**relationship**: Self

**period**: 2020-01-01 --> (ongoing)

**payor**: Department of Veterans' Affairs (Identifier: ABN/23964290824)



## Resource Content

```json
{
  "resourceType" : "Coverage",
  "id" : "dva",
  "meta" : {
    "profile" : ["http://hl7.org.au/fhir/StructureDefinition/au-coverage"]
  },
  "identifier" : [{
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org.au/CodeSystem/v2-0203",
        "code" : "DVG",
        "display" : "DVA Number (Gold Card)"
      }],
      "text" : "DVA Number (Gold)"
    },
    "system" : "http://ns.electronichealth.net.au/id/dva",
    "value" : "NBUR9080"
  }],
  "status" : "active",
  "type" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
      "code" : "VET",
      "display" : "veteran health program"
    }]
  },
  "beneficiary" : {
    "reference" : "Patient/example1"
  },
  "relationship" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/subscriber-relationship",
      "code" : "self"
    }],
    "text" : "Self"
  },
  "period" : {
    "start" : "2020-01-01"
  },
  "payor" : [{
    "identifier" : {
      "type" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
          "code" : "XX"
        }],
        "text" : "ABN"
      },
      "system" : "http://hl7.org.au/id/abn",
      "value" : "23964290824"
    },
    "display" : "Department of Veterans' Affairs"
  }]
}

```
