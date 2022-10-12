The purpose of this profile is to provide national level agreement on core localised concepts. 

This profile does not force conformance to core localised concepts. It enables implementers and modellers to make their own rules, i.e. [profiling](http://hl7.org/fhir/profiling.html), about how to support these concepts for specific implementation needs.

Potentially useful extensions:
* PractitionerRole.telecom: [Contact Purpose](StructureDefinition-contact-purpose.html)


### Usage Notes

To indicate the purpose of a contact point (e.g. telecom), the extension Contact Purpose could be used.

When selecting a PractitionerRole code, if a system is unable to provide a code from the preferred value set [Practitioner Role](https://healthterminologies.gov.au/fhir/ValueSet/practitioner-role-1) because the implementation context is not restricted to healthcare practitioner providers then it is recommended to select from the wider set available in SNOMED CT. If a suitable code from SNOMED CT is not available a code from the value set [Australian and New Zealand Standard Classification of Occupations](https://healthterminologies.gov.au/fhir/ValueSet/anzsco-1) may be used.
