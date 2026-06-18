# Patient - as transgender person with sex and gender and sex parameter for clinical use - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **Patient - as transgender person with sex and gender and sex parameter for clinical use**

## Example Patient: Patient - as transgender person with sex and gender and sex parameter for clinical use

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

Profile: [AU Base Patient](StructureDefinition-au-patient.md)

Patricia Roth Male, DoB: 1974-12-25 ( Medical record number (use: usual, ))

-------

| | | | |
| :--- | :--- | :--- | :--- |
| Active: | true | Deceased: | false |
| Links: | * Managing Organization: [Organization Albion Hospital](Organization-example1.md)
 | | |
| Individual Pronouns: | * value: she/her/her/hers/herself
* period: 2001-05-06 --> (ongoing)
* comment: Patient transitioned from male to female in 2001.
 | | |
| Person Recorded Sex Or Gender: | * value: Male
* type: Biological sex at birth
* effectivePeriod: 1974-12-25 --> (ongoing)
* acquisitionDate: 2005-12-06
* sourceDocument: Scan of birth certificate
* sourceField: Sex
* jurisdiction: Queensland
* comment: Patient transitioned from male to female in 2001, but their birth certificate still indicates male.
 | | |
| Person Recorded Sex Or Gender: | * value: Female
* type: Sex
* effectivePeriod: 2024-12-25 --> (ongoing)
* sourceDocument: Passport
* sourceField: Sex
* jurisdiction: Australia
 | | |
| Patient Sex Parameter For Clinical Use: | * value: Apply male-typical setting or reference range
* comment: Apply male-type setting for all radiology tests
 | | |
| Patient Sex Parameter For Clinical Use: | * value: Apply female-typical setting or reference range
* comment: Apply female-type setting for Lipids, LFT, TSH, T4 pathology tests
 | | |
| Individual Gender Identity: | * value: Identifies as female gender
 | | |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "example-sex-and-gender",
  "meta" : {
    "profile" : ["http://hl7.org.au/fhir/StructureDefinition/au-patient"]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/individual-genderIdentity",
    "extension" : [{
      "url" : "value",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "446141000124107",
          "display" : "Identifies as female gender"
        }]
      }
    }]
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/individual-pronouns",
    "extension" : [{
      "url" : "value",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "LA29519-8",
          "display" : "she/her/her/hers/herself"
        }]
      }
    },
    {
      "url" : "period",
      "valuePeriod" : {
        "start" : "2001-05-06"
      }
    },
    {
      "url" : "comment",
      "valueString" : "Patient transitioned from male to female in 2001."
    }]
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/individual-recordedSexOrGender",
    "extension" : [{
      "url" : "value",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "248153007",
          "display" : "Male"
        }]
      }
    },
    {
      "url" : "type",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "1515311000168102",
          "display" : "Biological sex at birth"
        }]
      }
    },
    {
      "url" : "effectivePeriod",
      "valuePeriod" : {
        "start" : "1974-12-25"
      }
    },
    {
      "url" : "acquisitionDate",
      "valueDateTime" : "2005-12-06"
    },
    {
      "url" : "sourceDocument",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "71230-7",
          "display" : "Birth certificate"
        },
        {
          "system" : "http://snomed.info/sct",
          "code" : "444561001",
          "display" : "Birth certificate"
        }],
        "text" : "Scan of birth certificate"
      }
    },
    {
      "url" : "sourceField",
      "valueString" : "Sex"
    },
    {
      "url" : "jurisdiction",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://healthterminologies.gov.au/fhir/CodeSystem/australian-states-territories-1",
          "code" : "QLD"
        }]
      }
    },
    {
      "url" : "comment",
      "valueString" : "Patient transitioned from male to female in 2001, but their birth certificate still        indicates male."
    }]
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/individual-recordedSexOrGender",
    "extension" : [{
      "url" : "value",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://hl7.org/fhir/administrative-gender",
          "code" : "female"
        }]
      }
    },
    {
      "url" : "type",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "46098-0"
        }]
      }
    },
    {
      "url" : "effectivePeriod",
      "valuePeriod" : {
        "start" : "2024-12-25"
      }
    },
    {
      "url" : "sourceDocument",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org.au/CodeSystem/rsg-source-document-type",
          "code" : "passport"
        }]
      }
    },
    {
      "url" : "sourceField",
      "valueString" : "Sex"
    },
    {
      "url" : "jurisdiction",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "urn:iso:std:iso:3166",
          "code" : "AU",
          "display" : "Australia"
        }]
      }
    }]
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/patient-sexParameterForClinicalUse",
    "extension" : [{
      "url" : "value",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/sex-parameter-for-clinical-use",
          "code" : "male-typical",
          "display" : "Apply male-typical setting or reference range"
        }]
      }
    },
    {
      "url" : "comment",
      "valueString" : "Apply male-type setting for all radiology tests"
    }]
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/patient-sexParameterForClinicalUse",
    "extension" : [{
      "url" : "value",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/sex-parameter-for-clinical-use",
          "code" : "female-typical",
          "display" : "Apply female-typical setting or reference range"
        }]
      }
    },
    {
      "url" : "comment",
      "valueString" : "Apply female-type setting for Lipids, LFT, TSH, T4 pathology tests"
    }]
  }],
  "identifier" : [{
    "use" : "usual",
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "MR"
      }]
    },
    "system" : "http://ns.electronichealth.net.au/id/abn-scoped/medicalrecord/1.0/51824753556",
    "value" : "11223344"
  }],
  "active" : true,
  "name" : [{
    "use" : "official",
    "family" : "Roth",
    "given" : ["Patrick"]
  },
  {
    "use" : "usual",
    "family" : "Roth",
    "given" : ["Patricia"]
  },
  {
    "use" : "nickname",
    "given" : ["Pat"]
  }],
  "gender" : "male",
  "birthDate" : "1974-12-25",
  "deceasedBoolean" : false,
  "managingOrganization" : {
    "reference" : "Organization/example1"
  }
}

```
