**Extension: Medication Brand Name** *[[FMM 1](guidance.html)]*

This extension applies to the Medication, MedicationRequest, MedicationDispense and MedicationStatement resources and is used to represent the brand name of a medication.


#### Usage Notes
This extension is not to be the sole representation of the medication concept; it shall not be used as a substitute for medication code (e.g. Medication.code or MedicationStatement.medicationCodeableConcept). If a system can only supply branded product information in text form, that information will be supplied in the text portion of that code e.g. code.text or medicationCodeableConcept.text.

This extension only supports the name portion of a medication concept, not the branded product or product pack information. It is available for use for where a system needs to separate out the brand name string for handling or other processing. It may be used in conjunction with the [Medication Generic Name](StructureDefinition-medication-generic-name.html) extension.


#### Examples
No examples are available for this extension.

