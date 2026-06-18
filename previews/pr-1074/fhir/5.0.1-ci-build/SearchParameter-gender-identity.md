# GenderIdentity - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **GenderIdentity**

## SearchParameter: GenderIdentity 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://hl7.org.au/fhir/SearchParameter/gender-identity | *Version*:6.0.1-ci-build | |
| * Standards status: *[Trial-use](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](generalguidance.md#maturity-levels): 1 | *Computable Name*:GenderIdentity |
| **Copyright/Legal**: HL7 Australia© 2018+; Licensed Under Creative Commons No Rights Reserved. | | |

 
This search parameter returns resources with the Individual Gender Identity extension matching the specified code. 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "gender-identity",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm",
    "valueInteger" : 1
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status",
    "valueCode" : "trial-use",
    "_valueCode" : {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-conformance-derivedFrom",
        "valueCanonical" : "http://hl7.org.au/fhir/ImplementationGuide/hl7.fhir.au.base"
      }]
    }
  }],
  "url" : "http://hl7.org.au/fhir/SearchParameter/gender-identity",
  "version" : "6.0.1-ci-build",
  "name" : "GenderIdentity",
  "status" : "active",
  "date" : "2026-06-18T15:06:23+00:00",
  "publisher" : "HL7 Australia",
  "contact" : [{
    "name" : "HL7 Australia FHIR Working Group",
    "telecom" : [{
      "system" : "url",
      "value" : "https://confluence.hl7.org/display/HAFWG",
      "use" : "work"
    }]
  }],
  "description" : "This search parameter returns resources with the Individual Gender Identity extension matching the specified code.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "AU"
    }]
  }],
  "code" : "gender-identity",
  "base" : ["Patient",
  "RelatedPerson",
  "Person",
  "Practitioner",
  "PractitionerRole"],
  "type" : "token",
  "expression" : "Patient.extension('http://hl7.org/fhir/StructureDefinition/individual-genderIdentity').extension('value').value | RelatedPerson.extension('http://hl7.org/fhir/StructureDefinition/individual-genderIdentity').extension('value').value | Practitioner.extension('http://hl7.org/fhir/StructureDefinition/individual-genderIdentity').extension('value').value | Person.extension('http://hl7.org/fhir/StructureDefinition/individual-genderIdentity').extension('value').value | PractitionerRole.extension('http://hl7.org/fhir/StructureDefinition/individual-genderIdentity').extension('value').value",
  "multipleOr" : true,
  "_multipleOr" : {
    "extension" : [{
      "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
      "valueCode" : "MAY"
    }]
  },
  "multipleAnd" : true,
  "_multipleAnd" : {
    "extension" : [{
      "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
      "valueCode" : "MAY"
    }]
  }
}

```
