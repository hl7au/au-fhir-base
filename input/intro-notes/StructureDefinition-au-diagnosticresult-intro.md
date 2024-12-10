### Usage Notes

**Profile specific implementation guidance:**
- The [bodyStructure](http://hl7.org/fhir/R4/extension-bodysite.html) extension may be suitable for use where
   - body site is not implicit in the code found in `Observation.code` and  
   - body site information is to be handled as a separate resource (e.g. to identify and track separately) instead of an inline coded element in `Observation.bodySite`. 
- See the [AU Base Pathology Result](StructureDefinition-au-pathologyresult.html) profile for guidance on representing the result of a pathology test.
- See the [AU Base Diagnostic Imaging Result](StructureDefinition-au-imagingresult.html) profile for guidance on representing the result of a radiology examination or an imaging intensive diagnostic investigation.