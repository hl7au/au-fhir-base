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
**AHPRA data**

Where a system includes information from AHPRA about a practitioner, this can be represented in the qualification backbone element.  Some AHPRA information relates to a practitioner’s AHPRA-regulated profession (possibly more than one), and some relates to a specific registration within that profession.  Information related to the profession, can be represented in an instance of qualification with a code of [‘AUAPHRAProfession’](ValueSet-au-hl7v2-0360.html){:target="_blank"}.  Information related to a specific registration can be represented in an instance of qualification with a code of ['AUAHPRARegistration'](ValueSet-au-hl7v2-0360.html){:target="_blank"}.

The [ahpraprofession-details](StructureDefinition-ahpraprofession-details.html) extension supports the inclusion of the AHPRA profession code and information about conditions, undertakings, reprimands and cautions in a qualification element instance representing a practitioner’s AHPRA profession.

The [ahpraregistration-details](StructureDefinition-ahpraregistration-details.html) extension supports the inclusion of the AHPRA profession code and information about division, speciality, registration status, endorsements and notations in a qualification element instance representing a practitioner’s AHPRA registration.

More detailed guidance on the representation of AHPRA data in a practitioner resource can be found [here](http://hl7.org.au/notes/ahpra-registration-number/index.html){:target="_blank"}.


**Qualifications**

The above section describes how to include AHPRA professions and registrations in the qualifications backbone element.

Tertiary qualifications can be included in the qualification backbone element with a code taken from the international value set [HL7 V2 0360 Table](http://hl7.org/fhir/R4/v2/0360/2.7/index.html). There are no plans to add codes for Australian tertiary qualifications. If no suitable code exists in the international valueset, a text representation of the qualification can be included without a coding.

Professional memberships (of colleges etc) can be included in the qualification backbone element using a text representation of the qualification without a coding. Codes for Australian college memberships may be added to the Australian valueset in the future [HL7 V2 0360 Table (Australia)](ValueSet-au-hl7v2-0360.html).


**Examples**

[Practitioner with HPI-I, Prescriber Number, AHPRA Registration Number, and CAE Identifier](Practitioner-example0.html)

[Qualified Radiologist](Practitioner-example1.html)

[Qualified Pathologist](Practitioner-example2.html)

[AHPRA Registered General Practitioner](Practitioner-example3.html)

[AHPRA Registered Practitioner with extended AHPRA data](Practitioner-example4.html)