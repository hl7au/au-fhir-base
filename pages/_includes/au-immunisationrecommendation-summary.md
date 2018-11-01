This profile contains the following variations from [ImmunizationRecommendation](http://hl7.org/fhir/STU3/ImmunizationRecommendation):

1. exactly one <span style='color:green'> vaccineCode </span> Vaccine Administered
   * at most one <span style='color:green'> coding </span> AMT Vaccine
   * at most one <span style='color:green'> coding </span> AIR Vaccine
1. exactly one <span style='color:green'> patient </span> Immunised patient (Reference as: au-patient)
1. at most one <span style='color:green'> manufacturer </span> Vaccine product manufacturer (Reference as: au-organisation)
1. at most one ...