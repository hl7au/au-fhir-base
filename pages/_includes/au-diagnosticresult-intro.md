**AU Diagnostic Result**  *[[FMM Level 0](guidance.html)]*

This profile defines an observation structure to represent a diagnostic investigation result issued by a diagnostic service provider in an Australian context. The observation may represent the result of a simple investigation or it may group the set of results of a multi-modality procedure or multi-test study / panel.

This profile may be used to represent a specialist or other diagnostic (not imaging or pathology) observation including results of audiology studies, sleep studies or speech pathology.

#### Extensions
Extensions used in this profile:
* Observation: [bodySite](https://www.hl7.org/fhir/r4/extension-bodysite.html) (core extension) 

#### Boundaries and relationships
Use the [AU Pathology Result](StructureDefinition-au-pathologyresult.html) profile to represent the result of a pathology test.

Use the [AU Diagnostic Imaging Result](StructureDefinition-au-imagingresult.html) profile to represent the result of a radiology examination or an imaging intensive diagnostic investigation.


#### Usage Notes
The bodySite extension may be used when a coded concept does not provide the necessary detail needed for the use case.


#### Examples

There are no examples available for this profile.