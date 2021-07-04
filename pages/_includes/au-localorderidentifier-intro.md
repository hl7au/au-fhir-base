**AU Local Order Identifier**  *[[FMM Level 0](guidance.html)]*

This identifier profile defines a local order identifier in an Australian context. A local order identifier is an organisation's identifier for an order in that organisation's local system set of orders.

Typically a local order identifier will be either a placer identifier[<sup>[1]</sup>](https://confluence.hl7australia.com/display/OOADRM20181/5+Observation+Ordering#id-5ObservationOrdering-5.4.1.2ORC-2Placerordernumber(EI)00216){:target="_blank"}  or a filler identifier[<sup>[2]</sup>](https://confluence.hl7australia.com/display/OOADRM20181/5+Observation+Ordering#id-5ObservationOrdering-5.4.1.3ORC-3Fillerordernumber(EI)00217){:target="_blank"} (sometimes known as filler order number). A placer identifier is an identifier for a request or group of requests where the identifier is issued by the entity making the request. A filler identifier is an identifier for a request or group of requests where the identifier is issued by the entity that produces the observations or fulfills the request.


#### Extensions

No extensions are used in this profile.


#### Usage Notes
It is preferable that an organisation uses their own local system identifier namespace but if that is not available then an organisation can use their HPI-O to construct a legal globally unique identifier system for their local identifiers. 

See the Australian Digital Health Agency's [R4 FAQ](https://github.com/AuDigitalHealth/ci-fhir-r4/wiki/Frequently-Asked-Questions) for guidance on constructing an HPI-O scoped[<sup>[1]</sup>](http://ns.electronichealth.net.au/id/hpio-scoped/order/1.0/index.html){:target="_blank"} local order identifier.


#### Examples

No examples are available for this profile.