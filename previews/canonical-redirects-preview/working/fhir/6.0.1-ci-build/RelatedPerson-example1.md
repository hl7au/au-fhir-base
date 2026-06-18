# RelatedPerson - as a carer for an older patient - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **RelatedPerson - as a carer for an older patient**

## Example RelatedPerson: RelatedPerson - as a carer for an older patient

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

Profile: [AU Base RelatedPerson](StructureDefinition-au-relatedperson.md)

**active**: true

**patient**: [Harry Dan Male, DoB: 1939-08-25 ( IHI: Austalian Healthcare Identifier - Individual#8003608833357361)](Patient-example1.md)

**relationship**: Caregiver

**name**: Mary Smith 

**telecom**: [msmith@amail.example.com](mailto:msmith@amail.example.com), ph: (02)55501234(Home)

**gender**: Female

**address**: 255 Gadsby Street Blacktown NSW 2148 AU 



## Resource Content

```json
{
  "resourceType" : "RelatedPerson",
  "id" : "example1",
  "meta" : {
    "profile" : ["http://hl7.org.au/fhir/StructureDefinition/au-relatedperson"]
  },
  "active" : true,
  "patient" : {
    "reference" : "Patient/example1"
  },
  "relationship" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "133932002",
      "display" : "Carer"
    }],
    "text" : "Caregiver"
  }],
  "name" : [{
    "family" : "Smith",
    "given" : ["Mary"]
  }],
  "telecom" : [{
    "system" : "email",
    "value" : "msmith@amail.example.com",
    "use" : "home"
  },
  {
    "system" : "phone",
    "value" : "(02)55501234",
    "use" : "home"
  }],
  "gender" : "female",
  "address" : [{
    "line" : ["255 Gadsby Street"],
    "city" : "Blacktown",
    "state" : "NSW",
    "postalCode" : "2148",
    "country" : "AU"
  }]
}

```
