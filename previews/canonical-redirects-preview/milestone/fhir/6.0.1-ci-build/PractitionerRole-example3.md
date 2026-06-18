# PractitionerRole - a typical Practitioner Role as a General Practitioner - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **PractitionerRole - a typical Practitioner Role as a General Practitioner**

## Example PractitionerRole: PractitionerRole - a typical Practitioner Role as a General Practitioner

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

Profile: [AU Base PractitionerRole](StructureDefinition-au-practitionerrole.md)

**identifier**: Medicare Provider Number/1234561A

**practitioner**: [Practitioner Francis Fernando ](Practitioner-example3.md)

**organization**: [Organization Devonport Family Medicine Clinic](Organization-example3.md)

**code**: General practitioner

**specialty**: General practice (specialty)

**location**: [Location: status = active; type = Family medicine clinic; physicalType = Building](Location-example3.md)

**healthcareService**: [HealthcareService General Practitioner services](HealthcareService-example3.md)

**telecom**: [francis.fernando@alphamail.example.com](mailto:francis.fernando@alphamail.example.com)

> **availableTime****daysOfWeek**: Monday, Tuesday, Wednesday, Thursday, Friday**availableStartTime**: 08:00:00**availableEndTime**: 20:00:00

### NotAvailables

| | |
| :--- | :--- |
| - | **Description** |
| * | Weekends |



## Resource Content

```json
{
  "resourceType" : "PractitionerRole",
  "id" : "example3",
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
  "practitioner" : {
    "reference" : "Practitioner/example3"
  },
  "organization" : {
    "reference" : "Organization/example3"
  },
  "code" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "62247001",
      "display" : "General practitioner"
    }]
  }],
  "specialty" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "394814009",
      "display" : "General practice (specialty)"
    }]
  }],
  "location" : [{
    "reference" : "Location/example3"
  }],
  "healthcareService" : [{
    "reference" : "HealthcareService/example3"
  }],
  "telecom" : [{
    "system" : "email",
    "value" : "francis.fernando@alphamail.example.com",
    "use" : "work"
  }],
  "availableTime" : [{
    "daysOfWeek" : ["mon", "tue", "wed", "thu", "fri"],
    "availableStartTime" : "08:00:00",
    "availableEndTime" : "20:00:00"
  }],
  "notAvailable" : [{
    "description" : "Weekends"
  }]
}

```
