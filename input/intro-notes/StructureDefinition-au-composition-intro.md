### Usage Notes

**Profile specific implementation guidance:**
- It is important to clearly differentiate between representing the extent of a system's information for a patient versus clinical judgement of no relevant finding:
  - When asserting clinical judgement that there are no items of specific interest, (e.g. no current medications, no known allergies, or no history of vaccination), `Composition.section.entry` with a reference to a supported FHIR resource containing the record of assertion should be sent.
    - Guidance is provided in the core FHIR specification for AllergyIntolerance and Condition, and [AU Assertion of No Relevant Finding](StructureDefinition-au-norelevantfinding.html) is defined in this implementation guide to support additional concepts.
  - When a statement is about the nature or extent of the information the system has access to or is permitted to share, (e.g. not asked or information withheld), `Composition.section.emptyReason` should be sent with an appropriate code from the [ListEmptyReasons](http://hl7.org/fhir/R4/valueset-list-empty-reason.html) value set.