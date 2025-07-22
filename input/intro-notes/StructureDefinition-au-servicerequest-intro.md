### Usage Notes

**Profile specific implementation guidance:**
- The [procedure-targetBodyStructure](http://hl7.org/fhir/R4/extension-procedure-targetbodystructure.html) extension may be suitable for use where
   - body site is not implicit in the code found in `ServiceRequest.code` and  
   - body site information is to be handled as a separate resource (e.g. to identify and track separately) instead of an inline coded element in `ServiceRequest.bodySite`. 
- See each Identifier profile page for guidance related to that identifier type.
- This profile supports the sex, gender, and related concepts of: Sex Parameter for Clinical Use:
   - When exchanging concepts of sex or gender, refer to the guidance in [Sex and Gender](sexgender.html) and the [Gender Harmony Implementation Guide](http://hl7.org/xprod/ig/uv/gender-harmony/).

**Extensions under consideration:**
* ServiceRequest: [Result Copies To](StructureDefinition-result-copies-to.html) 