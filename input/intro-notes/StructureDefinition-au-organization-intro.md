### Usage Notes

**Profile specific implementation guidance:**
- When selecting a code for `Organization.type`:
  - Where possible a code from the preferred [Healthcare Organisation Role Type](https://healthterminologies.gov.au/fhir/ValueSet/healthcare-organisation-role-type-1) value set should be selected.
  - If a system is unable to provide a code from the preferred value set because the implementation context is not restricted to healthcare practitioner providers then it is recommended to select a suitable code from SNOMED CT. 
  - If a suitable code from SNOMED CT is not available, a code from the code system [Australian and New Zealand Standard Industrial Classification (ANZSIC), 2006 (Revision 2.0)](https://www.healthterminologies.gov.au/integration/R4/fhir/CodeSystem/anzsic-2006-20130626) may be used.
- See each Identifier profile page for guidance related to that identifier type.
- Additional considerations for systems aligning to HL7 AU Base:
  - Contact details and associated contact purpose are encouraged to be sent in `Organization.contact` over making use of the [Contact Purpose](StructureDefinition-contact-purpose.html) extension.