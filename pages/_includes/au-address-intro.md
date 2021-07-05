**Australian Address** *[[FMM Level 2](guidance.html)]*

This profile defines an address structure that localises core concepts, including identifiers and terminology, for use in an Australian context, to specifically represent an Australian (location) address.

The purpose of this profile is to provide best practice guidance on Australian address representation, where some constraint on content is desirable to guarantee the quality of an Australian address whilst still supporting
other uses such as unstructured addresses. As such it is not bound to any elements in this implementation guide directly.

Non-Australian addresses can be represented using the core Address data type.

#### Identifiers
These definitions, defined as profiles of [Identifier](http://hl7.org/fhir/R4/datatypes.html#Identifier), represent common data held in the [Address Identifier](StructureDefinition-address-identifier.html) extension:
* [Delivery Point Identifier](StructureDefinition-au-deliverypointidentifier.html)
* [G-NAF Identifier](StructureDefinition-au-gnafidentifier.html)

#### Extensions
Extensions used in this profile:

* Address: [Address Identifier](StructureDefinition-address-identifier.html)
* Address: [No Fixed Address](StructureDefinition-no-fixed-address.html)

Potentially useful core extensions:

* Address.line: [Unit](http://hl7.org/fhir/R4/extension-iso21090-adxp-unitid.html)
* Address.line: [House Number](http://hl7.org/fhir/R4/extension-iso21090-adxp-housenumber.html)
* Address.line: [Street Name](http://hl7.org/fhir/R4/extension-iso21090-adxp-streetname.html)
* Address.line: [Street Name Type](http://hl7.org/fhir/R4/extension-iso21090-adxp-streetnametype.html)
* Address.line: [Street Name Base](http://hl7.org/fhir/R4/extension-iso21090-adxp-streetnamebase.html)

#### Usage Notes
An unstructured address can be represented using Address.text or Address.line.

#### Examples

[Postal and work address in Darwin, NT](Patient-address-example0.html)

[Level 1, 300 George St, Brisbane, QLD 4000](Patient-address-example1.html)

[No fixed address in Melbourne, VIC](Patient-address-example2.html)

[Postal address (with DPID and G-NAF Identifier) and work address in Darwin, NT](Patient-address-example3.html)
