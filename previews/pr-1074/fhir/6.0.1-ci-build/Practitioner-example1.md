# Practitioner - as a Radiologist - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **Practitioner - as a Radiologist**

## Example Practitioner: Practitioner - as a Radiologist

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

Profile: [AU Base Practitioner](StructureDefinition-au-practitioner.md)

**name**: Steve Smith 

### Qualifications

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Identifier** | **Code** | **Issuer** |
| * | Ahpra Registration Number/MED0000932846 | Ahpra Diagnostic Radiology | Ahpra |



## Resource Content

```json
{
  "resourceType" : "Practitioner",
  "id" : "example1",
  "meta" : {
    "profile" : ["http://hl7.org.au/fhir/StructureDefinition/au-practitioner"]
  },
  "name" : [{
    "family" : "Smith",
    "given" : ["Steve"],
    "prefix" : ["Dr"]
  }],
  "qualification" : [{
    "identifier" : [{
      "type" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org.au/CodeSystem/v2-0203",
          "code" : "AHPRA",
          "display" : "Australian Health Practitioner Regulation Agency Registration Number"
        }],
        "text" : "Ahpra Registration Number"
      },
      "system" : "http://hl7.org.au/id/ahpra-registration-number",
      "value" : "MED0000932846"
    }],
    "code" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org.au/CodeSystem/v2-0360",
        "code" : "AHPRA",
        "display" : "Ahpra Registration"
      }],
      "text" : "Ahpra Diagnostic Radiology"
    },
    "issuer" : {
      "display" : "Ahpra"
    }
  }]
}

```
