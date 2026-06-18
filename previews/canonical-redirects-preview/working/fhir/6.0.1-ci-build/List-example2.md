# List - Medicine list with changes - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **List - Medicine list with changes**

## Example List: List - Medicine list with changes

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

# MEDICINE LIST

## PATIENT

* Name: DoB
  * David Goodpatient: 14 September 1953
* Name: Gender
  * David Goodpatient: Male
* Name: Address
  * David Goodpatient: 2 Round Court, QLD 4113

## SOURCE OF MEDICINE LIST

* Name: HPI-I
  * Iam Practitioner: 8003619900015717
* Name: Phone
  * Iam Practitioner: 0755501234
* Name: Email
  * Iam Practitioner: iam.practitioner@example.com

## CONSULTATION DETAILS

* Consultation date: Consultation summary
  * 15 Mar 2019: Patient presented with weakness over the last couple of days. No other symptoms. Revised patient's medications. Advised patient to see the usual GPs clinic for further consultation and review.

### CURRENT MEDICINES

| | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- |
| Multi-vitamins | 1 tablet daily |  | New |  |  |
| Spiriva (tiotropium bromide 18mg per inhalation) inhalant | 1 inhalation per day | Chronic Obstructive Pulmonary Disease | Amended | Reduced to one inhalation a day |  |
| paracetamol 665 mg modified release tablet | Two tablets every 6-8 hours when required. | Osteoarthritis, pain relief | Unchanged |  | No more than 6 tablets in 24hr |
| cilostazol 100 mg tablet | One a day at night time | Blood thinning | Amended | Form change |  |

### CEASED MEDICINES

| | |
| :--- | :--- |
| Ibuprofen | Allergic reaction |



## Resource Content

