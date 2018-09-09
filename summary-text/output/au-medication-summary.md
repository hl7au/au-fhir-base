This profile contains the following variations from [Medication](http://hl7.org/fhir/STU3/Medication):

1. zero or more <span style='color:green'> extension </span>  sliced
  * at most one PBS Sponsor extension
1. at most one <span style='color:green'> code </span> Coding for the Medicine
  * zero or more <span style='color:green'> coding </span> Medication PBS coding (ignore item context)
  * zero or more <span style='color:green'> coding </span> Medication Package GTIN
  * at most one <span style='color:green'> coding </span> AMT Trade Product Pack
    * at most one Type of medication coding extension
  * at most one <span style='color:green'> coding </span> AMT Medicinal Product Pack
    * at most one Type of medication coding extension
  * at most one <span style='color:green'> coding </span> AMT Containered Trade Product Pack
    * at most one Type of medication coding extension
  * at most one <span style='color:green'> coding </span> AMT Trade Product Unit of Use
    * at most one Type of medication coding extension
  * at most one <span style='color:green'> coding </span> AMT Medicinal Product Unit of Use
    * at most one Type of medication coding extension
  * at most one <span style='color:green'> coding </span> AMT Trade Product
    * at most one Type of medication coding extension
  * at most one <span style='color:green'> coding </span> AMT Medicinal Product
    * at most one Type of medication coding extension
  * at most one <span style='color:green'> coding </span> MIMS Package
1. at most one <span style='color:green'> manufacturer </span> Physical Product Manufacturer Organisation
  * at most one <span style='color:green'> coding </span> Medication Form (SNOMED CT)
1. zero or more <span style='color:green'> ingredient </span> 
  *  <span style='color:green'> item[x] </span> Coded Ingredient Product
  *  <span style='color:green'> coding </span> AMT Medicinal Product Ingredient
    * at most one Medication Batch Serial Number extension