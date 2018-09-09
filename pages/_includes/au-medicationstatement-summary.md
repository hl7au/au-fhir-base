This profile contains the following variations from [MedicationStatement](http://hl7.org/fhir/STU3/MedicationStatement):

1. zero or more <span style='color:green'> extension </span>  sliced
  * at most one Medication Long Term extension
1. exactly one <span style='color:green'> medication[x] </span> Medication Detail sliced
  *  <span style='color:green'> medication[x] </span> Coded medication
  *  <span style='color:green'> coding </span> Medication PBS coding (ignore item context)
  *  <span style='color:green'> coding </span> Medication Package GTIN
  *  <span style='color:green'> coding </span> AMT Trade Product Pack
    *  Type of medication coding extension
  *  <span style='color:green'> coding </span> AMT Medicinal Product Pack
    *  Type of medication coding extension
  *  <span style='color:green'> coding </span> AMT Containered Trade Product Pack
    *  Type of medication coding extension
  *  <span style='color:green'> coding </span> AMT Trade Product Unit of Use
    *  Type of medication coding extension
  *  <span style='color:green'> coding </span> AMT Medicinal Product Unit of Use
    *  Type of medication coding extension
  *  <span style='color:green'> coding </span> AMT Trade Product
    *  Type of medication coding extension
  *  <span style='color:green'> coding </span> AMT Medicinal Product
    *  Type of medication coding extension
  *  <span style='color:green'> coding </span> MIMS Package
  *  <span style='color:green'> medication[x] </span> Medication Reference (au-medication)
1. exactly one <span style='color:green'> subject </span> Subject of statement (au-patient \| Group)
1. zero or more <span style='color:green'> reasonNotTaken </span> 
  * at most one <span style='color:green'> coding </span> Reason Not Taken (SNOMED CT)
1. zero or more <span style='color:green'> reasonCode </span> 
  * at most one <span style='color:green'> coding </span> Reason For Medication (SNOMED CT)
1. zero or more <span style='color:green'> dosage </span> 