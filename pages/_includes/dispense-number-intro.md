**Extension: Dispense Number** *[[FMM Level 2](guidance.html)]*

This extension applies to the MedicationDispense resource and is used to represent the dispense number or sequence number that has been reached for a therapeutic good prescribed with repeats.

#### Usage Notes
The value of this extension is 1 when there are no repeats. The value increments by one each time a dispense act is successfully completed.

#### Examples

[First dispense for Reaptan](MedicationDispense-medicationdispense-example0.html) against [Prescription for Reaptan](MedicationRequest-medicationrequest-example2.html)

[Second dispense for Reaptan](MedicationDispense-medicationdispense-example1.html) against [Prescription for Reaptan](MedicationRequest-medicationrequest-example2.html)