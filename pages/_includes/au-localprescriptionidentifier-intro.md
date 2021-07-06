**AU Local Prescription Identifier**  *[[FMM Level 0](guidance.html)]*

This identifier profile defines a local prescription identifier (sometimes referred to as prescription number) in an Australian context. A local prescription identifier is an organisation's identifier for a prescription in that organisation's local system set of prescriptions.

A local prescription identifier allows linking of a prescription to a system's local identifier.


#### Extensions

No extensions are used in this profile.


#### Usage Notes

It is preferable that an organisation uses their own local system identifier namespace but if that is not available then an organisation can use their HPI-O to construct a legal globally unique identifier system for their local identifiers. 

See the Australian Digital Health Agency's [R4 FAQ](https://github.com/AuDigitalHealth/ci-fhir-r4/wiki/Frequently-Asked-Questions) for guidance on constructing an HPI-O scoped[<sup>[1]</sup>](http://ns.electronichealth.net.au/id/hpio-scoped/prescription/1.0/index.html){:target="_blank"} local prescription identifier.


#### Examples

[Prescription for Stribild  with concurrent supply](MedicationRequest-medicationrequest-example1.html)

[Prescription for paracetamol + codeine](MedicationRequest-medicationrequest-example0.html)