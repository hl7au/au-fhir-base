# List - Medicine list with no known current medicine - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **List - Medicine list with no known current medicine**

## Example List: List - Medicine list with no known current medicine

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

Profile: [AU Medicine List](StructureDefinition-au-medlist.md)

| | | | |
| :--- | :--- | :--- | :--- |
| Date: 2018-10-24 | Mode: Working List | Status: Current | Code: Current Medicine |
| Subject:[Stella Franklin (official) Female, DoB: 1985-10-14 ( IHI: Austalian Healthcare Identifier - Individual#8003608833357361)](Patient-example0.md)Source: | | | |

* **Items**: [Observation Assertion](Observation-norelevantfinding-example3.md)



## Resource Content

```json
{
  "resourceType" : "List",
  "id" : "example1",
  "meta" : {
    "profile" : ["http://hl7.org.au/fhir/StructureDefinition/au-medlist"]
  },
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:uuid:2793d1c8-4e99-11e9-8647-d663bd873d93"
  }],
  "status" : "current",
  "mode" : "working",
  "code" : {
    "coding" : [{
      "system" : "https://healthterminologies.gov.au/fhir/CodeSystem/nctis-data-components-1",
      "code" : "101.32009",
      "display" : "Current Medicine"
    }]
  },
  "subject" : {
    "reference" : "Patient/example0"
  },
  "date" : "2018-10-24",
  "source" : {
    "reference" : "Practitioner/example1"
  },
  "entry" : [{
    "item" : {
      "reference" : "Observation/norelevantfinding-example3"
    }
  }]
}

```
