This profile contains the following variations from [Immunization](http://hl7.org/fhir/STU3/Immunization):

1. exactly one <span style='color:green'>vaccineCode</span> Vaccine Administered
1. zero or more <span style='color:green'>vaccineCode.coding</span>  sliced
  * at most one AMT Vaccine slice
  * at most one AIR Vaccine slice
1. exactly one <span style='color:green'>patient</span> 
1. at most one <span style='color:green'>manufacturer</span> 
1. at most one <span style='color:green'>site</span> 
1. zero or more <span style='color:green'>practitioner</span> Immunisation performer(s) sliced
  * at most one Immunisation Administered By slice
  * at most one Immunisation Approved By slice
1. at most one <span style='color:green'>explanation</span> 
1. zero or more <span style='color:green'>explanation.reasonNotGiven.coding</span> Coded reason sliced
  * zero or more Coded Reason (SNOMED-CT) slice
1. zero or more <span style='color:green'>vaccinationProtocol</span> 
1. zero or more <span style='color:green'>vaccinationProtocol.doseStatus.coding</span>  sliced
  * at most one Dose Status Not Available slice
