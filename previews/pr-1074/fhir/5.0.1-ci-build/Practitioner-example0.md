# Practitioner - with HPI-I and Prescriber Number - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **Practitioner - with HPI-I and Prescriber Number**

## Example Practitioner: Practitioner - with HPI-I and Prescriber Number

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

Profile: [AU Base Practitioner](StructureDefinition-au-practitioner.md)

**identifier**: HPI-I/8003619900015717, Prescriber Number/453221, Ahpra Registration Number/MED0000932945, Care Agency Employee Identifier/9003600003999997

**active**: true

**name**: Helen Mayo 

**telecom**: [helen.mayo@downunderhospital.example.com](mailto:helen.mayo@downunderhospital.example.com)

**address**: 3 McGregor Street Blacktown NSW 2148 Australia (work)

**communication**: Auslan



## Resource Content

```json
{
  "resourceType" : "Practitioner",
  "id" : "example0",
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
        "code" : "PRES",
        "display" : "Prescriber Number"
      }],
      "text" : "Prescriber Number"
    },
    "system" : "http://ns.electronichealth.net.au/id/medicare-prescriber-number",
    "value" : "453221"
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
    "value" : "MED0000932945"
  },
  {
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org.au/CodeSystem/v2-0203",
        "code" : "CAEI",
        "display" : "Care Agency Employee Identifier"
      }],
      "text" : "Care Agency Employee Identifier"
    },
    "system" : "http://ns.electronichealth.net.au/id/pcehr/caei/1.0",
    "value" : "9003600003999997"
  }],
  "active" : true,
  "name" : [{
    "extension" : [{
      "url" : "http://hl7.org.au/fhir/StructureDefinition/name-context",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org.au/CodeSystem/name-context",
          "code" : "hpii-validation",
          "display" : "HPI-I Validation"
        }]
      }
    }],
    "family" : "Mayo",
    "given" : ["Helen"],
    "prefix" : ["Dr"]
  }],
  "telecom" : [{
    "system" : "email",
    "value" : "helen.mayo@downunderhospital.example.com",
    "use" : "work"
  }],
  "address" : [{
    "use" : "work",
    "line" : ["3 McGregor Street"],
    "city" : "Blacktown",
    "state" : "NSW",
    "postalCode" : "2148",
    "country" : "Australia"
  }],
  "communication" : [{
    "coding" : [{
      "system" : "urn:ietf:bcp:47",
      "code" : "asf",
      "display" : "Auslan"
    }]
  }]
}

```
