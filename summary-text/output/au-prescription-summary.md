This profile contains the following variations from [MedicationRequest](http://hl7.org/fhir/STU3/MedicationRequest):


1. at most one Minimum time between repeat dispensing of the medication extension
1. zero or more <span style='color:green'>identifier</span>  sliced
  * zero or more Electronic Transfer of Prescription Supplier Identifier slice
  * zero or more Local Prescription Number slice
1. exactly one <span style='color:green'>medication[x]</span>  sliced
   slice
1.  <span style='color:green'>medication[x].coding</span>  sliced
  *  Medication PBS coding (ignore item context) slice
  *  Medication Package GTIN slice
  *  AMT Trade Product Pack slice
    *  Type of medication coding extension
  *  AMT Medicinal Product Pack slice
    *  Type of medication coding extension
  *  AMT Containered Trade Product Pack slice
    *  Type of medication coding extension
  *  AMT Trade Product Unit of Use slice
    *  medicationType extension
  *  AMT Medicinal Product Unit of Use slice
    *  medicationType extension
  *  AMT Trade Product slice
    *  medicationType extension
  *  AMT Medicinal Product slice
    *  medicationType extension
  *  MIMS Package slice
1.  <span style='color:green'>medication[x]</span> AU Base Medication (au-medication) slice
1. exactly one <span style='color:green'>subject</span> Subject of Prescription (au-patient \| Group)
1. zero or more <span style='color:green'>supportingInformation</span>  sliced
1. at most one <span style='color:green'>supportingInformation</span> Observation of body height (au-bodyheight) slice
1. at most one <span style='color:green'>supportingInformation</span> Observation of body weight (au-bodyweight) slice
1. at most one <span style='color:green'>authoredOn</span> Created date
1. at most one <span style='color:green'>requester</span> 
1. at most one <span style='color:green'>recorder</span> 
1. zero or more <span style='color:green'>reasonCode</span> 
1. zero or more <span style='color:green'>dosageInstruction</span> 
1. at most one <span style='color:green'>dispenseRequest</span> Requested dispensing
1. at most one <span style='color:green'>substitution</span> Brand substitution details
1. at most one <span style='color:green'>priorPrescription</span> A prescription that is being replaced (au-prescription)
