# Coverage - private health insurer - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **Coverage - private health insurer**

## Example Coverage: Coverage - private health insurer

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

Profile: [AU Base Coverage](StructureDefinition-au-coverage.md)

**identifier**: Member Number/9999115

**status**: Active

**type**: extended healthcare

**beneficiary**: [Stella Franklin (official) Female, DoB: 1985-10-14 ( IHI: Austalian Healthcare Identifier - Individual#8003608833357361)](Patient-example0.md)

**relationship**: Self

**period**: 2020-12-19 --> (ongoing)

**payor**: HCF PTY LTD

### Classes

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Type** | **Value** | **Name** |
| * | Plan | Bronze | HCF Hospital Bronze Plus |



## Resource Content

```json
{
  "resourceType" : "Coverage",
  "id" : "private",
  "meta" : {
    "profile" : ["http://hl7.org.au/fhir/StructureDefinition/au-coverage"]
  },
  "identifier" : [{
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "MB",
        "display" : "Member Number"
      }]
    },
    "system" : "http://hcf.example.com/member/memberid",
    "value" : "9999115",
    "assigner" : {
      "display" : "HCF PTY LTD"
    }
  }],
  "status" : "active",
  "type" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
      "code" : "EHCPOL",
      "display" : "extended healthcare"
    }]
  },
  "beneficiary" : {
    "reference" : "Patient/example0"
  },
  "relationship" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/subscriber-relationship",
      "code" : "self"
    }],
    "text" : "Self"
  },
  "period" : {
    "start" : "2020-12-19"
  },
  "payor" : [{
    "display" : "HCF PTY LTD"
  }],
  "class" : [{
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/coverage-class",
        "code" : "plan",
        "display" : "Plan"
      }]
    },
    "value" : "Bronze",
    "name" : "HCF Hospital Bronze Plus"
  }]
}

```
