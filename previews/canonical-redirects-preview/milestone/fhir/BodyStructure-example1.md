# BodyStructure - Blister of right foot - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **BodyStructure - Blister of right foot**

## Example BodyStructure: BodyStructure - Blister of right foot

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

Profile: [AU Base BodyStructure](StructureDefinition-au-bodystructure.md)

**morphology**: Blister

**location**: Structure of right foot

**patient**: [Stella Franklin (official) Female, DoB: 1985-10-14 ( IHI: Austalian Healthcare Identifier - Individual#8003608833357361)](Patient-example0.md)



## Resource Content

```json
{
  "resourceType" : "BodyStructure",
  "id" : "example1",
  "meta" : {
    "profile" : ["http://hl7.org.au/fhir/StructureDefinition/au-bodystructure"]
  },
  "morphology" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "339008",
      "display" : "Blister"
    }]
  },
  "location" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "7769000",
      "display" : "Structure of right foot"
    }]
  },
  "patient" : {
    "reference" : "Patient/example0"
  }
}

```
