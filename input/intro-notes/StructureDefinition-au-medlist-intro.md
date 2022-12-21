### Usage Notes

**Profile specific implementation guidance:**
- It is important to clearly differentiate between representing the extent of a system's information for a patient versus clinical judgement of negation or no relevant finding:
  - When asserting clinical judgement that there are no items of specific interest, (e.g. no current medications or no history of vaccination), `List.item.entry` with a reference to a supported FHIR resource containing the record of assertion should be sent. [AU Assertion of No Relevant Finding](StructureDefinition-au-norelevantfinding.html) is defined in this implementation guide to this concept.
  - When a statement is about the nature or extent of the information the system has access to or is permitted to share, e.g. not asked, `List.emptyReason` should be sent with an appropriate code from the [ListEmptyReasons](http://hl7.org/fhir/R4/valueset-list-empty-reason.html) value set.
- When capturing a related person as the author of the list, the [Author as a RelatedPerson](StructureDefinition-author-related-person.html) extension should be used and `List.source` should not be included.