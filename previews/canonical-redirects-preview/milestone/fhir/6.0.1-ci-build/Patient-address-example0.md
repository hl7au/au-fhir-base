# Patient - structured Australian Address - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **Patient - structured Australian Address**

## Example Patient: Patient - structured Australian Address

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
  "id" : "address-example0",
  "address" : [{
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
