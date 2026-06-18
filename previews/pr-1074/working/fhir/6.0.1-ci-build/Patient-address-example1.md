# Patient - unstructured Australian Address - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **Patient - unstructured Australian Address**

## Example Patient: Patient - unstructured Australian Address

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

Anonymous Patient (no stated gender), DoB Unknown

-------

| | |
| :--- | :--- |
| Contact Detail | Level 1, 300 George St, Brisbane, QLD 4000 |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "address-example1",
  "address" : [{
    "text" : "Level 1, 300 George St, Brisbane, QLD 4000",
    "line" : ["Level 1 300 George St"],
    "city" : "Brisbane",
    "state" : "QLD",
    "postalCode" : "4000",
    "country" : "AU"
  }]
}

```
