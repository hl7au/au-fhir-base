Extension: IndividualNameContext
Id: individual-name-context
Parent: Extension
Description: "Context of use applied to an indvidual person name."
Context: Patient.name, RelatedPerson.name, Person.name

* value[x] only CodeableConcept
* value[x] from IndividualNameContextValueSet



Instance: example-individual-name-context
InstanceOf: Patient
Description: "Individual name context extension example"
Title: "Example Individual Name Context"

* text.status = #additional
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'></div>"

* name 
  * extension[individual-name-context].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/individual-name-context#ihi-validation "IHI Validation"

* name.family = "Example"
* name.given = "Mary"
* name.text = "Mary Example"

* birthDate = "1971"
* gender = #female
* identifier.system = "http://example.org/mrn"
* identifier.value = "12345679"


ValueSet: IndividualNameContextValueSet
Id: individual-name-context
Title: "Individual Name Context"
* ^url = "http://terminology.hl7.org.au/ValueSet/individual-name-context"
* include codes from system IndividualNameContext

CodeSystem: IndividualNameContext
Id: individual-name-context
Title: "Individual Name Context"
* ^url = "http://terminology.hl7.org.au/CodeSystem/individual-name-context"
* #ihi-validation "IHI Validation" "Indicates associated name is for IHI Validation"