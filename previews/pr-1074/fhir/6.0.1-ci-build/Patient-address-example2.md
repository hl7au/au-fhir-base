# Patient - Australian No Fixed Address - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **Patient - Australian No Fixed Address**

## Example Patient: Patient - Australian No Fixed Address

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

Anonymous Patient (no stated gender), DoB Unknown

-------

| | |
| :--- | :--- |
| Contact Detail | NO FIXED ADDRESS Melbourne, VIC(temp) |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "address-example2",
  "address" : [{
    "extension" : [{
      "url" : "http://hl7.org.au/fhir/StructureDefinition/no-fixed-address",
      "valueBoolean" : true
    }],
    "use" : "temp",
    "type" : "physical",
    "text" : "NO FIXED ADDRESS Melbourne, VIC",
    "state" : "VIC",
    "country" : "AU"
  }]
}

```
