**AU Medicine List**  *[[FMM Level 1](guidance.html)]*

This profile defines a list structure including core localisation concepts for use as a medicines list in an Australian context. This profile is intended to offer a common structure and expectations to record, exchange, and fetch a list of medications associated with a patient in an Australian healthcare context. 

Assertion of no relevant finding can be used to positively state that there is no history of immunisations for a patient or that the patient is known not to have current medications.

When capturing a related person as the author of the list, an authoring practitioner role or another source should not be provided. 

Forthcoming work around this profile is expected to result in guidance and additional structures that define types of medication lists, e.g. current medications or medication changes or prescription history. 

#### Extensions
Extensions used in this profile:
* List: Author as a Related Person [<sup>[1]</sup>](http://hl7.org.au/fhir/StructureDefinition/author-related-person)
* List.entry: Change Description [<sup>[1]</sup>](http://hl7.org.au/fhir/StructureDefinition/change-description)

**Examples**

[Current medicine list, authored by practitioner role, with referenced medication statements](List-e0a6c4a6-4e97-11e9-8647-d663bd873d93.html)

[Current medicine list, source of practitioner, with assertion of no known current medicines](List-bdaf4fda-4e98-11e9-8647-d663bd873d93.html)

[Current medicine on discharge (Bundle)](Bundle-9309d080-4e97-11e9-8647-d663bd873d93.html)

[Current and ceased medicines](List-0ebc46a8-4ea8-11e9-8647-d663bd873d93.html)


