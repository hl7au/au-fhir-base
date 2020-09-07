**AU Base Healthcare Service** *[[FMM Level 3](guidance.html)]*

This profile defines a healthcare service structure that localises core concepts, including identifiers and terminology, for use in an Australian context.

The purpose of this profile is to provide national level agreement on core localised concepts. 

This profile does not force conformance to core localised concepts. It enables implementers and modellers to make their own rules, i.e. [profiling](http://hl7.org/fhir/profiling.html), about how to support these concepts for specific implementation needs.

#### Identifiers
These definitions, defined as profiles of [Identifier](http://hl7.org/fhir/R4/datatypes.html#Identifier), represent common data held in the HealthcareService.identifier element:
* [Healthcare Provider Identifier – Organisation (HPI-O)](StructureDefinition-au-hpionumber.html) [<sup>[1]</sup>](http://ns.electronichealth.net.au/id/hi/hpio/1.0/index.html){:target="_blank"} [<sup>[2]</sup>](http://meteor.aihw.gov.au/content/index.phtml/itemId/426830){:target="_blank"}

#### Extensions
No extensions are used in this profile.

Other potentially useful extensions:
* HealthcareService.telecom: [Contact Purpose](http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-contact-purpose.html)

#### Usage Notes
HPI-O is used as an identifier in this profile to support the case where network HPI-Os are issued for sub-organisations, departments, or other logical divisions acting as specific healthcare services. This is useful in the absence of any specific national identifier for healthcare service entities.

When it is necessary to indicate the purpose of a contact point (e.g. telecom), the extension Contact Purpose could be used.

#### Conversion

NOTE: AU Base on STU3 included two extensions Healthcare Service Eligibility Detail, and Healthcare Service Communication which are now no longer required as direct R4 support is available.

**Examples**

[HealthcareService with HPI-O and SNOMED-CT coded specialty](HealthcareService-example0.html)

[Albion Hospital Radiology Service](HealthcareService-example1.html)

[Albion Hospital Pathology Service](HealthcareService-example2.html)

[Strahan General Practitioner Services](HealthcareService-example3.html)

