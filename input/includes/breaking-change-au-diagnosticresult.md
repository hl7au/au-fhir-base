<div class="stu-note" markdown="1">
#### Breaking Change in 5.0.0 [See All](changes.html#breakingchanges)

Implementers should note that the use of [BodyStructure Reference Extension](http://hl7.org/fhir/StructureDefinition/bodySite) and FHIR R4 [Observation.bodySite](https://hl7.org/fhir/r4/observation-definitions.html#Observation.bodySite) are now mutually exclusive in [AU Base Diagnostic Result](StructureDefinition-au-diagnosticresult.html). This aligns with future constraints using the FHIR R5 Observation resource and makes the source of related body site unambiguous.
 </div>