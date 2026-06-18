# Practitioner - a typical Practitioner as a General Practitioner - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **Practitioner - a typical Practitioner as a General Practitioner**

## Example Practitioner: Practitioner - a typical Practitioner as a General Practitioner

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

Profile: [AU Base Practitioner](StructureDefinition-au-practitioner.md)

**identifier**: HPI-I/8003619900015717, Ahpra Registration Number/MED0000932850

**name**: Francis Fernando 

### Qualifications

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Identifier** | **Code** | **Issuer** |
| * | Ahpra Registration Number/MED0000932850 | Ahpra General Practice | Australian Health Practitioner Regulation Agency |



## Resource Content

```json
{
  "resourceType" : "Practitioner",
  "id" : "example3",
  "meta" : {
    "profile" : ["http://hl7.org.au/fhir/StructureDefinition/au-practitioner"]
  },
  "identifier" : [{
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "NPI",
        "display" : "National provider identifier"
      }],
      "text" : "HPI-I"
    },
    "system" : "http://ns.electronichealth.net.au/id/hi/hpii/1.0",
    "value" : "8003619900015717"
  },
  {
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org.au/CodeSystem/v2-0203",
        "code" : "AHPRA",
        "display" : "Australian Health Practitioner Regulation Agency Registration Number"
      }],
      "text" : "Ahpra Registration Number"
    },
    "system" : "http://hl7.org.au/id/ahpra-registration-number",
    "value" : "MED0000932850"
  }],
  "name" : [{
    "family" : "Fernando",
    "given" : ["Francis"],
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
      "value" : "MED0000932850"
    }],
    "code" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org.au/CodeSystem/v2-0360",
        "code" : "AHPRA",
        "display" : "Ahpra Registration"
      }],
      "text" : "Ahpra General Practice"
    },
    "issuer" : {
      "display" : "Australian Health Practitioner Regulation Agency"
    }
  }]
}

```
