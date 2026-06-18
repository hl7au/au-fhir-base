# Patient - as a child born in 2008 - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **Patient - as a child born in 2008**

## Example Patient: Patient - as a child born in 2008

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

Profile: [AU Base Patient](StructureDefinition-au-patient.md)

Suzanne Simmons Female, DoB: 2008-08-08 ( Medical record number)

-------

| | |
| :--- | :--- |
| Contact Detail | * ph: (03) 5550 6677
* 55 Sarah Street Strahan TAS 7468 AU 
 |
| Next-of-Kin: | * Sarah Simmons 
* ph: 0491570158(Mobile)
 |
| Links: | * General Practitioner: [Practitioner Francis Fernando ](Practitioner-example3.md)
* Managing Organization: [Organization Devonport Family Medicine Clinic](Organization-example3.md)
 |
| [Ethnicity](StructureDefinition-ethnicity.md) | Scottish |
| Individual Gender Identity: | * value: Identifies as nonbinary gender
 |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "example4",
  "meta" : {
    "profile" : ["http://hl7.org.au/fhir/StructureDefinition/au-patient"]
  },
  "extension" : [{
    "url" : "http://hl7.org.au/fhir/StructureDefinition/ethnicity",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://www.abs.gov.au/ausstats/abs@.nsf/mf/1249.0",
        "code" : "2102",
        "display" : "Scottish"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/individual-genderIdentity",
    "extension" : [{
      "url" : "value",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "33791000087105",
          "display" : "Identifies as nonbinary gender"
        }]
      }
    }]
  }],
  "identifier" : [{
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "MR"
      }]
    },
    "system" : "http://ns.electronichealth.net.au/id/abn-scoped/medicalrecord/1.0/51824754455",
    "value" : "22446688",
    "assigner" : {
      "reference" : "Organization/example3",
      "display" : "Devonport Family Medicine Clinic"
    }
  }],
  "name" : [{
    "family" : "Simmons",
    "given" : ["Suzanne"]
  }],
  "telecom" : [{
    "system" : "phone",
    "value" : "(03) 5550 6677"
  }],
  "gender" : "female",
  "birthDate" : "2008-08-08",
  "address" : [{
    "line" : ["55 Sarah Street"],
    "city" : "Strahan",
    "state" : "TAS",
    "postalCode" : "7468",
    "country" : "AU"
  }],
  "contact" : [{
    "relationship" : [{
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0131",
        "code" : "N",
        "display" : "Next-of-Kin"
      }]
    }],
    "name" : {
      "family" : "Simmons",
      "given" : ["Sarah"]
    },
    "telecom" : [{
      "system" : "phone",
      "value" : "0491570158",
      "use" : "mobile"
    }]
  }],
  "generalPractitioner" : [{
    "reference" : "Practitioner/example3"
  }],
  "managingOrganization" : {
    "reference" : "Organization/example3"
  }
}

```
