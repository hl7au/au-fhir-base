### Introduction
This implementation guide is provided to support the use of HL7<sup>&reg;</sup> FHIR<sup>&reg;&copy;</sup> in an Australian context.  

The AU Base implementation guide defines Australian realm concepts (e.g. Medicare card number) as an additional set of options to what is available in the core FHIR standard, including extensions, terminology and identifiers.  It provides base profiles to inform a reader of which added concepts are considered relevant to a particular resource type, and these base profiles may be further constrained in a separate implementation guide for a particular usage.  For this reason, the AU Base implementation guide does not apply cardinality constraints or required binding strengths to added concepts (except in rare circumstances), utilise must support flags or recommend or mandate any particular resource, element or interactions.

This guide alone does not constrain profiles sufficiently to ensure implementation use cases can be met. 

For an implementation guide that has basic constraints to support many uses it is recommended that the AU Core implementation guide is used.
The implementable AU Core specification references and uses AU Base profiles, this constrains elements further and defines an expected level of interface interaction support around profiles.
If an implementation is AU Core conformant this allows a level of core capability to be assumed when using.

### Dependencies

{% include dependency-table.xhtml %}

### How to Read this Guide

This guide is divided into several pages which are listed at the top of each page in the menu bar.

- [Home](index.html): This page provides the introduction and scope for this guide.
- Guidance:
  - [Guidance](guidance.html): This page provides guidance on using the profiles defined in this guide.
  - [Relationship with other IGs](relationship.html): This page provides guidance on the relationship between AU Base and other implementation guides.
  - [Future of AU Base](future.html): This page outlines the yearly update cycle and approach to maturing AU Base.
- [FHIR Artefacts](artifacts.html): These pages provide detailed descriptions and formal definitions for all the FHIR artefacts defined in this guide.
  - [Profiles and Extensions](profiles-and-extensions.html): This set of pages describes the profiles and extensions that are defined in this guide to represent Australian local concepts using FHIR. Each profile page includes a narrative description, guidance, and formal definition. Although the guidance typically focuses on the profiled elements and seeks to provide a ‘how-to’ guide when representing concepts, it may also may focus on un-profiled elements to aid with implementation.
  - [Search Parameters](search-parameters.html): This set of pages lists the search parameters defined in this guide for use in AU operations.
  - [Terminology](terminology.html): This set of pages lists the value sets and code systems defined in this guide.
- [Examples](examples.html): This page lists all the examples used in this guide.
- Support:
  - [Downloads](downloads.html): This page provides links to downloadable artefacts including the AU Base FHIR NPM package.
  - [License and Legal](license.html): This page outlines license and legal considerations relating to FHIR Implementation Guides.
- [Change Log](changes.html): This page documents the changes across versions of this guide.


### Collaboration
This guide is the product of collaborative work undertaken with participants from:

* [Sparked HL7 AU Technical Design Group](https://confluence.hl7.org/display/HAFWG/HL7+Australia+-+AU+Core+Technical+Design+Group+Home)
* [HL7 Australia FHIR Working Group](https://confluence.hl7.org/display/HAFWG/HL7+Australia+FHIR+Work+Group+Home)
* Australian FHIR Implementers Community

Primary Editors: Brett Esler, Danielle Tavares-Rixon, Dusica Bojicic.









