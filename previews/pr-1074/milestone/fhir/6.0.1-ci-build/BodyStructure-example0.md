# BodyStructure - Bone tissue of left shoulder - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **BodyStructure - Bone tissue of left shoulder**

## Example BodyStructure: BodyStructure - Bone tissue of left shoulder

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

Profile: [AU Base BodyStructure](StructureDefinition-au-bodystructure.md)

**active**: true

**location**: Bone tissue of shoulder region

**locationQualifier**: Left

**patient**: [Stella Franklin (official) Female, DoB: 1985-10-14 ( IHI: Austalian Healthcare Identifier - Individual#8003608833357361)](Patient-example0.md)



## Resource Content

```json
{
  "resourceType" : "BodyStructure",
  "id" : "example0",
  "meta" : {
    "profile" : ["http://hl7.org.au/fhir/StructureDefinition/au-bodystructure"]
  },
  "active" : true,
  "location" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "426328003",
      "display" : "Bone tissue of shoulder region"
    }]
  },
  "locationQualifier" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "7771000",
      "display" : "Left"
    }],
    "text" : "Left"
  }],
  "patient" : {
    "reference" : "Patient/example0"
  }
}

```
