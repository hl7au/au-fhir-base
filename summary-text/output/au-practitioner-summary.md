This profile contains the following variations from [Practitioner](http://hl7.org/fhir/STU3/Practitioner):

1. zero or more <span style='color:green'>identifier</span> sliced
   * at most one HPI-I slice
   * at most one Prescriber Number slice
1. zero or more <span style='color:green'>qualification</span> sliced
   * zero or more AHPRA Qualificiation Details slice
1. zero or more <span style='color:green'>qualification.code.coding</span> AHPRA role codingsliced
   * zero or more ANZSCO coded role slice
