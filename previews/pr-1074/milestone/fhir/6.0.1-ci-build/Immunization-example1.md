# Immunization - Administration of a vaccine - record compliant with Australian Immunisation Register (AIR) - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **Immunization - Administration of a vaccine - record compliant with Australian Immunisation Register (AIR)**

## Example Immunization: Immunization - Administration of a vaccine - record compliant with Australian Immunisation Register (AIR)

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

Profile: [AU Base Immunization](StructureDefinition-au-immunization.md)

**status**: Completed

**vaccineCode**: Infanrix-Hep B

**patient**: [Sally GRANT](Patient-example2.md)

**occurrence**: 2018-02-27

**primarySource**: true



## Resource Content

```json
{
  "resourceType" : "Immunization",
  "id" : "example1",
  "meta" : {
    "profile" : ["http://hl7.org.au/fhir/StructureDefinition/au-immunization"]
  },
  "status" : "completed",
  "vaccineCode" : {
    "coding" : [{
      "system" : "https://www.humanservices.gov.au/organisations/health-professionals/enablers/air-vaccine-code-formats",
      "code" : "IFXB"
    }],
    "text" : "Infanrix-Hep B"
  },
  "patient" : {
    "reference" : "Patient/example2",
    "display" : "Sally GRANT"
  },
  "occurrenceDateTime" : "2018-02-27",
  "primarySource" : true
}

```
