**AU Base HealthcareService** *[[FMM Level 3](guidance.html)]*

This profile defines a healthcare service administration details structure that includes core localisation concepts for use in an Australian context.

#### Identifiers
These definitions represent common data held in the HealthcareService.identifier element:
* Healthcare Provider Identifier for Organisation - HPI-O [<sup>[1]</sup>](http://ns.electronichealth.net.au/id/hi/hpio/1.0/index.html){:target="_blank"} [<sup>[2]</sup>](http://meteor.aihw.gov.au/content/index.phtml/itemId/426830){:target="_blank"}
HPI-O is used as an identifier in this healthcare service profile to support the case where network HPI-Os are issued for sub-organisations, departments or other logical divisions acting as specific healthcare services.  This is useful in the abscence of any specific national identifier for healthcare service entities.


#### Conversion

NOTE: AU Base on STU3 included two extensions Healthcare Service Eligibility Detail, and Healthcare Service Communication which are now no longer required as direct R4 support is available.

**Examples**

[HealthcareService with HPI-O and SNOMED-CT coded specialty](HealthcareService-example0.html)

[Albion Hospital Radiology Service](HealthcareService-example1.html)

[Albion Hospital Pathology Service](HealthcareService-example2.html)

[Strahan General Practitioner Services](HealthcareService-example3.html)

