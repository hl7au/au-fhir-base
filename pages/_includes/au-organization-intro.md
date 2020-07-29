**AU Base Organization Profile** *[[FMM Level 3](guidance.html)]*

This profile provides core localisations to Organization for an Australian context.
It includes preferred terminology bindings, extensions and patterns of use for identifiers.

#### Identifiers
These definitions, defined as profiles of [Identifier](http://hl7.org/fhir/R4/datatypes.html#Identifier), represent common data held in the Organization.identifier element:
* [Healthcare Provider Identifier – Organisation (HPI-O)](StructureDefinition-au-hpionumber.html) [<sup>[1]</sup>](http://ns.electronichealth.net.au/id/hi/hpio/1.0/index.html){:target="_blank"} [<sup>[2]</sup>](http://meteor.aihw.gov.au/content/index.phtml/itemId/426830){:target="_blank"}
* [My Health Record Assigned Identity - Organisation (PAI-O)](StructureDefinition-au-paioidentifier.html) [<sup>[1]</sup>](http://ns.electronichealth.net.au/id/pcehr/paio/1.0/index.html){:target="_blank"}
* [Contracted Service Provider (CSP) Registration Number](StructureDefinition-au-cspregistrationnumber.html) [<sup>[1]</sup>](http://ns.electronichealth.net.au/id/hi/csp/1.0/index.html){:target="_blank"}
* ASIC Identifiers - [Australian Business Number (ABN)](StructureDefinition-au-australianbusinessnumber.html) [<sup>[1]</sup>](http://hl7.org.au/id/abn ){:target="_blank"} [<sup>[2]</sup>](https://www.abr.business.gov.au/HelpAbnFormat.aspx){:target="_blank"}, [Australian Company Number (ACN)](StructureDefinition-au-australiancompanynumber.html [<sup>[3]</sup>](http://hl7.org.au/id/acn){:target="_blank"} [<sup>[4]</sup>](http://asic.gov.au/for-business/registering-a-company/steps-to-register-a-company/australian-company-numbers/australian-company-number-digit-check){:target="_blank"} and [Australian Registered Body Number (ARBN)](StructureDefinition-au-australianregistredbodynumber.html [<sup>[5]</sup>](http://hl7.org.au/id/arbn){:target="_blank"}
* [National Association of Testing Authorities (NATA) Accreditation Number](StructureDefinition-au-nataaccreditationnumber.html [<sup>[1]</sup>](http://hl7.org.au/id/nata-accreditation/index.html){:target="_blank"}

#### Extensions
No extensions are used in this profile.

#### Examples

[Organisation with HPI-O](Organization-example0.html)

[Albion Hospital with Australian Business Number](Organization-example1.html)

[Devonport Family Medicine Clinic with Australian Business Number](Organization-example3.html)

[ACME Pathology with NATA Number, ARBN, ABN, ACN, HPI-O, PAI-O and CSP](Organization-f799e349-0385-4fbc-a2aa-b5b50af957ea.html)
