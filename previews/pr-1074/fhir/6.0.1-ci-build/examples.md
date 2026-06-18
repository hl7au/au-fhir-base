# Examples - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* **Examples**

## Examples

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

The following examples are published with this guide and all are available as a downloadable zip file [here](downloads.md#examples).

These example instances show what data produced and consumed by systems conforming with this implementation guide might look like. Every effort has been made to ensure that the examples are correct and useful, but they are not a normative part of the specification nor are they fully representative of real world examples.

In addition to the examples defined in this implementation, synthetic (realistic but not real) test data for developers and testers that conforms to HL7 Australia FHIR implementation guides is maintained in the [HL7 AU FHIR Test Data](https://github.com/hl7au/au-fhir-test-data) repository.

### AllergyIntolerance

* [AllergyIntolerance - ibuprofen allergy](AllergyIntolerance-example0.md)

* [AllergyIntolerance - self-reported allergy to eggs](AllergyIntolerance-example1.md)

* [AllergyIntolerance - self-reported intolerance to lactose](AllergyIntolerance-example2.md)

* [AllergyIntolerance - no known allergy](AllergyIntolerance-example3.md)

### BodyStructure

* [BodyStructure - Bone tissue of left shoulder](BodyStructure-example0.md)

* [BodyStructure - Blister of right foot](BodyStructure-example1.md)

### Bundle

* [Bundle - Medicine list in a bundle](Bundle-example0.md)

### Composition

* [​Composition - with some sections having a different section author to the composition author](Composition-different-authors.md)

* [Composition - Patient’s preference upon death](Composition-example0.md)

* [Composition - with multiple information recipients](Composition-multiple-information-recipients.md)

### Condition

* [Condition - with evidence and onset date-time](Condition-example0.md)

### Coverage

* [Coverage - DVA Gold Card](Coverage-dva.md)

* [Coverage - private health insurer](Coverage-private.md)

### Device

* [Device - as a registered repository service](Device-example1.md)

### Encounter

* [Encounter - with description](Encounter-example0.md)

* [Encounter - Annual check up](Encounter-example1.md)

### Endpoint

* [Endpoint - a secure messaging endpoint example](Endpoint-example0.md)

* [Downunder Hospital FHIR API](Endpoint-example1.md)

### HealthcareService

* [HealthcareService - with HPI-O with varied contact details](HealthcareService-example0.md)

* [HealthcareService - a typical Healthcare Service the Radiologist belongs to](HealthcareService-example1.md)

* [HealthcareService - of a Pathologist](HealthcareService-example2.md)

* [HealthcareService - general practice](HealthcareService-example3.md)

* [HealthcareService - Leafy Grove Home for the Aged](HealthcareService-example4.md)

* [HealthcareService - Honourable Mark's Home For Aged Men](HealthcareService-example5.md)

### Immunization

* [Immunization - Non-administration of varicella-zoster live vaccine due to refusal](Immunization-example0.md)

* [Immunization - Administration of a vaccine - record compliant with Australian Immunisation Register (AIR)](Immunization-example1.md)

* [Immunization - Administration of a vaccine with administering provider and protocol](Immunization-example2.md)

* [Immunization - Administration of Pfizer Comirnaty dose 1 for Sarah Simmons](Immunization-example3.md)

### List

* [List - Medicine list with referenced entries](List-example0.md)

* [List - Medicine list with no known current medicine](List-example1.md)

* [List - Medicine list with changes](List-example2.md)

* [List - Medicine list authored by a related person](List-example3.md)

### Location

* [Location - a hospital location with managing organisation of example0](Location-example0.md)

* [Location - of a Practitioner as a Radiologist](Location-example1.md)

* [Location - of a Practitioner as a Pathologist](Location-example2.md)

* [Location - of a Practitioner as a General Practitioner](Location-example3.md)

* [Location - for services delivered by phone, video or online](Location-example4.md)

* [Location - for mobile services that can be delivered in a person's house, apartment, or unit](Location-example5.md)

* [Location - for mobile services that can be delivered in schools](Location-example6.md)

* [Location - for mobile services that can be delivered in residential care facilities](Location-example7.md)

* [Location - Leafy Grove Home for the Aged](Location-example8.md)

* [Location - Leafy Grove Home for the Not Very Aged](Location-example9.md)

### Medication

* [Medication - Branded Pack with Batch Details](Medication-BrandProductwithBatchDetails0.md)

* [Medication - Branded Pack of Nexium HP7 20;500;500](Medication-BrandedPack0.md)

* [Medication - branded pack](Medication-BrandedPack1.md)

* [Medication - Branded Pack With Single Active Ingredient](Medication-BrandedPackSingleActiveIngredient0.md)

* [Medication - dose based](Medication-DoseBased.md)

* [Medication - with four or more active ingredients](Medication-FourOrMoreActiveIngredientsProduct0.md)

* [Medication - Generic Pack of paracetamol 500mg (100)](Medication-GenericPack0.md)

* [Medication - with backported R5 Ingredient Strength Element](Medication-IngredientStrengthExtension0.md)

* [Medication - with Generic Name and Medication Strength Extensions](Medication-StrengthExtension0.md)

* [Medication - with Medication Strength Extension](Medication-StrengthExtension1.md)

* [Medication - with two active ingredients product](Medication-TwoActiveIngredientsProduct0.md)

* [Medication - Unbranded Product of clarithromycin 500mg tablet](Medication-UnbrandedProduct0.md)

* [Medication - Unbranded Product of esomeprazole 20mg tablet](Medication-UnbrandedProduct1.md)

* [Medication - Unbranded product of amoxicillin 500mg capsule](Medication-UnbrandedProduct2.md)

* [Medication - uncoded medicinal product information](Medication-UncodedProduct0.md)

### MedicationAdministration

* [MedicationAdministration - Administration of Chlorsig eye drops](MedicationAdministration-example0.md)

* [MedicationAdministration - Self-administration of lantus 100 units/mL injection](MedicationAdministration-example1.md)

### MedicationDispense

* [MedicationDispense - First dispense for Reaptan](MedicationDispense-example0.md)

* [MedicationDispense - Second dispense for Reaptan](MedicationDispense-example1.md)

### MedicationRequest

* [MedicationRequest - a prescription for codeine with paracetamol](MedicationRequest-example0.md)

* [MedicationRequest - a prescription for Stribild tablet](MedicationRequest-example1.md)

* [MedicationRequest - Prescription with brand and generic name extensions](MedicationRequest-example2.md)

### MedicationStatement

* [MedicationStatement - of a record of a patient's use of medication](MedicationStatement-example0.md)

* [MedicationStatement - of a record of a patient's long-term use of medication](MedicationStatement-example1.md)

* [MedicationStatement - Practitioner reports patient has taken Diflucan in the past but is not taking it any more](MedicationStatement-example2.md)

### Observation

* [Observation - of no relevant finding of procedure](Observation-norelevantfinding-example0.md)

* [Observation - of no relevant finding of immunisations](Observation-norelevantfinding-example1.md)

* [Observation - of no relevant finding of known history of conditions](Observation-norelevantfinding-example2.md)

* [Observation - of no relevant finding of patient taking any medications](Observation-norelevantfinding-example3.md)

* [Observation - Measurement of Hepatitis B surface antibody](Observation-specimen-hepatitis-b-serology.md)

### Organization

* [Organization - a Pathology organisation with HPI-O and is a parent organization](Organization-5-8631-1.md)

* [Organization - with HPI-O](Organization-example0.md)

* [Organization - a typical Organisation the Radiologist belongs to](Organization-example1.md)

* [Organization - Holistic Medical Pty Ltd with ABN and HPI-O](Organization-example2.md)

* [Organization - a typical Organisation the General Practitioner belongs to](Organization-example3.md)

* [Organization - a hospital with an HPIO](Organization-example4.md)

* [Organization - The Corporation of the Council of the Ward of Nundah](Organization-example5.md)

* [Organization - a Pathology organisation with NATA Number, ARBN, ABN, ACN, HPI-O and PAI-O](Organization-example6.md)

* [Organization - with HSP-O](Organization-example7.md)

* [Organization - with HAE](Organization-example8.md)

### Patient

* [Patient - with Birth Date Accuracy Indicator of AAA](Patient-DateAccuracyIndicatorAAAexample0.md)

* [Patient - with Birth Date Accuracy Indicator of AAU](Patient-DateAccuracyIndicatorAAUexample1.md)

* [Patient - with Birth Date Accuracy Indicator of UAA](Patient-DateAccuracyIndicatorUAAexample2.md)

* [Patient - with Birth Date Accuracy Indicator of UEA](Patient-DateAccuracyIndicatorUEAexample3.md)

* [Patient - with Birth Date Accuracy Indicator of UUU](Patient-DateAccuracyIndicatorUUUexample4.md)

* [Patient - structured Australian Address](Patient-address-example0.md)

* [Patient - unstructured Australian Address](Patient-address-example1.md)

* [Patient - Australian No Fixed Address](Patient-address-example2.md)

* [Patient - Australian address with identifiers](Patient-address-example3.md)

* [Patient - as transgender person with sex and gender and sex parameter for clinical use](Patient-example-sex-and-gender.md)

* [Patient - with IHI, Medicare Card Number, patient internal identifier and the extension for Indigenous Status](Patient-example0.md)

* [Patient - with IHI, DVA Number (with specific card colour) and the extension for Indigenous Status](Patient-example1.md)

* [Patient - with no birth date, and is eligible for Closing the Gap registration](Patient-example2.md)

* [Patient - with birth date and birth time](Patient-example3.md)

* [Patient - as a child born in 2008](Patient-example4.md)

* [Patient - as a mother for the patient in example 4](Patient-example5.md)

* [Patient - as a Culturally and linguistically diverse (CALD) patient 1](Patient-example6.md)

* [Patient - as a Culturally and linguistically diverse (CALD) patient 2](Patient-example7.md)

* [Patient - male born in 1949 with address and contact details](Patient-example8.md)

### Practitioner

* [Practitioner - sex and gender](Practitioner-example-sex-and-gender.md)

* [Practitioner - with HPI-I and Prescriber Number](Practitioner-example0.md)

* [Practitioner - as a Radiologist](Practitioner-example1.md)

* [Practitioner - as a Pathologist](Practitioner-example2.md)

* [Practitioner - a typical Practitioner as a General Practitioner](Practitioner-example3.md)

* [Practitioner - a typical Ahpra registered professional](Practitioner-example4.md)

### PractitionerRole

* [PractitionerRole - with Provider Number and ANZSCO coded role](PractitionerRole-example0.md)

* [PractitionerRole - a typical Practitioner Role as a Radiologist](PractitionerRole-example1.md)

* [PractitionerRole - as a Pathologist](PractitionerRole-example2.md)

* [PractitionerRole - a typical Practitioner Role as a General Practitioner](PractitionerRole-example3.md)

* [PractitionerRole - with assigning authority](PractitionerRole-example4.md)

### Procedure

* [Procedure - Cryotherapy](Procedure-example0.md)

* [Procedure - Cardiac catheterisation](Procedure-example1.md)

* [Procedure - Stent placement](Procedure-example2.md)

### RelatedPerson

* [RelatedPerson - as family member with sex and gender](RelatedPerson-example-sex-and-gender.md)

* [RelatedPerson - as attester party](RelatedPerson-example0.md)

* [RelatedPerson - as a carer for an older patient](RelatedPerson-example1.md)

* [RelatedPerson - as a mother for the patient in example 4](RelatedPerson-example2.md)

* [RelatedPerson - as father](RelatedPerson-example3.md)

### ServiceRequest

* [ServiceRequest - for Hepatitis B surface antibody measurement](ServiceRequest-hepatitis-b-antibody.md)

* [ServiceRequest - full blood count, and sex parameter for clinical use](ServiceRequest-path-example0.md)

### Specimen

* [Specimen - Serum sample](Specimen-serum.md)

### Substance

* [Substance - body substance of epiglottic mucus](Substance-example0.md)

* [Substance - peanuts as an allergen](Substance-example1.md)

