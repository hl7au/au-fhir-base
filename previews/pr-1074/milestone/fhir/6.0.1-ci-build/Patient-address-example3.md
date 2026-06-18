# Patient - Australian address with identifiers - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **Patient - Australian address with identifiers**

## Example Patient: Patient - Australian address with identifiers

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

Anonymous Patient (no stated gender), DoB Unknown

-------

| | |
| :--- | :--- |
| Contact Detail | * Northern Territory Office Department of Foreign Affairs and Trade GPO Box 1910 Darwin NT 0801 AU (work)
* 5th Floor, Northern Territory House, 22 Mitchell Street, Darwin, NT(work)
 |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "address-example3",
  "address" : [{
    "extension" : [{
      "url" : "http://hl7.org.au/fhir/StructureDefinition/address-identifier",
      "valueIdentifier" : {
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org.au/CodeSystem/v2-0203",
            "code" : "DPID",
            "display" : "Australia Post Delivery Point Identifier"
          }],
          "text" : "DPID"
        },
        "system" : "http://hl7.org.au/id/dpid",
        "value" : "34567890"
      }
    },
    {
      "url" : "http://hl7.org.au/fhir/StructureDefinition/address-identifier",
      "valueIdentifier" : {
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org.au/CodeSystem/v2-0203",
            "code" : "GNAF",
            "display" : "Geocoded National Address File Identifier"
          }],
          "text" : "G-NAF"
        },
        "system" : "http://hl7.org.au/id/gnafidentifier",
        "value" : "GAVIC411711441"
      }
    }],
    "use" : "work",
    "type" : "postal",
    "line" : ["Northern Territory Office",
    "Department of Foreign Affairs and Trade",
    "GPO Box 1910"],
    "city" : "Darwin",
    "state" : "NT",
    "postalCode" : "0801",
    "country" : "AU",
    "period" : {
      "start" : "2013-06-08T10:57:34+01:00"
    }
  },
  {
    "use" : "work",
    "type" : "physical",
    "text" : "5th Floor, Northern Territory House, 22 Mitchell Street, Darwin, NT",
    "line" : ["5th Floor, Northern Territory House", "22 Mitchell Street"],
    "city" : "Darwin",
    "state" : "NT",
    "postalCode" : "0800",
    "country" : "AU"
  }]
}

```
