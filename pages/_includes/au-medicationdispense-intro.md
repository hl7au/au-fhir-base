**AU Base Medication Dispense**  *[[FMM Level 1](guidance.html)]*

This profile defines a medication dispense structure including core localisation concepts for use as a dispense record in an Australian context.

#### Medication Reference/Coding
Full medication definitions as a Medication resource can be referenced or codings are use be used to define relevant drug/medication concepts. This includes coding as:
* PBS Item Code - Pharmaceutical Benefits Scheme coding, claiming context is not relevant as medicine coding.
* GTIN - Global Trade Item Number, physical product reference.
* AMT Code - Australian Medicines Terminology, national drug terminology.
* MIMS Package - commonly used medicine coding.


#### Identifiers
These definitions represent common data held in the MedicationDispense.identifier element:
* Local Dispense Identifier - dispenser system identifier for this record [<sup>[1]</sup>](http://ns.electronichealth.net.au/id/hpio-scoped/dispense/1.0/index.html){:target="_blank"}


#### Extensions
Extensions used in this profile:
* MedicationDispense: Grounds for Concurrent Supply [<sup>[1]</sup>](http://hl7.org.au/fhir/StructureDefinition/grounds-for-concurrent-supply)
* MedicationDispense: Dispense Number [<sup>[1]</sup>](http://hl7.org.au/fhir/StructureDefinition/dispense-number)
* MedicationDispense.medication.coding: Medication Type [<sup>[1]</sup>](http://hl7.org.au/fhir/StructureDefinition/medication-type) - used to distinguish a level classification when the same coding system is used.
* MedicationDispense: Medication Brand Name [<sup>[1]</sup>](http://hl7.org.au/fhir/StructureDefinition/medication-brand-name) - this text only extension is supplied to support brand name content where no coding is available, use medicationReference or medicationCodeable concept if code is available.
* MedicationDispense: Medication Generic Drug Name [<sup>[1]</sup>](http://hl7.org.au/fhir/StructureDefinition/medication-generic-name) - this text only extension is supplied to support generic name content where no coding is available, use medicationReference or medicationCodeable concept if code is available.
