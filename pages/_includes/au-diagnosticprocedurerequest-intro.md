**AU Base Diagnostic Procedure Request Profile** *[[FMM Level 0](guidance.html)]*

This profile defines a procedure request structure that includes core localisation concepts for use in an Australian context.

Note:  The targetBodyStructure extensions is only used if not implicit in the code found in ProcedureRequest.code. If the use case requires BodySite to be handled as a separate resource instead of an inline coded element (e.g. to identify and track separately) then use the standard extension [procedurerequest-targetBodyStructure](http://hl7.org/fhir/STU3/extension-procedurerequest-targetbodysite.html). 

Forthcoming work around this profile is expected to result in a value set representing the Standard for Pathology Informatics in Australia - Requesting codes bound as a slice on the code element in addition to the existing slice for diagnostic imaging requests in SNOMED CT<sup>TM</sup>.

#### Identifiers
These definitions represent common data held in the ProcedureRequest.identifier element:
* Placer order number [<sup>[1]</sup>](https://confluence.hl7australia.com/display/OOADRM20181/5+Observation+Ordering#id-5ObservationOrdering-5.4.1.2ORC-2Placerordernumber(EI)00216)

#### Extensions
Extensions used in this profile:
* ProcedureRequest: performer-party [<sup>[1]</sup>](http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-performer-party.html)
* ProcedureRequest: targetBodySite [<sup>[1]</sup>](http://hl7.org/fhir/STU3/extension-procedurerequest-targetbodysite.html)
<!-- * ProcedureRequest: patientInstruction [<sup>[1]</sup>](http://hl7.org/fhir/4.0/StructureDefinition/extension-ServiceRequest.patientInstruction.html)  -->
