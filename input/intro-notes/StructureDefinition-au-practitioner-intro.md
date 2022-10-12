The purpose of this profile is to provide national level agreement on core localised concepts. 

This profile does not force conformance to core localised concepts. It enables implementers and modellers to make their own rules, i.e. [profiling](http://hl7.org/fhir/profiling.html), about how to support these concepts for specific implementation needs.

### Usage Notes
Where including information from AHPRA about a practitioner, Practitioner.qualification should be instantiated with either the extension [ahpraprofession-details](StructureDefinition-ahpraprofession-details.html) or [ahpraregistration-details](StructureDefinition-ahpraregistration-details.html). Detailed guidance on representing AHPRA data in Practitioner is available [here](http://hl7.org.au/notes/ahpra-registration-number/index.html){:target="_blank"}.

The [ahpraprofession-details](StructureDefinition-ahpraprofession-details.html) extension supports inclusion of an AHPRA profession code and information about conditions, undertakings, reprimands and cautions in a qualification element instance representing a practitioner’s AHPRA profession.

The [ahpraregistration-details](StructureDefinition-ahpraregistration-details.html) extension supports inclusion of an AHPRA profession code and information about division, speciality, registration status, endorsements and notations in a qualification element instance representing a practitioner’s AHPRA registration.

Tertiary qualifications and professional memberships should be represented by instantiating an instance of Practitioner.qualification for each qualification to be included. Where a suitable code is not yet available, textual representation may be provided in Practitioner.qualification.code.text. Work around terminology for Australian college memberships is being considered; if completed the concepts are expected to be available in the preferred value set [hl7VS-degreeLicenseCertificate - AU Extended](ValueSet-au-v2-0360-extended.html).
