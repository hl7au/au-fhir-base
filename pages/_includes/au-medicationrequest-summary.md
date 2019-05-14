This profile contains the following variations from [MedicationRequest](http://hl7.org/fhir/STU3/MedicationRequest):

1. <span style='color:green'> extension </span>  sliced
   * Grounds for Concurrent Supply of Medication extension
   * Minimum Interval Between Repeats extension
   * Medication Brand Name extension
   * Medication Generic Drug Name extension
1. <span style='color:green'> identifier </span>  sliced
   * <span style='color:green'> identifier </span> Electronic Transfer of Prescription Supplier Identifier
   * <span style='color:green'> identifier </span> Local Prescription Number
1. <span style='color:green'> medication[x] </span>  sliced
   * <span style='color:green'> medication[x] </span> Coded Prescribed Medication
   * <span style='color:green'> coding </span> PBS Item Code
   * <span style='color:green'> coding </span> Medication Package Global Trade Item Number (GTIN)
   * <span style='color:green'> coding </span> AMT Medicines
      * Type of Medication Coding extension
   * <span style='color:green'> coding </span> MIMS Package
   * <span style='color:green'> medication[x] </span> Prescribed Medication (Reference as: au-medication)
1. <span style='color:green'> supportingInformation </span>  sliced
   * <span style='color:green'> supportingInformation </span> Observation of Body Height (Reference as: au-bodyheight)
   * <span style='color:green'> supportingInformation </span> Observation of Body Weight (Reference as: au-bodyweight)
1. <span style='color:green'> authoredOn </span> Created date
1. <span style='color:green'> reasonCode </span> 
1. <span style='color:green'> dosageInstruction </span> 
1. <span style='color:green'> dispenseRequest </span> Requested dispensing
1. <span style='color:green'> substitution </span> Brand substitution details