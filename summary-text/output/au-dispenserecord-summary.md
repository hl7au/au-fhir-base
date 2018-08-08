This profile contains the following variations from [MedicationDispense](http://hl7.org/fhir/STU3/MedicationDispense):


1. zero or more <span style='color:green'>identifier</span> sliced
   * zero or more ETP vendor identifier slice
   * zero or more Local Script Number slice
1. exactly one <span style='color:green'>medication[x]</span> sliced
    slice
1.  <span style='color:green'>medication[x].coding</span> sliced
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
1.  <span style='color:green'>medication[x]</span>  slice
1. at most one <span style='color:green'>subject</span> 
