# Organization - a Pathology organisation with NATA Number, ARBN, ABN, ACN, HPI-O and PAI-O - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **Organization - a Pathology organisation with NATA Number, ARBN, ABN, ACN, HPI-O and PAI-O**

## Example Organization: Organization - a Pathology organisation with NATA Number, ARBN, ABN, ACN, HPI-O and PAI-O

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

version: 11.007; Last updated: 2019-11-15 13:28:17+1000; Language: en-AU

Profile: [AU Base Organization](StructureDefinition-au-organization.md)

**identifier**: NATA Accreditation Number/200001, ARBN/123456789, ABN/12345678901, ACN/518247535, HPI-O/8003621566684455, PAI-O/8003640011000059, CSP/8003639900027009

**type**: Pathology and Diagnostic Imaging Services

**name**: ACME Pathology

**alias**: Tests R Us Pathology

**telecom**: [enquiries@acmepathology.example.com](mailto:enquiries@acmepathology.example.com), [https://acmepathology.example.com](https://acmepathology.example.com), ph: (03) 5550 1234(Work)

**address**: 7002 Little Collins Street Melbourne VIC 3000 AU 

**partOf**: [Organization Test Org -DigitalHealth 5](Organization-5-8631-1.md)



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "example6",
  "meta" : {
    "versionId" : "11.007",
    "lastUpdated" : "2019-11-15T13:28:17.239+10:00",
    "profile" : ["http://hl7.org.au/fhir/StructureDefinition/au-organization"]
  },
  "language" : "en-AU",
  "identifier" : [{
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org.au/CodeSystem/v2-0203",
        "code" : "NATAA",
        "display" : "NATA Accreditation Number"
      }],
      "text" : "NATA Accreditation Number"
    },
    "system" : "http://hl7.org.au/id/nata-accreditation",
    "value" : "200001"
  },
  {
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org.au/CodeSystem/v2-0203",
        "code" : "ARBN",
        "display" : "Australian Registered Body Number"
      }],
      "text" : "ARBN"
    },
    "system" : "http://hl7.org.au/id/arbn",
    "value" : "123456789"
  },
  {
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org.au/CodeSystem/v2-0203",
        "code" : "ABN",
        "display" : "Australian Business Number"
      }],
      "text" : "ABN"
    },
    "system" : "http://hl7.org.au/id/abn",
    "value" : "12345678901"
  },
  {
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org.au/CodeSystem/v2-0203",
        "code" : "ACN",
        "display" : "Australian Company Number"
      }],
      "text" : "ACN"
    },
    "system" : "http://hl7.org.au/id/acn",
    "value" : "518247535"
  },
  {
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org.au/CodeSystem/v2-0203",
        "code" : "NOI",
        "display" : "National Organisation Identifier"
      }],
      "text" : "HPI-O"
    },
    "system" : "http://ns.electronichealth.net.au/id/hi/hpio/1.0",
    "value" : "8003621566684455"
  },
  {
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org.au/CodeSystem/v2-0203",
        "code" : "PAIO",
        "display" : "My Health Record (PCEHR) Assigned Identity for Organisations"
      }],
      "text" : "PAI-O"
    },
    "system" : "http://ns.electronichealth.net.au/id/pcehr/paio/1.0",
    "value" : "8003640011000059"
  },
  {
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org.au/CodeSystem/v2-0203",
        "code" : "CSPRN",
        "display" : "Contracted Service Provider Registration Number"
      }],
      "text" : "CSP"
    },
    "system" : "http://ns.electronichealth.net.au/id/hi/csp/1.0",
    "value" : "8003639900027009"
  }],
  "type" : [{
    "coding" : [{
      "system" : "http://www.abs.gov.au/ausstats/abs@.nsf/mf/1292.0",
      "code" : "8520",
      "display" : "Pathology and Diagnostic Imaging Services"
    }]
  }],
  "name" : "ACME Pathology",
  "alias" : ["Tests R Us Pathology"],
  "telecom" : [{
    "system" : "email",
    "value" : "enquiries@acmepathology.example.com",
    "use" : "work"
  },
  {
    "system" : "url",
    "value" : "https://acmepathology.example.com",
    "use" : "work"
  },
  {
    "system" : "phone",
    "value" : "(03) 5550 1234",
    "use" : "work"
  }],
  "address" : [{
    "type" : "both",
    "line" : ["7002 Little Collins Street"],
    "city" : "Melbourne",
    "state" : "VIC",
    "postalCode" : "3000",
    "country" : "AU"
  }],
  "partOf" : {
    "reference" : "Organization/5-8631-1"
  }
}

```
