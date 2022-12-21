### Usage Notes

**Profile specific implementation guidance:**
- Results that are free text or report form are represented in `DiagnosticReport.presentedForm`.
- Results that are structured in FHIR resources are referenced in `DiagnosticResult.result`. Each referenced Observation resource represents an individual diagnostic test and result value or component result values, or a study / panel which references other Observations in `Observation.hasMember`.
- When constructing a report for a study / panel:
  - the individual component examinations are referenced by that grouping Observation in `Observation.hasMember` and not directly referenced in `DiagnosticReport.result`
  - `DiagnosticReport.code` and the study / panel Observation `Observation.code` should be the same concept if the report contains only the results of that study / panel
- See each Identifier profile page for guidance related to that identifier type.
- See the [AU Base Pathology Report](StructureDefinition-au-pathologyreport.html) profile for guidance on representing a pathology report issued by the diagnostic service provider.
- See the [AU Base Diagnostic Imaging Report](StructureDefinition-au-imagingreport.html) profile for guidance on representing an imaging report issued by the diagnostic service provider.