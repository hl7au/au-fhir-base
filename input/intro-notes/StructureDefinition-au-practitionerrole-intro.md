### Usage Notes

**Profile specific implementation guidance:**
- If a system needs to differentiate contacts for a practitioner in a role by purpose:
  - contact information is sent in `PractitionerRole.telecom`
  - purpose for the contact is sent using the [Contact Purpose](StructureDefinition-contact-purpose.html) extension in `PractitionerRole.telecom.extension`
- When selecting a code for `PractitionerRole.code`:
  - Where possible a code from the preferred [Practitioner Role](https://healthterminologies.gov.au/fhir/ValueSet/practitioner-role-1) value set should be selected.
  - If a system is unable to provide a code from the preferred value set because the implementation context is not restricted to healthcare practitioner providers then it is recommended to select a suitable code from SNOMED CT. 
  - If a suitable code from SNOMED CT is not available a code from the value set [Australian and New Zealand Standard Classification of Occupations](https://healthterminologies.gov.au/fhir/ValueSet/anzsco-1) may be used.
- See each Identifier profile page for guidance related to that identifier type.
- When populating available times for a practitioner role, e.g. `PractitionerRole.availableTime.availableStartTime`, an Australian time zone offset is represented using the [Timezone Code](http://hl7.org/fhir/StructureDefinition/timezone) extension as profiled by [Australian Time Zone Usage](StructureDefinition-au-timezone-usage.html).

**Potentially useful extensions:**
* PractitionerRole.telecom: [Contact Purpose](StructureDefinition-contact-purpose.html)
