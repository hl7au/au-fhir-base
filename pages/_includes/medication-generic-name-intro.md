**Extension: Medication Generic Name**  *[[FMM Level 1](guidance.html)]*

This extension applies to the Medication, MedicationRequest, MedicationDispense and MedicationStatement resources and provides generic name of a medication.

The generic medication text name may not be the same as the subject medication (prescribed, dispensed or stated) but may be used to provide an additional or equivalent drug name that is a generic medication concept.


#### Usage Notes
It is recommended to include multiple coded values where medication concepts are to be represented where available rather than text name only.

Where a system cannot include a coded value (only text name can be supplied) it is expected that:
* where a system has both brand name and generic name, brand name will form part of the text representation of the concept and optionally be supplied in brand name extension, and generic name is supplied in this extension
* where a system only has generic name, the generic name will form part of the text representation of the concept and optionally be supplied in this extension
* where a system is unable to determine if the text is brand name or generic name, the text will only be supplied as the text representation of the concept and will not be supplied in this extension

#### Examples
[Medication with generic name text](Medication-BrandedPack1.html)

[Prescription with generic name text](MedicationRequest-medicationrequest-example2.html)


