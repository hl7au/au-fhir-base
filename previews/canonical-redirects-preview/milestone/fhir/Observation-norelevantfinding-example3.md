# Observation - of no relevant finding of patient taking any medications - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **Observation - of no relevant finding of patient taking any medications**

## Example Observation: Observation - of no relevant finding of patient taking any medications

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

Profile: [AU Assertion of No Relevant Finding](StructureDefinition-au-norelevantfinding.md)

**status**: Final

**code**: Assertion

**subject**: [Stella Franklin (official) Female, DoB: 1985-10-14 ( IHI: Austalian Healthcare Identifier - Individual#8003608833357361)](Patient-example0.md)

**effective**: 2018-10-23

**performer**: [Practitioner Francis Fernando ](Practitioner-example3.md)

**value**: Patient not taking any medications



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "norelevantfinding-example3",
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
  "effectiveDateTime" : "2018-10-23",
  "performer" : [{
    "reference" : "Practitioner/example3"
  }],
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "1234391000168107",
      "display" : "No known current medicines"
    }],
    "text" : "Patient not taking any medications"
  }
}

```
