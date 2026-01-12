### Usage Notes

**Profile specific implementation guidance:**
- To associate a healthcare service with an encounter include [FHIR R5 element pre-adoption](https://hl7.org/fhir/R5/versions.html#extensions) of [`Encounter.participant.actor`](https://hl7.org/fhir/R5/encounter-definitions.html#Encounter.participant.actor). See example [Inpatient Encounter](Encounter-example0.html).
  - Use the pre-adoption extension URL [http://hl7.org/fhir/5.0/StructureDefinition/extension-Encounter.participant.actor](http://hl7.org/fhir/5.0/StructureDefinition/extension-Encounter.participant.actor).
  - Apply the pre-adoption extension on `Encounter.participant`.


