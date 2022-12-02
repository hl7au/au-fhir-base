### Introduction
This implementation guide is provided to support the use of HL7<sup>&reg;</sup> FHIR<sup>&reg;&copy;</sup> in an Australian context.

The AU Base implementation guide presents Australian use concepts defined via FHIR processable artefacts; these are collaborative outputs with agreed approaches to varied kinds of healthcare related information based on the core FHIR R4 specification as base profiles that can be further constrained in a separate implementation guide for a particular usage.

This guide alone does not constrain profiles sufficiently to ensure implementation use cases can be met. 

For an implementation guide that has basic constraints to support many uses it is recommended that the AU Core implementation guide is used.
The implementable AU Core specification references and uses AU Base profiles, this constrains elements further and defines an expected level of interface interaction support around profiles.
If an implementation is AU Core conformant this allows a level of core capability to be assumed when using.


### How to read this guide

This guide is divided into several pages which are listed at the top of each page in the menu bar.

- [Home](index.html): This page provides the introduction and scope for this guide.
- [Guidance](guidance.html): This page provides guidance on using the profiles defined in this guide.
- [FHIR Artefacts](artifacts.html): These pages provide detailed descriptions and formal definitions for all the FHIR artefacts defined in this guide.
  - [Profiles and Extensions](profiles-and-extensions.html): This set of pages describes the profiles and extensions that are defined in this guide to represent Australian local concepts using FHIR. Each profile page includes a narrative description, guidance, and formal definition. Although the guidance typically focuses on the profiled elements and seeks to provide a ‘how-to’ guide when representing concepts, it may also may focus on un-profiled elements to aid with implementation.
  - [Terminology](terminology.html): This set of pages lists the value sets and code systems defined in this guide.
- [Examples](examples.html): This page lists all the examples used in this guide.
- [Downloads](downloads.html): This page provides links to downloadable artefacts including the AU Base FHIR NPM package.
- [Change Log](changes.html): This page documents the changes across versions of this guide.


### Collaboration
This guide is the product of collaborative work undertaken with participants from:

* Australian FHIR Implementers Community
* HL7 Australia Working Groups
* Australian Digital Health Agency
* CSIRO Australian e-Health Research Centre 
* Secure Messaging Technical Working Group

FHIR<sup>&reg;&copy;</sup> connectathon events are key to the verification of the guide as being suitable for 
implementation. This implementation guide will be used as the basis for Australian connectathon events.

FHIR profiles are managed under HL7 Australia working groups and projects:

* [HL7 Australia Patient Administration Working Group](https://confluence.hl7australia.com/display/PA/Patient+Administration+Work+Group)
* [HL7 Australia Medications Working Group](https://confluence.hl7australia.com/display/MED/Medications+Work+Group)
* [HL7 Australia Orders and Observations Working Group](https://confluence.hl7australia.com/display/OO/Orders+and+Observations+Work+Group)
* [HL7 Australia Child Health Working Group](https://confluence.hl7australia.com/display/CHWG/Child+Health+Working+Group)
* [HL7 Argonaut Australia Project](https://confluence.hl7australia.com/display/AFR/HL7+Australia+Standards+Development)

Some profiles indicate the responsible working group, or enquires can be directed to the [Working Group Liaison Officer](mailto:wglo@hl7.org.au)









