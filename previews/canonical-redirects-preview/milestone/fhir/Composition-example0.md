# Composition - Patient’s preference upon death - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **Composition - Patient’s preference upon death**

## Example Composition: Composition - Patient’s preference upon death

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

Profile: [AU Base Composition](StructureDefinition-au-composition.md)

**status**: Final

**type**: Patient Goals, preferences, and priorities upon death

**date**: 2018-03-04 12:30:02+0000

**author**: [Benedicte du Marche](RelatedPerson-example0.md)

**title**: Stella's Final Wishes

### Attesters

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Mode** | **Time** | **Party** |
| * | Personal | 2018-03-04 12:30:02+0000 | [RelatedPerson Benedicte du Marche ](RelatedPerson-example0.md) |



## Resource Content

```json
{
  "resourceType" : "Composition",
  "id" : "example0",
  "meta" : {
    "profile" : ["http://hl7.org.au/fhir/StructureDefinition/au-composition"]
  },
  "status" : "final",
  "type" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "81337-8",
      "display" : "Patient Goals, preferences, and priorities upon death"
    }]
  },
  "subject" : {
    "reference" : "Patient/example0",
    "display" : "Stella Franklin"
  },
  "date" : "2018-03-04T12:30:02Z",
  "author" : [{
    "reference" : "RelatedPerson/example0",
    "display" : "Benedicte du Marche"
  }],
  "title" : "Stella's Final Wishes",
  "attester" : [{
    "mode" : "personal",
    "time" : "2018-03-04T12:30:02Z",
    "party" : {
      "reference" : "RelatedPerson/example0"
    }
  }],
  "section" : [{
    "title" : "Patient goals and priorities upon death",
    "text" : {
      "status" : "additional",
      "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\">\n        <p>\n          <b>Additional Narrative</b>\n        </p>\n        <p><b>Goals, Preferences and Priorities</b>: The washing of the body should be carried out by someone of the same sex.</p>        \n      </div>"
    }
  }]
}

```
