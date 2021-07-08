**AU Base Medication** *[[FMM Level 2](guidance.html)]*

This profile defines a medication structure including core localisation concepts for use in an Australian context. 

The purpose of this profile is to provide national level agreement on core localised concepts. 

This profile does not force conformance to core localised concepts. It enables implementers and modellers to make their own rules, i.e. [profiling](http://hl7.org/fhir/profiling.html), about how to support these concepts for specific implementation needs.


#### Extensions
Extensions used in this profile:
* Medication: [Medication Brand Name](StructureDefinition-medication-brand-name.html)
* Medication: [Medication Generic Drug Name](StructureDefinition-medication-generic-name.html)
* Medication.code.coding: [Medication Type](StructureDefinition-medication-type.html)


#### Usage Notes
A full medication definition as medicationReference or medicationCodeableConcept can be included to define the drug/medication concept. Medication definition includes coding as:
* [PBS Item Code](https://www.pbs.gov.au/pbs/home) - Pharmaceutical Benefits Scheme coding, claiming context is not relevant as medicine coding
* [Medication Package Global Trade Item Number](http://terminology.hl7.org/ValueSet/v3-GTIN) - Global Trade Item Number (GTIN) physical product reference
* [AMT Medicines](https://healthterminologies.gov.au/fhir/ValueSet/australian-medication-1) - Australian Medicines Terminology, national drug terminology
* [MIMS Package](https://www.mims.com.au/index.php) - commonly used medicine coding

Where a system cannot include a coded value (only Medication.code.text can be supplied) it is expected that:
* where a system has both brand name and generic name, brand name will form part of the Medication.code.text and optionally be supplied in brand name extension, and generic name is supplied in the generic name extension
* where a system only has brand name, the brand name form part of Medication.code.text and optionally be supplied in the brand name extension
* where a system only has generic name, the generic name form part of Medication.code.text and optionally be supplied in the generic name extension
* where a system is unable to determine if the text is brand name or generic name, the text will only be supplied Medication.code.text


#### Examples
[Fluconazole Dose Based Medication](Medication-MedicationDoseBased.html)

[Paracetamol Generic Pack](Medication-GenericPack0.html)

[Nexium Hp7 Brand Pack](Medication-BrandedPack0.html)

[Clarithromycin 500mg Tablet Unbranded Product](Medication-UnbrandedProduct0.html)

[Esomeprazole 20mg Tablet Unbranded Product](Medication-UnbrandedProduct1.html)

[Amoxicillin 500mg Capsule Unbranded Product](Medication-UnbrandedProduct2.html)

[Norvasc 10 mg Tablet Brand Product with Batch Details](Medication-BrandProductwithBatchDetails0.html)


The following examples have been taken from the [National guidelines for on-screen display of clinical medicines information – January 2016](https://www.safetyandquality.gov.au/publications/national-guidelines-for-on-screen-display-of-clinical-medicines-information/) published by the Australian Commission on Safety and Quality in Health Care. Care has been taken with the clinical content in the structured data, and construction of narrative to be consistent with the guidelines:

[Single active ingredient product: pack-based](Medication-BrandedPackSingleActiveIngredient0.html)

[Two active ingredients product](Medication-TwoActiveIngredientsProduct0.html)

[Product with four or more active ingredients](Medication-FourOrMoreActiveIngredientsProduct0.html)
