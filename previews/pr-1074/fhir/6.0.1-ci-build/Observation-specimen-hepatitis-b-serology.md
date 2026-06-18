# Observation - Measurement of Hepatitis B surface antibody - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **Observation - Measurement of Hepatitis B surface antibody**

## Example Observation: Observation - Measurement of Hepatitis B surface antibody

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

Profile: [AU Base Pathology Result](StructureDefinition-au-pathologyresult.md)

**basedOn**: [ServiceRequest Hepatitis B surface antibody measurement](ServiceRequest-hepatitis-b-antibody.md)

**status**: Final

**category**: Laboratory, Serology

**code**: Hepatitis B surface Ab

**subject**: [Stella Franklin (official) Female, DoB: 1985-10-14 ( IHI: Austalian Healthcare Identifier - Individual#8003608833357361)](Patient-example0.md)

**effective**: 2019-09-25 08:20:00+0000

**performer**: [Organization ACME Pathology](Organization-example6.md)

**value**: >10 IU/L

**specimen**: [Specimen: accessionIdentifier = https://example.com/labs/accession-ids#1978881817; type = Serum specimen](Specimen-serum.md)

### ReferenceRanges

| | |
| :--- | :--- |
| - | **Low** |
| * | 10 IU/L |



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "specimen-hepatitis-b-serology",
  "meta" : {
    "profile" : ["http://hl7.org.au/fhir/StructureDefinition/au-pathologyresult"]
  },
  "basedOn" : [{
    "reference" : "ServiceRequest/hepatitis-b-antibody"
  }],
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
      "code" : "laboratory"
    }]
  },
  {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v2-0074",
      "code" : "SR",
      "display" : "Serology"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "16935-9"
    }],
    "text" : "Hepatitis B surface Ab"
  },
  "subject" : {
    "reference" : "Patient/example0"
  },
  "effectiveDateTime" : "2019-09-25T08:20:00Z",
  "performer" : [{
    "reference" : "Organization/example6"
  }],
  "valueQuantity" : {
    "value" : 10,
    "comparator" : ">",
    "unit" : "IU/L"
  },
  "specimen" : {
    "reference" : "Specimen/serum"
  },
  "referenceRange" : [{
    "low" : {
      "value" : 10,
      "unit" : "IU/L"
    }
  }]
}

```
