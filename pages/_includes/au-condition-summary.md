AU Base Condition profile contains:

1. Optional code.coding slice with required binding to Clinical Condition value set
1. Optional bodySite.coding with required binding to Body Set value set
1. Optional evidence.code.coding slice with required binding to Clinical Finding value set
1. `Condition.subject`
- constrained to use either the [STU3 Group](http://hl7.org/fhir/STU3/group.html) or the [AU Base Patient](http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-patient.html) Profile
1. `Condition.asserter`
- constrained to the [AU Base Patient](http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-patient.html) Profile or the [AU Base RelatedPerson](http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-relatedperson.html) Profile or the [AU Base Practitioner](http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-practitioner.html) Profile  
