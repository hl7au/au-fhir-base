**AU Base Location** *[[FMM Level 3](guidance.html)]*

This profile defines a location structure that localises core concepts, including identifiers and terminology, for use in an Australian context.

The purpose of this profile is to provide national level agreement on core localised concepts. 

This profile does not force conformance to core localised concepts. It enables implementers and modellers to make their own rules, i.e. [profiling](http://hl7.org/fhir/profiling.html), about how to support these concepts for specific implementation needs.


#### Identifiers
These definitions, defined as profiles of [Identifier](http://hl7.org/fhir/R4/datatypes.html#Identifier), represent common data held in the Location.identifier element:
* [Location Specific Practice Number](StructureDefinition-au-locationspecificpracticenumber.html) [<sup>[1]</sup>](http://ns.electronichealth.net.au/id/location-specific-practice-number/index.html){:target="_blank"}
* [National Association of Testing Authorities (NATA) Site Number](StructureDefinition-au-natasitenumber.html) [<sup>[1]</sup>](http://hl7.org.au/id/nata-site/index.html){:target="_blank"}


#### Extensions
No extensions are used in this profile.


#### Usage Notes
Locations for mobile services and services delivered remotely by phone or internet should have mode='kind' to indicate that the location is not specific.

Locations for services delivered remotely by phone or internet should have type='VI' and physicalType='vi'.

Locations for mobile services should have type='MOBL'. Additional types of 'AMB', 'COMM', 'PTRES', 'SCHOOL', or 'WORK' may also be included (in addition to 'MOBL') to indicate that services are tailored for delivery in these kinds of locations.

**Examples**

[Downunder Hospital Blacktown, NSW](Location-example0.html)

[Site at 33 Slobodian Street, Albion, QLD](Location-example1.html)

[Level 1, Green Building, Albion Hospital, QLD](Location-example2.html)

[Family medicine clinic at Sandy Bay Road, Strahan, TAS](Location-example3.html)

[Location for services delivered by phone, video or online](Location-example4.html)

[Location for mobile services that can be delivered in a person's house, apartment, or unit](Location-example5.html)

[Location for mobile services that can be delivered in schools](Location-example6.html)

[Location for mobile services that can be delivered in residential care facilities](Location-example7.html)
