### Usage Notes

**Profile specific implementation guidance:**
- To associate a healthcare service with an encounter apply a [FHIR R5 pre-adoption extension](https://hl7.org/fhir/R5/versions.html#extensions) using [`Encounter.participant.actor`](https://hl7.org/fhir/R5/encounter-definitions.html#Encounter.participant.actor). For example [Inpatient Encounter](Encounter-example0.html).

