### Usage Notes

**Profile specific implementation guidance:**
- Results that are free text or report form are represented in `DiagnosticReport.presentedForm`.
- Results that are structured in FHIR resources are referenced in `DiagnosticReport.result`. Each referenced Observation resource represents an individual diagnostic test and result value or component result values, or a study / panel which references other Observations in `Observation.hasMember`.
- When constructing a report for a study / panel:
  - the individual component examinations are referenced by that grouping Observation in `Observation.hasMember` and not directly referenced in `DiagnosticReport.result`
  - `DiagnosticReport.code` and the study / panel Observation `Observation.code` should be the same concept if the report contains only the results of that study / panel
- See each Identifier profile page for guidance related to that identifier type.
- For guidance on representing a pathology report issued by the diagnostic service provider, the [AU Base Pathology Report](StructureDefinition-au-pathologyreport.html) profile is preferred.
- For guidance on representing an imaging report issued by the diagnostic service provider, the [AU Base Diagnostic Imaging Report](StructureDefinition-au-imagingreport.html) profile is preferred.
- This profile supports the sex, gender, and related concepts of: Sex Parameter for Clinical Use:
   - When exchanging concepts of sex or gender, refer to the guidance in [Sex and Gender](sexgender.html) and the [Gender Harmony Implementation Guide](http://hl7.org/xprod/ig/uv/gender-harmony/).