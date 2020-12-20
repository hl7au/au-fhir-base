**Extension: AHPRA Profession Details** *[[FMM Level 1](guidance.html)]*

This extension applies to Practitioner resource and defines Australian Health Practitioner Regulation Agency (AHPRA) [<sup>[1]</sup>](https://www.ahpra.gov.au){:target="_blank"} [<sup>[2]</sup>](https://www.ahpra.gov.au/Support/Glossary.aspx#Registration%20Number){:target="_blank"} Profession Details in an Australian context.

**Examples**

[AHPRA Registered Practitioner with extended AHPRA data](Practitioner-example4.html)

#### Usage Notes
**AHPRA data**

Where a system includes information from AHPRA about a practitioner, this can be represented in the qualification backbone element.  Some AHPRA information relates to a practitioner’s AHPRA-regulated profession (possibly more than one), and some relates to a specific registration within that profession.  Information related to the profession, can be represented in an instance of qualification with a code of [‘AUAPHRAProfession’](ValueSet-au-hl7v2-0360.html){:target="_blank"}.  Information related to a specific registration can be represented in an instance of qualification with a code of ['AUAHPRARegistration'](ValueSet-au-hl7v2-0360.html){:target="_blank"}.

The [ahpraprofession-details](StructureDefinition-ahpraprofession-details.html) extension supports the inclusion of the AHPRA profession code and information about conditions, undertakings, reprimands and cautions in a qualification element instance representing a practitioner’s AHPRA profession.

The [ahpraregistration-details](StructureDefinition-ahpraregistration-details.html) extension supports the inclusion of the AHPRA profession code and information about division, speciality, registration status, endorsements and notations in a qualification element instance representing a practitioner’s AHPRA registration.

More detailed guidance on the representation of AHPRA data in a practitioner resource can be found [here](../web-content/notes/ahpra-registration-number/index.html){:target="_blank"}.