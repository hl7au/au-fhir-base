# PractitionerRole - with assigning authority - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **PractitionerRole - with assigning authority**

## Example PractitionerRole: PractitionerRole - with assigning authority

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

Profile: [AU Base PractitionerRole](StructureDefinition-au-practitionerrole.md)

**identifier**: Medicare Provider Number/1234561A, Vendor Directory Identifier/BD6000000X9

**active**: true

**practitioner**: [Practitioner Helen Mayo ](Practitioner-example0.md)

**organization**: [Organization Downunder Hospital](Organization-example0.md)

**code**: Cardiologist

**location**: [Location Downunder Hospital Blacktown](Location-example0.md)

**telecom**: ph: 0255503333(Work)

**endpoint**: [Endpoint Telstra Health Secure Messaging Endpoint](Endpoint-example0.md)



## Resource Content

```json
{
  "resourceType" : "PractitionerRole",
  "id" : "example4",
  "meta" : {
    "profile" : ["http://hl7.org.au/fhir/StructureDefinition/au-practitionerrole"]
  },
  "identifier" : [{
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org.au/CodeSystem/v2-0203",
        "code" : "UPIN"
      }],
      "text" : "Medicare Provider Number"
    },
    "system" : "http://ns.electronichealth.net.au/id/medicare-provider-number",
    "value" : "1234561A"
  },
  {
    "extension" : [{
      "url" : "http://hl7.org.au/fhir/StructureDefinition/au-assigningauthority",
      "extension" : [{
        "url" : "namespace-id",
        "valueString" : "Medical-Objects"
      },
      {
        "url" : "universal-id",
        "valueString" : "33443682-91F6-11D2-8F2C-444553540123"
      },
      {
        "url" : "universal-id-type",
        "valueString" : "GUID"
      }]
    }],
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org.au/CodeSystem/v2-0203",
        "code" : "VDI",
        "display" : "Vendor Directory Identifier"
      }],
      "text" : "Vendor Directory Identifier"
    },
    "system" : "http://ns.medical-objects.com.au/id/routing-id",
    "value" : "BD6000000X9",
    "assigner" : {
      "display" : "Medical-Objects"
    }
  }],
  "active" : true,
  "practitioner" : {
    "reference" : "Practitioner/example0"
  },
  "organization" : {
    "reference" : "Organization/example0"
  },
  "code" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "17561000",
      "display" : "Cardiologist"
    }]
  }],
  "location" : [{
    "reference" : "Location/example0"
  }],
  "telecom" : [{
    "system" : "phone",
    "value" : "0255503333",
    "use" : "work"
  }],
  "endpoint" : [{
    "reference" : "Endpoint/example0"
  }]
}

```
