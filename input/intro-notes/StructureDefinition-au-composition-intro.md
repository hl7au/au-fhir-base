**AU Composition**  *[[FMM 2](guidance.html)]*

This profile defines a composition structure that includes core localisation concepts for use in an Australian context.


#### Extensions 
Extensions used in this profile:   
* Composition: [Information Recipient](StructureDefinition-information-recipient.html)


#### Usage Notes

When capturing a composition practitioner role as the sole author of the composition, a practitioner linked to that practitioner role is required to be supplied as a composition author. Where there is more than one author this is not necessary or recommended.

Where practicable it is preferred that the assertion of clinical judgement that there are no known items for this list is handled via an entry with the appropriate negation code over making use of section emptyReason. For example the instantiation of an AllergyIntolerance with code that is a child of 716186003 \|No known allergy\| from SNOMED CT[<sup>[1]</sup>](https://www.snomed.org).


#### Conversion

NOTE: AU Base on STU3 included three extensions Authoring Practitioner Role, Attester as a Related Person and Section Author, all of which are now no longer required as direct R4 support is available.

#### Examples

[Composition with multiple information recipients](Composition-multiple-information-recipients.html)

[Composition with some sections having a different section author to the composition author](Composition-different-authors.html)

[Patient's preference upon death](Composition-example0.html)



