This profile contains the following variations from [Patient](http://hl7.org/fhir/STU3/Patient):

1. zero or more <span style='color:green'> extension </span>  sliced
   * at most one Patient Birth Place extension
   * at most one Patient Indigenous Status extension
   * at most one Patient Closing the Gap Registration extension
   * at most one Patient Mother's Maiden name extension
1. zero or more <span style='color:green'> identifier </span>  sliced
   * at most one <span style='color:green'> identifier </span> National Individual Health Identifier
      * at most one IHI Number Status extension
      * at most one IHI Number Record Status extension
   * zero or more <span style='color:green'> identifier </span> Medicare Number
   * at most one <span style='color:green'> identifier </span> DVA Number
   * at most one <span style='color:green'> identifier </span> Health Care Card Identifier
   * at most one <span style='color:green'> identifier </span> Pensioner Concession Card Identifier
   * at most one <span style='color:green'> identifier </span> Commonwealth Seniors Health Card Identifier
   * zero or more <span style='color:green'> identifier </span> Medical Record Number
   * zero or more <span style='color:green'> identifier </span> Private Health Insurance Member Number
1. at most one <span style='color:green'> birthDate </span> Date of birth extended for time and accuracy indicator
      * at most one Birth Date Accuracy Indicator extension
      * at most one Birth Time extension
1. at most one <span style='color:green'> deceased[x] </span>  sliced
   * <span style='color:green'> deceased[x] </span> Deceased Indicator
   * <span style='color:green'> deceased[x] </span> Deceased Date Time
      * Deceased Date Accuracy Indicator extension
1. zero or more <span style='color:green'> communication </span> 
1. zero or more <span style='color:green'> generalPractitioner </span> Usual GP practice or practitioner (Reference as: au-practitioner \| au-organisation)
1. at most one <span style='color:green'> managingOrganization </span> Patient managing organisation (Reference as: au-organisation)