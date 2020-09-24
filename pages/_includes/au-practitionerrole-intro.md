**AU Base Practitioner Role** *[[FMM Level 3](guidance.html)]*

This profile defines a practitioner role structure that localises core concepts, including identifiers and terminology, for use in an Australian context.

The purpose of this profile is to provide national level agreement on core localised concepts. 

This profile does not force conformance to core localised concepts. It enables implementers and modellers to make their own rules, i.e. [profiling](http://hl7.org/fhir/profiling.html), about how to support these concepts for specific implementation needs.

#### Identifiers
These definitions, defined as profiles of [Identifier](http://hl7.org/fhir/R4/datatypes.html#Identifier), represent common data held in the PractitionerRole.identifier element:
* [Medicare Provider Number](StructureDefinition-au-medicareprovidernumber.html) [<sup>[1]</sup>](http://ns.electronichealth.net.au/id/medicare-provider-number/index.html){:target="_blank"} [<sup>[2]</sup>](http://meteor.aihw.gov.au/content/index.phtml/itemId/601956){:target="_blank"}
* [National Provider Identifier at Organisation (NPIO)](StructureDefinition-au-nationalprovideridentifieratorganisation.html) [<sup>[1]</sup>](http://hl7.org.au/id/npio/index.html){:target="_blank"}
* [Employee Number](StructureDefinition-au-employeenumber.html) [<sup>[1]</sup>](http://ns.electronichealth.net.au/id/abn-scoped/service-provider-individual/1.0/index.html){:target="_blank"} [<sup>[2]</sup>](http://ns.electronichealth.net.au/id/hpio-scoped/service-provider-individual/1.0/index.html){:target="_blank"}

#### Extensions
Potentially useful extensions:
* PractitionerRole.telecom: [Contact Purpose](http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-contact-purpose.html)

#### Usage Notes
When it is necessary to indicate the purpose of a contact point (e.g. telecom), the extension Contact Purpose could be used.

**Examples**

[Practitioner Role with Medicare provider number and SNOMED-CT coded specialty](PractitionerRole-example0.html)

[Radiologist with ABN-scoped employee number](PractitionerRole-example1.html)

[Pathologist with ABN-scoped employee number](PractitionerRole-example2.html)

[General Practitioner with Medicare provider number and SNOMED-CT coded specialty](PractitionerRole-example3.html)
