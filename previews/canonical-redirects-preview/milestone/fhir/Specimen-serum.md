# Specimen - Serum sample - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **Specimen - Serum sample**

## Example Specimen: Specimen - Serum sample

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

Profile: [AU Base Specimen](StructureDefinition-au-specimen.md)

**accessionIdentifier**: `https://example.com/labs/accession-ids`/1978881817

**type**: Serum specimen

**subject**: [Stella Franklin (official) Female, DoB: 1985-10-14 ( IHI: Austalian Healthcare Identifier - Individual#8003608833357361)](Patient-example0.md)

### Collections

| | | |
| :--- | :--- | :--- |
| - | **Collector** | **Collected[x]** |
| * | [Practitioner Helen Mayo ](Practitioner-example0.md) | 2019-09-25 08:20:00+0000 |

### Containers

| | |
| :--- | :--- |
| - | **Type** |
| * | Serum Separator Tube |



## Resource Content

```json
{
  "resourceType" : "Specimen",
  "id" : "serum",
  "meta" : {
    "profile" : ["http://hl7.org.au/fhir/StructureDefinition/au-specimen"]
  },
  "accessionIdentifier" : {
    "system" : "https://example.com/labs/accession-ids",
    "value" : "1978881817"
  },
  "type" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "119364003",
      "display" : "Serum specimen"
    }]
  },
  "subject" : {
    "reference" : "Patient/example0"
  },
  "collection" : {
    "collector" : {
      "reference" : "Practitioner/example0"
    },
    "collectedDateTime" : "2019-09-25T08:20:00Z"
  },
  "container" : [{
    "type" : {
      "coding" : [{
        "system" : "https://example.com/labs",
        "code" : "SST",
        "display" : "Serum Separator Tube"
      }]
    }
  }]
}

```
