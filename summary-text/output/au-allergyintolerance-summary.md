This profile contains the following variations from [AllergyIntolerance](http://hl7.org/fhir/STU3/AllergyIntolerance):

1. at most one <span style='color:green'> code </span> 
   * at most one <span style='color:green'> coding </span> Allergy or Intolerance to Substance (SNOMED CT)
1. exactly one <span style='color:green'> patient </span>  (Reference as: au-patient)
1. at most one <span style='color:green'> recorder </span>  (Reference as: au-patient \| au-practitioner \| au-relatedperson)
1. at most one <span style='color:green'> asserter </span>  (Reference as: au-patient \| au-practitioner \| au-relatedperson)
1. zero or more <span style='color:green'> reaction </span> 
   * at most one <span style='color:green'> coding </span> Substance or Agent (SNOMED CT)
   * zero or more <span style='color:green'> coding </span> Clinical Finding (SNOMED CT)