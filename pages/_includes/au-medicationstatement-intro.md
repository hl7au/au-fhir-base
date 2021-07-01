**AU Base Medication Statement**  *[[FMM Level 2](guidance.html)]*

This profile defines a medication statement structure including core localisation concepts for use in an Australian context. 

The purpose of this profile is to provide national level agreement on core localised concepts. 

This profile does not force conformance to core localised concepts. It enables implementers and modellers to make their own rules, i.e. [profiling](http://hl7.org/fhir/profiling.html), about how to support these concepts for specific implementation needs.

#### Medication Reference/Coding
Full medication definitions as a Medication resource can be referenced or codings are use be used to define relevant drug/medication concepts. This includes coding as:
* PBS Item Code - Pharmaceutical Benefits Scheme coding, claiming context is not relevant as medicine coding.
* GTIN - Global Trade Item Number, physical product reference.
* AMT Code - Australian Medicines Terminology, national drug terminology.
* MIMS Package - commonly used medicine coding.

#### Extensions
Extensions used in this profile:
* MedicationStatement: [Long Term](StructureDefinition-medication-long-term.html)
* MedicationStatement: [Medication Brand Name](StructureDefinition-medication-brand-name.html)
* MedicationStatement: [Medication Generic Drug Name](StructureDefinition-medication-generic-name.html)
* MedicationStatement.medication.coding: [Medication Type](StructureDefinition-medication-type.html)


#### Usage Notes
A full medication definition as medicationReference or medicationCodeableConcept can be included to define the drug/medication concept. Medication definition includes coding as:
* [PBS Item Code](https://www.pbs.gov.au/pbs/home) - Pharmaceutical Benefits Scheme coding, claiming context is not relevant as medicine coding
* [Medication Package Global Trade Item Number](https://www.gs1.org/standards/id-keys/gtin) - Global Trade Item Number (GTIN) physical product reference
* [AMT Medicines](https://www.healthterminologies.gov.au/integration/R4/fhir/ValueSet/australian-medication-1) - Australian Medicines Terminology, national drug terminology
* [MIMS Package](https://www.mims.com.au/index.php) - commonly used medicine coding

When supplying a medicationReference, the extensions Medication Brand Name and Medication Generic Drug Name are not be used. These extensions are available on the referenced Medication resource and should be instantiated there if this information is included.

Where a system cannot include a coded value (only MedicationStatement.medicationCodeableConcept.text can be supplied) it is expected that:
* where a system has both brand name and generic name, brand name will form part of the MedicationStatement.medicationCodeableConcept.text and optionally be supplied in brand name extension, and generic name is supplied in the generic name extension
* where a system only has brand name, the brand name form part of MedicationStatement.medicationCodeableConcept.text and optionally be supplied in the brand name extension
* where a system only has generic name, the generic name form part of MedicationStatement.medicationCodeableConcept.text and optionally be supplied in the generic name extension
* where a system is unable to determine if the text is brand name or generic name, the text will only be supplied MedicationStatement.medicationCodeableConcept.text


#### Examples
[Practitioner reports patient is taking Roferon-A three times a week on Mon Wed Sat](MedicationStatement-MedicationStatementexample0.html)

[Long-term use of medication Zoloft](MedicationStatement-MedicationStatementexample1.html)

[Practitioner reports patient has had Diflucan](MedicationStatement-MedicationStatementexample2.html)


