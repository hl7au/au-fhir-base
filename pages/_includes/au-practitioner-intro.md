**AU Base Practitioner** *[[FMM Level 3](guidance.html)]*

This profile defines a practitioner structure that localises core concepts, including identifiers and terminology, for use in an Australian context.

The purpose of this profile is to provide national level agreement on core localised concepts. 

This profile does not force conformance to core localised concepts. It enables implementers and modellers to make their own rules, i.e. [profiling](http://hl7.org/fhir/profiling.html), about how to support these concepts for specific implementation needs.
#### Identifiers
These definitions, defined as profiles of [Identifier](http://hl7.org/fhir/R4/datatypes.html#Identifier), represent common data held in the Practitioner.identifier element:
* [Healthcare Provider Identifier - Individual (HPI-I)](StructureDefinition-au-hpii.html) [<sup>[1]</sup>](http://ns.electronichealth.net.au/id/hi/hpii/1.0/index.html){:target="_blank"} 
* [PBS Prescriber Number](StructureDefinition-au-pbsprescribernumber.html) [<sup>[1]</sup>](http://ns.electronichealth.net.au/id/medicare-prescriber-number/index.html){:target="_blank"}
* [Care Agency Employee (CAE) Identifier](StructureDefinition-au-careagencyemployeeidentifier.html) [<sup>[1]</sup>](http://ns.electronichealth.net.au/id/pcehr/caei/1.0/index.html){:target="_blank"}
* [Australian Health Practitioner Regulation Agency (AHPRA) Registration Number](StructureDefinition-au-ahpraregistrationnumber.html) [<sup>[1]</sup>](https://www.ahpra.gov.au){:target="_blank"} [<sup>[2]</sup>](https://www.ahpra.gov.au/Support/Glossary.aspx#Registration%20Number){:target="_blank"}

#### Qualifications
These definitions represent common data held in the Practitioner.qualification element:

* Australian Health Practitioner Regulation Agency (AHPRA) Registration Number [<sup>[1]</sup>](https://www.ahpra.gov.au){:target="_blank"} [<sup>[2]</sup>](https://www.ahpra.gov.au/Support/Glossary.aspx#Registration%20Number){:target="_blank"}

#### Extensions
No extensions are used in this profile.

#### Usage Notes
Where a sending system includes a practitioner's qualification using their AHPRA Registration Number, this should be done using Practitioner.qualification([ahpraProfession-details](StructureDefinition-ahpraprofession-details.html)) and Practitioner.qualification([ahpraRegistration-details](StructureDefinition-ahpraprofession-details.html)) 
A practitioner's AHPRA Registration Number may also be included as an identifier, using Practitioner.identifier([AUAHPRARegistrationNumber](StructureDefinition-au-ahpraregistrationnumber.html)).
For guidance, the attributes of each AHPRA registration from a Practitioner information exchange (PIE) interoperability specification are mapped to elements in a profiled Practitioner resource [here](../web-content/notes/ahpra-registration-number/index.html){:target="_blank"}.

**Examples**

[Practitioner with HPI-I, Prescriber Number, AHPRA Registration Number, and CAE Identifier](Practitioner-example0.html)

[Qualified Radiologist](Practitioner-example1.html)

[Qualified Pathologist](Practitioner-example2.html)

[AHPRA Registered General Practitioner](Practitioner-example3.html)

[AHPRA Registered Practitioner with extended AHPRA data](Practitioner-example4.html)