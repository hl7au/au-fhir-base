### Usage Notes

**Profile specific implementation guidance:**
- The [BodyStructure Reference](http://hl7.org/fhir/R4/extension-bodysite.html) extension may be suitable for use where
   - body site is not implicit in the code found in `Observation.code` and  
   - body site information cannot be adequately captured by a single inline coded element in `Observation.bodySite`.
- When sending an observation that represents a study series or panel:
  - the group / panel code is sent in `Observation.code`
  - the overall comments are sent in `Observation.note`
  - the global interpretation by the producer of the study is sent in `Observation.interpretation`
  - individual results may be sent in `Observation.component` or by referencing individual observation results in `Observation.hasMember`
- When sending observations that group the set of results of a multi-modality procedure:
  - A multi-modality procedure observation is sent with individual component examinations in `Observation.hasMember`.
  - An individual component examination observation is referenced by that multi-modality procedure observation (`Observation.hasMember`) rather than directly at the diagnostic report level (`DiagnosticReport.result`).
