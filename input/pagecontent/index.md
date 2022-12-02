### Introduction
This implementation guide is provided to support the use of HL7<sup>&reg;</sup> FHIR<sup>&reg;&copy;</sup> in an Australian context.

This specification provides FHIR<sup>&reg;&copy;</sup> representations that may form the basis of developing implementation guides.

The AU Base implementation guide alone does not constrain profiles sufficiently to ensure particular implementation use cases can be met, but may be used elsewhere to define profiles that require or mandate support for AU Base representations.

For an implementation guide that has basic constraints to support many uses it is recommended that the AU Core implementation guide is used.
The implementable AU Core specification references and uses AU Base profiles, this constrains elements further and defines an expected level of interface interaction support around profiles.
If an implementation is AU Core conformant this allows a level of core capability to be assumed when using.

### Scope

This document presents Australian use concepts defined via FHIR processable artefacts; these are collaborative outputs with agreed approaches to varied kinds of healthcare related information based on the core FHIR R4 specification. 
* [Profiles](profiles-and-extensions.html#profiles) - are useful constraints of core FHIR resources and datatype for Australian use
* [Extensions](profiles-and-extensions.html#extensions) - are FHIR extensions that are added for local use, covering needed Australian concepts
* [Terminologies](terminology.html) - are defined or referenced code systems and value sets for Australian context

FHIR profiles are managed under HL7 Australia working groups and projects:

* [HL7 Australia Patient Administration Working Group](https://confluence.hl7australia.com/display/PA/Patient+Administration+Work+Group)
* [HL7 Australia Medications Working Group](https://confluence.hl7australia.com/display/MED/Medications+Work+Group)
* [HL7 Australia Orders and Observations Working Group](https://confluence.hl7australia.com/display/OO/Orders+and+Observations+Work+Group)
* [HL7 Australia Child Health Working Group](https://confluence.hl7australia.com/display/CHWG/Child+Health+Working+Group)
* [HL7 Argonaut Australia Project](https://confluence.hl7australia.com/display/AFR/HL7+Australia+Standards+Development)

Some profiles indicate the responsible working group, or enquires can be directed to the [Working Group Liaison Officer](mailto:wglo@hl7.org.au)

### Usage

Information contained in this document is aimed at providing guidance on representing Australian local concepts 
using FHIR. This includes code systems, extensions and profiles on base FHIR types.  The content of the implementation guide is 
general in nature and seeks to provide a ‘how-to’ guide when representing concepts, it includes core base
profiles that can be further constrained for a particular usage.

FHIR<sup>&reg;&copy;</sup> connectathon events are key to the verification of the guide as being suitable for 
implementation. This implementation guide will be used as the basis for Australian connectathon events.

### Collaboration
This guide is the product of collaborative work undertaken with participants from:

* Australian FHIR Implementers Community
* HL7 Australia Working Groups
* Australian Digital Health Agency
* CSIRO Australian e-Health Research Centre 
* Secure Messaging Technical Working Group










