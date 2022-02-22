**AU Blood Pressure** *[[DRAFT 0](guidance.html)]*

This profile provides an observation information structure for a patient’s vital sign blood pressure measurement.

It has been derived from the core R4 specification [Blood Pressure](http://hl7.org/fhir/StructureDefinition/bp) vital signs profile. 
Refer to that profile for an outline of its mandatory requirements.


#### Usage Notes
* Requires appropriate SNOMED CT coding
* Both the systolic and diastolic components must be present and missing values for either can be represented with Observation.component.dataAbsentReason


#### Extensions

No extensions are used in this profile.


#### Examples

[Blood Pressure - isolated diastolic hypertension](Observation-bloodpressure-example0.html)

[Blood Pressure - systemic hypertension, with interpretation, bodySite, method and referenceRange](Observation-bloodpressure-example1.html)

[Blood Pressure - normal reading, simple structure](Observation-bloodpressure-example2.html)

