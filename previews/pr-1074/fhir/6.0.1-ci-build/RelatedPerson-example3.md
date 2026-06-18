# RelatedPerson - as father - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **RelatedPerson - as father**

## Example RelatedPerson: RelatedPerson - as father

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

Profile: [AU Base RelatedPerson](StructureDefinition-au-relatedperson.md)

**identifier**: Medicare Number/22968184812 (, period: (?) --> 2022-12)

**active**: true

**patient**: Alejandro Hernández MRN: 765567765FRD (Identifier: Medical record number/765567765FRD)

**relationship**: father

**name**: Bill Simmons 

**telecom**: [billsimmons@amail.example.com](mailto:billsimmons@amail.example.com), ph: (03) 5550 6677(Home)

**gender**: Male

**birthDate**: 1975-04-01

**address**: 55 Sarah Street Strahan TAS 7468 AU 



## Resource Content

```json
{
  "resourceType" : "RelatedPerson",
  "id" : "example3",
  "meta" : {
    "profile" : ["http://hl7.org.au/fhir/StructureDefinition/au-relatedperson"]
  },
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
    "value" : "22968184812",
    "period" : {
      "end" : "2022-12"
    }
  }],
  "active" : true,
  "patient" : {
    "identifier" : {
      "type" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
          "code" : "MR"
        }]
      },
      "system" : "http://downunderhospital.example.com/identifiers/patient",
      "value" : "765567765FRD",
      "assigner" : {
        "reference" : "Organization/example0",
        "display" : "Downunder Hospital"
      }
    },
    "display" : "Alejandro Hernández MRN: 765567765FRD"
  },
  "relationship" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-RoleCode",
      "code" : "FTH",
      "display" : "father"
    }]
  }],
  "name" : [{
    "family" : "Simmons",
    "given" : ["Bill"]
  }],
  "telecom" : [{
    "system" : "email",
    "value" : "billsimmons@amail.example.com",
    "use" : "home"
  },
  {
    "system" : "phone",
    "value" : "(03) 5550 6677",
    "use" : "home"
  }],
  "gender" : "male",
  "birthDate" : "1975-04-01",
  "address" : [{
    "line" : ["55 Sarah Street"],
    "city" : "Strahan",
    "state" : "TAS",
    "postalCode" : "7468",
    "country" : "AU"
  }]
}

```
