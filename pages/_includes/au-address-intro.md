**Australian Address Profile** *[[FMM Level 2](guidance.html)]*

This profile is provided for use in an Australian context where some constraint on content is desirable to guarantee the quality of an Australian address whilst still supporting
other uses such as unstructured addresses. 

#### Identifiers
These definitions, defined as profiles of [Identifier](http://hl7.org/fhir/R4/datatypes.html#Identifier), represent common identifiers that may be sent using:
* [Address Identifier](StructureDefinition-address-identifier.html)
* [Delivery Point Identifier](StructureDefinition-au-deliverypointidentifier.html)
* [G-NAF Identifier](StructureDefinition-au-gnafidentifier.html)


#### Extensions
Extensions used in this profile:

* Address: [Address Identifier](StructureDefinition-address-identifier.html)
* Address: [No Fixed Address](StructureDefinition-no-fixed-address.html)

Potentially useful extensions:

* Address.line: [Unit](http://hl7.org/fhir/R4/extension-iso21090-adxp-unitid.html)
* Address.line: [House Number](http://hl7.org/fhir/R4/extension-iso21090-adxp-housenumber.html)
* Address.line: [Street Name](http://hl7.org/fhir/R4/extension-iso21090-adxp-streetname.html)
* Address.line: [Street Name Type](http://hl7.org/fhir/R4/extension-iso21090-adxp-streetnametype.html)
* Address.line: [Street Name Base](http://hl7.org/fhir/R4/extension-iso21090-adxp-streetnamebase.html)


#### Usage Notes
* Is for use when representing an Australian (location) address so country is fixed to AU.
* Is not bound to any elements in this implementation guide directly.
* Overseas addresses can be represented using the core Address data type.
* May be used as needed in implementation guide by use cases.
* Is provided as the best practice guidance on Australian address representation.


**Examples**

[Postal and work address in Darwin, NT](Patient-address-example0.html)

[Level 1, 300 George St, Brisbane, QLD 4000](Patient-address-example1.html)

[No fixed address in Melbourne, VIC](Patient-address-example2.html)
