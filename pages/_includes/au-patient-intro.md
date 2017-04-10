Australian Patient Profile

This profile defines a patient administration details structure that includes core localisation concepts.

#### Identifiers
These definitions represent common data held in the Patient.identifier element.

* __Individual Healthcare Identifier - IHI__ ([METeOR Description](http://meteor.aihw.gov.au/content/index.phtml/itemId/432495))

The numerical identifier that uniquely identifies each individual in the Australian healthcare system.

The IHI identifier may also include extension properties IHI Status and IHI Record Status associated with the IHI value.

* __Medicare Number__ ([METeOR Description](http://meteor.aihw.gov.au/content/index.phtml/itemId/270101))

Person identifier, allocated by the Health Insurance Commission to eligible persons under the Medicare scheme, that appears on a Medicare card.

The Medicare card number should only be collected from persons eligible to receive health services that are
to be funded by the Commonwealth government. The number should be reported to the appropriate government 
agency to reconcile payment for the service provided. The data should not be used by private sector 
organisations for any other purpose unless specifically authorised by law. For example, data linkage 
should not be carried out unless specifically authorised by law.

Medicare number may also include an expiry date associated with the number.

* __DVA (Department of Veterans' Affairs) Number__ ([METeOR Description](http://meteor.aihw.gov.au/content/index.phtml/itemId/339127))

The data should not be used by private sector organisations for any purpose unless specifically authorised by law. For example, 
private sector organisations should not use the DVA file number for data linking unless specifically authorised by relevant 
privacy legislation.

DVA number may also include details of the specific card colour associated with the number.

#### Extensions
Definitions here describe extensions to the Patient resource.

* __Indigenous Status__  ([METeOR Description](http://meteor.aihw.gov.au/content/index.phtml/itemId/602543))

This extension is added to hold the administrative indigenous status of an individual. The Commonwealth defintion
of indigenous status is "An Aboriginal or Torres Strait Islander is a person of Aboriginal or Torres Strait Islander 
descent who identifies as an Aboriginal or Torres Strait Islander and is accepted as such by the community in which
he or she lives"

Indigenous status is defined as a coded concept associated with the patient.

#### Examples

[Patient with IHI and Medicare Number](patient-example0.html)

[Patient with IHI and DVA Number](patient-example1.html)
