### Introduction
This implementation guide is provided to support the use of HL7<sup>&reg;</sup> FHIR<sup>&reg;&copy;</sup> in an Australian context.  

AU Base defines Australian realm concepts (e.g. Medicare card number) as an additional set of options to what is available in the core FHIR standard, including extensions, terminology and identifiers.  It provides base profiles to inform a reader of which added concepts are considered relevant to a particular resource type, and these base profiles may be further constrained in a separate implementation guide for a particular usage.  For this reason, AU Base does not apply cardinality constraints or required binding strengths to added concepts (except in rare circumstances), and does not utilise must support flags or recommend or mandate any particular resource, element or interactions.

This guide alone does not constrain profiles sufficiently to ensure implementation use cases can be met. 

For an implementation guide that has basic constraints to support many uses it is recommended that the AU Core implementation guide is used.  AU Core uses AU Base, where available, as the basis for profiles that define the FHIR resources to be supported, and the elements, extensions, vocabularies, and value sets that SHALL be present are identified, and how they are used is defined.


### Dependencies

{% include dependency-table.xhtml %}

### How to Read this Guide

This guide is divided into several pages which are listed at the top of each page in the menu bar.

- [Home](index.html): This page provides the introduction and scope for this guide.
- [Guidance](guidance.html):  These pages list the guidance for this guide.
  - [General Guidance](generalguidance.html): This page provides guidance on using the profiles defined in this guide.
  - [Relationship with other IGs](relationship.html): This page provides guidance on the relationship between AU Base and other implementation guides.
  - [Future of AU Base](future.html): This page outlines the yearly update cycle and approach to maturing AU Base.
- [FHIR Artefacts](artifacts.html): These pages provide detailed descriptions and formal definitions for all the FHIR artefacts defined in this guide.
  - [Profiles and Extensions](profiles-and-extensions.html): This page describes the profiles and extensions that are defined in this guide to represent Australian local concepts using FHIR. Each profile page includes a narrative description, guidance, and formal definition. Although the guidance typically focuses on the profiled elements and seeks to provide a ‘how-to’ guide when representing concepts, it may also may focus on un-profiled elements to aid with implementation.
  - [Search Parameters](search-parameters.html): This page lists the search parameters defined in this guide for use in AU operations.
  - [Terminology](terminology.html): This page lists the value sets and code systems localised in this guide.
- [Examples](examples.html): This page lists all the examples used in this guide.
- [Support](support.html): These pages provide supporting material for implementation of AU Base.
  - [Downloads](downloads.html): This page provides links to downloadable artefacts.
  - [License and Legal](license.html): This page outlines license and legal considerations relating to AU Base.
- [Change Log](changes.html): This page documents the changes across versions of this guide.


### Collaboration
This guide is the product of collaborative work undertaken with participants from:

* [HL7 Australia FHIR Working Group](https://confluence.hl7.org/display/HAFWG/HL7+Australia+FHIR+Work+Group+Home)
* Australian FHIR Implementers Community
* Secure Messaging Technical Working Group

Primary Editors: Brett Esler, Danielle Tavares-Rixon.









