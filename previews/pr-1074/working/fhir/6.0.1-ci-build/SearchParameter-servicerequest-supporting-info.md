# ServiceRequestSupportingInfo - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **ServiceRequestSupportingInfo**

## SearchParameter: ServiceRequestSupportingInfo 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://hl7.org.au/fhir/SearchParameter/servicerequest-supporting-info | *Version*:6.0.1-ci-build | |
| * Standards status: *[Trial-use](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](generalguidance.md#maturity-levels): 1 | *Computable Name*:ServiceRequestSupportingInfo |
| **Copyright/Legal**: HL7 Australia© 2018+; Licensed Under Creative Commons No Rights Reserved. | | |

 
This search parameter returns service requests that reference the specified resource in ServiceRequest.supportingInfo. 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "servicerequest-supporting-info",
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
  "url" : "http://hl7.org.au/fhir/SearchParameter/servicerequest-supporting-info",
  "version" : "6.0.1-ci-build",
  "name" : "ServiceRequestSupportingInfo",
  "status" : "active",
  "date" : "2026-06-18T16:30:51+00:00",
  "publisher" : "HL7 Australia",
  "contact" : [{
    "name" : "HL7 Australia FHIR Working Group",
    "telecom" : [{
      "system" : "url",
      "value" : "https://confluence.hl7.org/display/HAFWG",
      "use" : "work"
    }]
  }],
  "description" : "This search parameter returns service requests that reference the specified resource in ServiceRequest.supportingInfo.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "AU"
    }]
  }],
  "code" : "supporting-info",
  "base" : ["ServiceRequest"],
  "type" : "reference",
  "expression" : "ServiceRequest.supportingInfo",
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
