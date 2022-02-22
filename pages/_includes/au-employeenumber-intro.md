**AU Employee Number**  *[[FMM 1](guidance.html)]*

This identifier profile defines an employee number (sometimes referred to as an employee identifier (EI)) in an Australian context. An employee number is an organisation's identifier for an individual employed by that organisation.


#### Extensions

No extensions are used in this profile.


#### Usage Notes

It is preferable that an organisation uses their own local system identifier namespace but if that is not available then an organisation can use their ABN or HPI-O to construct a legal globally unique identifier system for their local identifiers. 

See the Australian Digital Health Agency's [R4 FAQ](https://github.com/AuDigitalHealth/ci-fhir-r4/wiki/Frequently-Asked-Questions) for guidance on constructing an ABN-scoped[<sup>[1]</sup>](http://ns.electronichealth.net.au/id/abn-scoped/service-provider-individual/1.0/index.html){:target="_blank"} employee number or an HPI-O scoped[<sup>[2]</sup>](http://ns.electronichealth.net.au/id/hpio-scoped/service-provider-individual/1.0/index.html){:target="_blank"} employee number.


#### Examples

[Pathologist with ABN-scoped employee number and SNOMED CT coded specialty](PractitionerRole-example2.html)