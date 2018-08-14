This profile contains the following variations from [Condition](http://hl7.org/fhir/STU3/Condition):

1. at most one <span style='color:green'>code</span> 
1. zero or more <span style='color:green'>code.coding</span>  sliced
   * at most one Clinical Condition (SNOMED CT) slice
1. zero or more <span style='color:green'>bodySite</span> 
1. exactly one <span style='color:green'>subject</span> as AU Base Patient | Group
1. at most one <span style='color:green'>asserter</span> as AU Base Patient | AU Base Related Person | AU Base Practitioner
1. zero or more <span style='color:green'>evidence</span> 
1. zero or more <span style='color:green'>evidence.code.coding</span>  sliced
   * at most one Clinical Finding (SNOMED CT) slice
