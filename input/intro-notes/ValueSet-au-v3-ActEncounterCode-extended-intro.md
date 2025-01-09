<div class="stu-note">
AU Base Version 4.2.2 introduces a breaking change by removing the PHONE, VIDEO, EMAIL and SMS codes from the <a href="http://terminology.hl7.org.au/ValueSet/v3-ActEncounterCode-extended">ActEncounterCode - AU Extended</a> value set. PHONE, VIDEO, EMAIL and SMS codes cannot be used to populate Encounter.class in R4 because they are subsumed by the VR code from the <a href="http://terminology.hl7.org/CodeSystem/v3-ActCode">ActCode</a> code system. The codes are valid for use in R5 if used in conjunction with the VR code.
</div>
### Usage Notes