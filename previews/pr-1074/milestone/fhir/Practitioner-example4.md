# Practitioner - a typical Ahpra registered professional - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **Practitioner - a typical Ahpra registered professional**

## Example Practitioner: Practitioner - a typical Ahpra registered professional

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |



## Resource Content

```json
{
  "resourceType" : "Practitioner",
  "id" : "example4",
  "meta" : {
    "profile" : ["http://hl7.org.au/fhir/StructureDefinition/au-practitioner"]
  },
  "contained" : [{
    "resourceType" : "Organization",
    "id" : "org-5678",
    "meta" : {
      "profile" : ["http://hl7.org.au/fhir/StructureDefinition/au-organization"]
    },
    "name" : "University of Sydney",
    "address" : [{
      "country" : "AU"
    }]
  },
  {
    "resourceType" : "Organization",
    "id" : "org-1234",
    "meta" : {
      "profile" : ["http://hl7.org.au/fhir/StructureDefinition/au-organization"]
    },
    "name" : "The Royal Australian College of General Practitioners",
    "address" : [{
      "country" : "AU"
    }]
  }],
  "identifier" : [{
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "NPI",
        "display" : "National provider identifier"
      }],
      "text" : "HPI-I"
    },
    "system" : "http://ns.electronichealth.net.au/id/hi/hpii/1.0",
    "value" : "8003619900015717"
  },
  {
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org.au/CodeSystem/v2-0203",
        "code" : "AHPRA",
        "display" : "Australian Health Practitioner Regulation Agency Registration Number"
      }],
      "text" : "Ahpra Registration Number"
    },
    "system" : "http://hl7.org.au/id/ahpra-registration-number",
    "value" : "MED0000123456"
  },
  {
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org.au/CodeSystem/v2-0203",
        "code" : "AHPRA",
        "display" : "Australian Health Practitioner Regulation Agency Registration Number"
      }],
      "text" : "Ahpra Registration Number"
    },
    "system" : "http://hl7.org.au/id/ahpra-registration-number",
    "value" : "PHY0001234567"
  }],
  "name" : [{
    "family" : "Smith",
    "given" : ["Robert"],
    "prefix" : ["Dr"]
  }],
  "qualification" : [{
    "code" : {
      "text" : "Bachelor of Medicine/Bachelor of Surgery"
    },
    "period" : {
      "start" : "2003"
    },
    "issuer" : {
      "reference" : "#org-5678"
    }
  },
  {
    "code" : {
      "text" : "Bachelor of Applied Science (Physiotherapy)"
    },
    "period" : {
      "start" : "1995"
    },
    "issuer" : {
      "reference" : "#org-5678"
    }
  },
  {
    "code" : {
      "text" : "Fellowship of the Royal Australian College of General Practitioners"
    },
    "period" : {
      "start" : "2006"
    },
    "issuer" : {
      "reference" : "#org-1234"
    }
  },
  {
    "identifier" : [{
      "type" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org.au/CodeSystem/v2-0203",
          "code" : "AHPRA",
          "display" : "Australian Health Practitioner Regulation Agency Registration Number"
        }],
        "text" : "Ahpra Registration Number"
      },
      "system" : "http://hl7.org.au/id/ahpra-registration-number",
      "value" : "PHY0001234567"
    }],
    "code" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org.au/CodeSystem/v2-0360",
        "code" : "AHPRA",
        "display" : "Ahpra Registration"
      }],
      "text" : "Ahpra Physiotherapy"
    },
    "period" : {
      "start" : "1996-02-08"
    },
    "issuer" : {
      "display" : "Australian Health Practitioner Regulation Agency"
    }
  }],
  "communication" : [{
    "text" : "Arabic"
  }]
}

```
