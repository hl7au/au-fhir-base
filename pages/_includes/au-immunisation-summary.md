This profile contains the following variations from [Immunization](http://hl7.org/fhir/StructureDefinition/Immunization):

1. exactly one <span style='color:green'>Immunization.vaccineCode</span>
1. zero or more <span style='color:green'>Immunization.vaccineCode.coding</span> sliced
   * at most one Australian Vaccine (SNOMED)
   * at most one AIR Vaccine
1. exactly one <span style='color:green'>Immunization.patient</span>
1. at most one <span style='color:green'>Immunization.manufacturer</span>
1. zero or more <span style='color:green'>Immunization.practitioner</span> sliced
   * at most one Immunisation Administered By
   * at most one Immunisation Approved By
1. at most one <span style='color:green'>Immunization.explanation</span>
1. zero or more <span style='color:green'>Immunization.explanation.reasonNotGiven.coding</span> sliced
   * zero or more Coded Reason (SNOMED-CT)