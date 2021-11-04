**AU Base Organization** *[[FMM Level 3](guidance.html)]*

This profile defines an organisation structure that localises core concepts, including identifiers and terminology, for use in an Australian context.

The purpose of this profile is to provide national level agreement on core localised concepts. 

This profile does not force conformance to core localised concepts. It enables implementers and modellers to make their own rules, i.e. [profiling](http://hl7.org/fhir/profiling.html), about how to support these concepts for specific implementation needs.


#### Identifiers

These definitions, defined as profiles of [Identifier](http://hl7.org/fhir/R4/datatypes.html#Identifier), represent common data held in the Organization.identifier element:
* [Healthcare Provider Identifier – Organisation (HPI-O)](StructureDefinition-au-hpio.html) [<sup>[1]</sup>](http://ns.electronichealth.net.au/id/hi/hpio/1.0/index.html){:target="_blank"} [<sup>[2]</sup>](http://meteor.aihw.gov.au/content/index.phtml/itemId/426830){:target="_blank"}
* [My Health Record Assigned Identity - Organisation (PAI-O)](StructureDefinition-au-paioidentifier.html) [<sup>[1]</sup>](http://ns.electronichealth.net.au/id/pcehr/paio/1.0/index.html){:target="_blank"}
* [Contracted Service Provider (CSP) Registration Number](StructureDefinition-au-cspregistrationnumber.html) [<sup>[1]</sup>](http://ns.electronichealth.net.au/id/hi/csp/1.0/index.html){:target="_blank"}
* ASIC Identifiers - [Australian Business Number (ABN)](StructureDefinition-au-australianbusinessnumber.html) [<sup>[1]</sup>](http://hl7.org.au/id/abn ){:target="_blank"} [<sup>[2]</sup>](https://www.abr.business.gov.au/HelpAbnFormat.aspx){:target="_blank"}, [Australian Company Number (ACN)](StructureDefinition-au-australiancompanynumber.html) [<sup>[3]</sup>](http://hl7.org.au/id/acn){:target="_blank"} [<sup>[4]</sup>](http://asic.gov.au/for-business/registering-a-company/steps-to-register-a-company/australian-company-numbers/australian-company-number-digit-check){:target="_blank"} and [Australian Registered Body Number (ARBN)](StructureDefinition-au-australianregistredbodynumber.html) [<sup>[5]</sup>](http://hl7.org.au/id/arbn){:target="_blank"}
* [National Association of Testing Authorities (NATA) Accreditation Number](StructureDefinition-au-nataaccreditationnumber.html) [<sup>[1]</sup>](http://hl7.org.au/id/nata-accreditation/index.html){:target="_blank"}
* [Pharmacy Approval Number](StructureDefinition-au-pharmacyapprovalnumber.html) [<sup>[1]</sup>](http://ns.electronichealth.net.au/id/pharmacy-approval-number){:target="_blank"}


#### Extensions

No extensions are used in this profile.


#### Usage Notes

When selecting a code for Organization type, if a system is unable to provide a code from the preferred value set [Healthcare Organisation Role Type](https://healthterminologies.gov.au/fhir/ValueSet/healthcare-organisation-role-type-1) because the implementation context is not restricted to healthcare practitioner providers then it is recommended to select from the wider set available in SNOMED CT. If a suitable code from SNOMED CT is not available, a code from the code system [Australian and New Zealand Standard Industrial Classification (ANZSIC), 2006 (Revision 2.0)](https://www.healthterminologies.gov.au/integration/R4/fhir/CodeSystem/anzsic-2006-20130626) may be used.

Contact details and associated contact purpose are encouraged to be sent in Organization.contact over making use of the [Contact Purpose](http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-contact-purpose.html) extension.


#### Examples

[Organisation with HPI-O](Organization-example0.html)

[Albion Hospital with ABN](Organization-example1.html)

[Holistic Medical Pty Ltd with ABN and HPI-O](Organization-example2.html)

[Devonport Family Medicine Clinic with ABN](Organization-example3.html)

[ACME Pathology with NATA accreditation number, ARBN, ABN, ACN, HPI-O, PAI-O and CSP registration number](Organization-f799e349-0385-4fbc-a2aa-b5b50af957ea.html)