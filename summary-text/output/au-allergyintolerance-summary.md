This profile contains the following variations from [AllergyIntolerance](http://hl7.org/fhir/STU3/AllergyIntolerance):

1. at most one <span style='color:green'>code</span> 
1. zero or more <span style='color:green'>code.coding</span>  sliced
   * at most one Allergy or Intolerance to Substance (SNOMED CT) slice
1. exactly one <span style='color:green'>patient</span> 
1. at most one <span style='color:green'>recorder</span> 
1. at most one <span style='color:green'>asserter</span> 
1. zero or more <span style='color:green'>reaction</span> 
1. zero or more <span style='color:green'>reaction.substance.coding</span>  sliced
   * at most one Substance or Agent (SNOMED CT) slice
1. zero or more <span style='color:green'>reaction.manifestation.coding</span>  sliced
   * zero or more Clinical Finding (SNOMED CT) slice
