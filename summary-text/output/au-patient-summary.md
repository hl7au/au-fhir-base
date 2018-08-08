This profile contains the following variations from [Patient](http://hl7.org/fhir/STU3/Patient):

1. at most one Patient Birth Place extension
1. at most one Patient Indigenous Status extension
1. at most one Patient Close the Gap Registration extension
1. at most one Patient Mother's Maiden name extension
1. zero or more <span style='color:green'>identifier</span>  sliced
   * at most one National Individual Health Identifier slice
      * at most one IHI Number Status extension
      * at most one IHI Number Record Status extension
   * zero or more Medicare Number slice
   * at most one DVA Number slice
   * at most one Health Care Card Identifier slice
   * at most one Pensioner Concession Card Identifier slice
   * at most one Commonwealth Seniors Health Card Identifier slice
   * zero or more Medical Record Number slice
   * zero or more Private Health Insurance Member Number slice
1. at most one <span style='color:green'>birthDate</span> Date of birth extended for time and accuracy indicator
      * at most one Birth Date Accuracy Indicator extension
      * at most one Birth Time extension
1. at most one <span style='color:green'>deceased[x]</span>  sliced
   *  Deceased Indicator slice
   *  Deceased Date Time slice
      *  Deceased Date Accuracy Indicator extension
1. zero or more <span style='color:green'>generalPractitioner</span> as AU Practitioner | AU Organisation
1. at most one <span style='color:green'>managingOrganization</span> as AU Organisation
