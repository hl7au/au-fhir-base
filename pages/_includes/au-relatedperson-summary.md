This profile contains the following variations from [RelatedPerson](http://hl7.org/fhir/STU3/RelatedPerson):

1. zero or more <span style='color:green'>identifier</span>  sliced
   * at most one National Individual Health Identifier slice
      * at most one ihiStatus extension
      * at most one ihiRecordStatus extension
   * zero or more Medicare Number slice
   * at most one DVA Number slice
   * at most one Health Care Card Identifier slice
   * at most one Pensioner Concession Card Identifier slice
   * at most one Commonwealth Seniors Health Card Identifier slice
   * zero or more Medical Record Number slice
   * zero or more Private Health Insurance Member Number slice
1. exactly one <span style='color:green'>patient</span> as AU Base Patient
1. at most one <span style='color:green'>relationship</span> 
