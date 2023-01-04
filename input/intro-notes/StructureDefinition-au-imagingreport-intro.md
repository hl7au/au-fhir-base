### Usage Notes

**Profile specific implementation guidance:**
- Results that are free text or report form are represented in `DiagnosticReport.presentedForm`.
- Results that are structured in FHIR resources are referenced in `DiagnosticResult.result`. Each referenced Observation resource represents an individual imaging examination and result value or component result values, or a nested grouping of Observations such as a multi-modality procedure which references other Observations in `Observation.hasMember`.
- When constructing a report for a nested grouping of Observations:
  - the individual imaging examinations are referenced by that grouping Observation in `Observation.hasMember` and not directly referenced in `DiagnosticReport.result`
  - `DiagnosticReport.code` and the grouping Observation `Observation.code` should be the same concept if the report contains only the results of that group.
- See each Identifier profile page for guidance related to that identifier type.
- The radiology laboratory is sent as a reference to an Organization in `DiagnosticReport.performer`.
- Each radiologist is sent as a references to a PractitionerRole resource in `DiagnosticReport.performer`.
  
