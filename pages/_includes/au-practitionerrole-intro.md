**AU Base Practitioner Role** *[[FMM Level 3](guidance.html)]*

This profile defines a practitioner role structure that localises core concepts, including identifiers and terminology, for use in an Australian context.

The purpose of this profile is to provide national level agreement on core localised concepts. 

This profile does not force conformance to core localised concepts. It enables implementers and modellers to make their own rules, i.e. [profiling](http://hl7.org/fhir/profiling.html), about how to support these concepts for specific implementation needs.


#### Identifiers

These definitions, defined as profiles of [Identifier](http://hl7.org/fhir/R4/datatypes.html#Identifier), represent common data held in the PractitionerRole.identifier element:
* [Medicare Provider Number](StructureDefinition-au-medicareprovidernumber.html) [<sup>[1]</sup>](http://ns.electronichealth.net.au/id/medicare-provider-number/index.html){:target="_blank"} [<sup>[2]</sup>](http://meteor.aihw.gov.au/content/index.phtml/itemId/601956){:target="_blank"}
* [National Provider Identifier at Organisation (NPIO)](StructureDefinition-au-nationalprovideridentifieratorganisation.html) [<sup>[1]</sup>](http://hl7.org.au/id/npio/index.html){:target="_blank"}
* [Employee Number](StructureDefinition-au-employeenumber.html)  - ABN scoped[<sup>[1]</sup>](http://ns.electronichealth.net.au/id/abn-scoped/service-provider-individual/1.0/index.html){:target="_blank"}, HPI-O scoped [<sup>[2]</sup>](http://ns.electronichealth.net.au/id/hpio-scoped/service-provider-individual/1.0/index.html){:target="_blank"}


#### Extensions

Extensions used in this profile:
* PractitionerRole.availableTime.availableStartTime: [Australian Time Zone](StructureDefinition-au-timezone.html)
* PractitionerRole.availableTime.availableEndTime: [Australian Time Zone](StructureDefinition-au-timezone.html)

Potentially useful extensions:
* PractitionerRole.telecom: [Contact Purpose](StructureDefinition-contact-purpose.html)


#### Usage Notes

To indicate the purpose of a contact point (e.g. telecom), the extension Contact Purpose could be used.

When selecting a PractitionerRole code, if a system is unable to provide a code from the preferred value set [Practitioner Role](https://healthterminologies.gov.au/fhir/ValueSet/practitioner-role-1) because the implementation context is not restricted to healthcare practitioner providers then it is recommended to select from the wider set available in SNOMED CT. If a suitable code from SNOMED CT is not available a code from the value set [Australian and New Zealand Standard Classification of Occupations](https://healthterminologies.gov.au/fhir/ValueSet/anzsco-1) may be used.


#### Examples

[Practitioner Role with Medicare provider number and SNOMED CT coded specialty](PractitionerRole-example0.html)

[Radiologist with National Provider Identifier at Organisation](PractitionerRole-example1.html)

[Pathologist with ABN-scoped employee number and SNOMED CT coded specialty](PractitionerRole-example2.html)

[General Practitioner with Medicare provider number and SNOMED CT coded specialty](PractitionerRole-example3.html)

[Cardiologist with Medicare provider number and vendor directory identifier, with HL7 V2 Assigning Authority](PractitionerRole-example4.html)
