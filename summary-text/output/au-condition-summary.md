This profile contains the following variations from [Condition](http://hl7.org/fhir/STU3/Condition):

1. at most one <span style='color:green'> code </span> 
   * at most one <span style='color:green'> coding </span> Clinical Condition (SNOMED CT)
1. zero or more <span style='color:green'> bodySite </span> 
1. exactly one <span style='color:green'> subject </span> Subject of this condition (Reference as: Group \| au-patient)
1. at most one <span style='color:green'> asserter </span> Condition asserted by (Reference as: au-patient \| au-relatedperson \| au-practitioner)
1. zero or more <span style='color:green'> evidence </span> 
   * at most one <span style='color:green'> coding </span> Clinical Finding (SNOMED CT)