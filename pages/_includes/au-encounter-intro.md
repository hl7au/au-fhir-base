**AU Base Encounter**  *[[FMM 1](guidance.html)]*

This profile defines an encounter structure including core localisation concepts for use in an Australian context. This profile is intended to be applicable for recording details of ambulatory and non-ambulatory patient encounters in an Australian healthcare context.

The purpose of this profile is to provide national level agreement on core localised concepts. 

This profile does not force conformance to core localised concepts. It enables implementers and modellers to make their own rules, i.e. [profiling](http://hl7.org/fhir/profiling.html), about how to support these concepts for specific implementation needs.


#### Extensions

Extensions used in this profile:
* Encounter: [Encounter Description](StructureDefinition-encounter-description.html)
* Encounter: [Associated Healthcare Service](StructureDefinition-associated-healthcareservice.html)


#### Conversion

NOTE: AU Base on STU3 included two extensions Encounter Origin Organisation, and Encounter Destination Organisation which are now no longer required as direct R4 support is available.


#### Examples

[Admitted for elective bronchoscopy](Encounter-example0.html)

[Involved in a rear end motor vehicle accident](Encounter-example1.html)