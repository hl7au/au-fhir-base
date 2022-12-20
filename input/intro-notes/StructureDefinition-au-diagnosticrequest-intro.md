#### Usage Notes

**Profile specific implementation guidance:**
- the [procedure-targetBodyStructure](http://hl7.org/fhir/R4/extension-procedure-targetbodystructure.html) extension may be suitable for use where
   - the body site is not implicit in the code found in `ServiceRequest.code` and  
   - body site information is to be handled as a separate resource (e.g. to identify and track separately) instead of an inline coded element in `ServiceRequest.bodySite`. 
- `ServiceRequest.code` for a pathology order is preferred to be a member of the [RCPA - SPIA Requesting Pathology Terminology Reference Set](https://www.healthterminologies.gov.au/integration/R4/fhir/ValueSet/spia-requesting-refset-3). 
- `ServiceRequest.code` for an imaging order is preferred to be a member of the [Imaging Procedure](https://healthterminologies.gov.au/fhir/ValueSet/imaging-procedure-1) value set.
- See each Identifier profile page for guidance related to that identifier type.

**Extensions under consideration:**
* ServiceRequest: [Result Copies To](StructureDefinition-result-copies-to.html) 