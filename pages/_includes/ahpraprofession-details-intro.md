**Extension: AHPRA Profesion Details** *[[FMM Level 1](guidance.html)]*

This extension applies to Practitioner resource and defines Australian Health Practitioner Regulation Agency (AHPRA) [<sup>[1]</sup>](https://www.ahpra.gov.au){:target="_blank"} [<sup>[2]</sup>](https://www.ahpra.gov.au/Support/Glossary.aspx#Registration%20Number){:target="_blank"} Profession Details in an Australian context.

**Examples**

[AHPRA qualified Practitioner](Practitioner-example4.html)

#### Usage Notes
Where a sending system includes a practitioner's qualification using their AHPRA Profession details, this should be done using Practitioner.qualification(ahpraProfession-details). 
A practitioner's AHPRA Registration Number may be included as an identifier, using Practitioner.identifier([AUAHPRARegistrationNumber](StructureDefinition-au-ahpraregistrationnumber.html)).
For guidance the attributes of each AHPRA registration from a Practitioner information exchange (PIE) interoperability specification are mapped to elements in a profiled Pracitioner resource [here](../web-content/notes/ahpra-registration-number/index.html){:target="_blank"}.
