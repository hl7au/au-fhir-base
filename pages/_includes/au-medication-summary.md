This profile contains the following variations from [Medication](http://hl7.org/fhir/STU3/Medication):

1. at most one PBS Sponsor extension
1. at most one <span style='color:green'>code</span> Coding for the Medicine
1. zero or more <span style='color:green'>code.coding</span>  sliced
   * zero or more Medication PBS coding (ignore item context) slice
   * zero or more Medication Package GTIN slice
   * at most one AMT Trade Product Pack slice
      * at most one Type of medication coding extension
   * at most one AMT Medicinal Product Pack slice
      * at most one Type of medication coding extension
   * at most one AMT Containered Trade Product Pack slice
      * at most one Type of medication coding extension
   * at most one AMT Trade Product Unit of Use slice
      * at most one medicationType extension
   * at most one AMT Medicinal Product Unit of Use slice
      * at most one medicationType extension
   * at most one AMT Trade Product slice
      * at most one medicationType extension
   * at most one AMT Medicinal Product slice
      * at most one medicationType extension
   * at most one MIMS Package slice
1. at most one <span style='color:green'>manufacturer</span> Physical Product Manufacturer Organisation
1. at most one <span style='color:green'>form.coding</span>  sliced
   * at most one Medication Form (SNOMED CT) slice
1. zero or more <span style='color:green'>ingredient</span> 
1. exactly one <span style='color:green'>ingredient.item[x]</span> AU Ingredient Product sliced
   *  Coded Ingredient Product slice
1.  <span style='color:green'>ingredient.item[x].coding</span>  sliced
   *  AMT Medicinal Product Ingredient slice
      * at most one Medication Batch Serial Number extension
