# PractitionerRole - with Provider Number and ANZSCO coded role - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **PractitionerRole - with Provider Number and ANZSCO coded role**

## Example PractitionerRole: PractitionerRole - with Provider Number and ANZSCO coded role

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

 **Narrative** 

**id**: example0

**meta**: 

**identifier**: Medicare Provider Number: 1234561A

**active**: true

**practitioner**: [Generated Summary: id: example0; HPI-I: 8003619900015717, Prescriber Number: 453221, Ahpra Registration Number: MED0000932945, Care Agency Employee Identifier: 9003600003999997; active; Helen Mayo ; helen.mayo@downunderhospital.example.com(WORK); Auslan](Practitioner-example0.md)

**organization**: [Generated Summary: id: example0; HPI-O: 8003621566684455; active; name: Downunder Hospital; helen.mayo@downunderhospital.example.com(WORK)](Organization-example0.md)

**specialty**: Cardiology

**location**: [Generated Summary: id: example0; status: active; name: Downunder Hospital Blacktown; ph: 0255503555(WORK)](Location-example0.md)

**telecom**: ph: 0255507777(WORK), ph: 0255508888(After Hours)



## Resource Content

```json
{
  "resourceType" : "PractitionerRole",
  "id" : "example0",
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
  }],
  "active" : true,
  "practitioner" : {
    "reference" : "Practitioner/example0"
  },
  "organization" : {
    "reference" : "Organization/example0"
  },
  "specialty" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "394579002",
      "display" : "Cardiology"
    }]
  }],
  "location" : [{
    "reference" : "Location/example0"
  }],
  "telecom" : [{
    "system" : "phone",
    "value" : "0255507777",
    "use" : "work"
  },
  {
    "extension" : [{
      "url" : "http://hl7.org.au/fhir/StructureDefinition/contact-purpose",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org.au/CodeSystem/contact-purpose",
          "code" : "after-hours",
          "display" : "After Hours"
        }]
      }
    }],
    "system" : "phone",
    "value" : "0255508888"
  }]
}

```
