This profile contains the following variations from [Dosage](http://hl7.org/fhir/STU3/Dosage):

1. zero or more <span style='color:green'>additionalInstruction</span>  sliced
  * zero or more SNOMED CT Additional Instruction slice
1. at most one <span style='color:green'>asNeeded[x]</span>  sliced
  *  Coded Reason For Take "as needed" slice
1.  <span style='color:green'>asNeeded[x].coding</span>  sliced
  *  Clinical Finding (SNOMED CT) slice
1. at most one <span style='color:green'>site</span> 
1. at most one <span style='color:green'>route</span> 
1. zero or more <span style='color:green'>route.coding</span>  sliced
  * at most one Route of Administration (SNOMED CT) slice
1. at most one <span style='color:green'>method</span> 
1. zero or more <span style='color:green'>method.coding</span>  sliced
  * at most one SNOMED CT Administration Method slice
