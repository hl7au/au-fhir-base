# HealthcareService - a typical Healthcare Service the Radiologist belongs to - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **HealthcareService - a typical Healthcare Service the Radiologist belongs to**

## Example HealthcareService: HealthcareService - a typical Healthcare Service the Radiologist belongs to

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

 **Narrative** 

**active**: true

**providedBy**: [Albion Hospital. Generated Summary: ABN: 51824753556; Private hospital; name: Albion Hospital](Organization-example1.md)

**category**: Specialist Radiology/Imaging

**specialty**: Radiation oncology, Interventional radiology - speciality

**location**: [Generated Summary: status: active; Site](Location-example1.md)

**name**: Albion Hospital Radiology Service

### AvailableTimes

| | | | |
| :--- | :--- | :--- | :--- |
| - | **DaysOfWeek** | **AvailableStartTime** | **AvailableEndTime** |
| * | mon, tue, wed, thu, fri | 08:30:00 (Brisbane) | 17:30:00 (Brisbane) |



## Resource Content

```json
{
  "resourceType" : "HealthcareService",
  "id" : "example1",
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
      "code" : "419815003",
      "display" : "Radiation oncology"
    }]
  },
  {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "408455009",
      "display" : "Interventional radiology - speciality"
    }]
  }],
  "location" : [{
    "reference" : "Location/example1"
  }],
  "name" : "Albion Hospital Radiology Service",
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
