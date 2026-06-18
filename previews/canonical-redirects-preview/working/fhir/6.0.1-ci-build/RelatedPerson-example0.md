# RelatedPerson - as attester party - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **RelatedPerson - as attester party**

## Example RelatedPerson: RelatedPerson - as attester party

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

Profile: [AU Base RelatedPerson](StructureDefinition-au-relatedperson.md)

**identifier**: Medical record number/767767765FRD

**active**: true

**patient**: [Stella Franklin (official) Female, DoB: 1985-10-14 ( IHI: Austalian Healthcare Identifier - Individual#8003608833357361)](Patient-example0.md)

**relationship**: Next-of-Kin

**name**: Benedicte du Marche 

**telecom**: [+33 (237) 998327](tel:+33(237)998327)

**gender**: Female

**address**: 43, Place du Marche Sainte Catherine Paris 75004 FRA 

### Photos

| | | |
| :--- | :--- | :--- |
| - | **ContentType** | **Url** |
| * | image/jpeg | Binary/f016 |



## Resource Content

```json
{
  "resourceType" : "RelatedPerson",
  "id" : "example0",
  "meta" : {
    "profile" : ["http://hl7.org.au/fhir/StructureDefinition/au-relatedperson"]
  },
  "identifier" : [{
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "MR"
      }]
    },
    "system" : "http://ns.electronichealth.net.au/id/hpio-scoped/medicalrecord/1.0/8003621566684455",
    "value" : "767767765FRD",
    "assigner" : {
      "reference" : "Organization/example0",
      "display" : "Downunder Hospital"
    }
  }],
  "active" : true,
  "patient" : {
    "reference" : "Patient/example0"
  },
  "relationship" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v2-0131",
      "code" : "N"
    },
    {
      "system" : "http://terminology.hl7.org/CodeSystem/v3-RoleCode",
      "code" : "WIFE"
    }]
  }],
  "name" : [{
    "family" : "du Marche",
    "_family" : {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/humanname-own-prefix",
        "valueString" : "VV"
      }]
    },
    "given" : ["Benedicte"]
  }],
  "telecom" : [{
    "system" : "phone",
    "value" : "+33 (237) 998327"
  }],
  "gender" : "female",
  "address" : [{
    "line" : ["43, Place du Marche Sainte Catherine"],
    "city" : "Paris",
    "postalCode" : "75004",
    "country" : "FRA"
  }],
  "photo" : [{
    "contentType" : "image/jpeg",
    "url" : "Binary/f016"
  }]
}

```
