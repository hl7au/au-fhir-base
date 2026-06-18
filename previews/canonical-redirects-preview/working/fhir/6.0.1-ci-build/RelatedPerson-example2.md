# RelatedPerson - as a mother for the patient in example 4 - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **RelatedPerson - as a mother for the patient in example 4**

## Example RelatedPerson: RelatedPerson - as a mother for the patient in example 4

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

Profile: [AU Base RelatedPerson](StructureDefinition-au-relatedperson.md)

**identifier**: Medicare Number/22968184811 (, period: (?) --> 2022-12)

**patient**: [Suzanne Simmons Female, DoB: 2008-08-08 ( Medical record number)](Patient-example4.md)

**relationship**: mother

**name**: Sarah Simmons 

**telecom**: [ssimmons@amail.example.com](mailto:ssimmons@amail.example.com), ph: (03) 5550 6677(Home)

**gender**: Female

**birthDate**: 1977-09-07

**address**: 55 Sarah Street Strahan TAS 7468 AU 



## Resource Content

```json
{
  "resourceType" : "RelatedPerson",
  "id" : "example2",
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
    "value" : "22968184811",
    "period" : {
      "end" : "2022-12"
    }
  }],
  "patient" : {
    "reference" : "Patient/example4"
  },
  "relationship" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-RoleCode",
      "code" : "MTH",
      "display" : "mother"
    }]
  }],
  "name" : [{
    "family" : "Simmons",
    "given" : ["Sarah"]
  }],
  "telecom" : [{
    "system" : "email",
    "value" : "ssimmons@amail.example.com",
    "use" : "home"
  },
  {
    "system" : "phone",
    "value" : "(03) 5550 6677",
    "use" : "home"
  }],
  "gender" : "female",
  "birthDate" : "1977-09-07",
  "address" : [{
    "line" : ["55 Sarah Street"],
    "city" : "Strahan",
    "state" : "TAS",
    "postalCode" : "7468",
    "country" : "AU"
  }]
}

```
