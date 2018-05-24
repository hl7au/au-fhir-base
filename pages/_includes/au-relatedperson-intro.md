**AU Base RelatedPerson Profile**

This profile defines a RelatedPerson administration details structure that includes core localisation concepts.

#### Identifiers
These definitions represent common data held in the RelatedPerson.identifier element.

* __Individual Healthcare Identifier - IHI__ 

[Namespace Description](http://ns.electronichealth.net.au/id/hi/ihi/1.0/index.html){:target="_blank"}

[METeOR Description](http://meteor.aihw.gov.au/content/index.phtml/itemId/432495){:target="_blank"}

The numerical identifier that uniquely identifies each individual in the Australian healthcare system.

The IHI identifier may also include extension properties IHI Status and IHI Record Status associated with the IHI value.

* __Medicare Number__ 

[Namespace Description](http://ns.electronichealth.net.au/id/medicare-number/index.html){:target="_blank"}

[METeOR Description](http://meteor.aihw.gov.au/content/index.phtml/itemId/270101){:target="_blank"}

Person identifier, allocated by the Health Insurance Commission to eligible persons under the Medicare scheme, that appears on a Medicare card.

The Medicare card number should only be collected from persons eligible to receive health services that are
to be funded by the Commonwealth government. The number should be reported to the appropriate government 
agency to reconcile payment for the service provided. The data should not be used by private sector 
organisations for any other purpose unless specifically authorised by law. For example, data linkage 
should not be carried out unless specifically authorised by law.

Medicare number may also include an expiry date associated with the number.

* __DVA (Department of Veterans' Affairs) Number__ 

[Namespace Description](http://ns.electronichealth.net.au/id/dva/index.html){:target="_blank"}

[METeOR Description](http://meteor.aihw.gov.au/content/index.phtml/itemId/339127){:target="_blank"}

The data should not be used by private sector organisations for any purpose unless specifically authorised by law. For example, 
private sector organisations should not use the DVA file number for data linking unless specifically authorised by relevant 
privacy legislation.

DVA number may also include details of the specific card colour associated with the number.

* __Health Care Card Number__ 
* __Pensioner Concession Card Number__ 
* __Commonwealth Seniors Health Card Number__ 

[Namespace Description](http://ns.electronichealth.net.au/id/centrelink-customer-reference-number/index.html){:target="_blank"}

[METeOR CRN Description](http://meteor.aihw.gov.au/content/index.phtml/itemId/270098){:target="_blank"}

All of the above mentioned cards use Centerlink Customer Reference Number.

A personal identifier assigned by Centrelink for the purposes of identifying people (and organisations) eligible for specific 
services, including some public health care services, such as oral health services.

The CRN should only be collected from persons eligible to receive health services that are to be funded by Centrelink. The 
number may be reported to a Centrelink agency to reconcile payment for the service provided. The data should not be used by
private sector organisations for any purpose unless specifically authorised by law. For example, data linkage should not be
carried out unless specifically authorised by law.
