This profile contains the following variations from [PractitionerRole](http://hl7.org/fhir/STU3/PractitionerRole):

1. zero or more <span style='color:green'>identifier</span> Practitioner role identifiers sliced
   * at most one Australian provider number slice
   * at most one Provider at Organisation Identifier slice
   * at most one Care Agency Employee Identifier slice
   * zero or more Employee Number slice
1. at most one <span style='color:green'>practitioner</span> as Individual practitioner in this role
1. at most one <span style='color:green'>organization</span> as Organisation where role is performed
1. zero or more <span style='color:green'>specialty</span> Practitioner specialties sliced
   * zero or more SNOMED Practitioner Specialty slice
1. at most one <span style='color:green'>location</span> 
