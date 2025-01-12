<div class="note-to-balloters" markdown="1">
#### Breaking Change

 Implementers should note codes PHONE, VIDEO, EMAIL and SMS ([ActCode AU](CodeSystem-au-v3-ActCode.html) CodeSystem) are no longer included  as these concepts are defined to be child concepts of the VR [ActEncounterCode](https://terminology.hl7.org/6.1.0/ValueSet-v3-ActEncounterCode.html) term and these can not be used as the FHIR R4 [Encounter.class](https://hl7.org/fhir/R4/encounter-definitions.html#Encounter.class) element has an existing extensible binding to [V3 Value SetActEncounterCode](https://hl7.org/fhir/R4/v3/ActEncounterCode/vs.html). Consequently use of PHONE, VIDEO, EMAIL and SMS in preference to the VR code is invalid.
</div>