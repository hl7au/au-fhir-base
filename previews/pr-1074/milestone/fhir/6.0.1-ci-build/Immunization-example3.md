# Immunization - Administration of Pfizer Comirnaty dose 1 for Sarah Simmons - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **Immunization - Administration of Pfizer Comirnaty dose 1 for Sarah Simmons**

## Example Immunization: Immunization - Administration of Pfizer Comirnaty dose 1 for Sarah Simmons

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

Profile: [AU Base Immunization](StructureDefinition-au-immunization.md)

**Vaccine Vial Serial Number**: vNo1111

**status**: Completed

**vaccineCode**: Pfizer Comirnaty

**patient**: [Sarah Simmons Female, DoB: 1977-09-07 ( Medicare Number: 22968184811 (, period: (?) --> 2022-12))](Patient-example5.md)

**occurrence**: 2021-11-17

**recorded**: 2021-11-17

**primarySource**: true

**location**: [Location: status = active; type = Family medicine clinic; physicalType = Building](Location-example3.md)

**manufacturer**: Pfizer Australia Ltd

**lotNumber**: 500000000P

### Performers

| | | |
| :--- | :--- | :--- |
| - | **Function** | **Actor** |
| * | Administering Provider | [PractitionerRole General practitioner](PractitionerRole-example3.md) |

### ProtocolApplieds

| | | |
| :--- | :--- | :--- |
| - | **TargetDisease** | **DoseNumber[x]** |
| * | COVID-19 | 1 |



## Resource Content

```json
{
  "resourceType" : "Immunization",
  "id" : "example3",
  "meta" : {
    "profile" : ["http://hl7.org.au/fhir/StructureDefinition/au-immunization"]
  },
  "extension" : [{
    "url" : "http://hl7.org.au/fhir/StructureDefinition/vaccine-serial-number",
    "valueString" : "vNo1111"
  }],
  "status" : "completed",
  "vaccineCode" : {
    "coding" : [{
      "system" : "https://www.humanservices.gov.au/organisations/health-professionals/enablers/air-vaccine-code-formats",
      "code" : "COMIRN"
    },
    {
      "system" : "http://snomed.info/sct",
      "code" : "1525011000168107",
      "display" : "Comirnaty"
    }],
    "text" : "Pfizer Comirnaty"
  },
  "patient" : {
    "reference" : "Patient/example5",
    "identifier" : {
      "type" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
          "code" : "MC",
          "display" : "Patient's Medicare number"
        }],
        "text" : "Medicare Number"
      },
      "system" : "http://ns.electronichealth.net.au/id/medicare-number",
      "value" : "22968184811",
      "period" : {
        "end" : "2022-12"
      }
    }
  },
  "occurrenceDateTime" : "2021-11-17",
  "recorded" : "2021-11-17",
  "primarySource" : true,
  "location" : {
    "reference" : "Location/example3"
  },
  "manufacturer" : {
    "display" : "Pfizer Australia Ltd"
  },
  "lotNumber" : "500000000P",
  "performer" : [{
    "function" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0443",
        "code" : "AP",
        "display" : "Administering Provider"
      }],
      "text" : "Administering Provider"
    },
    "actor" : {
      "reference" : "PractitionerRole/example3",
      "identifier" : {
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org.au/CodeSystem/v2-0203",
            "code" : "UPIN"
          }],
          "text" : "Medicare Provider Number"
        },
        "system" : "http://ns.electronichealth.net.au/id/medicare-provider-number",
        "value" : "1234561A"
      }
    }
  }],
  "protocolApplied" : [{
    "targetDisease" : [{
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "840539006",
        "display" : "COVID-19"
      }],
      "text" : "COVID-19"
    }],
    "doseNumberPositiveInt" : 1
  }]
}

```
