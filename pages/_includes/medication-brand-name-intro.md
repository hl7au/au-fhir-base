**Extension: Medication Brand Name** *[[FMM Level 1](guidance.html)]*

This extension applies to the Medication, MedicationRequest, MedicationDispense amd MedicationStatement resources and provides brand name of a medication.


#### Usage Notes
It is recommended to include multiple coded values where medication concepts are to be represented where available rather than text name only.


#### Usage Notes
It is recommended to include multiple coded values where medication concepts are to be represented where available rather than text name only.

Where a system cannot include a coded value (only text name can be supplied) it is expected that:
* where a system has both brand name and generic name, brand name will form part of the text representation of the concept and optionally be supplied in this extension, and generic name is supplied in this extension
* where a system only has brand name, the brand name will form part of the text representation of the concept and optionally be supplied in this extension
* where a system is unable to determine if the text is brand name or generic name, the text will only be supplied as the text representation of the concept and will not be suppplied in this extension



#### Examples
[Medication with brand name text](Medication-BrandedPack1.html)

[Prescription with brand name text](MedicationRequest-medicationrequest-example2.html)