```json
{
  "resourceType" : "List",
  "id" : "example2",
  "meta" : {
    "profile" : ["http://hl7.org.au/fhir/StructureDefinition/au-medlist"]
  },
  "contained" : [{
    "resourceType" : "MedicationStatement",
    "id" : "medicationstatement-456",
    "status" : "active",
    "medicationCodeableConcept" : {
      "text" : "Multi-vitamins"
    },
    "subject" : {
      "reference" : "#patient-123"
    },
    "dateAsserted" : "2019-03-15",
    "dosage" : [{
      "text" : "1 tablet daily"
    }]
  },
  {
    "resourceType" : "MedicationStatement",
    "id" : "medicationstatement-678",
    "status" : "active",
    "medicationCodeableConcept" : {
      "text" : "Spiriva (tiotropium bromide 18mg per inhalation) inhalant"
    },
    "subject" : {
      "reference" : "#patient-123"
    },
    "dateAsserted" : "2019-03-15",
    "reasonCode" : [{
      "text" : "COPD"
    }],
    "dosage" : [{
      "text" : "1 inhalation per day"
    }]
  },
  {
    "resourceType" : "MedicationStatement",
    "id" : "medicationstatement-234",
    "status" : "active",
    "medicationCodeableConcept" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "22075011000036103"
      }],
      "text" : "paracetamol 665 mg modified release tablet"
    },
    "subject" : {
      "reference" : "#patient-123"
    },
    "reasonCode" : [{
      "text" : "Osteoarthritis, pain relief"
    }],
    "dosage" : [{
      "text" : "Two tablets every 6-8 hours when required.",
      "patientInstruction" : "No more than 6 tablets in 24hr"
    }]
  },
  {
    "resourceType" : "MedicationStatement",
    "id" : "medicationstatement-890",
    "status" : "active",
    "medicationCodeableConcept" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "82923011000036103"
      }],
      "text" : "cilostazol 100 mg tablet"
    },
    "subject" : {
      "reference" : "#patient-123"
    },
    "reasonCode" : [{
      "text" : "Blood thinning"
    }],
    "dosage" : [{
      "text" : "One a day at night time"
    }]
  },
  {
    "resourceType" : "MedicationStatement",
    "id" : "medicationstatement-246",
    "status" : "stopped",
    "medicationCodeableConcept" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "38268001"
      }],
      "text" : "Ibuprofen"
    },
    "subject" : {
      "reference" : "#patient-123"
    },
    "reasonCode" : [{
      "text" : "Allergic reaction"
    }]
  },
  {
    "resourceType" : "Patient",
    "id" : "patient-123",
    "extension" : [{
      "url" : "http://hl7.org.au/fhir/StructureDefinition/indigenous-status",
      "valueCoding" : {
        "system" : "https://healthterminologies.gov.au/fhir/CodeSystem/australian-indigenous-status-1",
        "code" : "9",
        "display" : "Not stated/inadequately described"
      }
    }],
    "identifier" : [{
      "type" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
          "code" : "NI",
          "display" : "National unique individual identifier"
        }]
      },
      "system" : "http://ns.electronichealth.net.au/id/hi/ihi/1.0",
      "value" : "8003608666701594"
    }],
    "name" : [{
      "text" : "David Goodpatient",
      "family" : "Goodpatient",
      "given" : ["David"]
    }],
    "gender" : "male",
    "birthDate" : "1953-09-14",
    "address" : [{
      "use" : "home",
      "line" : ["2 Round Court"],
      "state" : "QLD",
      "postalCode" : "4113",
      "country" : "Australia"
    }],
    "generalPractitioner" : [{
      "reference" : "#gp-13579"
    }],
    "managingOrganization" : {
      "reference" : "#org-24680"
    }
  },
  {
    "resourceType" : "Practitioner",
    "id" : "gp-13579",
    "name" : [{
      "family" : "Grey",
      "prefix" : ["Dr"]
    }]
  },
  {
    "resourceType" : "Practitioner",
    "id" : "dr-97531",
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
    }],
    "name" : [{
      "use" : "official",
      "family" : "Practitioner",
      "given" : ["Iam"],
      "suffix" : ["M.D."]
    }],
    "telecom" : [{
      "system" : "phone",
      "value" : "0755501234",
      "use" : "work"
    },
    {
      "system" : "email",
      "value" : "iam.practitioner@example.com",
      "use" : "work"
    }],
    "qualification" : [{
      "identifier" : [{
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org.au/CodeSystem/v2-0203",
            "code" : "AHPRA",
            "display" : "Australian Health Practitioner Regulation Agency Registration Number"
          }],
          "text" : "Ahpra registration number"
        },
        "system" : "http://hl7.org.au/id/ahpra-registration-number",
        "value" : "MED0000932850"
      }],
      "code" : {
        "coding" : [{
          "system" : "http://www.abs.gov.au/ausstats/abs@.nsf/mf/1220.0",
          "code" : "253111",
          "display" : "General Medical Practitioner"
        }],
        "text" : "Ahpra qualification for General Practitioner"
      },
      "issuer" : {
        "display" : "Ahpra"
      }
    }]
  },
  {
    "resourceType" : "Organization",
    "id" : "org-24680",
    "name" : "Grey Medical Practice"
  },
  {
    "resourceType" : "Encounter",
    "id" : "enc-24680",
    "identifier" : [{
      "system" : "urn:ietf:rfc:3986",
      "value" : "urn:uuid:5c48d068-4ffb-11e9-8647-d663bd873d93"
    }],
    "status" : "finished",
    "class" : {
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
      "code" : "AMB",
      "display" : "ambulatory"
    },
    "type" : [{
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "34764-1"
      }]
    }],
    "priority" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v3-ActPriority",
        "code" : "R"
      }]
    },
    "subject" : {
      "reference" : "#patient-123"
    },
    "participant" : [{
      "type" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ParticipationType",
          "code" : "PPRF"
        }]
      }],
      "individual" : {
        "reference" : "#dr-97531"
      }
    }],
    "period" : {
      "start" : "2019-03-15",
      "end" : "2019-03-15"
    }
  }],
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:uuid:7f8fb180-4ea8-11e9-8647-d663bd873d93"
  }],
  "status" : "current",
  "mode" : "snapshot",
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "10160-0"
    }],
    "text" : "Medicine List"
  },
  "subject" : {
    "reference" : "#patient-123"
  },
  "encounter" : {
    "reference" : "#enc-24680"
  },
  "date" : "2019-03-15",
  "source" : {
    "reference" : "#dr-97531"
  },
  "entry" : [{
    "flag" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org.au/CodeSystem/medicine-item-change",
        "code" : "new",
        "display" : "New"
      }]
    },
    "item" : {
      "reference" : "#medicationstatement-456"
    }
  },
  {
    "extension" : [{
      "url" : "http://hl7.org.au/fhir/StructureDefinition/change-description",
      "valueString" : "Reduced to one inhalation a day"
    }],
    "flag" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org.au/CodeSystem/medicine-item-change",
        "code" : "amended",
        "display" : "Amended"
      }]
    },
    "item" : {
      "reference" : "#medicationstatement-678"
    }
  },
  {
    "flag" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org.au/CodeSystem/medicine-item-change",
        "code" : "nochange",
        "display" : "Unchanged"
      }]
    },
    "item" : {
      "reference" : "#medicationstatement-234"
    }
  },
  {
    "extension" : [{
      "url" : "http://hl7.org.au/fhir/StructureDefinition/change-description",
      "valueString" : "Form change"
    }],
    "flag" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org.au/CodeSystem/medicine-item-change",
        "code" : "amended",
        "display" : "Amended"
      }]
    },
    "item" : {
      "reference" : "#medicationstatement-890"
    }
  },
  {
    "flag" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org.au/CodeSystem/medicine-item-change",
        "code" : "ceased",
        "display" : "Ceased"
      }]
    },
    "item" : {
      "reference" : "#medicationstatement-246"
    }
  }]
}

```
