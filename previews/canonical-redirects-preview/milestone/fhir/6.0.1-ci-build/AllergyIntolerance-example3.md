# AllergyIntolerance - no known allergy - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **AllergyIntolerance - no known allergy**

## Example AllergyIntolerance: AllergyIntolerance - no known allergy

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

Profile: [AU Base AllergyIntolerance](StructureDefinition-au-allergyintolerance.md)

**clinicalStatus**: Active

**verificationStatus**: Confirmed

**code**: No known allergy

**patient**: [John Smith](Patient-example3.md)

**recordedDate**: 2010-06-11

**asserter**: [Helen Mayo](Practitioner-example0.md)



## Resource Content

```json
{
  "resourceType" : "AllergyIntolerance",
  "id" : "example3",
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
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "716186003",
      "display" : "No known allergy"
    }]
  },
  "patient" : {
    "reference" : "Patient/example3",
    "display" : "John Smith"
  },
  "recordedDate" : "2010-06-11",
  "asserter" : {
    "reference" : "Practitioner/example0",
    "display" : "Helen Mayo"
  }
}

```
