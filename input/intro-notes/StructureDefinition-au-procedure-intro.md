### Usage Notes

**Profile specific implementation guidance:**
- the [procedure-targetBodyStructure](http://hl7.org/fhir/R4/extension-procedure-targetbodystructure.html) extension may be suitable for use where
   - the body site is not implicit in the code found in `Procedure.code` and  
   - body site information is to be handled as a separate resource (e.g. to identify and track separately) instead of an inline coded element in `Procedure.bodySite`. 
