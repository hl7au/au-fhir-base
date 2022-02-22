**Extension: Medication Brand Name** *[[FMM 1](guidance.html)]*

This extension applies to the Medication, MedicationRequest, MedicationDispense and MedicationStatement resources and is used to represent the brand name of a medication.


#### Usage Notes
This extension is not to be the sole representation of the medication concept; it should be used in conjunction with the medication code e.g. Medication.code or MedicationStatement.medicationCodeableConcept.

Where a system cannot include a medication coded value, in other words where only a text value is available it is expected that:
* where a system has both brand name and generic name, brand name will form part of the medication code text and optionally be supplied in brand name extension, and generic name is supplied in the generic name extension
* where a system only has brand name, the brand name form part of medication code text and optionally be supplied in the brand name extension
* where a system is unable to determine if the text is brand name or generic name, the text will only be supplied in medication code text


#### Examples
No examples are available for this extension.

