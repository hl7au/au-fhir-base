# AU Base Endpoint - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **AU Base Endpoint**

## Resource Profile: AU Base Endpoint 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://hl7.org.au/fhir/StructureDefinition/au-endpoint | *Version*:6.0.1-ci-build | |
| * Standards status: *[Trial-use](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](generalguidance.md#maturity-levels): 0 | *Computable Name*:AUBaseEndpoint |
| **Copyright/Legal**: HL7 Australia© 2018+; Licensed Under Creative Commons No Rights Reserved. | | |

 
This profile defines an endpoint structure that localises core concepts, including identifiers and terminology, for use in an Australian context. The purpose of this profile is to provide national level agreement on core localised concepts. This profile does not force conformance to core localised concepts. It enables implementers and modellers to make their own rules, i.e. [profiling](http://hl7.org/fhir/profiling.html), about how to support these concepts for specific implementation needs. 

### Usage Notes

**Profile specific implementation guidance:**

* To represent the environment type of an endpoint (e.g. production, staging, test), use the cross-version extension [extension-Endpoint.environmentType](https://hl7.org/fhir/uv/xver-r5.r4/0.1.0/StructureDefinition-ext-R5-Endpoint.environmentType.html) from the [FHIR Cross-Version Extensions IG (xver-r5.r4)](https://hl7.org/fhir/uv/xver-r5.r4/0.1.0/index.html). This extension backports the R5 `Endpoint.environmentType` element for use in R4.

**Potentially useful extensions:**

* Endpoint: [Receiving Facility](StructureDefinition-au-receivingfacility.md)
* Endpoint: [Receiving Application](StructureDefinition-au-receivingapplication.md)
* Endpoint: [Encryption Certificate PEM X509](StructureDefinition-encryption-certificate-pem-x509.md)

**Usages:**

* Examples for this Profile: [Telstra Health Secure Messaging Endpoint](Endpoint-example0.md) and [Downunder Hospital FHIR API](Endpoint-example1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.au.base|current/StructureDefinition/StructureDefinition-au-endpoint.json)

**Changes since version 6.0.0:**

* New Content

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-au-endpoint.csv), [Excel](StructureDefinition-au-endpoint.xlsx), [Schematron](StructureDefinition-au-endpoint.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "au-endpoint",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm",
    "valueInteger" : 0
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
  "url" : "http://hl7.org.au/fhir/StructureDefinition/au-endpoint",
  "version" : "6.0.1-ci-build",
  "name" : "AUBaseEndpoint",
  "title" : "AU Base Endpoint",
  "status" : "active",
  "date" : "2026-06-19T03:25:57+00:00",
  "publisher" : "HL7 Australia",
  "contact" : [{
    "name" : "HL7 Australia FHIR Working Group",
    "telecom" : [{
      "system" : "url",
      "value" : "https://confluence.hl7.org/display/HAFWG",
      "use" : "work"
    }]
  }],
  "description" : "This profile defines an endpoint structure that localises core concepts, including identifiers and terminology, for use in an Australian context. The purpose of this profile is to provide national level agreement on core localised concepts. This profile does not force conformance to core localised concepts. It enables implementers and modellers to make their own rules, i.e. [profiling](http://hl7.org/fhir/profiling.html), about how to support these concepts for specific implementation needs.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "AU"
    }]
  }],
  "copyright" : "HL7 Australia© 2018+; Licensed Under Creative Commons No Rights Reserved.",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Endpoint",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Endpoint|4.0.1",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Endpoint",
      "path" : "Endpoint",
      "short" : "An endpoint in an Australian healthcare context"
    },
    {
      "id" : "Endpoint.extension:environmentType",
      "path" : "Endpoint.extension",
      "sliceName" : "environmentType",
      "comment" : "The type of environment(s) exposed at this endpoint",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/5.0/StructureDefinition/extension-Endpoint.environmentType"]
      }]
    }]
  }
}

```
