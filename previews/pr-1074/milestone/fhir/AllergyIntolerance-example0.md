# AllergyIntolerance - ibuprofen allergy - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **AllergyIntolerance - ibuprofen allergy**

## Example AllergyIntolerance: AllergyIntolerance - ibuprofen allergy

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

Profile: [AU Base AllergyIntolerance](StructureDefinition-au-allergyintolerance.md)

**clinicalStatus**: Active

**verificationStatus**: Confirmed

**type**: Allergy

**code**: Ibuprofen

**patient**: [Harry DAN](Patient-example1.md)

**onset**: 2016-03-07

**recorder**: [Dr Helen Mayo](Practitioner-example0.md)

### Reactions

| | |
| :--- | :--- |
| - | **Manifestation** |
| * | Urticaria |



## Resource Content

```json
{
  "resourceType" : "AllergyIntolerance",
  "id" : "example0",
  "meta" : {
    "profile" : ["http://hl7.org.au/fhir/StructureDefinition/au-allergyintolerance"]
  },
  "clinicalStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical",
      "code" : "active",
      "display" : "Active"
    }]
  },
  "verificationStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/allergyintolerance-verification",
      "code" : "confirmed",
      "display" : "Confirmed"
    }]
  },
  "type" : "allergy",
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "387207008",
      "display" : "Ibuprofen"
    }]
  },
  "patient" : {
    "reference" : "Patient/example1",
    "display" : "Harry DAN"
  },
  "onsetDateTime" : "2016-03-07",
  "recorder" : {
    "reference" : "Practitioner/example0",
    "display" : "Dr Helen Mayo"
  },
  "reaction" : [{
    "manifestation" : [{
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "126485001",
        "display" : "Urticaria"
      }]
    }]
  }]
}

```
