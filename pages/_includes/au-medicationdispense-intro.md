**AU Base Medication Dispense**  *[[FMM 2](guidance.html)]*

This profile defines a medication dispense structure including core localisation concepts for use as a dispense record in an Australian context.

The purpose of this profile is to provide national level agreement on core localised concepts. 

This profile does not force conformance to core localised concepts. It enables implementers and modellers to make their own rules, i.e. [profiling](http://hl7.org/fhir/profiling.html), about how to support these concepts for specific implementation needs.


#### Identifiers
These definitions, defined as profiles of [Identifier](http://hl7.org/fhir/R4/datatypes.html#Identifier), represent common data held in the MedicationDispense.identifier element:
* [Local Dispense Identifier](StructureDefinition-au-localdispenseidentifier.html)[<sup>[1]</sup>](http://ns.electronichealth.net.au/id/hpio-scoped/dispense/1.0/index.html){:target="_blank"}


#### Extensions
Extensions used in this profile:
* MedicationDispense: [Subsidised Concurrent Supply](StructureDefinition-subsidised-concurrent-supply.html)
* MedicationDispense: [Dispense Number](StructureDefinition-dispense-number.html)
* MedicationDispense.medication.coding: [Medication Type](StructureDefinition-medication-type.html)

Potentially useful extensions:
* MedicationDispense: [Medication Brand Name](StructureDefinition-medication-brand-name.html) 
* MedicationDispense: [Medication Generic Drug Name](StructureDefinition-medication-generic-name.html)



#### Usage Notes
A full medication definition as medicationReference or medicationCodeableConcept can be included to define the drug/medication concept. Medication definition includes coding as:
* [PBS Item Code](https://www.pbs.gov.au/pbs/home) - Pharmaceutical Benefits Scheme coding, claiming context is not relevant as medicine coding
* [Medication Package Global Trade Item Number](http://terminology.hl7.org/ValueSet/v3-GTIN) - Global Trade Item Number (GTIN) physical product reference
* [AMT Medicines](https://healthterminologies.gov.au/fhir/ValueSet/australian-medication-1) - Australian Medicines Terminology, national drug terminology
* [MIMS Package](https://www.mims.com.au/index.php) - commonly used medicine coding


#### Examples

[First dispense for Reaptan](MedicationDispense-medicationdispense-example0.html) against [Prescription for Reaptan](MedicationRequest-medicationrequest-example2.html)

[Second dispense for Reaptan](MedicationDispense-medicationdispense-example1.html) against [Prescription for Reaptan](MedicationRequest-medicationrequest-example2.html)
