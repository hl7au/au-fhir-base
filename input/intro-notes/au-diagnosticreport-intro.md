**AU Base Diagnostic Report** *[[FMM 1](guidance.html)]*

This profile defines a diagnostic report structure that localises core concepts, including identifiers and terminology, for use in an Australian context.

The purpose of this profile is to provide national level agreement on core localised concepts. 

This profile does not force conformance to core localised concepts. It enables implementers and modellers to make their own rules, i.e. [profiling](http://hl7.org/fhir/profiling.html), about how to support these concepts for specific implementation needs.

#### Identifiers
These definitions, defined as profiles of [Identifier](http://hl7.org/fhir/R4/datatypes.html#Identifier), represent common data held in the DiagnosticReport.identifier element:
* [Accession Number](StructureDefinition-au-accessionnumber.html)
* [Local Order Identifier](StructureDefinition-au-localorderidentifier.html)[<sup>[1]</sup>](http://ns.electronichealth.net.au/id/hpio-scoped/order/1.0/index.html){:target="_blank"}[<sup>[2]</sup>](https://confluence.hl7australia.com/display/OOADRM20181/5+Observation+Ordering#id-5ObservationOrdering-5.4.1.2ORC-2Placerordernumber(EI)00216){:target="_blank"}[<sup>[3]</sup>](https://confluence.hl7australia.com/display/OOADRM20181/5+Observation+Ordering#id-5ObservationOrdering-5.4.1.3ORC-3Fillerordernumber(EI)00217){:target="_blank"}
* [Local Report Identifier](StructureDefinition-au-localreportidentifier.html)[<sup>[1]</sup>](http://ns.electronichealth.net.au/id/hpio-scoped/report/1.0/index.html){:target="_blank"}


#### Extensions

No extensions are used in this profile.


#### Boundaries and relationships
Use the [AU Pathology Report](StructureDefinition-au-pathologyreport.html) profile to represent a pathology report issued by the diagnostic service provider.

Use the [AU Diagnostic Imaging Report](StructureDefinition-au-imagingreport.html) profile to represent a diagnostic imaging report issued by the diagnostic service provider.


#### Examples

There are no examples available for this profile.