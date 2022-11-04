The purpose of this profile is to provide national level agreement on core localised concepts. 

This profile does not force conformance to core localised concepts. It enables implementers and modellers to make their own rules, i.e. [profiling](http://hl7.org/fhir/profiling.html), about how to support these concepts for specific implementation needs.

### Usage Notes

When selecting a code for Organization type, if a system is unable to provide a code from the preferred value set [Healthcare Organisation Role Type](https://healthterminologies.gov.au/fhir/ValueSet/healthcare-organisation-role-type-1) because the implementation context is not restricted to healthcare practitioner providers then it is recommended to select from the wider set available in SNOMED CT. If a suitable code from SNOMED CT is not available, a code from the code system [Australian and New Zealand Standard Industrial Classification (ANZSIC), 2006 (Revision 2.0)](https://www.healthterminologies.gov.au/integration/R4/fhir/CodeSystem/anzsic-2006-20130626) may be used.

Contact details and associated contact purpose are encouraged to be sent in Organization.contact over making use of the [Contact Purpose](http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-contact-purpose.html) extension.
