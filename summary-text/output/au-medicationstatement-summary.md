This profile contains the following variations from [MedicationStatement](http://hl7.org/fhir/STU3/MedicationStatement):

1. at most one Medication Long Term extension
1. exactly one <span style='color:green'>medication[x]</span> Medication Detail sliced
   *  Coded Medication slice
1.  <span style='color:green'>medication[x].coding</span> Medication Codes sliced
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
1.  <span style='color:green'>medication[x]</span> Medication Reference (au-medication) slice
1. exactly one <span style='color:green'>subject</span> AU Patient | Patient | Group (au-patient \| Patient \| Group)
1. zero or more <span style='color:green'>reasonNotTaken</span> 
1. zero or more <span style='color:green'>reasonNotTaken.coding</span>  sliced
   * at most one Reason Not Taken (SNOMED CT) slice
1. zero or more <span style='color:green'>reasonCode</span> 
1. zero or more <span style='color:green'>reasonCode.coding</span>  sliced
   * at most one Reason For Medication (SNOMED CT) slice
1. zero or more <span style='color:green'>dosage</span> 
