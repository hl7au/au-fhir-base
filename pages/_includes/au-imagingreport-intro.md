**AU Diagnostic Imaging Report** *[[DRAFT 0](guidance.html)]*

This profile defines a diagnostic report structure to represent a diagnostic imaging report issued by a diagnostic service provider in an Australian context.


#### Identifiers
These definitions, defined as profiles of [Identifier](http://hl7.org/fhir/R4/datatypes.html#Identifier), represent common data held in the DiagnosticReport.identifier element:
* [Accession Number](StructureDefinition-au-accessionnumber.html)
* [Local Order Identifier](StructureDefinition-au-localorderidentifier.html)[<sup>[1]</sup>](http://ns.electronichealth.net.au/id/hpio-scoped/order/1.0/index.html){:target="_blank"}[<sup>[2]</sup>](https://confluence.hl7australia.com/display/OOADRM20181/5+Observation+Ordering#id-5ObservationOrdering-5.4.1.2ORC-2Placerordernumber(EI)00216){:target="_blank"}[<sup>[3]</sup>](https://confluence.hl7australia.com/display/OOADRM20181/5+Observation+Ordering#id-5ObservationOrdering-5.4.1.3ORC-3Fillerordernumber(EI)00217){:target="_blank"}
* [Local Report Identifier](StructureDefinition-au-localreportidentifier.html)[<sup>[1]</sup>](http://ns.electronichealth.net.au/id/hpio-scoped/report/1.0/index.html){:target="_blank"}


#### Extensions

No extensions are used in this profile.


#### Usage Notes
When constructing the report:
<ul>
<li>a local identifier is sent with a <a href="http://ns.electronichealth.net.au/id/hpio-scoped/report/1.0/index.html">HPI-O scoped</a> identifier namespace if there isn't a local namespace available (see the <a href="https://github.com/AuDigitalHealth/ci-fhir-r4/wiki/Frequently-Asked-Questions">FAQ</a>) for more information</li>
<li>code matches one Observation.code referenced in result</li>
<li>performer is sent as one Organization (radiology laboratory) and one or more PractitionerRoles (radiologist)</li></ul>

For a report of a multi-modality procedure:
<ul>
<li>result is sent with the Observation representing the multi-modality procedure observation</li>  
<li>code is sent with the same code in that multi-modality procedure Observation</li>  
<li>the individual component examinations are referenced by that Observation (Observation.hasMember) and not directly referenced by the DiagnosticReport</li>  
</ul>


#### Examples

There are no examples available for this profile.