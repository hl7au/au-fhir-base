The generic medication text name may not be the same as the subject medication (prescribed, dispensed or stated) but may be used to provide an additional or equivalent drug name that is a generic medication concept.


### Usage Notes
This extension is not to be the sole representation of the medication concept; it shall not be used as a substitute for medication code (e.g. Medication.code or MedicationStatement.medicationCodeableConcept). If a system can only supply generic product information, and only in text form, that information will be supplied in the text portion of that code e.g. code.text or medicationCodeableConcept.text.

This extension only supports the name portion of a medication concept, not the generic product or product pack information. It is available for use for where a system needs to separate out the generic name string for handling or other processing. It may be used in conjunction with the [Medication Brand Name](StructureDefinition-medication-brand-name.html) extension.
