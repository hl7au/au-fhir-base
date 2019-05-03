**AU Base Medication Statement**  *[[FMM Level 2](guidance.html)]*

This profile defines a medication statement structure including core localisation concepts for use in an Australian context. 

#### Medication Reference/Coding
Full medication definitions as a Medication resource can be referenced or codings are use be used to define relevant drug/medication concepts. This includes coding as:
* PBS Item Code - Pharmaceutical Benefits Scheme coding, claiming context is not relevant as medicine coding.
* GTIN - Global Trade Item Number, physical product reference.
* AMT Code - Australian Medicines Terminology, national drug terminology.
* MIMS Package - commonly used medicine coding.

#### Extensions
Extensions used in this profile:
* MedicationStatement: Long Term [<sup>[1]</sup>](http://hl7.org.au/fhir/StructureDefinition/medication-long-term)
* MedicationStatement.medication.coding: Medication Type [<sup>[1]</sup>](http://hl7.org.au/fhir/StructureDefinition/medication-type)
* MedicationStatement: Medication Brand Name [<sup>[1]</sup>](http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-medication-brand-name.html)
* MedicationStatement: Medication Generic Drug Name [<sup>[1]</sup>](http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-medication-generic-name.html)


**Examples**

[Practitioner reports patient is taking Roferon-A three times a week on Mon Wed Sat](MedicationStatement-MedicationStatementexample0.html)

[Long-term use of medication Zoloft](MedicationStatement-MedicationStatementexample1.html)

[Practitioner reports patient has had Diflucan](MedicationStatement-MedicationStatementexample2.html)


