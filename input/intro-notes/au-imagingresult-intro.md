The observation may represent the result of a simple examination or it may group the set of results produced by a study series. In the latter cases, the observation carries the code of the study / panel and the overall comments in the note element, or a global interpretation by the producer of the study in the interpretation element. The observation references the individual observations that make up the study as ‘has-member’ child observations.

#### Usage Notes

The bodySite extension may be used when a coded concept does not provide the necessary detail needed for the use case.

When sending observations that group the set of results of a multi-modality procedure:
* a multi-modality procedure observation is sent with individual component examinations in Observation.hasMember
* an individual component examination observation is referenced by that multi-modality procedure observation (Observation.hasMember) rather than directly at the diagnostic report level (DiagnosticReport.result)
