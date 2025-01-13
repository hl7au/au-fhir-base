<div class="stu-note" markdown="1">
#### Breaking Change

Implementers should note changes to the [ActEncounterCode - AU Extended](ValueSet-au-v3-ActEncounterCode-extended.html) ValueSet removing codes PHONE, VIDEO, EMAIL and SMS ([ActCode AU](CodeSystem-au-v3-ActCode.html) CodeSystem). These are defined as child concepts of the [VR ActEncounterCode](https://hl7.org/fhir/R4/v3/ActCode/cs.html#v3-ActCode-VR) term and these can not be used as the FHIR R4 [Encounter.class](https://hl7.org/fhir/R4/encounter-definitions.html#Encounter.class) element has an existing extensible binding to [V3 Value SetActEncounterCode](https://hl7.org/fhir/R4/v3/ActEncounterCode/vs.html). Consequently use of PHONE, VIDEO, EMAIL and SMS in preference to the VR code is invalid.
</div>