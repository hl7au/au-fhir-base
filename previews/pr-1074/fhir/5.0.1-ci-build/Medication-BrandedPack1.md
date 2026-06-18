# Medication - branded pack - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **Medication - branded pack**

## Example Medication: Medication - branded pack

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

Profile: [AU Base Medication](StructureDefinition-au-medication.md)

**code**: Nexium Hp7 (14 x Nexium tablets, 28 x Amoxil capsules, 14 x Klacid tablets), 1 pack

**manufacturer**: AstraZeneca Pty Ltd (Identifier: `http://pbs.gov.au/identifier/manufacturer`/AP (use: official, ))

**form**: Tablet



## Resource Content

```json
{
  "resourceType" : "Medication",
  "id" : "BrandedPack1",
  "meta" : {
    "profile" : ["http://hl7.org.au/fhir/StructureDefinition/au-medication"]
  },
  "code" : {
    "coding" : [{
      "extension" : [{
        "url" : "http://hl7.org.au/fhir/StructureDefinition/medication-type",
        "valueCoding" : {
          "system" : "http://terminology.hl7.org.au/CodeSystem/medication-type",
          "code" : "BPG",
          "display" : "Branded package with no container"
        }
      }],
      "system" : "http://snomed.info/sct",
      "code" : "14207011000036103",
      "display" : "Nexium Hp7 (14 x Nexium tablets, 28 x Amoxil capsules, 14 x Klacid tablets), 1 pack"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org.au/fhir/StructureDefinition/medication-type",
        "valueCoding" : {
          "system" : "http://terminology.hl7.org.au/CodeSystem/medication-type",
          "code" : "UPG",
          "display" : "Unbranded package with no container"
        }
      }],
      "system" : "http://snomed.info/sct",
      "code" : "28214011000036106",
      "display" : "Esomeprazole 20 mg enteric tablet [14] (&) amoxicillin 500 mg capsule [28] (&) clarithromycin 500 mg tablet [14], 1 pack"
    }],
    "text" : "Nexium Hp7 (14 x Nexium tablets, 28 x Amoxil capsules, 14 x Klacid tablets), 1 pack"
  },
  "manufacturer" : {
    "identifier" : {
      "use" : "official",
      "system" : "http://pbs.gov.au/identifier/manufacturer",
      "value" : "AP"
    },
    "display" : "AstraZeneca Pty Ltd"
  },
  "form" : {
    "text" : "Tablet"
  }
}

```
