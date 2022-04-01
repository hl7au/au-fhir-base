**AU Blood Pressure** *[[DRAFT 0](guidance.html)]*

This profile provides an observation information structure for a patient’s vital sign blood pressure measurement.

This profile identifies the additional cardinality, value sets and other constraints that build on [Blood Pressure](http://hl7.org/fhir/StructureDefinition/bp) for use in an Australian context. 


#### Extensions

No extensions are used in this profile.


#### Usage Notes

Both the systolic and diastolic components must be present and missing values for either can be represented with Observation.component.dataAbsentReason.


#### Examples

[Blood pressure: isolated diastolic hypertension](Observation-bloodpressure-example0.html)

[Blood pressure: systemic hypertension, with interpretation, bodySite, method and referenceRange](Observation-bloodpressure-example1.html)

[Blood pressure: normal reading, simple structure](Observation-bloodpressure-example2.html)

