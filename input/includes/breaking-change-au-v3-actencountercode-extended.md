<div class="stu-note" markdown="1">
#### Breaking Change in 5.0.0 ([see all](changes.html#breakingchanges))

Implementers should note that the codes PHONE, VIDEO, EMAIL and SMS ([ActCode AU](CodeSystem-au-v3-ActCode.html) code system) are no longer included as these concepts are agreed to be child concepts of the [VR ActEncounterCode](https://hl7.org/fhir/R4/v3/ActCode/cs.html#v3-ActCode-VR) term and these cannot be used as the FHIR R4 [Encounter.class](https://hl7.org/fhir/R4/encounter-definitions.html#Encounter.class) element has an existing extensible binding to [HL7 v3 Value Set ActEncounterCode](https://hl7.org/fhir/R4/v3/ActEncounterCode/vs.html). Consequently use of PHONE, VIDEO, EMAIL and SMS in preference to the VR code is invalid.
</div>