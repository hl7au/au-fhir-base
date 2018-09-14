This profile contains the following variations from [PractitionerRole](http://hl7.org/fhir/STU3/PractitionerRole):

1. zero or more <span style='color:green'> identifier </span> Practitioner role identifiers sliced
   * at most one <span style='color:green'> identifier </span> Australian provider number
   * at most one <span style='color:green'> identifier </span> Provider at Organisation Identifier
   * at most one <span style='color:green'> identifier </span> Care Agency Employee Identifier
   * zero or more <span style='color:green'> identifier </span> Employee Number
1. at most one <span style='color:green'> practitioner </span> Practitioner in this role (Reference as: au-practitioner)
1. at most one <span style='color:green'> organization </span> Organisation managing this role (Reference as: au-organisation)
1. zero or more <span style='color:green'> specialty </span> Practitioner specialties sliced
   * zero or more <span style='color:green'> specialty </span> SNOMED Practitioner Specialty
