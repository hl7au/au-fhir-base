**AU Base Medication Request** *[[FMM 2](guidance.html)]*

This profile defines a medication request structure including core localisation concepts for use as a medication prescription or order in an Australian context.

The purpose of this profile is to provide national level agreement on core localised concepts. 

This profile does not force conformance to core localised concepts. It enables implementers and modellers to make their own rules, i.e. [profiling](http://hl7.org/fhir/profiling.html), about how to support these concepts for specific implementation needs.


#### Identifiers
These definitions, defined as profiles of [Identifier](http://hl7.org/fhir/R4/datatypes.html#Identifier), represent common data held in the MedicationRequest.identifier element:
* [ETP Vendor Identifier](StructureDefinition-au-etpprescriptionidentifier.html)
* [Local Prescription Identifier](StructureDefinition-au-localprescriptionidentifier.html)[<sup>[1]</sup>](http://ns.electronichealth.net.au/id/hpio-scoped/prescription/1.0/index.html){:target="_blank"}


#### Extensions
Extensions used in this profile:
* MedicationRequest: [Subsidised Concurrent Supply](StructureDefinition-subsidised-concurrent-supply.html)
* MedicationRequest: [Minimum Interval Between Repeats](StructureDefinition-minimum-interval-between-repeats.html)
* MedicationRequest: [Medication Brand Name](StructureDefinition-medication-brand-name.html) 
* MedicationRequest: [Medication Generic Drug Name](StructureDefinition-medication-generic-name.html)
* MedicationRequest.medication.coding: [Medication Type](StructureDefinition-medication-type.html)


#### Usage Notes
A full medication definition as medicationReference or medicationCodeableConcept can be included to define the drug/medication concept. Medication definition includes coding as:
* [PBS Item Code](https://www.pbs.gov.au/pbs/home) - Pharmaceutical Benefits Scheme coding, claiming context is not relevant as medicine coding
* [Medication Package Global Trade Item Number](http://terminology.hl7.org/ValueSet/v3-GTIN) - Global Trade Item Number (GTIN) physical product reference
* [AMT Medicines](https://healthterminologies.gov.au/fhir/ValueSet/australian-medication-1) - Australian Medicines Terminology, national drug terminology
* [MIMS Package](https://www.mims.com.au/index.php) - commonly used medicine coding

When supplying a medicationReference, the extensions Medication Brand Name and Medication Generic Drug Name are not be used. These extensions are available on the referenced Medication resource and should be instantiated there if this information is included.

Where a system cannot include a coded value (only MedicationRequest.medicationCodeableConcept.text can be supplied) it is expected that:
* where a system has both brand name and generic name, brand name will form part of the MedicationRequest.medicationCodeableConcept.text and optionally be supplied in brand name extension, and generic name is supplied in the generic name extension
* where a system only has brand name, the brand name form part of MedicationRequest.medicationCodeableConcept.text and optionally be supplied in the brand name extension
* where a system only has generic name, the generic name form part of MedicationRequest.medicationCodeableConcept.text and optionally be supplied in the generic name extension
* where a system is unable to determine if the text is brand name or generic name, the text will only be supplied MedicationRequest.medicationCodeableConcept.text


#### Examples
[Prescription for Stribild  with concurrent supply](MedicationRequest-medicationrequest-example1.html)

[Prescription for paracetamol + codeine](MedicationRequest-medicationrequest-example0.html)

[Prescription for Reaptan](MedicationRequest-medicationrequest-example2.html)


