# Patient - as a mother for the patient in example 4 - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **Patient - as a mother for the patient in example 4**

## Example Patient: Patient - as a mother for the patient in example 4

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

Profile: [AU Base Patient](StructureDefinition-au-patient.md)

Sarah Simmons Female, DoB: 1977-09-07 ( Medicare Number: 22968184811 (, period: (?) --> 2022-12))

-------

| | |
| :--- | :--- |
| Contact Detail | * ph: (03) 5550 6677
* 55 Sarah Street Strahan TAS 7468 AU 
 |
| Links: | * General Practitioner: [Practitioner Francis Fernando ](Practitioner-example3.md)
* Managing Organization: [Organization Devonport Family Medicine Clinic](Organization-example3.md)
* Also see: [RelatedPerson Sarah Simmons ](RelatedPerson-example2.md)
 |
| [Patient Mother's Maiden Name](http://hl7.org/fhir/extensions/5.3.0/StructureDefinition-patient-mothersMaidenName.html) | McKinnon |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "example5",
  "meta" : {
    "profile" : ["http://hl7.org.au/fhir/StructureDefinition/au-patient"]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/patient-mothersMaidenName",
    "valueString" : "McKinnon"
  }],
  "identifier" : [{
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
  }],
  "name" : [{
    "family" : "Simmons",
    "given" : ["Sarah"]
  }],
  "telecom" : [{
    "system" : "phone",
    "value" : "(03) 5550 6677"
  }],
  "gender" : "female",
  "birthDate" : "1977-09-07",
  "address" : [{
    "line" : ["55 Sarah Street"],
    "city" : "Strahan",
    "state" : "TAS",
    "postalCode" : "7468",
    "country" : "AU"
  }],
  "generalPractitioner" : [{
    "reference" : "Practitioner/example3"
  }],
  "managingOrganization" : {
    "reference" : "Organization/example3"
  },
  "link" : [{
    "other" : {
      "reference" : "RelatedPerson/example2"
    },
    "type" : "seealso"
  }]
}

```
