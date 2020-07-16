**AU Medicare Provider Number**  *[[FMM Level 0](guidance.html)]*

This identifier profile defines a Medicare Provider Number[<sup>[1]</sup>](http://ns.electronichealth.net.au/id/medicare-provider-number/index.html){:target="_blank"} [<sup>[2]</sup>](http://meteor.aihw.gov.au/content/index.phtml/itemId/270101){:target="_blank"} in an Australian context. 

#### Usage Notes

Medicare Provider Number is defined as an 8 alphanumeric string. The format of the value of the identifier is 8 characters, made up of:

* 6 digits, zero-filled
* the seventh character (the One Practice Location Value (PLV)) can be alphanumeric excluding I, O, S, Z, and 0 (zero)
* the eighth character (the check digit) can be one of Y, X, W, T, L, K, J, H, F, B, or A

A Medicare Provider Number is a unique number issued to eligible health professionals who participate in the Medicare Program. Note that any given individual may have multiple provider numbers for different locations.

**Examples**

[Practitioner Role with Provider Number and SNOMED-CT coded specialty](PractitionerRole-example0.html)

[General Practitioner with Medicare Provider Number](PractitionerRole-example3.html)

