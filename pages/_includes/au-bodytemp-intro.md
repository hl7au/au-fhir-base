**AU Body Temperature** *[[FMM Level 0](guidance.html)]*

This profile provides an observation information structure for a patient’s vital sign body temperature measurement.

It has been derived from the core R4 specification [Body Temperature](http://hl7.org/fhir/StructureDefinition/bodytemp) vital signs profile. 
Refer to that profile for an outline of its mandatory requirements.


#### Usage Notes
* Requires appropriate SNOMED CT coding
* Compatible with core [Body Temperature](http://hl7.org/fhir/StructureDefinition/bodytemp) vital signs profile
* Coded measurement units are restricted to metric only


#### Extensions

No extensions are used in this profile.


#### Examples

[Body Temperature Observation - normal](Observation-bodytemp-example0.html)

[Body Temperature Observation - high, with performer, interpretation, bodySite, method and referenceRange](Observation-bodytemp-example1.html)

[Body Temperature Observation - low, measured in the right ear by tympanic thermometry](Observation-bodytemp-example2.html)
