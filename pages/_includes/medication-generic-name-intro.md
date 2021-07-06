**Extension: Medication Generic Name**  *[[FMM Level 1](guidance.html)]*

This extension applies to the Medication, MedicationRequest, MedicationDispense and MedicationStatement resources and is used to represent generic name of a medication.

The generic medication text name may not be the same as the subject medication (prescribed, dispensed or stated) but may be used to provide an additional or equivalent drug name that is a generic medication concept.


#### Usage Notes
This extension is not to be the sole representation of the medication concept; it should be used in conjunction with the medication code e.g. Medication.code or MedicationStatement.codeableConcept.


#### Examples
[Medication with generic name text](Medication-BrandedPack1.html)

[Prescription with generic name text](MedicationRequest-medicationrequest-example2.html)


