# ​Composition - with some sections having a different section author to the composition author - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **​Composition - with some sections having a different section author to the composition author**

## Example Composition: ​Composition - with some sections having a different section author to the composition author

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

Last updated: 2013-05-28 22:12:21+0000

Profile: [AU Base Composition](StructureDefinition-au-composition.md)

**status**: Final

**type**: Discharge Summarization Note

**date**: 2018-06-03 12:30:02+0000

**author**: [Doctor Mayo](Practitioner-example0.md)

**title**: Discharge Summary



## Resource Content

```json
{
  "resourceType" : "Composition",
  "id" : "different-authors",
  "meta" : {
    "lastUpdated" : "2013-05-28T22:12:21Z",
    "profile" : ["http://hl7.org.au/fhir/StructureDefinition/au-composition"]
  },
  "status" : "final",
  "type" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "18842-5"
    }],
    "text" : "Discharge Summarization Note"
  },
  "subject" : {
    "reference" : "Patient/example0",
    "display" : "Franklin"
  },
  "date" : "2018-06-03T12:30:02Z",
  "author" : [{
    "reference" : "Practitioner/example0",
    "display" : "Doctor Mayo"
  }],
  "title" : "Discharge Summary",
  "section" : [{
    "title" : "Reason for admission",
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "29299-5",
        "display" : "Reason for visit Narrative"
      }]
    },
    "author" : [{
      "reference" : "Practitioner/example0",
      "display" : "Doctor Mayo"
    }],
    "text" : {
      "status" : "extensions",
      "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\">\n                <p> This section content has been authored by practitioner:<a href=\"Practitioner-example0.html\">Dr. Mayo</a>\n                </p>\n            </div>"
    }
  },
  {
    "title" : "Medications on Discharge",
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "10183-2",
        "display" : "Hospital discharge medications Narrative"
      }]
    },
    "author" : [{
      "reference" : "PractitionerRole/example0",
      "display" : "Cardiologist"
    }],
    "text" : {
      "status" : "extensions",
      "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\">\n                <p> This section content has been authored by practitionerRole:<a href=\"PractitionerRole-example0.html\">Cardiologist</a>\n                </p>\n            </div>"
    }
  }]
}

```
