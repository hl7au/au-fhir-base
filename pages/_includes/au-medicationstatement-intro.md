**AU Base Medication Statement**  *[[FMM 2](guidance.html)]*

This profile defines a medication statement structure including core localisation concepts for use in an Australian context. 

The purpose of this profile is to provide national level agreement on core localised concepts. 

This profile does not force conformance to core localised concepts. It enables implementers and modellers to make their own rules, i.e. [profiling](http://hl7.org/fhir/profiling.html), about how to support these concepts for specific implementation needs.


#### Extensions
Extensions used in this profile:
* MedicationStatement: [Long Term](StructureDefinition-medication-long-term.html)
* MedicationStatement.medication.coding: [Medication Type](StructureDefinition-medication-type.html)

Potentially useful extensions:
* MedicationStatement: [Medication Brand Name](StructureDefinition-medication-brand-name.html)
* MedicationStatement: [Medication Generic Drug Name](StructureDefinition-medication-generic-name.html)


#### Usage Notes
A full medication definition as medicationReference or medicationCodeableConcept can be included to define the drug/medication concept. Medication definition includes coding as:
* [PBS Item Code](https://www.pbs.gov.au/pbs/home) - Pharmaceutical Benefits Scheme coding, claiming context is not relevant as medicine coding
* [Medication Package Global Trade Item Number](http://terminology.hl7.org/ValueSet/v3-GTIN) - Global Trade Item Number (GTIN) physical product reference
* [AMT Medicines](https://healthterminologies.gov.au/fhir/ValueSet/australian-medication-1) - Australian Medicines Terminology, national drug terminology
* [MIMS Package](https://www.mims.com.au/index.php) - commonly used medicine coding


#### Examples
[Practitioner reports patient is taking Roferon-A three times a week on Mon Wed Sat](MedicationStatement-MedicationStatementexample0.html)

[Long-term use of medication Zoloft](MedicationStatement-MedicationStatementexample1.html)

[Practitioner reports patient has had Diflucan](MedicationStatement-MedicationStatementexample2.html)


