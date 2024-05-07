Extension: NameContext
Id: name-context
Parent: Extension
Description: "Context of use applied to a name."
Context: Patient.name, RelatedPerson.name, Person.name

* value[x] only CodeableConcept
* value[x] from IndividualNameContextValueSet



Instance: example-name-context
InstanceOf: Patient
Description: "Name context extension example"
Title: "Example Name Context"

* text.status = #additional
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'></div>"

* name 
  * extension[name-context].valueCodeableConcept = http://terminology.hl7.org.au/CodeSystem/name-context#ihi-validation "IHI Validation"

* name.family = "Example"
* name.given = "Mary"
* name.text = "Mary Example"

* birthDate = "1971"
* gender = #female
* identifier.system = "http://example.org/mrn"
* identifier.value = "12345679"


ValueSet: NameContextValueSet
Id: name-context
Title: "Name Context ValueSet"
* ^url = "http://terminology.hl7.org.au/ValueSet/name-context"
* include codes from system NameContextCodeSystem

CodeSystem: NameContextCodeSystem
Id: name-context
Title: "Name Context Codes"
* ^url = "http://terminology.hl7.org.au/CodeSystem/name-context"
* #ihi-validation "IHI Validation" "Indicates associated name is for IHI Validation"