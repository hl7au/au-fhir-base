This profile contains the following variations from [Immunization](http://hl7.org/fhir/STU3/Immunization):

1. exactly one <span style='color:green'> vaccineCode </span> Vaccine Administered
   * at most one <span style='color:green'> coding </span> AMT Vaccine
   * at most one <span style='color:green'> coding </span> AIR Vaccine
1. exactly one <span style='color:green'> patient </span> Immunised patient (Reference as: au-patient)
1. at most one <span style='color:green'> manufacturer </span> Vaccine product manufacturer (Reference as: au-organisation)
1. at most one <span style='color:green'> site </span> 
1. at most one <span style='color:green'> route </span> 
   * at most one <span style='color:green'> coding </span> Immunisation Route of Administration (SNOMED CT)
1. zero or more <span style='color:green'> practitioner </span> Immunisation performer(s) sliced
   * at most one <span style='color:green'> practitioner </span> Immunisation Administered By
   * at most one <span style='color:green'> practitioner </span> Immunisation Approved By
1. at most one <span style='color:green'> explanation </span> 
   * zero or more <span style='color:green'> coding </span> Coded reason (SNOMED CT)
1. zero or more <span style='color:green'> vaccinationProtocol </span> 
   * at most one <span style='color:green'> coding </span> Dose Status Not Available