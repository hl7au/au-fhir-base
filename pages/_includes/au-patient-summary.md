This profile contains the following variations from [Patient](http://hl7.org/fhir/STU3/Patient):

1. at most one Patient Birth Place extension
1. at most one Patient Indigenous Status extension
1. at most one Patient Close the Gap Registration extension
1. at most one Patient Mother's Maiden name extension
1. zero or more <span style='color:green'>Patient.identifier</span> sliced
   * at most one National Individual Health Identifier
      * at most one IHI Number Status extension
      * at most one IHI Number Record Status extension
   * zero or more Medicare Number
   * at most one DVA Number
   * at most one Health Care Card Identifier
   * at most one Pensioner Concession Card Identifier
   * at most one Commonwealth Seniors Health Card Identifier
   * zero or more Medical Record Number
   * zero or more Private Health Insurance Member Number
1. at most one <span style='color:green'>Patient.birthDate</span>
      * at most one Birth Date Accuracy Indicator extension
      * at most one Birth Time extension
1. at most one <span style='color:green'>Patient.deceased[x]</span> sliced
   *  Deceased Indicator
   *  Deceased Date Time
      *  Deceased Date Accuracy Indicator extension
1. zero or more <span style='color:green'>Patient.generalPractitioner</span>
1. at most one <span style='color:green'>Patient.managingOrganization</span>
