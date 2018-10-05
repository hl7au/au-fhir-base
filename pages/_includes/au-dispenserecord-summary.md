This profile contains the following variations from [MedicationDispense](http://hl7.org/fhir/STU3/MedicationDispense):

1. zero or more <span style='color:green'> extension </span>  sliced
   * at most one Grounds for concurrent supply of medication extension
   * zero or more Number of this dispense extension
   * at most one Medication Brand Name extension
   * at most one Medication Generic Drug Name extension
1. zero or more <span style='color:green'> identifier </span>  sliced
   * zero or more <span style='color:green'> identifier </span> Local Dispense Identifier
1. exactly one <span style='color:green'> medication[x] </span>  sliced
   * <span style='color:green'> medication[x] </span> Coded medication
   * <span style='color:green'> coding </span> Medication PBS coding (ignore item context)
   * <span style='color:green'> coding </span> Medication Package GTIN
   * <span style='color:green'> coding </span> AMT Trade Product Pack
      * Type of medication coding extension
   * <span style='color:green'> valueCoding </span> 
   * <span style='color:green'> coding </span> AMT Medicinal Product Pack
      * Type of medication coding extension
   * <span style='color:green'> valueCoding </span> 
   * <span style='color:green'> coding </span> AMT Containered Trade Product Pack
      * Type of medication coding extension
   * <span style='color:green'> valueCoding </span> 
   * <span style='color:green'> coding </span> AMT Trade Product Unit of Use
      * Type of medication coding extension
   * <span style='color:green'> valueCoding </span> 
   * <span style='color:green'> coding </span> AMT Medicinal Product Unit of Use
      * Type of medication coding extension
   * <span style='color:green'> valueCoding </span> 
   * <span style='color:green'> coding </span> AMT Trade Product
      * Type of medication coding extension
   * <span style='color:green'> valueCoding </span> 
   * <span style='color:green'> coding </span> AMT Medicinal Product
      * Type of medication coding extension
   * <span style='color:green'> valueCoding </span> 
   * <span style='color:green'> coding </span> MIMS Package
   * <span style='color:green'> medication[x] </span> Dispensed medication (Reference as: au-medication)
1. zero or more <span style='color:green'> authorizingPrescription </span>  (Reference as: au-prescription)
1. zero or more <span style='color:green'> dosageInstruction </span> 