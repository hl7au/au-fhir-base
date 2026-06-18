# Service Provision Conditions Australian Concepts - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **Service Provision Conditions Australian Concepts**

## CodeSystem: Service Provision Conditions Australian Concepts 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://terminology.hl7.org.au/CodeSystem/service-provision-conditions | *Version*:6.0.1-ci-build | |
| * Standards status: *[Trial-use](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](generalguidance.md#maturity-levels): 2 | *Computable Name*:ServiceProvisionConditionsAustralianConcepts |
| *Other Identifiers:*OID:2.16.840.1.113883.2.3.4.1.4.2 | | |
| **Copyright/Legal**: HL7 Australia© 2018+; Licensed Under Creative Commons No Rights Reserved. | | |

 
The Service Provision Conditions Australian Concepts code system defines concepts that identify the conditions under which a healthcare service is available/offered. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [ServiceProvisionConditionsAustralianConcepts](ValueSet-service-provision-conditions.md)

**Changes since version 6.0.0:**

* The list of codes defined by the code system has changed

* One or more text definitions/displays have changed



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "service-provision-conditions",
  "meta" : {
    "profile" : ["https://healthterminologies.gov.au/fhir/StructureDefinition/complete-code-system-4"]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm",
    "valueInteger" : 2
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
  "url" : "http://terminology.hl7.org.au/CodeSystem/service-provision-conditions",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.2.3.4.1.4.2"
  }],
  "version" : "6.0.1-ci-build",
  "name" : "ServiceProvisionConditionsAustralianConcepts",
  "title" : "Service Provision Conditions Australian Concepts",
  "status" : "active",
  "experimental" : false,
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
  "description" : "The Service Provision Conditions Australian Concepts code system defines concepts that identify the conditions under which a healthcare service is available/offered.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "AU"
    }]
  }],
  "copyright" : "HL7 Australia© 2018+; Licensed Under Creative Commons No Rights Reserved.",
  "caseSensitive" : true,
  "valueSet" : "http://terminology.hl7.org.au/ValueSet/service-provision-conditions",
  "compositional" : false,
  "versionNeeded" : false,
  "content" : "complete",
  "count" : 9,
  "property" : [{
    "code" : "status",
    "uri" : "http://hl7.org/fhir/concept-properties#status",
    "description" : "A property that indicates the status of the concept. One of active, experimental, deprecated, retired",
    "type" : "code"
  },
  {
    "code" : "deprecationDate",
    "uri" : "http://hl7.org/fhir/concept-properties#deprecationDate",
    "description" : "The date at which a concept was deprecated. Concepts that are deprecated but not inactive can still be used, but their use is discouraged",
    "type" : "dateTime"
  }],
  "concept" : [{
    "code" : "NFE",
    "display" : "No Fee",
    "definition" : "A free service where no payment or Medicare card is required."
  },
  {
    "code" : "NFM",
    "display" : "No Fee (means tested)",
    "definition" : "All or some of the services provided are offered free of charge, however the decision on the costs associated with the service or procedures offered will depend on a means test outcome."
  },
  {
    "code" : "BB",
    "display" : "Bulk Billing",
    "definition" : "No fee for eligible services, with a Medicare card presented."
  },
  {
    "code" : "FAP",
    "display" : "Fees Apply",
    "definition" : "Fees apply for services provided."
  },
  {
    "code" : "DON",
    "display" : "By Donation",
    "definition" : "All or some of the services provided are offered on a donation basis. The expectation on the donation is not defined."
  },
  {
    "code" : "COP",
    "display" : "Co-payment",
    "definition" : "All or some of the services provided are subject to a co-payment, which may be in combination with private insurance."
  },
  {
    "code" : "MIX",
    "display" : "Mixed Billing",
    "definition" : "Bulk billing available with conditions, fees may apply."
  },
  {
    "code" : "BBO",
    "display" : "Bulk Billing Only",
    "definition" : "Bulk Billing is offered under Medicare. ***Deprecation Comment:*** This code has been deprecated as it has been replaced by BB - Bulk Billing.",
    "property" : [{
      "code" : "status",
      "valueCode" : "deprecated"
    },
    {
      "code" : "deprecationDate",
      "valueDateTime" : "2026-05-20"
    }]
  },
  {
    "code" : "FBB",
    "display" : "Fees and Bulk Billing",
    "definition" : "All or some of the services provided are offered subject to a payment in combination with Bulk Billing. ***Deprecation Comment:*** This code has been deprecated as it has been replaced by MIX - Mixed Billing.",
    "property" : [{
      "code" : "status",
      "valueCode" : "deprecated"
    },
    {
      "code" : "deprecationDate",
      "valueDateTime" : "2026-05-20"
    }]
  }]
}

```
