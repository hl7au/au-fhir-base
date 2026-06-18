# Location - a hospital location with managing organisation of example0 - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **Location - a hospital location with managing organisation of example0**

## Example Location: Location - a hospital location with managing organisation of example0

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

Profile: [AU Base Location](StructureDefinition-au-location.md)

**status**: Active

**name**: Downunder Hospital Blacktown

**telecom**: ph: 0255504444(Work)

**address**: 3 McGregor Street Blacktown NSW 2148 Australia (work)

**managingOrganization**: [Organization Downunder Hospital](Organization-example0.md)



## Resource Content

```json
{
  "resourceType" : "Location",
  "id" : "example0",
  "meta" : {
    "profile" : ["http://hl7.org.au/fhir/StructureDefinition/au-location"]
  },
  "status" : "active",
  "name" : "Downunder Hospital Blacktown",
  "telecom" : [{
    "system" : "phone",
    "value" : "0255504444",
    "use" : "work"
  }],
  "address" : {
    "use" : "work",
    "line" : ["3 McGregor Street"],
    "city" : "Blacktown",
    "state" : "NSW",
    "postalCode" : "2148",
    "country" : "Australia"
  },
  "managingOrganization" : {
    "reference" : "Organization/example0"
  }
}

```
