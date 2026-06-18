# PractitionerRole - as a Pathologist - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **PractitionerRole - as a Pathologist**

## Example PractitionerRole: PractitionerRole - as a Pathologist

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

**Narrative**

**identifier**: Employee Number: peterwinslow44

**practitioner**: [Generated Summary: Peter Winslow ](Practitioner-example2.md)

**organization**: [Generated Summary: ABN: 51824753556; Private hospital; name: Albion Hospital](Organization-example1.md)

**code**: General pathologist

**specialty**: General pathology (specialty)

**location**: [Generated Summary: NATA Site Number: 162899, LSPN: 123333; status: active; Level](Location-example2.md)

**healthcareService**: [Generated Summary: active; Specialist Clinical Pathology; General pathology (specialty); name: Albion Hospital Pathology Service](HealthcareService-example2.md)

**telecom**: [peter.winslow@amail.example.com](mailto:peter.winslow@amail.example.com)

### AvailableTimes

| | | | |
| :--- | :--- | :--- | :--- |
| - | **DaysOfWeek** | **AvailableStartTime** | **AvailableEndTime** |
| * | mon, tue, wed, thu, fri | 08:30:00 (Brisbane) | 17:30:00 (Brisbane) |



## Resource Content

```json
{
  "resourceType" : "PractitionerRole",
  "id" : "example2",
  "meta" : {
    "profile" : ["http://hl7.org.au/fhir/StructureDefinition/au-practitionerrole"]
  },
  "identifier" : [{
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "EI",
        "display" : "Employee number"
      }],
      "text" : "Employee Number"
    },
    "system" : "http://ns.electronichealth.net.au/id/abn-scoped/service-provider-individual/1.0/51824753556",
    "value" : "peterwinslow44",
    "assigner" : {
      "display" : "Albion Hospital"
    }
  }],
  "practitioner" : {
    "reference" : "Practitioner/example2"
  },
  "organization" : {
    "reference" : "Organization/example1"
  },
  "code" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "85733003",
      "display" : "General pathologist"
    }]
  }],
  "specialty" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "394915009",
      "display" : "General pathology (specialty)"
    }]
  }],
  "location" : [{
    "reference" : "Location/example2"
  }],
  "healthcareService" : [{
    "reference" : "HealthcareService/example2"
  }],
  "telecom" : [{
    "system" : "email",
    "value" : "peter.winslow@amail.example.com",
    "use" : "work"
  }],
  "availableTime" : [{
    "daysOfWeek" : ["mon", "tue", "wed", "thu", "fri"],
    "availableStartTime" : "08:30:00",
    "_availableStartTime" : {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/timezone",
        "valueCode" : "Australia/Brisbane"
      }]
    },
    "availableEndTime" : "17:30:00",
    "_availableEndTime" : {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/timezone",
        "valueCode" : "Australia/Brisbane"
      }]
    }
  }]
}

```
