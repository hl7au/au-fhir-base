**Extension: Date Accuracy Indicator** *[[FMM Level 2](guidance.html)]*

This extension applies to [date](http://hl7.org/fhir/datatypes.html#date) or [dateTime](http://hl7.org/fhir/datatypes.html#dateTime) datatypes and indicates the asserted accuracy of the associated date via a coding. [<sup>[1]</sup>](https://meteor.aihw.gov.au/content/index.phtml/itemId/294418){:target="_blank"}

#### Examples
1. [Patient with date accuracy indicator of "AAA" indicating all components are accurate.](Patient-DateAccuracyIndicatorAAAexample0.html)
1. [Patient with date accuracy indicator of "AAU" indicating the day and month components are accurate but the year is unknown.](Patient-DateAccuracyIndicatorAAUexample1.html)
1. [Patient with date accuracy indicator of "UAA" indicating the year and month components are accurate but the day is unknown.](Patient-DateAccuracyIndicatorUAAexample2.html)
1. [Patient with date accuracy indicator of "UEA" indicating the year component is accurate, the month is an estimate and the day is unknown.](Patient-DateAccuracyIndicatorUEAexample3.html)
1. [Patient with date accuracy indicator of "UUU" indicating that all date components are unknown.](Patient-DateAccuracyIndicatorUUUexample4.html)

