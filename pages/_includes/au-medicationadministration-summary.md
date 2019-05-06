This profile contains the following variations from [MedicationAdministration](http://hl7.org/fhir/STU3/MedicationAdministration):

1. zero or more <span style='color:green'> extension </span>  sliced
   * zero or more Medication administration witness extension
1. exactly one <span style='color:green'> medication[x] </span> Medication Detail sliced
   * <span style='color:green'> medication[x] </span> Coded medication
   * <span style='color:green'> coding </span> Medication PBS coding (ignore item context)
   * <span style='color:green'> coding </span> Medication Package GTIN
   * <span style='color:green'> coding </span> 	AMT Medicines
      * Type of Medication Coding extension
   * <span style='color:green'> coding </span> MIMS Package
   * <span style='color:green'> medication[x] </span> Medication Reference (Reference as: au-medication)
