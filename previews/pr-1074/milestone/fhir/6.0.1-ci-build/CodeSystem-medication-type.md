# Medication Type - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **Medication Type**

## CodeSystem: Medication Type 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://terminology.hl7.org.au/CodeSystem/medication-type | *Version*:6.0.1-ci-build | |
| * Standards status: *[Trial-use](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](generalguidance.md#maturity-levels): 2 | *Computable Name*:MedicationType |
| *Other Identifiers:*OID:2.16.840.1.113883.2.3.4.1.4.1 | | |
| **Copyright/Legal**: HL7 Australia© 2018+; Licensed Under Creative Commons No Rights Reserved. | | |

 
The Medication Type code system defines concepts in a classification scheme for medication coding. The classification scheme defines the nature of the properties defined by the code e.g. branded product with no strength or form. This allows the distinction between codes provided containing container, pack, strength and form explicitly especially where terminologies supplied are unknown or terminology services are unavailable. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [MedicationType](ValueSet-medication-type.md)

**Changes since version 6.0.0:**

* No changes



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "medication-type",
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
  "url" : "http://terminology.hl7.org.au/CodeSystem/medication-type",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.2.3.4.1.4.1"
  }],
  "version" : "6.0.1-ci-build",
  "name" : "MedicationType",
  "title" : "Medication Type",
  "status" : "active",
  "experimental" : false,
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
  "description" : "The Medication Type code system defines concepts in a classification scheme for medication coding. The classification scheme defines the nature of the properties defined by the code e.g. branded product with no strength or form. This allows the distinction between codes provided containing container, pack, strength and form explicitly especially where terminologies supplied are unknown or terminology services are unavailable.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "AU"
    }]
  }],
  "copyright" : "HL7 Australia© 2018+; Licensed Under Creative Commons No Rights Reserved.",
  "caseSensitive" : true,
  "valueSet" : "http://terminology.hl7.org.au/ValueSet/medication-type",
  "compositional" : false,
  "versionNeeded" : false,
  "content" : "complete",
  "count" : 11,
  "concept" : [{
    "code" : "UPD",
    "display" : "Unbranded product with no strengths or form",
    "definition" : "Unbranded product with no strengths or form. (For AMT this is equivalent to the MP - Medicinal Product concept)"
  },
  {
    "code" : "UPDS",
    "display" : "Unbranded product with strengths but no form",
    "definition" : "Unbranded product with strengths but no form."
  },
  {
    "code" : "UPDF",
    "display" : "Unbranded product with form but no strengths",
    "definition" : "Unbranded product with form but no strengths."
  },
  {
    "code" : "UPDSF",
    "display" : "Unbranded product with strengths and form",
    "definition" : "Unbranded product with strengths and form. (For AMT this is equivalent to the MPUU - Medicinal Product Unit of Use concept)"
  },
  {
    "code" : "UPG",
    "display" : "Unbranded package with no container",
    "definition" : "Unbranded package with no container. (For AMT this is equivalent to the MPP - Medicinal Product Pack concept)"
  },
  {
    "code" : "BPD",
    "display" : "Branded product with no strengths or form",
    "definition" : "Branded product with no strengths or form. (For AMT this is equivalent to the TP - Trade Product concept)"
  },
  {
    "code" : "BPDS",
    "display" : "Branded product with strengths but no form",
    "definition" : "Branded product with strengths but no form"
  },
  {
    "code" : "BPDF",
    "display" : "Branded product with form but no strengths",
    "definition" : "Branded product with form but no strengths"
  },
  {
    "code" : "BPDSF",
    "display" : "Branded product with strengths and form",
    "definition" : "Branded product with strengths and form. (For AMT this is equivalent to the TPUU - Trade Product Unit of Use concept)"
  },
  {
    "code" : "BPG",
    "display" : "Branded package with no container",
    "definition" : "Branded package with no container. (For AMT this is equivalent to the TPP - Trade Product Pack concept)"
  },
  {
    "code" : "BPGC",
    "display" : "Branded package with container",
    "definition" : "Branded package with container. (For AMT this is equivalent to the CTPP - Containered Trade Product Pack concept)"
  }]
}

```
