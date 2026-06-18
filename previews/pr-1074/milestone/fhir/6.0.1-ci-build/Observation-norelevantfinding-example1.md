# Observation - of no relevant finding of immunisations - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **Observation - of no relevant finding of immunisations**

## Example Observation: Observation - of no relevant finding of immunisations

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

Profile: [AU Assertion of No Relevant Finding](StructureDefinition-au-norelevantfinding.md)

**status**: Final

**code**: Assertion

**subject**: [Stella Franklin (official) Female, DoB: 1985-10-14 ( IHI: Austalian Healthcare Identifier - Individual#8003608833357361)](Patient-example0.md)

**effective**: 2016-03-28

**performer**: [PractitionerRole General practitioner](PractitionerRole-example3.md)

**value**: No H/O: vaccination



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "norelevantfinding-example1",
  "meta" : {
    "profile" : ["http://hl7.org.au/fhir/StructureDefinition/au-norelevantfinding"]
  },
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
      "code" : "ASSERTION",
      "display" : "Assertion"
    }]
  },
  "subject" : {
    "reference" : "Patient/example0"
  },
  "effectiveDateTime" : "2016-03-28",
  "performer" : [{
    "reference" : "PractitionerRole/example3"
  }],
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "1234401000168109",
      "display" : "No H/O: vaccination"
    }]
  }
}

```
