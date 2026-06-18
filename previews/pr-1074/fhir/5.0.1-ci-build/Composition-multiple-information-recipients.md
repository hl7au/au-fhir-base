# Composition - with multiple information recipients - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **Composition - with multiple information recipients**

## Example Composition: Composition - with multiple information recipients

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

Last updated: 2013-05-28 22:12:21+0000

Profile: [AU Base Composition](StructureDefinition-au-composition.md)

**Information Recipient**: [Franklin](Patient-example0.md)

**Information Recipient**: [Doctor Mayo](Practitioner-example0.md)

**Information Recipient**: [Downunder Hospital](Organization-example0.md)

**status**: Final

**type**: Discharge Summarization Note

**date**: 2018-06-03 12:30:02+0000

**author**: [Doctor Mayo](PractitionerRole-example0.md)

**title**: Discharge Summary



## Resource Content

```json
{
  "resourceType" : "Composition",
  "id" : "multiple-information-recipients",
  "meta" : {
    "lastUpdated" : "2013-05-28T22:12:21Z",
    "profile" : ["http://hl7.org.au/fhir/StructureDefinition/au-composition"]
  },
  "extension" : [{
    "url" : "http://hl7.org.au/fhir/StructureDefinition/information-recipient",
    "valueReference" : {
      "reference" : "Patient/example0",
      "display" : "Franklin"
    }
  },
  {
    "url" : "http://hl7.org.au/fhir/StructureDefinition/information-recipient",
    "valueReference" : {
      "reference" : "Practitioner/example0",
      "display" : "Doctor Mayo"
    }
  },
  {
    "url" : "http://hl7.org.au/fhir/StructureDefinition/information-recipient",
    "valueReference" : {
      "reference" : "Organization/example0",
      "display" : "Downunder Hospital"
    }
  }],
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
    "reference" : "PractitionerRole/example0",
    "display" : "Doctor Mayo"
  }],
  "title" : "Discharge Summary"
}

```
