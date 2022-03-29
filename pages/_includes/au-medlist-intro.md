**AU Medicine List**  *[[FMM 1](guidance.html)]*

This profile defines a list structure including core localisation concepts for use as a medicines list in an Australian context. This profile is intended to offer a common structure and expectations to record, exchange, and fetch a list of medications associated with a patient in an Australian healthcare context. 

Forthcoming work around this profile is expected to result in guidance and additional structures that define types of medication lists, e.g. current medications or medication changes or prescription history. 


#### Extensions

Extensions used in this profile:
* List: [Author as a Related Person](StructureDefinition-author-related-person.html)
* List.entry: [Change Description](StructureDefinition-change-description.html)


#### Usage Notes
An [assertion of no relevant finding](StructureDefinition-au-norelevantfinding.html) can be used to positively state that there is no history of immunisations for a patient or that the patient is known not to have current medications.

When capturing a related person as the author of the list, the extension Author as a Related Person should be used and List.source should not be included.


#### Examples

[Current medicine list, authored by practitioner role, with referenced medication statements](List-example0.html)

[Current medicine list, source of practitioner, with assertion of no known current medicines](List-example1.html)

[Current medicine on discharge (Bundle)](Bundle-9309d080-4e97-11e9-8647-d663bd873d93.html)

[Current and ceased medicines](List-example2.html)

[Current medicine list authored by related person, with medication entry as free text](List-example3.html)

