### Usage Notes

**Profile specific implementation guidance:**
- To associate a HealthcareService with an encounter the pre-adoption of the FHIR R5 [Encounter.participant.actor](https://hl7.org/fhir/R5/encounter-definitions.html#Encounter.participant.actor) element with the extension URL [http://hl7.org/fhir/5.0/StructureDefinition/extension-Encounter.participant.actor](http://hl7.org/fhir/5.0/StructureDefinition/extension-Encounter.participant.actor) is used. See this example of use [Inpatient Encounter](Encounter-example0.html).
- Details on cross version pre-adoption implementation can be found in the FHIR specification [Extensions for converting between versions](https://hl7.org/fhir/R5/versions.html#extensions) section.
