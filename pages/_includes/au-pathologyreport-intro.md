**AU Pathology Report** *[[DRAFT 0](guidance.html)]*

This profile defines a diagnostic report structure to represent a pathology report issued by a diagnostic service provider in an Australian context. This profile is intended to be capable of supporting reporting for all pathology disciplines (e.g. including microbiology, histopathology, cytology, blood transfusion) with the exception of genomics.


#### Identifiers
These definitions, defined as profiles of [Identifier](http://hl7.org/fhir/R4/datatypes.html#Identifier), represent common data held in the DiagnosticReport.identifier element:
* [Accession Number](StructureDefinition-au-accessionnumber.html)
* [Local Order Identifier](StructureDefinition-au-localorderidentifier.html)[<sup>[1]</sup>](http://ns.electronichealth.net.au/id/hpio-scoped/order/1.0/index.html){:target="_blank"}[<sup>[2]</sup>](https://confluence.hl7australia.com/display/OOADRM20181/5+Observation+Ordering#id-5ObservationOrdering-5.4.1.2ORC-2Placerordernumber(EI)00216){:target="_blank"}[<sup>[3]</sup>](https://confluence.hl7australia.com/display/OOADRM20181/5+Observation+Ordering#id-5ObservationOrdering-5.4.1.3ORC-3Fillerordernumber(EI)00217){:target="_blank"}
* [Local Report Identifier](StructureDefinition-au-localreportidentifier.html)[<sup>[1]</sup>](http://ns.electronichealth.net.au/id/hpio-scoped/report/1.0/index.html){:target="_blank"}


#### Extensions

No extensions are used in this profile.


#### Boundaries and relationships

This profile does not provide full support for structured pathology reporting. It is expected that this support is best handled by a set of profiles that represent the structured reporting requirements for each specific protocol (see for example [RCPA’s structured pathology reporting of cancer](https://www.rcpa.edu.au/Library/Practising-Pathology/Structured-Pathology-Reporting-of-Cancer)); this is not in the scope of this implementation guide at this time.


#### Usage Notes
When constructing the report:
<ul>
<li>a local identifier is sent with a <a href="http://ns.electronichealth.net.au/id/hpio-scoped/report/1.0/index.html">HPI-O scoped</a> identifier namespace if there isn't a local namespace available (see the <a href="https://github.com/AuDigitalHealth/ci-fhir-r4/wiki/Frequently-Asked-Questions">FAQ</a>) for more information</li>
<li>code matches one Observation.code referenced in result</li>
<li>effective[x] is the earliest specimen collection date time</li>
<li>performer is sent as one Organization (pathology laboratory) and one or more PractitionerRoles (pathologist)</li></ul>

For a report of a multi-test study or panel:
<ul>
<li>result is sent with the Observation representing the study / panel</li>  
<li>code is sent with the same code in that study / panel Observation</li>  
<li>the individual component tests are referenced by that Observation (Observation.hasMember) and not the DiagnosticReport</li>  
</ul>

If the pathology laboratory is a discipline specific laboratory then one of the appropriate discipline specific value sets may be more suitable for use than the entire reporting set available in the profile:
* [ValueSet : RCPA - SPIA Chemical Pathology Terminology Reference Set](https://www.healthterminologies.gov.au/integration/R4/fhir/ValueSet/spia-chemical-pathology-refset-3?ui:source=search)
* [ValueSet : RCPA - SPIA Haematology Terminology Reference Set](https://www.healthterminologies.gov.au/integration/R4/fhir/ValueSet/spia-haematology-refset-3?ui:source=search)
* [ValueSet : RCPA - SPIA Immunopathology Terminology Reference Set](https://www.healthterminologies.gov.au/integration/R4/fhir/ValueSet/spia-immunopathology-refset-3?ui:source=search)
* [ValueSet : RCPA - SPIA Microbiology Serology Molecular Pathology Terminology Reference Set](https://www.healthterminologies.gov.au/integration/R4/fhir/ValueSet/spia-microbiology-serology-molecular-refset-3?ui:source=search)



#### Examples

No examples are available for this profile.
