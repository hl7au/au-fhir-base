### Usage Notes

**Profile specific implementation guidance:**
- To associate a healthcare service with an encounter apply a [FHIR R5 pre-adoption extension](https://hl7.org/fhir/R5/versions.html#extensions) using [`Encounter.participant.actor`](https://hl7.org/fhir/R5/encounter-definitions.html#Encounter.participant.actor). For example [Inpatient Encounter](Encounter-example0.html).
  - Details on cross version pre-adoption implementation can be found in the FHIR specification [Extensions for converting between versions](https://hl7.org/fhir/R5/versions.html#extensions) section.


  [FHIR R5 pre-adoption extension](https://hl7.org/fhir/R5/versions.html#extensions) using [`Medication.ingredient.strength[x] as CodeableConcept`](https://www.hl7.org/fhir/R5/medication-definitions.html#Medication.ingredient). Example of use is [Tadim](Medication-IngredientStrengthExtension0.html)
