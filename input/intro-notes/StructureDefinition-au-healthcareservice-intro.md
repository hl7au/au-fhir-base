### Usage Notes

**Profile specific implementation guidance:**
- An HPI-O can be sent in `HealthcareService.identifier` when supporting  the case where network HPI-Os are issued for sub-organisations, departments, or other logical divisions acting as specific healthcare services. This is useful in the absence of any specific national identifier for healthcare service entities.
- See each Identifier profile page for guidance related to that identifier type.
- The [Contact Purpose](StructureDefinition-contact-purpose.html) can be used to indicate the purpose of a contact point (e.g. telecom).
- See the [AU Base Location](StructureDefinition-au-location.html) profile for guidance on using a Location resource as part of defining a type of mobile or remotely delivered service.

**Potentially useful extensions:**
* HealthcareService.telecom: [Contact Purpose](StructureDefinition-contact-purpose.html)