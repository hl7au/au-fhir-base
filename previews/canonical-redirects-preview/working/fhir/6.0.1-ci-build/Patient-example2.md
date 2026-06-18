# Patient - with no birth date, and is eligible for Closing the Gap registration - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **Patient - with no birth date, and is eligible for Closing the Gap registration**

## Example Patient: Patient - with no birth date, and is eligible for Closing the Gap registration

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

Profile: [AU Base Patient](StructureDefinition-au-patient.md)

Sally Grant Female, DoB Unknown ( Medicare Number: 1234567892 (, period: (?) --> 2019-05))

-------

| | |
| :--- | :--- |
| Contact Detail | * [sgrant@amail.example.com](mailto:sgrant@amail.example.com)
* 999 Astor Terrace Spring Hill QLD 4000 Australia 
 |
| [Closing the Gap Registration](StructureDefinition-closing-the-gap-registration.md) | true |
| [Australian Indigenous Status](StructureDefinition-indigenous-status.md) | australian-indigenous-status-1: 3 (Both Aboriginal and Torres Strait Islander origin) |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "example2",
  "meta" : {
    "profile" : ["http://hl7.org.au/fhir/StructureDefinition/au-patient"]
  },
  "extension" : [{
    "url" : "http://hl7.org.au/fhir/StructureDefinition/indigenous-status",
    "valueCoding" : {
      "system" : "https://healthterminologies.gov.au/fhir/CodeSystem/australian-indigenous-status-1",
      "code" : "3",
      "display" : "Both Aboriginal and Torres Strait Islander origin"
    }
  },
  {
    "url" : "http://hl7.org.au/fhir/StructureDefinition/closing-the-gap-registration",
    "valueBoolean" : true
  }],
  "identifier" : [{
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "MC",
        "display" : "Patient's Medicare Number"
      }],
      "text" : "Medicare Number"
    },
    "system" : "http://ns.electronichealth.net.au/id/medicare-number",
    "value" : "1234567892",
    "period" : {
      "end" : "2019-05"
    }
  }],
  "name" : [{
    "family" : "Grant",
    "given" : ["Sally"]
  }],
  "telecom" : [{
    "system" : "email",
    "value" : "sgrant@amail.example.com"
  }],
  "gender" : "female",
  "address" : [{
    "line" : ["999 Astor Terrace"],
    "city" : "Spring Hill",
    "state" : "QLD",
    "postalCode" : "4000",
    "country" : "Australia"
  }]
}

```
