# List - Medicine list authored by a related person - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **List - Medicine list authored by a related person**

## Example List: List - Medicine list authored by a related person

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

Profile: [AU Medicine List](StructureDefinition-au-medlist.md)

## Current medicine list

| | | | |
| :--- | :--- | :--- | :--- |
| Date: 2022-01-08 | Mode: Snapshot List | Status: Current | Code: History of Medication use Narrative |
| Subject:[Suzanne Simmons Female, DoB: 2008-08-08 ( Medical record number)](Patient-example4.md) | | | |

* **Items**: Ventolin (salbutamol) inhaler CFC free (100 micrograms/dose); 200 dose when needed
* **Items**: Zyrtec (cetirizine) 10mg/tablet; dose 1 tablet/day in evening



## Resource Content

```json
{
  "resourceType" : "List",
  "id" : "example3",
  "meta" : {
    "profile" : ["http://hl7.org.au/fhir/StructureDefinition/au-medlist"]
  },
  "extension" : [{
    "url" : "http://hl7.org.au/fhir/StructureDefinition/author-related-person",
    "valueReference" : {
      "reference" : "RelatedPerson/example2"
    }
  }],
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:uuid:b3036640-07e2-40bf-b4cb-8a2970366848"
  }],
  "status" : "current",
  "mode" : "snapshot",
  "title" : "Current medicine list",
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "10160-0",
      "display" : "History of Medication use Narrative"
    }]
  },
  "subject" : {
    "reference" : "Patient/example4"
  },
  "date" : "2022-01-08",
  "entry" : [{
    "item" : {
      "display" : "Ventolin (salbutamol) inhaler CFC free (100 micrograms/dose); 200 dose when needed"
    }
  },
  {
    "item" : {
      "display" : "Zyrtec (cetirizine) 10mg/tablet; dose 1 tablet/day in evening"
    }
  }]
}

```
