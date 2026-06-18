# Sex and Gender - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**Guidance**](guidance.md)
* **Sex and Gender**

## Sex and Gender

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

This page addresses how sex and gender related concepts can be structured in FHIR and conformant to AU Base. Where possible, AU Base has considered the logical data element models provided by [HL7 International’s Cross Paradigm Implementation Guide: Gender Harmony - Sex and Gender Representation, Edition 1 specification](https://hl7.org/xprod/ig/uv/gender-harmony/informative1/).

The table below provides an overview of the sex and gender related concepts in AU Base.

**Legend:**

![](green_checkmark.png) **Supported**1: The sex or gender related concept is marked as **Must Support**.

![](orange_checkmark.png) **Localised**: The sex or gender related concept is localised for use in an Australian context but is not marked as **Must Support**.

![](blue_checkmark.png) **Not Localised**: The sex or gender related concept is relevant and not yet localised for use in an Australian context.

![](minus_symbol.png) **Not Applicable**: This sex or gender related concept is not applicable for use with this resource type.

| | | | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| [AU BasePatient](StructureDefinition-au-patient.md) | ![](orange_checkmark.png) | ![](orange_checkmark.png) | ![](orange_checkmark.png) | ![](orange_checkmark.png) | ![](orange_checkmark.png) | ![](orange_checkmark.png) | ![](orange_checkmark.png) |
| [AU Base Practitioner](StructureDefinition-au-practitioner.md) | ![](blue_checkmark.png) | ![](orange_checkmark.png) | ![](orange_checkmark.png) | ![](orange_checkmark.png) | ![](orange_checkmark.png) | ![](orange_checkmark.png) | ![](minus_symbol.png) |
| [AU Base RelatedPerson](StructureDefinition-au-relatedperson.md) | ![](blue_checkmark.png) | ![](orange_checkmark.png) | ![](orange_checkmark.png) | ![](orange_checkmark.png) | ![](orange_checkmark.png) | ![](orange_checkmark.png) | ![](minus_symbol.png) |
| [AU Base Diagnostic Imaging Report](StructureDefinition-au-imagingreport.md) | ![](minus_symbol.png) | ![](minus_symbol.png) | ![](minus_symbol.png) | ![](minus_symbol.png) | ![](minus_symbol.png) | ![](minus_symbol.png) | ![](orange_checkmark.png) |
| [AU Base DiagnosticReport](StructureDefinition-au-diagnosticreport.md) | ![](minus_symbol.png) | ![](minus_symbol.png) | ![](minus_symbol.png) | ![](minus_symbol.png) | ![](minus_symbol.png) | ![](minus_symbol.png) | ![](orange_checkmark.png) |
| [AU Base MedicationRequest](StructureDefinition-au-medicationrequest.md) | ![](minus_symbol.png) | ![](minus_symbol.png) | ![](minus_symbol.png) | ![](minus_symbol.png) | ![](minus_symbol.png) | ![](minus_symbol.png) | ![](orange_checkmark.png) |
| [AU Base Pathology Report](StructureDefinition-au-pathologyreport.md) | ![](minus_symbol.png) | ![](minus_symbol.png) | ![](minus_symbol.png) | ![](minus_symbol.png) | ![](minus_symbol.png) | ![](minus_symbol.png) | ![](orange_checkmark.png) |
| [AU Base Procedure](StructureDefinition-au-procedure.md) | ![](minus_symbol.png) | ![](minus_symbol.png) | ![](minus_symbol.png) | ![](minus_symbol.png) | ![](minus_symbol.png) | ![](minus_symbol.png) | ![](orange_checkmark.png) |
| [AU Base ServiceRequest](StructureDefinition-au-servicerequest.md) | ![](minus_symbol.png) | ![](minus_symbol.png) | ![](minus_symbol.png) | ![](minus_symbol.png) | ![](minus_symbol.png) | ![](minus_symbol.png) | ![](orange_checkmark.png) |

Notes:

1. AU Base provides national level agreement on core localised concepts but does not force conformance, and therefore, no elements are marked as Must Support. Use case implementation guides may apply conformance requirements to sex and gender concepts, e.g. AU Core, and readers are advised to refer to the corresponding table in the applicable implementation guide for information.

### Administrative Gender (Patient.gender)

AU Base supports representation and exchange of [Administrative Gender](https://hl7.org/fhir/R4/patient.html#gender), i.e. the basic [Patient.gender](https://hl7.org/fhir/R4/patient-definitions.html#Patient.gender) property, in:

* [AU Base Patient](StructureDefinition-au-patient.md)

In AU Base, the `Patient.gender` value is regarded as a Recorded Sex or Gender. If assertions regarding the nature of the `Patient.gender` value are required, a single instance of the [Person Recorded Sex or Gender](https://hl7.org/fhir/extensions/StructureDefinition-individual-recordedSexOrGender.html) extension can be included with these assertions and its `genderElementQualifier` subelement set to a value of "true".

Example: Patient resource with Patient.gender qualified with Person Recorded Sex or Gender extension

```
{
  "resourceType" : "Patient",
  ...
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/individual-recordedSexOrGender",
      "extension" : [
        {
          "url" : "value",
          "valueCodeableConcept" : {
            "coding" : [
              {
                "system" : "http://snomed.info/sct",
                "code" : "248153007",
                "display" : "Male"
              }
            ]
          }
        },
                {
          "url" : "type",
          "valueCodeableConcept" : {
            "coding" : [
              {
                "system" : "http://snomed.info/sct",
                "code" : "1515311000168102",
                "display" : "Biological sex at birth"
              }
            ]
          }
        },
        {
          "url" : "genderElementQualifier",
          "valueBoolean" : true
        }
      ]
    }
  ],
  ...
  "gender" : "male"
}

```

### Name to Use (NtU)​

AU Base supports representation and exchange of the Name to Use data element (as defined in the [HL7 Cross Paradigm Implementation Guide: Gender Harmony - Sex and Gender Representation, Edition 1](https://hl7.org/xprod/ig/uv/gender-harmony/informative1/)) in:

* [AU Base Patient](StructureDefinition-au-patient.md)
* [AU Base Practitioner](StructureDefinition-au-practitioner.md)
* [AU Base RelatedPerson](StructureDefinition-au-relatedperson.md)

Name to Use is represented using "usual" in `name.use`.

Example: RelatedPerson resource with name to use

```
{
  "resourceType" : "RelatedPerson",
    ...
    "name" : [
    {
      "use" : "usual",
      "family" : "Franklin",
      "given" : [
        "Stella"
      ]
    }
  ],
  ...
}  

```

### Pronouns​

AU Base supports representation and exchange of the Pronouns data element (as defined in the [HL7 Cross Paradigm Implementation Guide: Gender Harmony - Sex and Gender Representation, Edition 1](https://hl7.org/xprod/ig/uv/gender-harmony/informative1/)) in:

* [AU Base Patient](StructureDefinition-au-patient.md)
* [AU Base Practitioner](StructureDefinition-au-practitioner.md)
* [AU Base RelatedPerson](StructureDefinition-au-relatedperson.md)

Pronouns is represented with the [Individual Pronouns](http://hl7.org/fhir/StructureDefinition/individual-pronouns) extension. In AU Base the value element of the [Individual Pronouns](http://hl7.org/fhir/StructureDefinition/individual-pronouns) extension is constrained to be [Australian Pronouns](https://www.healthterminologies.gov.au/integration/R4/fhir/ValueSet/australian-pronouns-1) ([extensible](http://hl7.org/fhir/R4/terminologies.html#extensible)).

When populating the value element of the [Individual Pronouns](http://hl7.org/fhir/StructureDefinition/individual-pronouns) extension:

* **they/them/their/theirs/themselves** may be represented by sending the LOINC Answer (LA) code LA29520-6
* **she/her/her/hers/herself** may be represented by sending the LOINC Answer (LA) code LA29519-8
* **he/him/his/his/himself** may be represented by sending the LOINC Answer (LA) code LA29518-0
* **Prefer not to answer** may be represented by sending the Data Absent Reason code "asked-declined"
* **Asked but not known** may be represented by sending the Data Absent Reason code "asked-unknown"
* **Not stated or inadequately described** may be represented by sending the Data Absent Reason code "unknown"
* Where the workflow does not support obtaining a pronoun, it may be represented by sending the Data Absent Reason code "not-asked"
* Where a pronoun is provided but does not correspond to one of the [Australian Pronouns](https://www.healthterminologies.gov.au/integration/R4/fhir/ValueSet/australian-pronouns-1) terms then a text only or alternative specific coded value can be supplied

Example: Practitioner resource with pronouns

```
{
  "resourceType" : "Practitioner",
    ...
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/individual-pronouns",
      "extension" : [
        {
          "url" : "value",
          "valueCodeableConcept" : {
            "coding" : [
              {
                "system" : "http://loinc.org",
                "code" : "LA29519-8",
                "display" : "she/her/her/hers/herself"
              }
            ]
          }
        },
        {
          "url" : "period",
          "valuePeriod" : {
            "start" : "2001-05-06"
          }
        }
      ]
    },
  ...
}  

```

Example: Patient resource with prefer not to answer for pronouns

```
{
  "resourceType" : "Patient",
    ...
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/individual-pronouns",
      "extension" : [
        {
          "url" : "value",
          "valueCodeableConcept" : {
            "coding" : [
              {
                "system" : "http://terminology.hl7.org/CodeSystem/data-absent-reason",
                "code" : "asked-declined",
              }
            ]
          }
        }
      ]
    },
  ...
}  

```

### Gender Identity (GI)

AU Base supports representation and exchange of the Gender Identity data element (as defined in the [HL7 Cross Paradigm Implementation Guide: Gender Harmony - Sex and Gender Representation, Edition 1](https://hl7.org/xprod/ig/uv/gender-harmony/informative1/)) and aligned to [Australian Bureau of Statics Standard for Sex, Gender, Variations of Sex Characteristics and Sexual Orientation Variables, 2020](https://www.abs.gov.au/statistics/standards/standard-sex-gender-variations-sex-characteristics-and-sexual-orientation-variables/latest-release#gender) in:

* [AU Base Patient](StructureDefinition-au-patient.md)
* [AU Base Practitioner](StructureDefinition-au-practitioner.md)
* [AU Base RelatedPerson](StructureDefinition-au-relatedperson.md)

Gender Identity is represented with the [Individual Gender Identity](http://hl7.org/fhir/StructureDefinition/individual-genderIdentity) extension. In AU Base the value element of the [Individual Gender Identity](http://hl7.org/fhir/StructureDefinition/individual-genderIdentity) extension is constrained to be [Gender Identity Response](https://healthterminologies.gov.au/fhir/ValueSet/gender-identity-response-1) value set ([extensible](http://hl7.org/fhir/R4/terminologies.html#extensible)).

When populating the value element of the [Individual Gender Identity](http://hl7.org/fhir/StructureDefinition/individual-genderIdentity) extension:

* **Man or male** may be represented by sending the SNOMED CT code 446151000124109|Identifies as male gender|
* **Woman or female** may be represented by sending the SNOMED CT code 446141000124107|Identifies as female gender|
* **Non-binary** may be represented by sending the SNOMED CT code 33791000087105|Identifies as nonbinary gender|
* **[I/They] use a different term (please specify)** may be represented by sending only `text` and no `coding`
* **Prefer not to answer** may be represented by sending the Data Absent Reason code "asked-declined"
* **Not stated or inadequately described** may be represented by sending the Data Absent Reason code "unknown"
* Where the workflow does not support obtaining a gender identity value, it may be represented by sending the Data Absent Reason code "not-asked"

Example: Patient resource with gender identity

```
{
  "resourceType" : "Patient",
    ...
    "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/individual-genderIdentity",
      "extension" : [
        {
          "url" : "value",
          "valueCodeableConcept" : {
            "coding" : [
              {
                "system" : "http://snomed.info/sct",
                "code" : "446141000124107",
                "display" : "Identifies as female gender (finding)"
              }
            ]
          }
        }
      ]
    },
  ...
}  

```

### Recorded Sex or Gender

AU Base supports representation and exchange of the Recorded Sex or Gender (RSG) data element (as defined in the [HL7 Cross Paradigm Implementation Guide: Gender Harmony - Sex and Gender Representation, Edition 1](https://hl7.org/xprod/ig/uv/gender-harmony/informative1/)) in:

* [AU Base Patient](StructureDefinition-au-patient.md)
* [AU Base Practitioner](StructureDefinition-au-practitioner.md)
* [AU Base RelatedPerson](StructureDefinition-au-relatedperson.md)

RSG is represented with the [Person Recorded Sex or Gender](https://hl7.org/fhir/extensions/StructureDefinition-individual-recordedSexOrGender.html) extension. In AU Base:

* the type element is constrained to be [AU Recorded Sex or Gender Type](ValueSet-rsg-type.md) ([extensible](http://hl7.org/fhir/R4/terminologies.html#extensible))
* the source element is constrained to be [AU Recorded Sex or Gender (RSG) Source](ValueSet-rsg-source.md) ([extensible](http://hl7.org/fhir/R4/terminologies.html#extensible))
* the sourceDocument element is constrained to be [AU Recorded Sex or Gender (RSG) Source Document Type](ValueSet-rsg-source-document-type.md) ([extensible](http://hl7.org/fhir/R4/terminologies.html#extensible))
* the jurisdiction element is constrained to be [Jurisdiction ValueSet - AU Extended](ValueSet-au-jurisdiction-extended.md) ([extensible](http://hl7.org/fhir/R4/terminologies.html#extensible))

RSG information includes the various sex and gender concepts that are often used in existing systems but are known to not reliably represent a gender identity, sex parameter for clinical use, or attributes related to sexuality, such as sexual orientation, sexual activity, or sexual attraction. When populating recorded sex or gender it is important to select a meaningful terminology for the value element of the [Person Recorded Sex or Gender](https://hl7.org/fhir/extensions/StructureDefinition-individual-recordedSexOrGender.html) extension. For example, when representing a biological sex value it is recommended to use a biological sex value set. See [Sex Assigned at Birth](sexgender.md#sex-assigned-at-birth) for specific guidance on the representation of Sex Assigned at Birth.

Example: Patient resource with recorded gender from a passport

```
{
  "resourceType" : "Patient",
    ...
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/individual-recordedSexOrGender",
      "extension" : [
        {
          "url" : "value",
          "valueCodeableConcept" : {
            "coding" : [
              {
                "system" : "http://hl7.org/fhir/administrative-gender",
                "code" : "female"
              }
            ]
          }
        },
        {
          "url" : "type",
          "valueCodeableConcept" : {
            "coding" : [
              {
                "system" : "http://loinc.org",
                "code" : "46098-0"
              }
            ]
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
            "coding" : [
              {
                "system" : "http://terminology.hl7.org.au/CodeSystem/rsg-source-document-type",
                "code" : "passport"
              }
            ]
          }
        },
        {
          "url" : "sourceField",
          "valueString" : "Sex"
        },
        {
          "url" : "jurisdiction",
          "valueCodeableConcept" : {
            "coding" : [
              {
                "system" : "urn:iso:std:iso:3166",
                "code" : "AU",
                "display" : "Australia"
              }
            ]
          }
        }
      ]
    }
  ],
  ...
}  

```

Example: Patient resource with recorded gender from the Healthcare Identifiers Service

```
{
  "resourceType" : "Patient",
    ...
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/individual-recordedSexOrGender",
      "extension" : [
        {
          "url" : "value",
          "valueCodeableConcept" : {
            "coding" : [
              {
                "system" : "http://hl7.org/fhir/administrative-gender",
                "code" : "female"
              }
            ]
          }
        },
        {
          "url" : "type",
          "valueCodeableConcept" : {
            "coding" : [
              {
                "system" : "http://loinc.org",
                "code" : "46098-0"
              }
            ]
          }
        },
        {
          "url" : "effectivePeriod",
          "valuePeriod" : {
            "start" : "2020-07-01"
          }
        },
        {
          "url" : "source",
          "valueCodeableConcept" : {
            "coding" : [
              {
                "system" : "http://terminology.hl7.org.au/CodeSystem/au-digital-health-source-system",
                "code" : "au-hi"
              }
            ]
          }
        },
        {
          "url" : "jurisdiction",
          "valueCodeableConcept" : {
            "coding" : [
              {
                "system" : "urn:iso:std:iso:3166",
                "code" : "AU",
                "display" : "Australia"
              }
            ]
          }
        }
      ]
    }
  ],
  ...
}  

```

### Sex Assigned at Birth

AU Base supports representation and exchange of the Sex Assigned at Birth data element (as defined in the [HL7 Cross Paradigm Implementation Guide: Gender Harmony - Sex and Gender Representation, Edition 1](https://hl7.org/xprod/ig/uv/gender-harmony/informative1/)) in:

* [AU Base Patient](StructureDefinition-au-patient.md)
* [AU Base Practitioner](StructureDefinition-au-practitioner.md)
* [AU Base RelatedPerson](StructureDefinition-au-relatedperson.md)

Sex Assigned at Birth is represented with the [Person Recorded Sex or Gender](https://hl7.org/fhir/extensions/StructureDefinition-individual-recordedSexOrGender.html) extension:

* the type element is populated with the SNOMED CT code 1515311000168102|Biological sex at birth|
* the value element is constrained to be [Biological Sex](https://healthterminologies.gov.au/fhir/ValueSet/biological-sex-1) ([extensible](http://hl7.org/fhir/R4/terminologies.html#extensible))

The FHIR Work Group is interested in views on whether [Biological Sex](https://healthterminologies.gov.au/fhir/ValueSet/biological-sex-1) value set should be a required binding in future releases of AU Base. Please join a meeting or contact the FHIR Work Group if you have any views or perspectives on this.

When populating the value element of the [Person Recorded Sex or Gender](https://hl7.org/fhir/extensions/StructureDefinition-individual-recordedSexOrGender.html) extension for Sex Assigned at Birth:

* **Male** may be represented by sending the SNOMED CT code 248153007|Male|
* **Female** may be represented by sending the SNOMED CT code 248152002|Female|
* **Intersex** may be represented by sending the SNOMED CT code 32570691000036108|Intersex|
* **Indeterminate sex** may be represented by sending the SNOMED CT code 32570681000036106|Indeterminate sex|
* **Prefer not to answer** may be represented by sending the Data Absent Reason code "asked-declined"
* **Asked but not known** may be represented by sending the Data Absent Reason code "asked-unknown"
* **Not stated or inadequately described** may be represented by sending the Data Absent Reason code "unknown"
* Where the workflow does not support obtaining a sex at birth, it may be represented by sending the Data Absent Reason code "not-asked"

Example: Patient resource with Sex Assigned at Birth from birth certificate

```
{
  "resourceType" : "Patient",
    ...
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/individual-recordedSexOrGender",
      "extension" : [
        {
          "url" : "value",
          "valueCodeableConcept" : {
            "coding" : [
              {
                "system" : "http://snomed.info/sct",
                "code" : "248153007",
                "display" : "Male"
              }
            ]
          }
        },
        {
          "url" : "type",
          "valueCodeableConcept" : {
            "coding" : [
              {
                "system" : "http://snomed.info/sct",
                "code" : "1515311000168102",
                "display" : "Biological sex at birth"
              }
            ]
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
          "valueCodeableConcept" : 
          {
            "coding" : [
              {
                "system" : "http://loinc.org",
                "code" : "71230-7",
                "display" : "Birth certificate"
              },
              {
                "system" : "http://snomed.info/sct",
                "code" : "444561001",
                "display" : "Birth certificate"
              }
            ],
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
            "coding" : [
              {
                "system" : "https://healthterminologies.gov.au/fhir/CodeSystem/australian-states-territories-1",
                "code" : "QLD"
              }
            ]
          }
        },
        {
          "url" : "comment",
          "valueString" : "Patient transitioned from male to female in 2001, but their birth certificate still indicates male."
        }
      ]
    },
  ...
}  

```

### Sex Parameter for Clinical Use (SPCU)

AU Base supports representation and exchange of Sex Parameter for Clinical Use (SPCU) information (as defined by the [HL7 Cross Paradigm Implementation Guide: Gender Harmony - Sex and Gender Representation, Edition 1](https://hl7.org/xprod/ig/uv/gender-harmony/informative1/)) in:

* [AU Base Diagnostic Imaging Report](StructureDefinition-au-imagingreport.md)
* [AU Base DiagnosticReport](StructureDefinition-au-diagnosticreport.md)
* [AU Base MedicationRequest](StructureDefinition-au-medicationrequest.md)
* [AU Base Pathology Report](StructureDefinition-au-pathologyreport.md)
* [AU Base Patient](StructureDefinition-au-patient.md)
* [AU Base Procedure](StructureDefinition-au-procedure.md)
* [AU Base ServiceRequest](StructureDefinition-au-servicerequest.md)

SPCU is represented with the [Patient Sex Parameter For Clinical Use](http://hl7.org/fhir/extensions/StructureDefinition-patient-sexParameterForClinicalUse.html) extension. When using the [Patient Sex Parameter For Clinical Use](http://hl7.org/fhir/extensions/StructureDefinition-patient-sexParameterForClinicalUse.html) extension:

 The guidance on this page is dependent on the availability of the `intendedClinicalUse` element, added to the SPCU extension in the September 2025 Ballot of the HL7 International FHIR Extensions Pack. 

* It is recommended that the clinical context for the SPCU value is provided (e.g. applies to all prescribed medications); clinical context can be included in either the [`comment`](https://hl7.org/fhir/extensions/StructureDefinition-patient-sexParameterForClinicalUse-definitions.html#Extension.extension:comment) or [`intendedClinicalUse`](https://build.fhir.org/ig/HL7/fhir-extensions/StructureDefinition-patient-sexParameterForClinicalUse-definitions.html#Extension.extension:intendedClinicalUse) element.
* A patient record can have multiple SPCU values at any one time. These SPCU values can be different depending on the clinical context and can have overlapping or non-overlapping periods. 
* When exchanging health information implementers need to consider if consistency of SPCU values across different resource type instances is appropriate for the use case. For example, an instance of `MedicationRequest` can hold an SPCU element value "female-typical" while referencing a `Patient` resource (in `MedicationRequest.subject`) that holds an SPCU value of "male-typical" and a `comment` or `intendedClinicalUse` indicating that SPCU value applies to all prescribed medications.
 
* Implementers intending to only include an SPCU value in the Patient resource and not in other resource types can consider using a reference to a contained `Patient` resource. For example, instead of including an SPCU value directly in a `MedicationRequest`, the `MedicationRequest.subject` element could reference a contained `Patient` resource that includes the SPCU value.

Resource specific SPCU usage includes:

* DiagnosticReport: Inclusion of SPCU values indicates that the sex parameter is relevant to the particular report.
* MedicationRequest: Inclusion of SPCU values indicates that the sex parameter is relevant to the medication request e.g. informs dosage or use when the patient is pregnant.
* Patient: When exchanging SPCU values that do not directly link to a clinical context or intended clinical use (e.g. a Patient Administration System), it is recommended that the `comment` or `intendedClinicalUse` elements are included to provide the clinical context and/or appropriate clinical uses for an SPCU value.
* Procedure: Inclusion of SPCU values indicates that the sex parameter is relevant to the procedure e.g. consideration of typically male or female anatomy.
* ServiceRequest: Inclusion of SPCU values indicates that the sex parameter is relevant to the service request e.g. flagging that checking for pregnancy may be required for a particular radiology test.

Example: Patient resource with Sex Parameter for Clinical Use

```
{
   "resourceType":"Patient",
   ...
   "extension":[
      {
         "url":"http://hl7.org/fhir/StructureDefinition/patient-sexParameterForClinicalUse",
         "extension":[
            {
               "url":"value",
               "valueCodeableConcept":{
                  "coding":[
                     {
                        "system":"http://terminology.hl7.org/CodeSystem/sex-parameter-for-clinical-use",
                        "code":"female-typical",
                        "display":"Apply female-typical setting or reference range"
                     }
                  ]
               }
            },
            {
               "url":"period",
               "valuePeriod":{
                  "start":"2025-07-01"
               }
            },
            {
               "url":"comment",
               "valueString":"Apply female-type setting for all radiology tests"
            }
         ]
      }
   ]
   ...
}

```

Example: ServiceRequest resource with Sex Parameter for Clinical Use

```
{
   "resourceType":"ServiceRequest",
   ...
   "extension":[
      {
         "url":"http://hl7.org/fhir/StructureDefinition/patient-sexParameterForClinicalUse",
         "extension":[
            {
               "url":"value",
               "valueCodeableConcept":{
                  "coding":[
                     {
                        "system":"http://terminology.hl7.org/CodeSystem/sex-parameter-for-clinical-use",
                        "code":"male-typical",
                        "display":"Apply male-typical setting or reference range"
                     }
                  ]
               }
            },
            {
               "url":"comment",
               "valueString":"Apply male-type setting for all pathology tests"
            }
         ]
      }
   ]
   ...
}

```

