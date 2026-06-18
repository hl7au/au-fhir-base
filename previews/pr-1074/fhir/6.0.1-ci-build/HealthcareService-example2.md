# HealthcareService - of a Pathologist - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **HealthcareService - of a Pathologist**

## Example HealthcareService: HealthcareService - of a Pathologist

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

Profile: [AU Base HealthcareService](StructureDefinition-au-healthcareservice.md)

**active**: true

**providedBy**: [Albion Hospital](Organization-example1.md)

**specialty**: General pathology (specialty)

**location**: [Location: identifier = NATA Site Number: 162899,LSPN: 123333; status = active; physicalType = Level](Location-example2.md)

**name**: Albion Hospital Pathology Service

> **availableTime****daysOfWeek**: Monday, Tuesday, Wednesday, Thursday, Friday**availableStartTime**: 08:30:00**availableEndTime**: 17:30:00



## Resource Content

```json
{
  "resourceType" : "HealthcareService",
  "id" : "example2",
  "meta" : {
    "profile" : ["http://hl7.org.au/fhir/StructureDefinition/au-healthcareservice"]
  },
  "active" : true,
  "providedBy" : {
    "reference" : "Organization/example1",
    "display" : "Albion Hospital"
  },
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
  "name" : "Albion Hospital Pathology Service",
  "availableTime" : [{
    "daysOfWeek" : ["mon", "tue", "wed", "thu", "fri"],
    "availableStartTime" : "08:30:00",
    "availableEndTime" : "17:30:00"
  }]
}

```
