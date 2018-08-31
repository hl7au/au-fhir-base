**AU Composition** *[FMM Level [0](http://build.fhir.org/versions.html#maturity)]*

This Composition profile provided for use in an Australian context.

**Examples**

[Composition with multiple information recipients and one author role](Composition-multiple-information-recipients-and-author-role.html)

[Composition with some sections having a different section author to the composition author](Composition-composition-different-authors.html)

[Patient's preference upon death](Composition-example0.html)

**Extensions**

Extensions used in this profile:

* Composition: [Composition Author Role](StructureDefinition-composition-author-role.html)
* Composition: [Information Recipient](StructureDefinition-information-recipient.html)
* Composition: [Related Person Attester Party](StructureDefinition-attester-related-party.html)
* Composition: [Section Author](StructureDefinition-section-author.html)

When capturing a composition practitioner role as the sole author of the composition, a practitioner linked to that practitioner role is required to be supplied as a composition author. Where there is more than one author this is not necessary or recommended.