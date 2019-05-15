This profile contains the following variations from [MedicationDispense](http://hl7.org/fhir/STU3/MedicationDispense):

1. <span style='color:green'> extension </span>  sliced
   * Grounds for Concurrent Supply of Medication extension
   * Number of this Dispense extension
   * Medication Brand Name extension
   * Medication Generic Drug Name extension
1. <span style='color:green'> identifier </span>  sliced
   * <span style='color:green'> identifier </span> Local Dispense Identifier
1. <span style='color:green'> medication[x] </span>  sliced
   * <span style='color:green'> medication[x] </span> Coded Dispensed Medication
   * <span style='color:green'> coding </span> PBS Item Code
   * <span style='color:green'> coding </span> Medication Package Global Trade Item Number (GTIN)
   * <span style='color:green'> coding </span> AMT Medicines
      * Class of Medication Coding extension
   * <span style='color:green'> coding </span> MIMS Package
   * <span style='color:green'> medication[x] </span> Dispensed Medication (Reference as: au-medication)
1. <span style='color:green'> authorizingPrescription </span>  (Reference as: au-prescription)
1. <span style='color:green'> dosageInstruction </span> 
1. <span style='color:green'> substitution </span> 
   * <span style='color:green'> coding </span> Substitution Reason (SNOMED CT)