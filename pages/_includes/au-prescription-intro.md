**AU Base Prescription** *[FMM Level [0](http://build.fhir.org/versions.html#maturity)]*

This profile defines a prescription information structure including core localisation concepts for Australia.

#### Identifiers
These definitions represent common data held in the MedicationDispense.identifier element:
* Electronic Transfer of Prescription Supplier Identifier - ETP vendor system identifier 
* Local Prescription Number - prescription system identifier for this record

#### Extensions
Extensions used in this profile:
* MedicationRequest: Grounds for Concurrent Supply of Medication [<sup>[1]</sup>](http://hl7.org.au/fhir/StructureDefinition/grounds-for-concurrent-supply)
* MedicationReqest: Minimum Interval Between Repeats [<sup>[1]</sup>](http://hl7.org.au/fhir/StructureDefinition/minimum-interval-between-repeats)
* MedicationRequest.medication.coding: Medication Type [<sup>[1]</sup>](http://hl7.org.au/fhir/StructureDefinition/medication-type)

**Examples**

[Prescription for Stribild  with concurrent supply](MedicationRequest-medicationrequest-example1.html)

[Prescription for paracetamol + codeine](MedicationRequest-medicationrequest-example0.html)

