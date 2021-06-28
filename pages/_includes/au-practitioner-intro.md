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


#### Extensions
Extensions used in this profile:
* Practitioner.qualification.ahpraprofession-details: [AHPRA Profession Details](StructureDefinition-ahpraprofession-details.html)
* Practitioner.qualification.ahpraregistration-details: [AHPRA Registration Details](StructureDefinition-ahpraregistration-details.html)


#### Usage Notes
Where including information from AHPRA about a practitioner, Practitioner.qualification should be instantiated with either the extension [ahpraprofession-details](StructureDefinition-ahpraprofession-details.html) or [ahpraregistration-details](StructureDefinition-ahpraregistration-details.html). Detailed guidance on representing AHPRA data in Practitioner is available [here](http://hl7.org.au/notes/ahpra-registration-number/index.html){:target="_blank"}.

The [ahpraprofession-details](StructureDefinition-ahpraprofession-details.html) extension supports inclusion of an AHPRA profession code and information about conditions, undertakings, reprimands and cautions in a qualification element instance representing a practitioner’s AHPRA profession.

The [ahpraregistration-details](StructureDefinition-ahpraregistration-details.html) extension supports inclusion of an AHPRA profession code and information about division, speciality, registration status, endorsements and notations in a qualification element instance representing a practitioner’s AHPRA registration.

Tertiary qualifications and professional memberships should be represented by instantiating an instance of Practitioner.qualification for each qualification to be included. Where a suitable code is not yet available, textual representation may be provided in Practitioner.qualification.code.text. Work around terminology for Australian college memberships is being considered; if completed the concepts are expected to be available in the preferred value set [V2 Degree/License/Certificate - AU Extended](ValueSet-au-v2-0360.html).


#### Examples

[Practitioner with HPI-I, Prescriber Number, AHPRA Registration Number, and CAE Identifier](Practitioner-example0.html)

[Qualified Radiologist](Practitioner-example1.html)

[Qualified Pathologist](Practitioner-example2.html)

[AHPRA Registered General Practitioner](Practitioner-example3.html)

[AHPRA Registered Practitioner with extended AHPRA data](Practitioner-example4.html)