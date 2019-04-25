**AU Base Prescription** *[[FMM Level 1](guidance.html)]*

This profile defines a medication request structure including core localisation concepts for use as a medication prescription or order in an Australian context.

#### Identifiers
These definitions represent common data held in the MedicationRequest.identifier element:
* Electronic Transfer of Prescription Supplier Identifier - ETP vendor system identifier 
* Local Prescription Number - prescription system identifier for this record [<sup>[1]</sup>](http://ns.electronichealth.net.au/id/hpio-scoped/prescription/1.0/index.html){:target="_blank"}

#### Extensions
Extensions used in this profile:
* MedicationRequest: Grounds for Concurrent Supply of Medication [<sup>[1]</sup>](http://hl7.org.au/fhir/StructureDefinition/grounds-for-concurrent-supply)
* MedicationReqest: Minimum Interval Between Repeats [<sup>[1]</sup>](http://hl7.org.au/fhir/StructureDefinition/minimum-interval-between-repeats)
* MedicationRequest.medication.coding: Medication Type [<sup>[1]</sup>](http://hl7.org.au/fhir/StructureDefinition/medication-type)
* MedicationRequest: Medication Brand Name [<sup>[1]</sup>](http://hl7.org.au/fhir/StructureDefinition/medication-brand-name)
* MedicationRequest: Medication Generic Drug Name [<sup>[1]</sup>](http://hl7.org.au/fhir/StructureDefinition/medication-generic-name)

**Examples**

[Prescription for Stribild  with concurrent supply](MedicationRequest-medicationrequest-example1.html)

[Prescription for paracetamol + codeine](MedicationRequest-medicationrequest-example0.html)

