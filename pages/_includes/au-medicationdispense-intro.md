**AU Base Medication Dispense**  *[[FMM Level 2](guidance.html)]*

This profile defines a medication dispense structure including core localisation concepts for use as a dispense record in an Australian context.

#### Medication Reference/Coding
Full medication definitions as a Medication resource can be referenced or codings are use be used to define relevant drug/medication concepts. This includes coding as:
* PBS Item Code - Pharmaceutical Benefits Scheme coding, claiming context is not relevant as medicine coding.
* GTIN - Global Trade Item Number, physical product reference.
* AMT Code - Australian Medicines Terminology, national drug terminology.
* MIMS Package - commonly used medicine coding.

#### Identifiers
These definitions, defined as profiles of [Identifier](http://hl7.org/fhir/R4/datatypes.html#Identifier), represent common data held in the MedicationDispense.identifier element:
* [AU Local Dispense Identifier](StructureDefinition-au-localdispenseidentifier.html)[<sup>[1]</sup>](http://ns.electronichealth.net.au/id/hpio-scoped/dispense/1.0/index.html){:target="_blank"}


#### Extensions
Extensions used in this profile:
* MedicationDispense:[Subsidised Concurrent Supply](StructureDefinition-subsidised-concurrent-supply.html)
* MedicationDispense:[Dispense Number](StructureDefinition-dispense-number.html)
* MedicationDispense:[Medication Brand Name](StructureDefinition-medication-brand-name.html) 
* MedicationDispense:[Medication Generic Drug Name](StructureDefinition-medication-generic-name.html)
* MedicationDispense.medication.coding: [Medication Type](StructureDefinition-medication-type.html)

#### Usage Notes
Medication Brand Name and Medication Generic Drug Name extensions should not be used when medicationReference is used. 
These text-only extensions are supplied to support a brand and/or generic name where no concept coding is available. When a brand and/or generic concept coding is available medicationCodeableConcept should be used. 
If extensions Medication Brand Name or Medication Generic Drug Name are used then medicationCodeableConcept must also be used.
