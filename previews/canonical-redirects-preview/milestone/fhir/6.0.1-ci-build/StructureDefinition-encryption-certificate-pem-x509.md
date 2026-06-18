# Encryption Certificate PEM X509 - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **Encryption Certificate PEM X509**

## Extension: Encryption Certificate PEM X509 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://hl7.org.au/fhir/StructureDefinition/encryption-certificate-pem-x509 | *Version*:6.0.1-ci-build | |
| * Standards status: *[Trial-use](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](generalguidance.md#maturity-levels): 3 | *Computable Name*:EncryptionCertificatePEMx509 |
| **Copyright/Legal**: HL7 Australia© 2018+; Licensed Under Creative Commons No Rights Reserved. | | |

This extension applies to the Endpoint resource and is used to support encrypted certificate content for use with an endpoint. This extension allows an endpoint entry to define a suitable certificate for use in communications on the associated channel.

**Context of Use**

### Usage Notes

**Profile specific implementation guidance:**

* The value recorded is an X509 certificate in PEM format as per [RFC7468](https://tools.ietf.org/html/rfc7468).

**Usage info**

**Usages:**

* Examples for this Extension: [Telstra Health Secure Messaging Endpoint](Endpoint-example0.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.au.base|current/StructureDefinition/StructureDefinition-encryption-certificate-pem-x509.json)

**Changes since version 6.0.0:**

* No changes

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-encryption-certificate-pem-x509.csv), [Excel](StructureDefinition-encryption-certificate-pem-x509.xlsx), [Schematron](StructureDefinition-encryption-certificate-pem-x509.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "encryption-certificate-pem-x509",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm",
    "valueInteger" : 3
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
  "url" : "http://hl7.org.au/fhir/StructureDefinition/encryption-certificate-pem-x509",
  "version" : "6.0.1-ci-build",
  "name" : "EncryptionCertificatePEMx509",
  "title" : "Encryption Certificate PEM X509",
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
  "description" : "This extension applies to the Endpoint resource and is used to support encrypted certificate content for use with an endpoint. This extension allows an endpoint entry to define a suitable certificate for use in communications on the associated channel.",
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
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "Endpoint"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "PEM X509 certificate",
      "definition" : "Mechanism to hold the value of a X509 certificate as a string (base64 encoded PEM certificate)."
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://hl7.org.au/fhir/StructureDefinition/encryption-certificate-pem-x509"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "short" : "Base64 encoded string PEM format X509 certificate",
      "definition" : "Base64 encoded string containing PEM (RFC 7468) formatted X509 certificate.",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
