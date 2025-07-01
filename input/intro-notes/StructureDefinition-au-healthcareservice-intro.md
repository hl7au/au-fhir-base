### Usage Notes

**Profile specific implementation guidance:**
- An HPI-O can be sent in `HealthcareService.identifier` when supporting  the case where network HPI-Os are issued for sub-organisations, departments, or other logical divisions acting as specific healthcare services. This is useful in the absence of any specific national identifier for healthcare service entities.
- See each Identifier profile page for guidance related to that identifier type.
- If a system needs to differentiate contacts for a practitioner in a role by purpose:
  - contact information is sent in `HealthcareService.telecom`
  - purpose for the contact is sent using the [Contact Purpose](StructureDefinition-contact-purpose.html) extension in `HealthcareService.telecom.extension`
- See the [AU Base Location](StructureDefinition-au-location.html) profile for guidance on using a Location resource as part of defining a type of mobile or remotely delivered service.
- When populating available times for a health care service, e.g. `HealthcareService.availableTime.availableStartTime`, an Australian time zone offset is represented using the [Timezone Code](http://hl7.org/fhir/StructureDefinition/timezone) extension as profiled by [Australian Time Zone Usage](StructureDefinition-au-timezone-usage.html).


**Potentially useful extensions:**
* HealthcareService.telecom: [Contact Purpose](StructureDefinition-contact-purpose.html)
