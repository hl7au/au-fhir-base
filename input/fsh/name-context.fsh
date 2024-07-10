Extension: NameContext
Id: name-context
Parent: Extension
Title: "Name Context"
Description: "A suitable context of use for a patient, person, practitioner or related person name can be indicated using this extension. 
This includes an ability to provide a coded concept or text description of a suitable use of the associated name.
The usage described may be varied in nature including suitability for a particular purpose e.g. IHI validation, or highlighting (in)appropriate
use when referring to an individual e.g. deceased Aboriginal name, transgender deadname."
Context: Patient.name, RelatedPerson.name, Person.name, Practitioner.name

* value[x] 1..1
* value[x] only CodeableConcept
* value[x] from NameContextValueSet (extensible)
* value[x] ^short = "Name context"


Instance: example-patient-name-context
InstanceOf: Patient
Title: "Patient - indicate IHI validation name context"
Usage: #example
* name[0].use = #usual
* name[0].family = "Chan"
* name[0].given = "May"
* name[0].text = "May Chan"
* name[1] 
  * extension[name-context].valueCodeableConcept = http://terminology.hl7.org.au/CodeSystem/name-context#ihi-validation "IHI Validation"
* name[1].use = #official
* name[1].family = "Chan"
* name[1].given = "Xiang"
* name[1].text = "Xiang Chan"
* birthDate = "1972-03-03"
* gender = #female

Instance: example-practitioner-name-context
InstanceOf: Practitioner
Title: "Practitioner - indicate HPI-I validation name context"
Usage: #example
* active = true
* name 
  * extension[name-context][0].valueCodeableConcept = http://terminology.hl7.org.au/CodeSystem/name-context#hpii-validation "IHI Validation"
* name.family = "Mayo"
* name.given = "Helen"
* name.text = "Helen Mayo"



ValueSet: NameContextValueSet
Id: name-context
Title: "Name Context"
Description: "The Name Context valueset is used to classify suitable uses or purposes of names."
* ^url = "http://terminology.hl7.org.au/ValueSet/name-context"
* include codes from system NameContextCodeSystem


CodeSystem: NameContextCodeSystem
Id: name-context
Title: "Name Context Codes"
Description: "The Name Context code system defines concepts describing usage of names. This provides well known concepts that can be used to indicate usage to achieve an associated purpose e.g. identifier validation or (in)appropriate cultural, religious or social usage of names."
* ^url = "http://terminology.hl7.org.au/CodeSystem/name-context"
* #ihi-validation "IHI Validation" "Indicates associated name is for IHI (Individual Healthcare Identifier) Validation"
* #hpii-validation "HPI-I Validation" "Indicates associated name is for HPI-I (Healthcare Provider Identifier - Individual) Validation"