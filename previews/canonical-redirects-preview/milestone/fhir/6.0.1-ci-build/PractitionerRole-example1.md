# PractitionerRole - a typical Practitioner Role as a Radiologist - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **PractitionerRole - a typical Practitioner Role as a Radiologist**

## Example PractitionerRole: PractitionerRole - a typical Practitioner Role as a Radiologist

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

Profile: [AU Base PractitionerRole](StructureDefinition-au-practitionerrole.md)

**identifier**: NPIO/8003619900015717@8003621566684455

**practitioner**: [Practitioner Steve Smith ](Practitioner-example1.md)

**organization**: [Organization Albion Hospital](Organization-example1.md)

**code**: Radiologist

**location**: [Location: status = active; physicalType = Site](Location-example1.md)

**healthcareService**: [HealthcareService Albion Hospital Radiology Service](HealthcareService-example1.md)

**telecom**: [steve.smith@albionhospital.example.com](mailto:steve.smith@albionhospital.example.com)

**availabilityExceptions**: Availability on public holidays may vary, please contact the hospital directly to confirm.



## Resource Content

```json
{
  "resourceType" : "PractitionerRole",
  "id" : "example1",
  "meta" : {
    "profile" : ["http://hl7.org.au/fhir/StructureDefinition/au-practitionerrole"]
  },
  "identifier" : [{
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org.au/CodeSystem/v2-0203",
        "code" : "NPIO",
        "display" : "National provider at organisation identifier"
      }],
      "text" : "NPIO"
    },
    "system" : "http://hl7.org.au/id/npio",
    "value" : "8003619900015717@8003621566684455"
  }],
  "practitioner" : {
    "reference" : "Practitioner/example1"
  },
  "organization" : {
    "reference" : "Organization/example1"
  },
  "code" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "66862007",
      "display" : "Radiologist"
    }]
  }],
  "location" : [{
    "reference" : "Location/example1"
  }],
  "healthcareService" : [{
    "reference" : "HealthcareService/example1"
  }],
  "telecom" : [{
    "system" : "email",
    "value" : "steve.smith@albionhospital.example.com",
    "use" : "work"
  }],
  "availabilityExceptions" : "Availability on public holidays may vary, please contact the hospital directly to confirm."
}

```
