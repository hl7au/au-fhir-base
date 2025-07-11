### Usage Notes

**Profile specific implementation guidance:**
- To associate a HealthcareService with an encounter the pre-adoption of the FHIR R5 [Encounter.participant.actor](https://hl7.org/fhir/R5/encounter-definitions.html#Encounter.participant.actor) element is preferred.
   - This is applied on Encounter.participant using the extension URL [http://hl7.org/fhir/5.0/StructureDefinition/extension-Encounter.participant.actor](http://hl7.org/fhir/5.0/StructureDefinition/extension-Encounter.participant.actor).   
   - This pre-adopted element includes references to resource types that already can already be represented in R4 Encounter.participant.individual (Practitioner, PractitionerRole and RelatedPerson), the existing R4 references are recommended to be used rather than using pre-adoption extension representation for these resource types.
   - Details on cross version pre-adoption implementation can be found in the FHIR specification [Extensions for converting between versions](https://hl7.org/fhir/R5/versions.html#extensions) section.
