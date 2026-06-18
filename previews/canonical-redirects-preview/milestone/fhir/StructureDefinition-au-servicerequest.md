# AU Base ServiceRequest - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **AU Base ServiceRequest**

## Resource Profile: AU Base ServiceRequest 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://hl7.org.au/fhir/StructureDefinition/au-servicerequest | *Version*:6.0.1-ci-build | |
| * Standards status: *[Trial-use](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](generalguidance.md#maturity-levels): 1 | *Computable Name*:AUBaseServiceRequest |
| **Copyright/Legal**: HL7 Australia© 2018+; Licensed Under Creative Commons No Rights Reserved. | | |

 
This profile defines a service request structure that localises core concepts, including terminology, for use in an Australian context. The purpose of this profile is to provide national level agreement on core localised concepts. This profile does not force conformance to core localised concepts. It enables implementers and modellers to make their own rules, i.e. [profiling](http://hl7.org/fhir/profiling.html), about how to support these concepts for specific implementation needs. 

### Usage Notes

**Profile specific implementation guidance:**

* The [procedure-targetBodyStructure](http://hl7.org/fhir/R4/extension-procedure-targetbodystructure.html) extension may be suitable for use where 
* body site is not implicit in the code found in `ServiceRequest.code` and
* body site information is to be handled as a separate resource (e.g. to identify and track separately) instead of an inline coded element in `ServiceRequest.bodySite`.
 
* See each Identifier profile page for guidance related to that identifier type.
* This profile supports the sex, gender, and related concept of Sex Parameter for Clinical Use: 
* When exchanging concepts of sex or gender, refer to the guidance in [Sex and Gender](sexgender.md) and the [Gender Harmony Implementation Guide](http://hl7.org/xprod/ig/uv/gender-harmony/).
 
* See the [Representing Body Site, Which May Include Laterality](generalguidance.md#representing-body-site-which-may-include-laterality) section for guidance on representing a relevant body site and associated laterality.
* Copy-to recipients for results associated with a ServiceRequest can be represented using the [CommunicationRequest](https://www.hl7.org/fhir/r4/communicationrequest.html) resource type. 
* `CommunicationRequest.about` references the specific ServiceRequest to copy results for.
* `CommunicationRequest.recipient` references copy-to recipient details.
 

**Usages:**

* Refer to this Profile: [AU Base DiagnosticReport](StructureDefinition-au-diagnosticreport.md), [AU Base Diagnostic Imaging Report](StructureDefinition-au-imagingreport.md) and [AU Base Pathology Report](StructureDefinition-au-pathologyreport.md)
* Examples for this Profile: [ServiceRequest/hepatitis-b-antibody](ServiceRequest-hepatitis-b-antibody.md) and [ServiceRequest/path-example0](ServiceRequest-path-example0.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.au.base|current/StructureDefinition/StructureDefinition-au-servicerequest.json)

**Changes since version 6.0.0:**

* No changes

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-au-servicerequest.csv), [Excel](StructureDefinition-au-servicerequest.xlsx), [Schematron](StructureDefinition-au-servicerequest.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "au-servicerequest",
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
  "url" : "http://hl7.org.au/fhir/StructureDefinition/au-servicerequest",
  "version" : "6.0.1-ci-build",
  "name" : "AUBaseServiceRequest",
  "title" : "AU Base ServiceRequest",
  "status" : "active",
  "date" : "2026-06-18T23:22:00+00:00",
  "publisher" : "HL7 Australia",
  "contact" : [{
    "name" : "HL7 Australia FHIR Working Group",
    "telecom" : [{
      "system" : "url",
      "value" : "https://confluence.hl7.org/display/HAFWG",
      "use" : "work"
    }]
  }],
  "description" : "This profile defines a service request structure that localises core concepts, including terminology, for use in an Australian context. The purpose of this profile is to provide national level agreement on core localised concepts. This profile does not force conformance to core localised concepts. It enables implementers and modellers to make their own rules, i.e. [profiling](http://hl7.org/fhir/profiling.html), about how to support these concepts for specific implementation needs.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "AU"
    }]
  }],
  "copyright" : "HL7 Australia© 2018+; Licensed Under Creative Commons No Rights Reserved.",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "quick",
    "uri" : "http://siframework.org/cqf",
    "name" : "Quality Improvement and Clinical Knowledge (QUICK)"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "ServiceRequest",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/ServiceRequest",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "ServiceRequest",
      "path" : "ServiceRequest",
      "short" : "A service request in an Australian healthcare context",
      "definition" : "A record of a request for service such as diagnostic investigations, treatments, or operations to be performed."
    },
    {
      "id" : "ServiceRequest.extension",
      "path" : "ServiceRequest.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "rules" : "open"
      }
    },
    {
      "id" : "ServiceRequest.extension:sexParameterForClinicalUse",
      "path" : "ServiceRequest.extension",
      "sliceName" : "sexParameterForClinicalUse",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/patient-sexParameterForClinicalUse"]
      }]
    },
    {
      "id" : "ServiceRequest.extension:targetBodyStructure",
      "path" : "ServiceRequest.extension",
      "sliceName" : "targetBodyStructure",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/procedure-targetBodyStructure"]
      }]
    },
    {
      "id" : "ServiceRequest.identifier",
      "path" : "ServiceRequest.identifier",
      "short" : "Identifiers assigned to this order",
      "definition" : "Identifiers assigned to this order instance by the orderer and/or the receiver and/or order fulfiller.",
      "type" : [{
        "code" : "Identifier",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/Identifier",
        "http://hl7.org.au/fhir/StructureDefinition/au-localorderidentifier"]
      }]
    },
    {
      "id" : "ServiceRequest.requisition",
      "path" : "ServiceRequest.requisition",
      "type" : [{
        "code" : "Identifier",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/Identifier",
        "http://hl7.org.au/fhir/StructureDefinition/au-localorderidentifier"]
      }]
    },
    {
      "id" : "ServiceRequest.code",
      "path" : "ServiceRequest.code",
      "binding" : {
        "strength" : "example",
        "valueSet" : "https://healthterminologies.gov.au/fhir/ValueSet/procedure-1"
      }
    },
    {
      "id" : "ServiceRequest.reasonCode",
      "path" : "ServiceRequest.reasonCode",
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "https://healthterminologies.gov.au/fhir/ValueSet/reason-for-request-1"
      }
    },
    {
      "id" : "ServiceRequest.bodySite",
      "path" : "ServiceRequest.bodySite",
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "https://healthterminologies.gov.au/fhir/ValueSet/body-site-1"
      }
    }]
  }
}

```
