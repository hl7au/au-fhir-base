This profile contains the following variations from [ImmunizationRecommendation](http://hl7.org/fhir/STU3/ImmunizationRecommendation):

1. at most one <span style='color:green'> vaccineCode </span> Vaccine recommendation applies to
   * at most one <span style='color:green'> coding </span> AMT Vaccine
   * at most one <span style='color:green'> coding </span> AIR Vaccine
1. at most one <span style='color:green'> targetDisease </span> Disease to be immunized against
   * zero or more <span style='color:green'> coding </span> Vaccination Target Disease (SNOMED CT)