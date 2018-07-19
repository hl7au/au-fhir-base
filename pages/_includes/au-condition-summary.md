AU Base Condition profile contains:

1. Optional code.coding slice with required binding to Clinical Condition value set
1. Optional bodySite.coding slice with required binding to Body Set value set
1. Optional evidence.code.coding slice with required binding to Clinical Finding value set
1. `Condition.subject`
- constrained to use either the [Group](http://hl7.org/fhir/STU3/group.html) or the [Au Base Patient Profile](http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-patient.html)
1. `Condition.asserter`
- constrained to the [Au Base Patient Profile](http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-patient.html) or the [Au Base RelatedPerson Profile](http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-relatedperson.html) or the [Au Base Practitioner Profile](http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-practitioner.html)  
