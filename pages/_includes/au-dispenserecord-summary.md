This profile contains the following variations from [MedicationDispense](http://hl7.org/fhir/STU3/MedicationDispense):

1. zero or more <span style='color:green'> extension </span>  sliced
* at most one groundsForConcurrentSupply extension
* at most one dispenseNumber extension
1. zero or more <span style='color:green'> identifier </span>  sliced
* zero or more <span style='color:green'> identifier </span> Local Dispense Identifier
1. exactly one <span style='color:green'> medication[x] </span>  sliced
*  <span style='color:green'> medication[x] </span> Coded medocation
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
*  <span style='color:green'> medication[x] </span> AU Base Medication (au-medication)
1. at most one <span style='color:green'> subject </span> Subject of dispened medication (au-patient \| Group)
1. zero or more <span style='color:green'> authorizingPrescription </span>  (au-prescription)
1. zero or more <span style='color:green'> receiver </span>  (au-patient \| au-practitioner)
1. zero or more <span style='color:green'> dosageInstruction </span> 