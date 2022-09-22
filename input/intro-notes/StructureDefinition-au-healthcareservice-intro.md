**AU Base Healthcare Service** *[[FMM 3](guidance.html)]*

This profile defines a healthcare service structure that localises core concepts, including identifiers and terminology, for use in an Australian context.

The purpose of this profile is to provide national level agreement on core localised concepts. 

This profile does not force conformance to core localised concepts. It enables implementers and modellers to make their own rules, i.e. [profiling](http://hl7.org/fhir/profiling.html), about how to support these concepts for specific implementation needs.


#### Identifiers

These definitions, defined as profiles of [Identifier](http://hl7.org/fhir/R4/datatypes.html#Identifier), represent common data held in the HealthcareService.identifier element:
* [Healthcare Provider Identifier – Organisation (HPI-O)](StructureDefinition-au-hpio.html) [<sup>[1]</sup>](http://ns.electronichealth.net.au/id/hi/hpio/1.0/index.html){:target="_blank"} [<sup>[2]</sup>](http://meteor.aihw.gov.au/content/index.phtml/itemId/426830){:target="_blank"}
* [AU Residential Aged Care Service Identifier](StructureDefinition-au-residentialagedcareserviceidentifier.html) [<sup>[1]</sup>](http://ns.electronichealth.net.au/id/residential-aged-care-service-id){:target="_blank"}


#### Extensions

Extensions used in this profile:
* HealthcareService.availableTime.availableStartTime: [Australian Time Zone](StructureDefinition-au-timezone.html)
* HealthcareService.availableTime.availableEndTime: [Australian Time Zone](StructureDefinition-au-timezone.html)

Potentially useful extensions:
* HealthcareService.telecom: [Contact Purpose](StructureDefinition-contact-purpose.html)

#### Usage Notes

HPI-O is used as an identifier in this profile to support the case where network HPI-Os are issued for sub-organisations, departments, or other logical divisions acting as specific healthcare services. This is useful in the absence of any specific national identifier for healthcare service entities.

To indicate the purpose of a contact point (e.g. telecom), the extension Contact Purpose could be used.


#### Conversion

NOTE: AU Base on STU3 included two extensions Healthcare Service Eligibility Detail, and Healthcare Service Communication which are now no longer required as direct R4 support is available.


#### Examples

[HealthcareService with HPI-O and SNOMED-CT coded specialty](HealthcareService-example0.html)

[Albion Hospital radiology service](HealthcareService-example1.html)

[Albion Hospital pathology service](HealthcareService-example2.html)

[Strahan general practitioner services](HealthcareService-example3.html)

[Leafy Grove Home for the Aged](HealthcareService-example4.html)

[Honourable Mark's Home For Aged Men](HealthcareService-example5.html)