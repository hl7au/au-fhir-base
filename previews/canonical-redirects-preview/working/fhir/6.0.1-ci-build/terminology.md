# Terminology - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* **Terminology**

## Terminology

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

This page includes all terminology artefacts defined as part of AU Base and:

* value sets that form part of localised requirements (e.g. referenced in an AU Base imposed constraint)
* code systems referenced by those value sets
* concept maps unique to those value sets and not listed in the FHIR standard

Terminology artefacts used in AU Base are published in AU Base, the FHIR standard, [HL7 Terminology (THO)](https://terminology.hl7.org/), or the [National Clinical Terminology Service (NCTS)](https://www.healthterminologies.gov.au/).

Implementers are advised to take note that expansions of value sets visible in this guide may differ from expansions returned with a server using
[HL7 Terminology (THO)](http://terminology.hl7.org)version 6.0.0 or higher.

### Value Sets

See the [FHIR terminology section](http://hl7.org/fhir/R4/terminologies-valuesets.html) for a complete discussion on value sets and a list of value set names used in FHIR. Many value sets used in this guide are defined in the FHIR standard.

The following value sets form part of localised requirements (i.e. are referenced in an AU Base imposed constraint).

Column attribute descriptions are as follows:

* **ValueSet:** The title of the value set.
* **Profiles and Extensions where used:** The profiles and extensions that reference the value set.
* **Available from:** Where the value set is published.

| | | |
| :--- | :--- | :--- |
| [Accession Number Type](ValueSet-accession-number-type.md) | [AU Accession Number](StructureDefinition-au-accessionnumber.md) | AU Base |
| [ActEncounterCode - AU Extended](ValueSet-au-v3-ActEncounterCode-extended.md) | [AU Base Encounter](StructureDefinition-au-encounter.md) | AU Base |
| [Adverse Reaction Agent](https://healthterminologies.gov.au/fhir/ValueSet/adverse-reaction-agent-1) | [AU Base AllergyIntolerance](StructureDefinition-au-allergyintolerance.md) | NCTS |
| [Adverse Reaction Clinical Manifestation](https://healthterminologies.gov.au/fhir/ValueSet/adverse-reaction-clinical-manifestation-1) | [AU Base AllergyIntolerance](StructureDefinition-au-allergyintolerance.md) | NCTS |
| [AMT Medicinal Product and Substances](ValueSet-amt-mp-codes.md) | This value set is not used here; it is deprecated and replaced by the NCTS[Medication Ingredient](https://healthterminologies.gov.au/fhir/ValueSet/medication-ingredient-1)value set. | NCTS |
| [Assertion Of Absence](https://healthterminologies.gov.au/fhir/ValueSet/assertion-of-absence-1) | [AU Assertion of No Relevant Finding](StructureDefinition-au-norelevantfinding.md) | NCTS |
| [AU Recorded Sex or Gender (RSG) Source](ValueSet-rsg-source.md) | [Person Recorded Sex Or Gender](http://hl7.org/fhir/StructureDefinition/individual-recordedSexOrGender) | AU Base |
| [AU Recorded Sex or Gender (RSG) Source Document Type](ValueSet-rsg-source-document-type.md) | [Person Recorded Sex Or Gender](http://hl7.org/fhir/StructureDefinition/individual-recordedSexOrGender) | AU Base |
| [AU Recorded Sex or Gender Type](ValueSet-rsg-type.md) | [Person Recorded Sex Or Gender](http://hl7.org/fhir/StructureDefinition/individual-recordedSexOrGender) | AU Base |
| [AU Time Zone](ValueSet-au-timezone.md) | [Australian Time Zone Usage](StructureDefinition-au-timezone-usage.md) | AU Base |
| [Australian Immunisation Register Vaccine](https://healthterminologies.gov.au/fhir/ValueSet/australian-immunisation-register-vaccine-1) | [AU Base Immunization](StructureDefinition-au-immunization.md) | NCTS |
| [Australian Indigenous Status](https://healthterminologies.gov.au/fhir/ValueSet/australian-indigenous-status-1) | [Australian Indigenous Status](StructureDefinition-indigenous-status.md) | NCTS |
| [Australian Medication](https://healthterminologies.gov.au/fhir/ValueSet/australian-medication-1) | [AU Base Medication](StructureDefinition-au-medication.md),[AU Base MedicationAdministration](StructureDefinition-au-medicationadministration.md),[AU Base MedicationDispense](StructureDefinition-au-medicationdispense.md),[AU Base MedicationRequest](StructureDefinition-au-medicationrequest.md),[AU Base MedicationStatement](StructureDefinition-au-medicationstatement.md) | NCTS |
| [Australian Medication Use](https://healthterminologies.gov.au/fhir/ValueSet/australian-medication-use-1) | [AU Base MedicationStatement](StructureDefinition-au-medicationstatement.md) | NCTS |
| [Australian Medicines Terminology Vaccine](https://healthterminologies.gov.au/fhir/ValueSet/amt-vaccine-1) | [AU Base Immunization](StructureDefinition-au-immunization.md) | NCTS |
| [Australian Pronouns](https://healthterminologies.gov.au/fhir/ValueSet/australian-pronouns-1) | [Individual Pronouns](http://hl7.org/fhir/StructureDefinition/individual-pronouns) | NCTS |
| [Australian States and Territories](https://healthterminologies.gov.au/fhir/ValueSet/australian-states-territories-2) | [Australian Address](StructureDefinition-au-address.md) | NCTS |
| [Australian Veteran Status](https://healthterminologies.gov.au/fhir/ValueSet/australian-veteran-status-1) | [Australian Veteran Status](StructureDefinition-veteran-status.md) | NCTS |
| [Body Site](https://healthterminologies.gov.au/fhir/ValueSet/body-site-1) | [AU Base BodyStructure](StructureDefinition-au-bodystructure.md),[AU Base Condition](StructureDefinition-au-condition.md),[AU Base Diagnostic Imaging Result](StructureDefinition-au-imagingresult.md),[AU Base Diagnostic Request](StructureDefinition-au-diagnosticrequest.md),[AU Base ServiceRequest](StructureDefinition-au-servicerequest.md),[AU Base Dosage](StructureDefinition-au-dosage.md),[AU Base MedicationAdministration](StructureDefinition-au-medicationadministration.md),[AU Base Procedure](StructureDefinition-au-procedure.md),[AU Base Specimen](StructureDefinition-au-specimen.md) | NCTS |
| [Body Site Relative Site Qualifier](https://healthterminologies.gov.au/fhir/ValueSet/body-site-relative-site-qualifier-1) | [AU Base BodyStructure](StructureDefinition-au-bodystructure.md) | NCTS |
| [Clinical Condition](https://healthterminologies.gov.au/fhir/ValueSet/clinical-condition-1) | [AU Base Condition](StructureDefinition-au-condition.md) | NCTS |
| [Clinical Finding](https://healthterminologies.gov.au/fhir/ValueSet/clinical-finding-1) | [AU Base Condition](StructureDefinition-au-condition.md),[AU Base Diagnostic Imaging Report](StructureDefinition-au-imagingreport.md),[AU Base DiagnosticReport](StructureDefinition-au-diagnosticreport.md),[AU Base Dosage](StructureDefinition-au-dosage.md),[AU Base Pathology Report](StructureDefinition-au-pathologyreport.md) | NCTS |
| [Clinical Specialty](https://healthterminologies.gov.au/fhir/ValueSet/clinical-specialty-1) | [AU Base HealthcareService](StructureDefinition-au-healthcareservice.md),[AU Base PractitionerRole](StructureDefinition-au-practitionerrole.md) | NCTS |
| [Common Languages in Australia](https://healthterminologies.gov.au/fhir/ValueSet/common-languages-australia-2) | [AU Base HealthcareService](StructureDefinition-au-healthcareservice.md),[AU Base Patient](StructureDefinition-au-patient.md),[AU Base Practitioner](StructureDefinition-au-practitioner.md),[AU Base RelatedPerson](StructureDefinition-au-relatedperson.md) | NCTS |
| [Concurrent Supply Grounds](https://healthterminologies.gov.au/fhir/ValueSet/concurrent-supply-grounds-1) | [Subsidised Concurrent Supply](StructureDefinition-subsidised-concurrent-supply.md) | NCTS |
| [Contact Purpose](ValueSet-contact-purpose.md) | [AU Base Organization](StructureDefinition-au-organization.md),[Contact Purpose](StructureDefinition-contact-purpose.md) | AU Base |
| [Contact Relationship Type](https://healthterminologies.gov.au/fhir/ValueSet/contact-relationship-type-3) | [AU Base Patient](StructureDefinition-au-patient.md) | NCTS |
| [Coverage Type and Self-Pay Codes - AU Extended](ValueSet-au-coverage-type-extended.md) | [AU Base Coverage](StructureDefinition-au-coverage.md) | AU Base |
| [Date Accuracy Indicator](https://healthterminologies.gov.au/fhir/ValueSet/date-accuracy-indicator-1) | [Date Accuracy Indicator](StructureDefinition-date-accuracy-indicator.md) | NCTS |
| [DVA Entitlement](ValueSet-dva-entitlement.md) | [AU DVA Number](StructureDefinition-au-dvanumber.md) | AU Base |
| [Encounter Type](https://healthterminologies.gov.au/fhir/ValueSet/encounter-type-1) | [AU Base Encounter](StructureDefinition-au-encounter.md) | NCTS |
| [Evaluation Procedure](https://healthterminologies.gov.au/fhir/ValueSet/evaluation-procedure-1) | [AU Base Diagnostic Request](StructureDefinition-au-diagnosticrequest.md),[AU Base DiagnosticReport](StructureDefinition-au-diagnosticreport.md),[AU Base Diagnostic Result](StructureDefinition-au-diagnosticresult.md) | NCTS |
| [Gender Identity Response](https://healthterminologies.gov.au/fhir/ValueSet/gender-identity-response-1) | [Individual Gender Identity](http://hl7.org/fhir/StructureDefinition/individual-genderIdentity) | NCTS |
| [GTIN](http://terminology.hl7.org/ValueSet/v3-GTIN) | [AU Base Medication](StructureDefinition-au-medication.md),[AU Base MedicationAdministration](StructureDefinition-au-medicationadministration.md),[AU Base MedicationDispense](StructureDefinition-au-medicationdispense.md),[AU Base MedicationRequest](StructureDefinition-au-medicationrequest.md),[AU Base MedicationStatement](StructureDefinition-au-medicationstatement.md) | HL7 Terminology (THO) |
| [Healthcare Organisation Role Type](https://healthterminologies.gov.au/fhir/ValueSet/healthcare-organisation-role-type-1) | [AU Base Organization](StructureDefinition-au-organization.md) | NCTS |
| [hl7VS-degreeLicenseCertificate - AU Extended](ValueSet-au-v2-0360-extended.md) | [AU Base Practitioner](StructureDefinition-au-practitioner.md) | AU Base |
| [hl7VS-identifierType - AU Extended](ValueSet-au-v2-0203-extended.md) | [AU Australian Business Number](StructureDefinition-au-australianbusinessnumber.md),[AU Australian Company Number](StructureDefinition-au-australiancompanynumber.md),[AU Australian Registered Body Number](StructureDefinition-au-australianregistredbodynumber.md) | AU Base |
| [hl7VS-providerRole - AU Extended](ValueSet-au-v2-0443-extended.md) | [AU Base Immunization](StructureDefinition-au-immunization.md) | AU Base |
| [Imaging Anatomic Region Of Interest](https://healthterminologies.gov.au/fhir/ValueSet/imaging-anatomic-region-of-interest-1) | [AU Base Diagnostic Imaging Result](StructureDefinition-au-imagingresult.md) | NCTS |
| [Imaging Procedure](https://healthterminologies.gov.au/fhir/ValueSet/imaging-procedure-1) | [AU Base Diagnostic Imaging Report](StructureDefinition-au-imagingreport.md),[AU Base Diagnostic Imaging Result](StructureDefinition-au-imagingresult.md) | NCTS |
| [Immunisation Anatomical Site](https://healthterminologies.gov.au/fhir/ValueSet/immunisation-anatomical-site-1) | [AU Base Immunization](StructureDefinition-au-immunization.md) | NCTS |
| [Immunisation Route of Administration](https://healthterminologies.gov.au/fhir/ValueSet/immunisation-route-of-administration-1) | [AU Base Immunization](StructureDefinition-au-immunization.md) | NCTS |
| [Indicator of Hypersensitivity or Intolerance to Substance](https://healthterminologies.gov.au/fhir/ValueSet/indicator-hypersensitivity-intolerance-to-substance-2) | [AU Base AllergyIntolerance](StructureDefinition-au-allergyintolerance.md) | NCTS |
| [Individual Healthcare Identifier Record Status](https://healthterminologies.gov.au/fhir/ValueSet/ihi-record-status-1) | [IHI Record Status](StructureDefinition-ihi-record-status.md) | NCTS |
| [Individual Healthcare Identifier Status](https://healthterminologies.gov.au/fhir/ValueSet/ihi-status-1) | [IHI Status](StructureDefinition-ihi-status.md) | NCTS |
| [Jurisdiction ValueSet - AU Extended](ValueSet-au-jurisdiction-extended.md) | [Person Recorded Sex Or Gender](http://hl7.org/fhir/StructureDefinition/individual-recordedSexOrGender) | AU Base |
| [Location Type (Physical) - AU Extended](ValueSet-au-location-physical-type-extended.md) | [AU Base Location](StructureDefinition-au-location.md) | AU Base |
| [Medication Form](https://healthterminologies.gov.au/fhir/ValueSet/medication-form-1) | [AU Base Medication](StructureDefinition-au-medication.md) | NCTS |
| [Medication Ingredient](https://healthterminologies.gov.au/fhir/ValueSet/medication-ingredient-1) | [AU Base Medication](StructureDefinition-au-medication.md) | NCTS |
| [Medication Reason Taken](https://healthterminologies.gov.au/fhir/ValueSet/medication-reason-taken-1) | [AU Base MedicationStatement](StructureDefinition-au-medicationstatement.md) | NCTS |
| [Medication Type](ValueSet-medication-type.md) | [Medication Type](StructureDefinition-medication-type.md) | AU Base |
| [Medicine Item Change](ValueSet-medicine-item-change.md) | [AU Medicine List](StructureDefinition-au-medlist.md) | AU Base |
| [Medicine Substitution Reason](https://healthterminologies.gov.au/fhir/ValueSet/medicine-substitution-reason-1) | [AU Base MedicationDispense](StructureDefinition-au-medicationdispense.md),[AU Base MedicationRequest](StructureDefinition-au-medicationrequest.md) | NCTS |
| [MIMS](ValueSet-mims.md) | [AU Base Medication](StructureDefinition-au-medication.md),[AU Base MedicationAdministration](StructureDefinition-au-medicationadministration.md),[AU Base MedicationDispense](StructureDefinition-au-medicationdispense.md),[AU Base MedicationRequest](StructureDefinition-au-medicationrequest.md),[AU Base MedicationStatement](StructureDefinition-au-medicationstatement.md) | AU Base |
| [Name Context](ValueSet-name-context.md) | [Name Context](StructureDefinition-name-context.md) | AU Base |
| [Order Identifier Type](ValueSet-order-identifier-type.md) | [AU Local Order Identifier](StructureDefinition-au-localorderidentifier.md) | AU Base |
| [Pathology Diagnostic Service Category](https://healthterminologies.gov.au/fhir/ValueSet/pathology-diagnostic-service-category-1) | [AU Base Pathology Report](StructureDefinition-au-pathologyreport.md),[AU Base Pathology Result](StructureDefinition-au-pathologyresult.md) | NCTS |
| [PBS Item Codes](ValueSet-pbs-item.md) | [AU Base Medication](StructureDefinition-au-medication.md),[AU Base MedicationAdministration](StructureDefinition-au-medicationadministration.md),[AU Base MedicationDispense](StructureDefinition-au-medicationdispense.md),[AU Base MedicationRequest](StructureDefinition-au-medicationrequest.md),[AU Base MedicationStatement](StructureDefinition-au-medicationstatement.md) | AU Base |
| [Practitioner Role](https://healthterminologies.gov.au/fhir/ValueSet/practitioner-role-1) | [AU Base Diagnostic Request](StructureDefinition-au-diagnosticrequest.md),[AU Base PractitionerRole](StructureDefinition-au-practitionerrole.md) | NCTS |
| [Procedure](https://healthterminologies.gov.au/fhir/ValueSet/procedure-1) | [AU Base Procedure](StructureDefinition-au-procedure.md),[AU Base ServiceRequest](StructureDefinition-au-servicerequest.md) | NCTS |
| [RCPA - SPIA Chemical Pathology Terminology Reference Set](https://www.healthterminologies.gov.au/integration/R4/fhir/ValueSet/spia-chemical-pathology-refset-3) | [AU Base Pathology Result](StructureDefinition-au-pathologyresult.md) | NCTS |
| [RCPA - SPIA Haematology Terminology Reference Set](https://www.healthterminologies.gov.au/integration/R4/fhir/ValueSet/spia-haematology-refset-3) | [AU Base Pathology Result](StructureDefinition-au-pathologyresult.md) | NCTS |
| [RCPA - SPIA Immunopathology Terminology Reference Set](https://www.healthterminologies.gov.au/integration/R4/fhir/ValueSet/spia-immunopathology-refset-3) | [AU Base Pathology Result](StructureDefinition-au-pathologyresult.md) | NCTS |
| [RCPA - SPIA Microbiology Serology Molecular Pathology Terminology Reference Set](https://www.healthterminologies.gov.au/integration/R4/fhir/ValueSet/spia-microbiology-serology-molecular-refset-3) | [AU Base Pathology Result](StructureDefinition-au-pathologyresult.md) | NCTS |
| [RCPA SPIA Pathology Reporting](https://www.healthterminologies.gov.au/integration/R4/fhir/ValueSet/spia-pathology-reporting-1) | [AU Base Pathology Report](StructureDefinition-au-pathologyreport.md),[AU Base Pathology Result](StructureDefinition-au-pathologyresult.md) | NCTS |
| [Reason For Encounter](https://healthterminologies.gov.au/fhir/ValueSet/reason-for-encounter-1) | [AU Base Encounter](StructureDefinition-au-encounter.md) | NCTS |
| [Reason for Request](https://healthterminologies.gov.au/fhir/ValueSet/reason-for-request-1) | [AU Base Diagnostic Request](StructureDefinition-au-diagnosticrequest.md),[AU Base ServiceRequest](StructureDefinition-au-servicerequest.md),[AU Base MedicationRequest](StructureDefinition-au-medicationrequest.md) | NCTS |
| [Reason Vaccine Administered](https://healthterminologies.gov.au/fhir/ValueSet/reason-vaccine-administered-1) | [AU Base Immunization](StructureDefinition-au-immunization.md) | NCTS |
| [Reason Vaccine Not Administered](https://healthterminologies.gov.au/fhir/ValueSet/reason-vaccine-not-administered-3) | [AU Base Immunization](StructureDefinition-au-immunization.md) | NCTS |
| [Related Person Relationship Type](https://healthterminologies.gov.au/fhir/ValueSet/related-person-relationship-type-1) | [AU Base RelatedPerson](StructureDefinition-au-relatedperson.md) | NCTS |
| [Route of Administration](https://healthterminologies.gov.au/fhir/ValueSet/route-of-administration-1) | [AU Base AllergyIntolerance](StructureDefinition-au-allergyintolerance.md),[AU Base Dosage](StructureDefinition-au-dosage.md),[AU Base MedicationAdministration](StructureDefinition-au-medicationadministration.md) | NCTS |
| [Separation Mode](https://healthterminologies.gov.au/fhir/ValueSet/separation-mode-1) | [AU Base Encounter](StructureDefinition-au-encounter.md) | NCTS |
| [Service Provision Conditions Australian Concepts](ValueSet-service-provision-conditions.md) | [AU Base HealthcareService](StructureDefinition-au-healthcareservice.md) | AU Base |
| [Service Type](https://healthterminologies.gov.au/fhir/ValueSet/service-type-1) | [AU Base Encounter](StructureDefinition-au-encounter.md),[AU Base HealthcareService](StructureDefinition-au-healthcareservice.md) | NCTS |
| [ServiceDeliveryLocationRoleType - AU Extended](ValueSet-au-v3-ServiceDeliveryLocationRoleType-extended.md) | [AU Base Location](StructureDefinition-au-location.md) | AU Base |
| [Sex Parameter for Clinical Use](http://terminology.hl7.org/ValueSet/sex-parameter-for-clinical-use) | [Patient Sex Parameter For Clinical Use](http://hl7.org/fhir/extensions/StructureDefinition-patient-sexParameterForClinicalUse.html) | HL7 Terminology (THO) |
| [Specimen Collection Procedure](https://healthterminologies.gov.au/fhir/ValueSet/specimen-collection-procedure-1) | [AU Base Specimen](StructureDefinition-au-specimen.md) | NCTS |
| [Specimen Container Type](https://healthterminologies.gov.au/fhir/ValueSet/specimen-container-type-1) | [AU Base Specimen](StructureDefinition-au-specimen.md) | NCTS |
| [Specimen Type](https://healthterminologies.gov.au/fhir/ValueSet/specimen-type-1) | [AU Base Specimen](StructureDefinition-au-specimen.md) | NCTS |
| [Substance](https://healthterminologies.gov.au/fhir/ValueSet/substance-1) | [AU Base Substance](StructureDefinition-au-substance.md) | NCTS |
| [Vaccination Target Disease](https://healthterminologies.gov.au/fhir/ValueSet/vaccination-target-disease-1) | [AU Base Immunization](StructureDefinition-au-immunization.md) | NCTS |

### Code Systems

See the [FHIR terminology section](http://hl7.org/fhir/R4/terminologies-systems.html) for a complete discussion on code systems and a list of code system names used in FHIR. Most code systems used in this guide are defined in the FHIR standard.

The following code systems are referenced by the value sets listed above.

Column attribute descriptions are as follows:

* **CodeSystem:** The title of a code system.
* **ValueSet where used:** The value set(s) that reference the code system.
* **Available from:** Where the code system is published.
* **Publisher:** Identifies the organisation responsible for maintaining the code system.

| | | | |
| :--- | :--- | :--- | :--- |
| [ActCode](http://terminology.hl7.org/CodeSystem/v3-ActCode) | [ActEncounterCode - AU Extended](ValueSet-au-v3-ActEncounterCode-extended.md),[Coverage Type and Self-Pay Codes - AU Extended](ValueSet-au-coverage-type-extended.md),[GTIN](http://terminology.hl7.org/ValueSet/v3-GTIN) | HL7 Terminology (THO) | Health Level Seven International |
| [ActCode AU](CodeSystem-au-v3-ActCode.md) | [ActEncounterCode - AU Extended](ValueSet-au-v3-ActEncounterCode-extended.md),[Coverage Type and Self-Pay Codes - AU Extended](ValueSet-au-coverage-type-extended.md) | AU Base | HL7 Australia |
| [Australian Digital Health Source System](CodeSystem-au-digital-health-source-system.md) | [AU Recorded Sex or Gender (RSG) Source](ValueSet-rsg-source.md) | AU Base | HL7 Australia |
| [AU Recorded Sex or Gender Source Document Type](CodeSystem-rsg-source-document-type.md) | [AU Recorded Sex or Gender (RSG) Source Document Type](ValueSet-rsg-source-document-type.md) | AU Base | HL7 Australia |
| [AU Recorded Sex or Gender Type](CodeSystem-rsg-type.md) | [AU Recorded Sex or Gender Type](ValueSet-rsg-type.md) | AU Base | HL7 Australia |
| [Australian Immunisation Register Vaccine](https://www.humanservices.gov.au/organisations/health-professionals/enablers/air-vaccine-code-formats) | [Australian Immunisation Register Vaccine](https://healthterminologies.gov.au/fhir/ValueSet/australian-immunisation-register-vaccine-1) | NCTS | Services Australia |
| [Australian Indigenous Status](https://healthterminologies.gov.au/fhir/CodeSystem/australian-indigenous-status-1) | [Australian Indigenous Status](https://healthterminologies.gov.au/fhir/ValueSet/australian-indigenous-status-1) | NCTS | Australian Digital Health Agency |
| [Australian States and Territories](https://healthterminologies.gov.au/fhir/CodeSystem/australian-states-territories-1) | [Australian States and Territories](https://healthterminologies.gov.au/fhir/ValueSet/australian-states-territories-2),[Jurisdiction ValueSet - AU Extended](ValueSet-au-jurisdiction-extended.md) | NCTS | Australian Digital Health Agency |
| [Australian Veteran Status](https://www.healthterminologies.gov.au/CodeSystem/australian-veteran-status-1) | [Australian Veteran Status](https://healthterminologies.gov.au/fhir/ValueSet/australian-veteran-status-1) | NCTS | Australian Digital Health Agency |
| [Communication Request Category](CodeSystem-communication-request-category.md) | This CodeSystem is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content) | AU Base | HL7 Australia |
| [Concurrent Supply Grounds](https://healthterminologies.gov.au/fhir/CodeSystem/concurrent-supply-grounds-1) | [Concurrent Supply Grounds](https://healthterminologies.gov.au/fhir/ValueSet/concurrent-supply-grounds-1) | NCTS | Australian Digital Health Agency |
| [Contact entity type](http://terminology.hl7.org/CodeSystem/contactentity-type) | [Contact Purpose](ValueSet-contact-purpose.md) | HL7 Terminology (THO) | Health Level Seven International |
| [Contact Purpose](CodeSystem-contact-purpose.md) | [Contact Purpose](ValueSet-contact-purpose.md) | AU Base | HL7 Australia |
| [contactRole2](http://terminology.hl7.org/CodeSystem/v2-0131) | [Contact Relationship Type](https://healthterminologies.gov.au/fhir/ValueSet/contact-relationship-type-3),[Related Person Relationship Type](https://healthterminologies.gov.au/fhir/ValueSet/related-person-relationship-type-1) | HL7 Terminology (THO) | Health Level Seven International |
| [Coverage SelfPay Codes](http://terminology.hl7.org/CodeSystem/coverage-selfpay) | [Coverage Type and Self-Pay Codes - AU Extended](ValueSet-au-coverage-type-extended.md) | HL7 Terminology (THO) | Health Level Seven International |
| [Data Absent Reason](http://terminology.hl7.org/CodeSystem/data-absent-reason) | [Australian Pronouns](https://healthterminologies.gov.au/fhir/ValueSet/australian-pronouns-1),[Biological Sex](https://healthterminologies.gov.au/fhir/ValueSet/biological-sex-1),[Gender Identity Response](https://healthterminologies.gov.au/fhir/ValueSet/gender-identity-response-1),[Sex Parameter for Clinical Use](http://terminology.hl7.org/ValueSet/sex-parameter-for-clinical-use) | HL7 Terminology (THO) | Health Level Seven International |
| [Date Accuracy Indicator](https://healthterminologies.gov.au/fhir/CodeSystem/date-accuracy-indicator-1) | [Date Accuracy Indicator](https://healthterminologies.gov.au/fhir/ValueSet/date-accuracy-indicator-1) | NCTS | Australian Digital Health Agency |
| [degreeLicenseCertificate](http://terminology.hl7.org/CodeSystem/v2-0360) | [hl7VS-degreeLicenseCertificate - AU Extended](ValueSet-au-v2-0360-extended.md) | HL7 Terminology (THO) | Health Level Seven International |
| [DegreeLicenseCertificate AU](CodeSystem-au-v2-0360.md) | [hl7VS-degreeLicenseCertificate - AU Extended](ValueSet-au-v2-0360-extended.md) | AU Base | HL7 Australia |
| [DiagnosticServiceSectionId](http://terminology.hl7.org/CodeSystem/v2-0074) | [Pathology Diagnostic Service Category](https://healthterminologies.gov.au/fhir/ValueSet/pathology-diagnostic-service-category-1) | HL7 Terminology (THO) | Health Level Seven International |
| [IdentifierType](http://terminology.hl7.org/CodeSystem/v2-0203) | [Accession Number Type](ValueSet-accession-number-type.md),[Order Identifier Type](ValueSet-order-identifier-type.md),[hl7VS-identifierType - AU Extended](ValueSet-au-v2-0203-extended.md) | HL7 Terminology (THO) | Health Level Seven International |
| [IdentifierType AU](CodeSystem-au-v2-0203.md) | [hl7VS-identifierType - AU Extended](ValueSet-au-v2-0203-extended.md),[DVA Entitlement](ValueSet-dva-entitlement.md) | AU Base | HL7 Australia |
| [Individual Healthcare Identifier Record Status](https://healthterminologies.gov.au/fhir/CodeSystem/ihi-record-status-1) | [Individual Healthcare Identifier Record Status](https://healthterminologies.gov.au/fhir/ValueSet/ihi-record-status-1) | NCTS | Australian Digital Health Agency |
| [Individual Healthcare Identifier Status](https://healthterminologies.gov.au/fhir/CodeSystem/ihi-status-1) | [Individual Healthcare Identifier Status](https://healthterminologies.gov.au/fhir/ValueSet/ihi-status-1) | NCTS | Australian Digital Health Agency |
| [ISO3166Part1](https://terminology.hl7.org/CodeSystem-ISO3166Part1.html) | [Jurisdiction ValueSet - AU Extended](ValueSet-au-jurisdiction-extended.md) | HL7 Terminology (THO) | International Organization for Standardization (ISO) |
| [ISO3166_2](https://terminology.hl7.org/6.0.0/CodeSystem-v3-iso3166-2.html) | [Jurisdiction ValueSet - AU Extended](ValueSet-au-jurisdiction-extended.md) | HL7 Terminology (THO) | International Organization for Standardization (ISO) |
| [LocationType](http://terminology.hl7.org/CodeSystem/location-physical-type) | [Location Type (Physical) - AU Extended](ValueSet-au-location-physical-type-extended.md) | HL7 Terminology (THO) | Health Level Seven International |
| [Location Type (Physical) AU](CodeSystem-au-location-physical-type.md) | [Location Type (Physical) - AU Extended](ValueSet-au-location-physical-type-extended.md) | AU Base | HL7 Australia |
| [Location Type AU](CodeSystem-au-location-type.md) | [ServiceDeliveryLocationRoleType - AU Extended](ValueSet-au-location-physical-type-extended.md) | AU Base | HL7 Australia |
| [LOINC](https://www.healthterminologies.gov.au/access-clinical-terminology/access-fhir-terminology-resources/code-systems/?ui:filter=loinc) | [AU Recorded Sex or Gender (RSG) Source Document Type](ValueSet-rsg-source-document-type.md),[AU Recorded Sex or Gender Type](ValueSet-rsg-type.md),[Australian Pronouns](https://healthterminologies.gov.au/fhir/ValueSet/australian-pronouns-1),[RCPA - SPIA Chemical Pathology Terminology Reference Set](https://www.healthterminologies.gov.au/integration/R4/fhir/ValueSet/spia-chemical-pathology-refset-3),[RCPA - SPIA Haematology Terminology Reference Set](https://www.healthterminologies.gov.au/integration/R4/fhir/ValueSet/spia-haematology-refset-3),[RCPA - SPIA Immunopathology Terminology Reference Set](https://www.healthterminologies.gov.au/integration/R4/fhir/ValueSet/spia-immunopathology-refset-3),[RCPA - SPIA Microbiology Serology Molecular Pathology Terminology Reference Set](https://www.healthterminologies.gov.au/integration/R4/fhir/ValueSet/spia-microbiology-serology-molecular-refset-3),[RCPA SPIA Pathology Reporting](https://www.healthterminologies.gov.au/integration/R4/fhir/ValueSet/spia-pathology-reporting-1) | NCTS, HL7 Terminology (THO) | Regenstrief Institute, Inc |
| [Medication Type](CodeSystem-medication-type.md) | [Medication Type](ValueSet-medication-type.md) | AU Base | HL7 Australia |
| [Medicine Item Change](CodeSystem-medicine-item-change.md) | [Medicine Item Change](ValueSet-medicine-item-change.md) | AU Base | HL7 Australia |
| [Monthly Index of Medical Specialties (MIMS)](CodeSystem-mims-external.md) | [MIMS](ValueSet-mims.md) | AU Base | MIMS Australia Pty Ltd |
| [Name Context](CodeSystem-name-context.md) | [Name Context](ValueSet-name-context.md) | AU Base | HL7 Australia |
| [ParticipationType](http://terminology.hl7.org/CodeSystem/v3-ParticipationType) | [Related Person Relationship Type](https://healthterminologies.gov.au/fhir/ValueSet/related-person-relationship-type-1) | HL7 Terminology (THO) | Health Level Seven International |
| [PBS Item Codes](CodeSystem-pbs-item-external.md) | [PBS Item Codes](ValueSet-pbs-item.md) | AU Base | Department of Health and Aged Care, Commonwealth of Australia |
| [providerRole](http://terminology.hl7.org/CodeSystem/v2-0443) | [hl7VS-providerRole - AU Extended](ValueSet-au-v2-0443-extended.md) | HL7 Terminology (THO) | Health Level Seven International |
| [providerRole AU](CodeSystem-au-v2-0443.md) | [hl7VS-providerRole - AU Extended](ValueSet-au-v2-0443-extended.md) | AU Base | HL7 Australia |
| [Resource Tag](CodeSystem-resource-tag.md) | This CodeSystem is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content) | AU Base | HL7 Australia |
| [RoleCode](http://terminology.hl7.org/CodeSystem/v3-RoleCode) | [Related Person Relationship Type](https://healthterminologies.gov.au/fhir/ValueSet/related-person-relationship-type-1),[ServiceDeliveryLocationRoleType - AU Extended](ValueSet-au-v3-ServiceDeliveryLocationRoleType-extended.md) | HL7 Terminology (THO) | Health Level Seven International |
| [RoleClass](http://terminology.hl7.org/CodeSystem/v3-RoleClass) | [Related Person Relationship Type](https://healthterminologies.gov.au/fhir/ValueSet/related-person-relationship-type-1) | HL7 Terminology (THO) | Health Level Seven International |
| [Separation Mode](https://healthterminologies.gov.au/fhir/CodeSystem/separation-mode-1) | [Separation Mode](https://healthterminologies.gov.au/fhir/ValueSet/separation-mode-1) | NCTS | Australian Digital Health Agency |
| [Service Provision Conditions Australian Concepts](CodeSystem-service-provision-conditions.md) | [Service Provision Conditions Australian Concepts](ValueSet-service-provision-conditions.md) | AU Base | HL7 Australia |
| [Sex Parameter for Clinical Use](http://terminology.hl7.org/CodeSystem/sex-parameter-for-clinical-use) | [Sex Parameter for Clinical Use](http://terminology.hl7.org/ValueSet/sex-parameter-for-clinical-use) | HL7 Terminology (THO) | Health Level Seven International |
| [SNOMED Clinical Terms (Australian extension)](https://www.healthterminologies.gov.au/access-clinical-terminology/access-snomed-ct-au/) | [Adverse Reaction Agent](https://healthterminologies.gov.au/fhir/ValueSet/adverse-reaction-agent-1),[Adverse Reaction Clinical Manifestation](https://healthterminologies.gov.au/fhir/ValueSet/adverse-reaction-clinical-manifestation-1),[AMT Medicinal Product and Substances](ValueSet-amt-mp-codes.md),[Assertion Of Absence](https://healthterminologies.gov.au/fhir/ValueSet/assertion-of-absence-1),[Australian Medication](https://healthterminologies.gov.au/fhir/ValueSet/australian-medication-1),[Australian Medication Use](https://healthterminologies.gov.au/fhir/ValueSet/australian-medication-use-1),[Australian Medicines Terminology Vaccine](https://healthterminologies.gov.au/fhir/ValueSet/amt-vaccine-1),[AU Recorded Sex or Gender Type](ValueSet-rsg-type.md),[Body Site](https://healthterminologies.gov.au/fhir/ValueSet/body-site-1),[Body Site Relative Site Qualifier](https://healthterminologies.gov.au/fhir/ValueSet/body-site-relative-site-qualifier-1),[Clinical Condition](https://healthterminologies.gov.au/fhir/ValueSet/clinical-condition-1),[Clinical Finding](https://healthterminologies.gov.au/fhir/ValueSet/clinical-finding-1),[Clinical Specialty](https://healthterminologies.gov.au/fhir/ValueSet/clinical-specialty-1),[Contact Relationship Type](https://healthterminologies.gov.au/fhir/ValueSet/contact-relationship-type-3),[Encounter Type](https://healthterminologies.gov.au/fhir/ValueSet/encounter-type-1),[Evaluation Procedure](https://healthterminologies.gov.au/fhir/ValueSet/evaluation-procedure-1),[Gender Identity Response](https://healthterminologies.gov.au/fhir/ValueSet/gender-identity-response-1),[Healthcare Organisation Role Type](https://healthterminologies.gov.au/fhir/ValueSet/healthcare-organisation-role-type-1),[Imaging Procedure](https://healthterminologies.gov.au/fhir/ValueSet/imaging-procedure-1),[Imaging Anatomic Region Of Interest](https://healthterminologies.gov.au/fhir/ValueSet/imaging-anatomic-region-of-interest-1),[Immunisation Anatomical Site](https://healthterminologies.gov.au/fhir/ValueSet/immunisation-anatomical-site-1),[Immunisation Route of Administration](https://healthterminologies.gov.au/fhir/ValueSet/immunisation-route-of-administration-1),[Indicator of Hypersensitivity or Intolerance to Substance](https://healthterminologies.gov.au/fhir/ValueSet/indicator-hypersensitivity-intolerance-to-substance-2),[Medication Form](https://healthterminologies.gov.au/fhir/ValueSet/medication-form-1),[Medication Ingredient](https://healthterminologies.gov.au/fhir/ValueSet/medication-ingredient-1),[Medication Reason Taken](https://healthterminologies.gov.au/fhir/ValueSet/medication-reason-taken-1),[Medicine Substitution Reason](https://healthterminologies.gov.au/fhir/ValueSet/medicine-substitution-reason-1),[Practitioner Role](https://healthterminologies.gov.au/fhir/ValueSet/practitioner-role-1),[Procedure](https://healthterminologies.gov.au/fhir/ValueSet/procedure-1),[Reason for Encounter](https://healthterminologies.gov.au/fhir/ValueSet/reason-for-encounter-1),[Reason for Request](https://healthterminologies.gov.au/fhir/ValueSet/reason-for-request-1),[Reason Vaccine Administered](https://healthterminologies.gov.au/fhir/ValueSet/reason-vaccine-administered-1),[Reason Vaccine Not Administered](https://healthterminologies.gov.au/fhir/ValueSet/reason-vaccine-not-administered-3),[Related Person Relationship Type](https://healthterminologies.gov.au/fhir/ValueSet/related-person-relationship-type-1),[Service Type](https://healthterminologies.gov.au/fhir/ValueSet/service-type-1),[Specimen Collection Procedure](https://healthterminologies.gov.au/fhir/ValueSet/specimen-collection-procedure-1),[Specimen Container Type](https://healthterminologies.gov.au/fhir/ValueSet/specimen-container-type-1),[Specimen Type](https://healthterminologies.gov.au/fhir/ValueSet/specimen-type-1),[Substance](https://healthterminologies.gov.au/fhir/ValueSet/substance-1),[Vaccination Target Disease](https://healthterminologies.gov.au/fhir/ValueSet/vaccination-target-disease-1) | NCTS | Australian Digital Health Agency |
| [Standard country or area codes for statistical use (M49)](http://unstats.un.org/unsd/methods/m49/m49.htm) | [Jurisdiction ValueSet - AU Extended](ValueSet-au-jurisdiction-extended.md) | UNSD | United Nations Statistics Division |
| [Tags for the Identification of Languages](https://terminology.hl7.org/CodeSystem-v3-ietf3066.html) | [Common Languages in Australia](https://healthterminologies.gov.au/fhir/ValueSet/common-languages-australia-2) | HL7 Terminology (THO) | Health Level Seven International |
| [Task Business Status](CodeSystem-task-business-status.md) | This CodeSystem is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content) | AU Base | HL7 Australia |
| [Time Zones](https://terminology.hl7.org/ECS_MR-IANATimeZoneDatabase.html) | [AU Time Zone](ValueSet-au-timezone.md) | HL7 Terminology (THO) | Internet Assigned Numbers Authority (IANA) |

### Concept Maps

See the [FHIR terminology section](http://hl7.org/fhir/R4/terminologies-conceptmaps.html) for a complete discussion on concept maps and a list of concept map names used in FHIR. Most concept maps relevant to this guide are defined in the FHIR standard. The following Australian concept maps are unique to this guide and not listed in the FHIR standard. These are relevant to value sets that are bound to AU Base profiles.

**Concept maps published in the NCTS**

* [Australian States and Territories v1 to Australian States and Territories v2](https://healthterminologies.gov.au/fhir/ConceptMap/australian-states-territories-v1-to-v2-1)
* [METeOR Indigenous Status 291036 to Australian Indigenous Status](https://healthterminologies.gov.au/fhir/ConceptMap/meteor-indigenous-291036-to-australian-indigenous-status-2)
* [METeOR Person Gender 635994 to HL7 FHIR AdministrativeGender](https://healthterminologies.gov.au/fhir/ConceptMap/meteor-person-gender-635994-to-fhir-administrativegender-1)
* [METeOR Person Gender 741825 to HL7 FHIR AdministrativeGender](https://healthterminologies.gov.au/fhir/ConceptMap/meteor-person-gender-741825-to-fhir-administrativegender-1)
* [METeOR Person Sex 635126 to Biological Sex](https://healthterminologies.gov.au/fhir/ConceptMap/meteor-person-sex-635126-to-biological-sex-1)
* [Reason Vaccine Not Administered v1 to Reason Vaccine Not Administered v2](https://healthterminologies.gov.au/fhir/ConceptMap/reason-vaccine-not-administered-v1-to-v2-1)
* [Reason Vaccine Not Administered v2 to Reason Vaccine Not Administered v3](https://healthterminologies.gov.au/fhir/ConceptMap/reason-vaccine-not-administered-v2-to-v3-1)

