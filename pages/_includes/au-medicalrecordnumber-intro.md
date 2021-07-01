**AU Medical Record Number**  *[[FMM Level 0](guidance.html)]*

This identifier profile defines a Medical Record Number (MRN) (sometimes referred to as Unit Record Number (URN) or (UR)) in an Australian context. An MRN is an institution's identifier for a patient's record at that institution. A patient may have more than one MRN for a single institution due to organisational restructures. 

#### Usage Notes
It is preferable that an organisation uses their own local system identifier namespace but if that is not available then an organisation can use their ABN or HPI-O to construct a legal globally unique identifier system for their local identifiers. 

See the Australian Digital Health Agency's [R4 FAQ](https://github.com/AuDigitalHealth/ci-fhir-r4/wiki/Frequently-Asked-Questions) for guidance on constructing an ABN-scoped[<sup>[1]</sup>](http://ns.electronichealth.net.au/id/abn-scoped/medicalrecord/1.0/index.html){:target="_blank"} MRN or an HPI-O scoped[<sup>[2]</sup>](http://ns.electronichealth.net.au/id/hpio-scoped/medicalrecord/1.0/index.html){:target="_blank"} MRN.

**Examples**

[Patient born in 2008, with ethnicity](Patient-example4.html)

[Patient with interpreter required in particular language](Patient-example6.html)

[Patient with interpreter required and language unknown](Patient-example7.html)