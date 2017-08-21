## {{ page.title }}
{:.no_toc}

<!-- TOC -->

* Do not remove this line (it will not be displayed)
{:toc}

## Introduction
This implementation guide is provided to support the use of FHIR<sup>&reg;&copy;</sup> in an Australian context.

This document is a working specification that is expected to be implemented and tested by FHIR<sup>&reg;&copy;</sup> system producers
to enable feedback to improve the content of this guide.

## Scope

An indication of FHIR profiles that are managed under HL7 Australia working groups follows. 

__HL7 Australia Patient Administration Working Group__

* [Patient](StructureDefinition-au-patient.html): identifying values (IHI, Medicare Number, DVA Number), indigenous status
* [Practitioner](StructureDefinition-au-practitioner.html): identifiers (HPI-I, Prescriber Number)
* [PractitionerRole](StructureDefinition-au-practitionerrole.html): identifiers (Provider Number), occupation role
* [Organization](StructureDefinition-au-organisation.html): identifiers (HPI-O), industry class, industry activity

__HL7 Australia Medications Working Group__

* [Medication](StructureDefinition-au-medication.html): medication details (product, strength, form etc.), PBS code, manufacturer
* [MedicationRequest](StructureDefinition-au-prescription.html): prescription details, concurrent supply, concession benefits, authority, approval etc.
* MedicationDispense: (tbd)
* MedicationStatement: (tbd)
* Immunization: (tbd)

__HL7 Australia Orders and Observations Working Group__

* Observation (Vital Signs): (tbd)
* Observation (Smoking Status): (tbd)
* Observation (Pathology Results): (tbd)
* DiagnosticReport: (tbd)

## Usage

This document is a working specification that may be directly implemented by FHIR<sup>&reg;&copy;</sup> system producers.

Information contained in this document is aimed at providing guidance on representing Australian local concepts 
using FHIR. This includes code systems, extensions and profiles on base FHIR types.  The content of the IG is 
general in nature and seeks to provide a ‘how-to’ guide when representing concepts, it includes core base
profiles that can be further constrained for a particular usage.

FHIR<sup>&reg;&copy;</sup> connectathon events are key to the verification of the guide as being suitable for 
implementation. This implementation guide will be used as the basis for Australian connectathon events.

## Collaboration
This guide is the product of collaborative work undertaken with participants from:

* Australian FHIR Implementers' Community
* HL7 Australia Membership 
* HL7 Australia Patient Administration Working Group
* HL7 Australia Medications Working Group
* HL7 Australia Orders and Observations Working Group
* Australian Digital Health Agency
* Secure Messaging Technical Working Group










