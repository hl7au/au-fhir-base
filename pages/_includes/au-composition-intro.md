**AU Composition**  *[[FMM Level 0](guidance.html)]*

This profile defines a composition structure that includes core localisation concepts for use in an Australian context.

When capturing a composition practitioner role as the sole author of the composition, a practitioner linked to that practitioner role is required to be supplied as a composition author. Where there is more than one author this is not necessary or recommended.

Where practicable it is preferred that the assertion of clinical judgement that there are no known items for this list is handled via an entry with the appropriate negation code over making use of section emptyReason. For example the instantiation of an AllergyIntolerance with code that is a child of 716186003 \|No known allergy\| from SNOMED CT[<sup>[1]</sup>](https://www.snomed.org).

#### Extensions 
Extensions used in this profile:   
* Composition: Composition Author Role[<sup>[1]</sup>](http://hl7.org.au/fhir/StructureDefinition/composition-author-role)
* Composition: Information Recipient[<sup>[1]</sup>](http://hl7.org.au/fhir/StructureDefinition/information-recipient)
* Composition: Related Person Attester Party[<sup>[1]</sup>](http://hl7.org.au/fhir/StructureDefinition/attester-related-party)
* Composition: Section Author[<sup>[1]</sup>](http://hl7.org.au/fhir/StructureDefinition/section-author)

**Examples**

[Composition with multiple information recipients and one author role](Composition-multiple-information-recipients-and-author-role.html)

[Composition with some sections having a different section author to the composition author](Composition-composition-different-authors.html)

[Patient's preference upon death](Composition-example0.html)



