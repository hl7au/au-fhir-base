# Downunder Hospital FHIR API - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **Downunder Hospital FHIR API**

## Example Endpoint: Downunder Hospital FHIR API

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

**Downunder Hospital FHIR API**
-------

**Status:** Active

**Connection Type:** FHIR REST API

**Environment:** Production

**Implementation Guide:** Downunder Hospital FHIR Profiles v2.1.0

**Managing Organization:** Downunder Hospital

**Contact:** fhir.api@downunderhospital.com.au

**Address:** https://fhir.downunderhospital.com.au/R4



## Resource Content

```json
{
  "resourceType" : "Endpoint",
  "id" : "example1",
  "meta" : {
    "profile" : ["http://hl7.org.au/fhir/StructureDefinition/au-endpoint"]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Endpoint.environmentType",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://hl7.org/fhir/endpoint-environment",
        "code" : "prod",
        "display" : "Production"
      }]
    }
  }],
  "identifier" : [{
    "system" : "http://downunderhospital.com.au/fhir-endpoints",
    "value" : "DUH-FHIR-PROD-01"
  },
  {
    "system" : "http://ns.electronichealth.net.au/id/hi/hpio/1.0",
    "value" : "8003621566684455"
  }],
  "status" : "active",
  "connectionType" : {
    "system" : "http://terminology.hl7.org/CodeSystem/endpoint-connection-type",
    "code" : "hl7-fhir-rest",
    "display" : "HL7 FHIR"
  },
  "name" : "Downunder Hospital FHIR API",
  "managingOrganization" : {
    "reference" : "Organization/example0",
    "display" : "Downunder Hospital"
  },
  "contact" : [{
    "system" : "email",
    "value" : "fhir.api@downunderhospital.com.au",
    "use" : "work"
  },
  {
    "system" : "phone",
    "value" : "+61 2 6270 8000",
    "use" : "work"
  }],
  "period" : {
    "start" : "2023-07-01"
  },
  "payloadType" : [{
    "coding" : [{
      "system" : "http://hl7.org/fhir/resource-types",
      "code" : "Patient"
    }]
  },
  {
    "coding" : [{
      "system" : "http://hl7.org/fhir/resource-types",
      "code" : "Practitioner"
    }]
  },
  {
    "coding" : [{
      "system" : "http://hl7.org/fhir/resource-types",
      "code" : "Organization"
    }]
  }],
  "payloadMimeType" : ["application/fhir+json", "application/fhir+xml"],
  "address" : "https://fhir.downunderhospital.com.au/R4"
}

```
