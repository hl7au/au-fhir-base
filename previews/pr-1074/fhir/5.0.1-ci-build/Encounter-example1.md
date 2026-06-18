# Encounter - Annual check up - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **Encounter - Annual check up**

## Example Encounter: Encounter - Annual check up

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

Profile: [AU Base Encounter](StructureDefinition-au-encounter.md)

**status**: Finished

**class**: [ActCode: AMB](http://terminology.hl7.org/7.2.0/CodeSystem-v3-ActCode.html#v3-ActCode-AMB) (ambulatory)

**type**: Annual visit

**serviceType**: General practice service

**subject**: [Suzanne Simmons Female, DoB: 2008-08-08 ( Medical record number)](Patient-example4.md)

### Participants

| | | |
| :--- | :--- | :--- |
| - | **Type** | **Individual** |
| * | primary performer | Identifier: Employee Number/8223TAS |

**period**: 2022-02-10 09:20:00+1000 --> 2022-02-10 09:35:00+1000



## Resource Content

```json
{
  "resourceType" : "Encounter",
  "id" : "example1",
  "meta" : {
    "profile" : ["http://hl7.org.au/fhir/StructureDefinition/au-encounter"]
  },
  "status" : "finished",
  "class" : {
    "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
    "code" : "AMB",
    "display" : "ambulatory"
  },
  "type" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "866149003",
      "display" : "Annual visit"
    }]
  }],
  "serviceType" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "788007007",
      "display" : "General practice service"
    }]
  },
  "subject" : {
    "reference" : "Patient/example4",
    "identifier" : {
      "type" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
          "code" : "MR"
        }]
      },
      "system" : "http://ns.electronichealth.net.au/id/abn-scoped/medicalrecord/1.0/51824754455",
      "value" : "22446688",
      "assigner" : {
        "display" : "TAS GP Medical Center TAS"
      }
    }
  },
  "participant" : [{
    "type" : [{
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v3-ParticipationType",
        "code" : "PPRF",
        "display" : "primary performer"
      }]
    }],
    "individual" : {
      "identifier" : {
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "EI",
            "display" : "Employee number"
          }],
          "text" : "Employee Number"
        },
        "system" : "http://tasmedicalcenter.example.com/providers",
        "value" : "8223TAS",
        "assigner" : {
          "display" : "TAS GP Medical Center TAS"
        }
      }
    }
  }],
  "period" : {
    "start" : "2022-02-10T09:20:00+10:00",
    "end" : "2022-02-10T09:35:00+10:00"
  }
}

```
