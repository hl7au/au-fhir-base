# Change Log - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* **Change Log**

## Change Log

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

### Release TBD

* Publication date: TBD
* Publication status: TBD
* Based on FHIR version: 4.0.1

This change log documents the significant updates and resolutions implemented from version [6.0.0](https://hl7.org.au/fhir/6.0.0/index.html) to TBD.

#### Reinstated

This version of current build reinstates profiles not included in the AU Base 6.0.0 release:

* Ethnicity extension

#### Breaking Changes 

This version introduces the following non-compatible changes.

* [AU PAI-O Identifier](StructureDefinition-au-paioidentifier.md): 
* Identifier.type.coding fixed to PAIO ([FHIR-55738](https://jira.hl7.org/browse/FHIR-55738)).
 
* [AU Australian Business Number](StructureDefinition-au-australianbusinessnumber.md): 
* Identifier.type.coding fixed to ABN ([FHIR-56103](https://jira.hl7.org/browse/FHIR-56103)).
 
* [AU Australian Company Number](StructureDefinition-au-australiancompanynumber.md): 
* Identifier.type.coding fixed to ACN ([FHIR-56103](https://jira.hl7.org/browse/FHIR-56103)).
 
* [AU Australian Registered Body Number](StructureDefinition-au-australianregistredbodynumber.md): 
* Identifier.type.coding fixed to ARBN ([FHIR-56103](https://jira.hl7.org/browse/FHIR-56103)).
 
* [IdentifierType AU](CodeSystem-au-v2-0203.md): 
* Concept description changed for NOI ([FHIR-55738](https://jira.hl7.org/browse/FHIR-55738)).
 

#### Changes in This Version

* New profiles: 
* [AU Base Endpoint](StructureDefinition-au-endpoint.md) ([FHIR-56326](https://jira.hl7.org/browse/FHIR-56326))
* [AU HAE](StructureDefinition-au-hae.md) ([FHIR-54928](https://jira.hl7.org/browse/FHIR-54928), [FHIR-56102](https://jira.hl7.org/browse/FHIR-56102))
* [AU HSP-O](StructureDefinition-au-hspo.md) ([FHIR-54923](https://jira.hl7.org/browse/FHIR-54923))
 
* [AU Base Organization](StructureDefinition-au-organization.md): 
* Added AU HAE as an option for Organization.identifier ([FHIR-54928](https://jira.hl7.org/browse/FHIR-54928)).
* Added AU HSP-O as an option for Organization.identifier ([FHIR-54923](https://jira.hl7.org/browse/FHIR-54923)).
 
* [AU Base MedicationStatement](StructureDefinition-au-medicationstatement.md): 
* Changed MedicationStatement.medicationCodeableConcept binding to Australian Medication Use (preferred) ([FHIR-53469](https://jira.hl7.org/browse/FHIR-53469)).
* Added guidance for representing no known medications for a patient ([FHIR-53469](https://jira.hl7.org/browse/FHIR-53469)).
 
* [AU PAI-O Identifier](StructureDefinition-au-paioidentifier.md): 
* Identifier.type.coding fixed to PAIO ([FHIR-55738](https://jira.hl7.org/browse/FHIR-55738)).
 
* [IdentifierType AU](CodeSystem-au-v2-0203.md): 
* Concept description changed for NOI ([FHIR-55738](https://jira.hl7.org/browse/FHIR-55738)).
* Added code PAIO ([FHIR-55738](https://jira.hl7.org/browse/FHIR-55738)).
* Added code HSPO ([FHIR-56101](https://jira.hl7.org/browse/FHIR-56101)).
* Added code HAE ([FHIR-56102](https://jira.hl7.org/browse/FHIR-56102)).
* Added codes ABN, ACN, ARBN ([FHIR-56103](https://jira.hl7.org/browse/FHIR-56103)).
 
* [Service Provision Conditions Australian Concepts](CodeSystem-service-provision-conditions.md): 
* Added code BB, deprecated code BBO ([FHIR-55575](https://jira.hl7.org/browse/FHIR-55575)).
* Added code MIX, deprecated code FBB ([FHIR-55576](https://jira.hl7.org/browse/FHIR-55576)).
* Concept definition changed for code FAP ([FHIR-55577](https://jira.hl7.org/browse/FHIR-55577)).
* Concept definition changed for code NFE ([FHIR-55578](https://jira.hl7.org/browse/FHIR-55578)).
* Technical correction/typo fix for code COP ([FHIR-55579](https://jira.hl7.org/browse/FHIR-55579)).
 

### Release 6.0.0

* Publication date: 2026-01-14
* Publication status: Working Standard (Trial Use)
* Based on FHIR version: 4.0.1

This change log documents the significant updates and resolutions implemented from version [6.0.0-ballot](https://hl7.org.au/fhir/6.0.0-ballot/index.html) to [6.0.0](https://hl7.org.au/fhir/6.0.0/index.html).

#### Breaking Changes

This version introduces the following non-compatible changes.

* [AU Base Patient](https://hl7.org.au/fhir/6.0.0/StructureDefinition-au-patient.html): 
* Added invariant inv-pat-6 to RSG.source to bind AU Recorded Sex or Gender (RSG) Source (extensible) ([FHIR-52016](https://jira.hl7.org/browse/FHIR-52016)).
 
* [AU Base Practitioner](https://hl7.org.au/fhir/6.0.0/StructureDefinition-au-practitioner.html): 
* Added invariant inv-pra-5 to RSG.source to bind AU Recorded Sex or Gender (RSG) Source (extensible) ([FHIR-52016](https://jira.hl7.org/browse/FHIR-52016)).
 
* [AU Base RelatedPerson](https://hl7.org.au/fhir/6.0.0/StructureDefinition-au-relatedperson.html): 
* Added invariant inv-relper-5 to RSG.source to bind AU Recorded Sex or Gender (RSG) Source (extensible) ([FHIR-52016](https://jira.hl7.org/browse/FHIR-52016)).
 

##### Not Included

The [HL7 AU FHIR Artefact Release Publishing Policy](generalguidance.md#hl7-au-fhir-artefact-release-publishing-policy) is applied in this release. This includes the editorial removal of artefacts at AFMM **DRAFT 0** maturity level in official publications. These artefacts may be published in future versions of AU Base and implementers are recommended to refer to the [current build of AU Base](http://build.fhir.org/ig/hl7au/au-fhir-base) where these artefacts may be available if retained in the specification.

* Ethnicity extension

#### Changes in This Version

* New code systems: 
* [Communication Request Category](https://hl7.org.au/fhir/6.0.0/CodeSystem-communication-request-category.html) ([FHIR-51889](https://jira.hl7.org/browse/FHIR-51889), [FHIR-51890](https://jira.hl7.org/browse/FHIR-51890), [FHIR-51891](https://jira.hl7.org/browse/FHIR-51891))
 
* [Australian Digital Health Source System ](https://hl7.org.au/fhir/6.0.0/CodeSystem-au-digital-health-source-system.html) ([FHIR-52016](https://jira.hl7.org/browse/FHIR-52016))
 
* New value sets: 
* [AU Recorded Sex or Gender (RSG) Source](https://hl7.org.au/fhir/6.0.0/ValueSet-rsg-source.html) ([FHIR-52016](https://jira.hl7.org/browse/FHIR-52016))
 
* Deprecated extensions: 
* [Result Copies To](https://hl7.org.au/fhir/6.0.0/StructureDefinition-result-copies-to.html) ([FHIR-51916](https://jira.hl7.org/browse/FHIR-51916))
 
* Removed code systems: 
* [Communication Request Reason](https://hl7.org.au/fhir/6.0.0-ballot/CodeSystem-communicationrequest-reason.html) ([FHIR-51889](https://jira.hl7.org/browse/FHIR-51889), [FHIR-51890](https://jira.hl7.org/browse/FHIR-51890), [FHIR-51891](https://jira.hl7.org/browse/FHIR-51891))
 
* Deprecated value sets: 
* [AMT Medicinal Product and Substances](https://hl7.org.au/fhir/6.0.0/ValueSet-amt-mp-codes.html) ([FHIR-44781](https://jira.hl7.org/browse/FHIR-44781))
 
* Added guidance on representing body site and laterality for AU Base Condition, AU Base Procedure, and AU Base ServiceRequest to the [General Guidance](https://hl7.org.au/fhir/6.0.0/generalguidance.html#representing-body-site-which-may-include-laterality) page, incorporating content previously published in AU Core ([FHIR-52933](https://jira.hl7.org/browse/FHIR-52933)).
* Added guidance on profiling approach, extension approach, terminology approach, and search parameter approach in the [General Guidance](https://hl7.org.au/fhir/6.0.0/generalguidance.html#implementation-guide-approach) page, incorporating content previously published in AU Core ([FHIR-52393](https://jira.hl7.org/browse/FHIR-52393)).
* [AU Base AllergyIntolerance](https://hl7.org.au/fhir/6.0.0/StructureDefinition-au-allergyintolerance.html): 
* Changed AllergyIntolerance.reaction.manifestation binding to Adverse Reaction Clinical Manifestation (preferred) ([FHIR-47076](https://jira.hl7.org/browse/FHIR-47076)).
 
* [AU Base Medication](https://hl7.org.au/fhir/6.0.0/StructureDefinition-au-medication.html): 
* Changed Medication.ingredient.item[x] binding to Medication Ingredient (preferred) ([FHIR-44781](https://jira.hl7.org/browse/FHIR-44781)).
 
* [AU Base Patient](https://hl7.org.au/fhir/6.0.0/StructureDefinition-au-patient.html): 
* Applied technical correction to invariants inv-pat-1, inv-pat-2, inv-pat-3, inv-pat-4, and inv-pat-5 to ensure terminology validation applies to the correct sub-extension values when multiple extension instances are present ([FHIR-53536](https://jira.hl7.org/browse/FHIR-53536)).
* Added invariant inv-pat-6 to RSG.source to bind AU Recorded Sex or Gender (RSG) Source (extensible) ([FHIR-52016](https://jira.hl7.org/browse/FHIR-52016)).
 
* [AU Base Practitioner](https://hl7.org.au/fhir/6.0.0/StructureDefinition-au-practitioner.html): 
* Applied technical correction to invariants inv-pra-0, inv-pra-1, inv-pra-2, inv-pra-3, and inv-pra-4 to ensure terminology validation applies to the correct sub-extension values when multiple extension instances are present ([FHIR-53536](https://jira.hl7.org/browse/FHIR-53536)).
* Added invariant inv-pra-5 to RSG.source to bind AU Recorded Sex or Gender (RSG) Source (extensible) ([FHIR-52016](https://jira.hl7.org/browse/FHIR-52016)).
 
* [AU Base RelatedPerson](https://hl7.org.au/fhir/6.0.0/StructureDefinition-au-relatedperson.html): 
* Applied technical correction to invariants inv-relper-0, inv-relper-1, inv-relper-2, inv-relper-3, and inv-relper-4 to ensure terminology validation applies to the correct sub-extension values when multiple extension instances are present ([FHIR-53536](https://jira.hl7.org/browse/FHIR-53536)).
* Added invariant inv-relper-5 to RSG.source to bind AU Recorded Sex or Gender (RSG) Source (extensible) ([FHIR-52016](https://jira.hl7.org/browse/FHIR-52016)).
 
* [DegreeLicenseCertificate AU](https://hl7.org.au/fhir/6.0.0/CodeSystem-au-v2-0360.html): 
* Applied technical correction to set versionNeeded to false in code system, as concept permanence applies ([FHIR-53818](https://jira.hl7.org/browse/FHIR-53818)).
 
* [IdentifierType AU](https://hl7.org.au/fhir/6.0.0/CodeSystem-au-v2-0203.html): 
* Applied technical correction to set versionNeeded to false in code system, as concept permanence applies ([FHIR-53818](https://jira.hl7.org/browse/FHIR-53818)).
 
* [Medication Type](https://hl7.org.au/fhir/6.0.0/CodeSystem-medication-type.html): 
* Applied technical correction to set versionNeeded to false in code system, as concept permanence applies ([FHIR-53818](https://jira.hl7.org/browse/FHIR-53818)).
 
* [Medicine Item Change](https://hl7.org.au/fhir/6.0.0/CodeSystem-medicine-item-change.html): 
* Applied technical correction to set versionNeeded to false in code system, as concept permanence applies ([FHIR-53818](https://jira.hl7.org/browse/FHIR-53818)).
 
* [providerRole AU](https://hl7.org.au/fhir/6.0.0/CodeSystem-au-v2-0443.html): 
* Applied technical correction to set versionNeeded to false in code system, as concept permanence applies ([FHIR-53818](https://jira.hl7.org/browse/FHIR-53818)).
 
* [Resource Tag](https://hl7.org.au/fhir/6.0.0/CodeSystem-resource-tag.html): 
* Added OID identifier to code system ([FHIR-53836](https://jira.hl7.org/browse/FHIR-53836)).
 
* [Service Provision Conditions Australian Concepts](https://hl7.org.au/fhir/6.0.0/CodeSystem-service-provision-conditions.html): 
* Applied technical correction to set versionNeeded to false in code system, as concept permanence applies ([FHIR-53818](https://jira.hl7.org/browse/FHIR-53818)).
 
* [Task Business Status](https://hl7.org.au/fhir/6.0.0/CodeSystem-task-business-status.html): 
* Updated codes, displays and definitions in code system to make explicit whether a status applies to the task or the request ([FHIR-51893](https://jira.hl7.org/browse/FHIR-51893), [FHIR-51894](https://jira.hl7.org/browse/FHIR-51894)).
* Added OID identifier to code system ([FHIR-53836](https://jira.hl7.org/browse/FHIR-53836)).
 

### Release 6.0.0-ballot

* Publication date: 2025-07-29
* Publication status: Ballot for Working Standard
* Based on FHIR version: 4.0.1

This change log documents the significant updates and resolutions implemented from version [5.0.0](https://hl7.org.au/fhir/5.0.0/index.html) to [6.0.0-ballot](https://hl7.org.au/fhir/6.0.0-ballot/index.html). The changes in this update are for ballot.

#### Breaking Changes

This version introduces the following non-compatible changes.

* [AU Base HealthcareService](https://hl7.org.au/fhir/6.0.0-ballot/StructureDefinition-au-healthcareservice.html): 
* Added HealthcareService.communication binding to Common Languages in Australia (extensible) ([FHIR-46322](https://jira.hl7.org/browse/FHIR-46322)).
 
* [hl7VS-degreeLicenseCertificate - AU Extended](https://hl7.org.au/fhir/6.0.0-ballot/ValueSet-au-v2-0360-extended.html): 
* Removed codes (AUAHPRAProfession, AUAHPRARegistration) from value set as these concepts are deprecated ([FHIR-49121](https://jira.hl7.org/browse/FHIR-49121)).
 

#### Not Included

The [HL7 AU FHIR Artefact Release Publishing Policy](https://hl7.org.au/fhir/6.0.0-ballot/generalguidance.html#hl7-au-fhir-artefact-release-publishing-policy) is applied in this release. This includes the editorial removal of artefacts at AFMM DRAFT 0 maturity level in official publications. These artefacts may be published in future versions of AU Base and implementers are recommended to refer to the [current build of AU Base](https://build.fhir.org/ig/hl7au/au-fhir-base/) where these artefacts may be available if retained in the specification.

* Ethnicity extension

#### Changes in this version

* New profiles: 
* [AU Base Coverage](https://hl7.org.au/fhir/6.0.0-ballot/StructureDefinition-au-coverage.html) ([au-fhir-base #795](https://github.com/hl7au/au-fhir-base/issues/795), [FHIR-51457](https://jira.hl7.org/browse/FHIR-51457))
* [AU Base ServiceRequest](https://hl7.org.au/fhir/6.0.0-ballot/StructureDefinition-au-servicerequest.html) ([FHIR-46714](https://jira.hl7.org/browse/FHIR-46714), [FHIR-51408](https://jira.hl7.org/browse/FHIR-51408))
* [AU Patient Internal Identifier](https://hl7.org.au/fhir/6.0.0-ballot/StructureDefinition-au-pi.html) ([FHIR-48671](https://jira.hl7.org/browse/FHIR-48671))
* [Australian Time Zone Usage](https://hl7.org.au/fhir/6.0.0-ballot/StructureDefinition-au-timezone-usage.html) ([FHIR-46319](https://jira.hl7.org/browse/FHIR-46319))
 
* New extensions: 
* [Medication Strength](https://hl7.org.au/fhir/6.0.0-ballot/StructureDefinition-medication-strength.html) ([au-fhir-base #41](https://github.com/hl7au/au-fhir-base/issues/41), [FHIR-50945](https://jira.hl7.org/browse/FHIR-50945))
* [Vaccine Vial Serial Number](https://hl7.org.au/fhir/6.0.0-ballot/StructureDefinition-vaccine-serial-number.html) ([au-fhir-base #712](https://github.com/hl7au/au-fhir-base/issues/712))
 
* New code systems: 
* [Communication Request Reason](https://hl7.org.au/fhir/6.0.0-ballot/CodeSystem-communicationrequest-reason.html) ([FHIR-51348](https://jira.hl7.org/browse/FHIR-51348))
* [Resource Tag](https://hl7.org.au/fhir/6.0.0-ballot/CodeSystem-resource-tag.html) ([FHIR-51349](https://jira.hl7.org/browse/FHIR-51349))
* [Task Business Status](https://hl7.org.au/fhir/6.0.0-ballot/CodeSystem-task-business-status.html) ([FHIR-51350](https://jira.hl7.org/browse/FHIR-51350))
 
* New value sets: 
* [Coverage Type and Self-Pay Codes - AU Extended](https://hl7.org.au/fhir/6.0.0-ballot/ValueSet-au-coverage-type-extended.html) ([FHIR-51457](https://jira.hl7.org/browse/FHIR-51457))
 
* New search parameters: 
* [ServiceRequestSupportingInfo](https://hl7.org.au/fhir/6.0.0-ballot/SearchParameter-servicerequest-supporting-info.html) ([FHIR-51437](https://jira.hl7.org/browse/FHIR-51437))
 
* Deprecated extensions: 
* [Ahpra Profession Details](https://hl7.org.au/fhir/6.0.0-ballot/StructureDefinition-ahpraprofession-details.html) ([FHIR-49121](https://jira.hl7.org/browse/FHIR-49121))
* [Ahpra Registration Details](https://hl7.org.au/fhir/6.0.0-ballot/StructureDefinition-ahpraregistration-details.html) ([FHIR-49121](https://jira.hl7.org/browse/FHIR-49121))
* [Associated Healthcare Service](https://hl7.org.au/fhir/6.0.0-ballot/StructureDefinition-associated-healthcareservice.html) ([FHIR-50538](https://jira.hl7.org/browse/FHIR-50538))
* [Australian Time Zone ](https://hl7.org.au/fhir/6.0.0-ballot/StructureDefinition-au-timezone.html) ([FHIR-46319](https://jira.hl7.org/browse/FHIR-46319))
 
* Added general guidance on the use of SNOMED CT ([FHIR-48307](https://jira.hl7.org/browse/FHIR-48307)).
* Added general guidance on representing communication preferences for a patient or related person ([FHIR-50961](https://jira.hl7.org/browse/FHIR-50961)).
* Added sex and gender guidance on Sex Parameter for Clinical Use to the Sex and Gender page ([FHIR-51408](https://jira.hl7.org/browse/FHIR-51408)).
* Changes to implement AU FHIR artefact policy to retain FHIR resource spelling in profile name and title ([FHIR-46685](https://jira.hl7.org/browse/FHIR-46685)): 
* [AU Base AllergyIntolerance](https://hl7.org.au/fhir/6.0.0-ballot/StructureDefinition-au-allergyintolerance.html)
* [AU Base BodyStructure](https://hl7.org.au/fhir/6.0.0-ballot/StructureDefinition-au-bodystructure.html)
* [AU Base DiagnosticReport](https://hl7.org.au/fhir/6.0.0-ballot/StructureDefinition-au-diagnosticreport.html)
* [AU Base HealthcareService](https://hl7.org.au/fhir/6.0.0-ballot/StructureDefinition-au-healthcareservice.html)
* [AU Base Immunization](https://hl7.org.au/fhir/6.0.0-ballot/StructureDefinition-au-immunization.html)
* [AU Base MedicationAdministration](https://hl7.org.au/fhir/6.0.0-ballot/StructureDefinition-au-medicationadministration.html)
* [AU Base MedicationDispense](https://hl7.org.au/fhir/6.0.0-ballot/StructureDefinition-au-medicationdispense.html)
* [AU Base MedicationRequest](https://hl7.org.au/fhir/6.0.0-ballot/StructureDefinition-au-medicationrequest.html)
* [AU Base MedicationStatement](https://hl7.org.au/fhir/6.0.0-ballot/StructureDefinition-au-medicationstatement.html)
* [AU Base Organization](https://hl7.org.au/fhir/6.0.0-ballot/StructureDefinition-au-organization.html)
* [AU Base PractitionerRole](https://hl7.org.au/fhir/6.0.0-ballot/StructureDefinition-au-practitionerrole.html)
* [AU Base RelatedPerson](https://hl7.org.au/fhir/6.0.0-ballot/StructureDefinition-au-relatedperson.html)
* [AU Base ServiceRequest](https://hl7.org.au/fhir/6.0.0-ballot/StructureDefinition-au-servicerequest.html)
 
* [AU Base Diagnostic Imaging Result](https://hl7.org.au/fhir/6.0.0-ballot/StructureDefinition-au-imagingresult.html): 
* Changed Observation.effective[x] type to remove type constraint ([FHIR-49189](https://jira.hl7.org/browse/FHIR-49189)).
 
* [AU Base Diagnostic Imaging Report](https://hl7.org.au/fhir/6.0.0-ballot/StructureDefinition-au-imagingreport.html): 
* DiagnosticReport.extension changed to add Patient Sex Parameter For Clinical Use ([FHIR-51408](https://jira.hl7.org/browse/FHIR-51408)).
 
* [AU Base DiagnosticReport](https://hl7.org.au/fhir/6.0.0-ballot/StructureDefinition-au-diagnosticreport.html): 
* DiagnosticReport.extension changed to add Patient Sex Parameter For Clinical Use ([FHIR-51408](https://jira.hl7.org/browse/FHIR-51408)).
 
* [AU Base Encounter](https://hl7.org.au/fhir/6.0.0-ballot/StructureDefinition-au-encounter.html): 
* Changed Encounter.reasonCode binding to Reason for Encounter (preferred) ([FHIR-50996](https://jira.hl7.org/browse/FHIR-50996)).
* Removed deprecated extension Associated Healthcare Service and added guidance on pre-adoption of FHIR R5 Encounter.participant.actor element ([FHIR-50538](https://jira.hl7.org/browse/FHIR-50538)).
 
* [AU Base HealthcareService](https://hl7.org.au/fhir/6.0.0-ballot/StructureDefinition-au-healthcareservice.html): 
* Changed HealthcareService.availableTime.availableStartTime to replace Australian Time Zone extension with the international Timezone Code extension ([FHIR-46319](https://jira.hl7.org/browse/FHIR-46319)).
* Changed HealthcareService.availableTime.availableEndTime to replace Australian Time Zone extension with the international Timezone Code extension ([FHIR-46319](https://jira.hl7.org/browse/FHIR-46319)).
* Added HealthcareService.communication binding to Common Languages in Australia (extensible) ([FHIR-46322](https://jira.hl7.org/browse/FHIR-46322)).
 
* [AU Base Immunization](https://hl7.org.au/fhir/6.0.0-ballot/StructureDefinition-au-immunization.html): 
* Immunization.extension changed to add Vaccine Vial Serial Number ([FHIR-46317](https://jira.hl7.org/browse/FHIR-46317)).
 
* [AU Base Medication](https://hl7.org.au/fhir/6.0.0-ballot/StructureDefinition-au-medication.html): 
* Updated guidance on use of medication strength representations using the Medication Strength extension and pre-adoption of the FHIR R5 Medication.ingredient.strength[x] element ([FHIR-50945](https://jira.hl7.org/browse/FHIR-50945)).
 
* [AU Base MedicationRequest](https://hl7.org.au/fhir/6.0.0-ballot/StructureDefinition-au-medicationrequest.html): 
* MedicationRequest.extension changed to add Patient Sex Parameter For Clinical Use ([FHIR-51408](https://jira.hl7.org/browse/FHIR-51408)).
 
* [AU Base Pathology Result](https://hl7.org.au/fhir/6.0.0-ballot/StructureDefinition-au-pathologyresult.html): 
* Changed Observation.effective[x] type to remove type constraint ([FHIR-49189](https://jira.hl7.org/browse/FHIR-49189)).
 
* [AU Base Pathology Report](https://hl7.org.au/fhir/6.0.0-ballot/StructureDefinition-au-pathologyreport.html): 
* DiagnosticReport.extension changed to add Patient Sex Parameter For Clinical Use ([FHIR-51408](https://jira.hl7.org/browse/FHIR-51408)).
 
* [AU Base Patient](https://hl7.org.au/fhir/6.0.0-ballot/StructureDefinition-au-patient.html): 
* Added AU Patient Internal Identifier as an option for Patient.identifier ([FHIR-48671](https://jira.hl7.org/browse/FHIR-48671)).
* Patient.extension changed to add Patient Sex Parameter For Clinical Use ([FHIR-51408](https://jira.hl7.org/browse/FHIR-51408)).
 
* [AU Base PractitionerRole](https://hl7.org.au/fhir/6.0.0-ballot/StructureDefinition-au-practitionerrole.html): 
* Changed PractitionerRole.availableTime.availableStartTime to replace Australian Time Zone extension with the international Timezone Code extension ([FHIR-46319](https://jira.hl7.org/browse/FHIR-46319)).
* Changed PractitionerRole.availableTime.availableEndTime to replace Australian Time Zone extension with the international Timezone Code extension ([FHIR-46319](https://jira.hl7.org/browse/FHIR-46319)).
 
* [AU Base Procedure](https://hl7.org.au/fhir/6.0.0-ballot/StructureDefinition-au-procedure.html): 
* Procedure.extension changed to add Patient Sex Parameter For Clinical Use ([FHIR-51408](https://jira.hl7.org/browse/FHIR-51408)).
 
* [DegreeLicenseCertificate AU](https://hl7.org.au/fhir/6.0.0-ballot/CodeSystem-au-v2-0360.html): 
* Deprecated codes (AUAHPRAProfession, AUAHPRARegistration) from code system ([FHIR-49121](https://jira.hl7.org/browse/FHIR-49121)).
* Added code AHPRA ([FHIR-49121](https://jira.hl7.org/browse/FHIR-49121)).
 
* [hl7VS-degreeLicenseCertificate - AU Extended](https://hl7.org.au/fhir/6.0.0-ballot/ValueSet-au-v2-0360-extended.html): 
* Removed codes (AUAHPRAProfession, AUAHPRARegistration) from value set as these concepts are deprecated ([FHIR-49121](https://jira.hl7.org/browse/FHIR-49121)).
* Added code AHPRA ([FHIR-49121](https://jira.hl7.org/browse/FHIR-49121)).
 
* [PBS Item Codes](https://hl7.org.au/fhir/6.0.0-ballot/CodeSystem-pbs-item-external.html): 
* Removed OID identifier from code system ([FHIR-49933](https://jira.hl7.org/browse/FHIR-49933)).
 

### Release 5.0.0

* Publication date: 2025-01-16
* Publication status: Working Standard (Trial Use)
* Based on FHIR version: 4.0.1

To help implementers, only the more significant changes are listed here.

##### Breaking Changes

This release includes breaking changes to the following artefacts. Implementers are advised to consider the changes described in these artefacts when in use.

* [AU Medicare Card Number](https://hl7.org.au/fhir/5.0.0/StructureDefinition-au-medicarecardnumber.html): 
* Added minimum length constraint of 10 characters to Identifier.value in [AU Medicare Card Number](https://hl7.org.au/fhir/5.0.0/StructureDefinition-au-medicarecardnumber.html) ([FHIR-46619](https://jira.hl7.org/browse/FHIR-46619)).
 
* [AU Base Encounter](https://hl7.org.au/fhir/5.0.0/StructureDefinition-au-encounter.html): 
* Removed codes (PHONE, VIDEO, EMAIL and SMS) from [ActEncounterCode - AU Extended](https://hl7.org.au/fhir/5.0.0/ValueSet-au-v3-ActEncounterCode-extended.html) value set ([FHIR-47120](https://jira.hl7.org/browse/FHIR-47120)) as these concepts are subsumed by the VR concept and cannot be used to populate the [AU Base Encounter](https://hl7.org.au/fhir/5.0.0/StructureDefinition-au-encounter.html) Encounter.class element in FHIR R4.
 
* [ActEncounterCode - AU Extended](https://hl7.org.au/fhir/5.0.0/ValueSet-au-v3-ActEncounterCode-extended.html): 
* Removed codes (PHONE, VIDEO, EMAIL and SMS) from [ActEncounterCode - AU Extended](https://hl7.org.au/fhir/5.0.0/ValueSet-au-v3-ActEncounterCode-extended.html) value set as these concepts are subsumed by the VR concept ([FHIR-47120](https://jira.hl7.org/browse/FHIR-47120)).
 
* [AU Base Diagnostic Result](https://hl7.org.au/fhir/5.0.0/StructureDefinition-au-diagnosticresult.html): 
* Added invariant inv-obs-1 to preadopt R5 behaviour to ensure the BodyStructure Reference extension is present only when Observation.bodySite is not present ([FHIR-47117](https://jira.hl7.org/browse/FHIR-47117)).
 
* [AU Base Diagnostic Imaging Result](https://hl7.org.au/fhir/5.0.0/StructureDefinition-au-imagingresult.html): 
* Added invariant inv-obs-1 to preadopt R5 behaviour to ensure the BodyStructure Reference extension is present only when Observation.bodySite is not present ([FHIR-47117](https://jira.hl7.org/browse/FHIR-47117)).
 

##### Not Included

The [HL7 AU FHIR Artefact Release Publishing Policy](generalguidance.md#hl7-au-fhir-artefact-release-publishing-policy) is applied in this release. This includes the editorial removal of artefacts at AFMM **DRAFT 0** maturity level in official publications. These artefacts may be published in future versions of AU Base and implementers are recommended to refer to the [current build of AU Base](http://build.fhir.org/ig/hl7au/au-fhir-base) where these artefacts may be available if retained in the specification.

* AU Base Service Request
* AU Base Coverage
* AU Health Program Participation Summary
* Vaccine Vial Serial Number extension
* Medication Strength extension
* Ethnicity extension
* Observation Category Codes - AU Extended value set
* Observation Category Codes AU code system

##### Changes in this version

To help implementers, only the more significant changes are listed here.

* Deprecated profiles: 
* [AU Base Diagnostic Request](https://hl7.org.au/fhir/5.0.0/StructureDefinition-au-diagnosticrequest.html) ([FHIR-46714](https://jira.hl7.org/browse/FHIR-46714))
 
* Deprecated extensions: 
* [Encounter Description](https://hl7.org.au/fhir/5.0.0/StructureDefinition-encounter-description.html) extension ([FHIR-47121](https://jira.hl7.org/browse/FHIR-47121))
 
* Changes to [AU Base Diagnostic Report](https://hl7.org.au/fhir/5.0.0/StructureDefinition-au-diagnosticreport.html): 
* Removed DiagnosticReport.category.coding:anatomicRegionOfInterest slice ([FHIR-46933](https://jira.hl7.org/browse/FHIR-46933)).
 
* Changes to [AU Base Diagnostic Imaging Report](https://hl7.org.au/fhir/5.0.0/StructureDefinition-au-imagingreport.html): 
* Changed base definition from [DiagnosticReport](https://hl7.org/fhir/R4/diagnosticreport.html) to [AU Base Diagnostic Report](https://hl7.org.au/fhir/5.0.0/StructureDefinition-au-diagnosticreport.html) ([FHIR-46898](https://jira.hl7.org/browse/FHIR-46898)).
 
* Changes to [AU Base Pathology Report](https://hl7.org.au/fhir/5.0.0/StructureDefinition-au-pathologyreport.html): 
* Changed base definition from [DiagnosticReport](https://hl7.org/fhir/R4/diagnosticreport.html) to [AU Base Diagnostic Report](https://hl7.org.au/fhir/5.0.0/StructureDefinition-au-diagnosticreport.html) ([FHIR-46898](https://jira.hl7.org/browse/FHIR-46898)).
 
* Changes to [AU Base Diagnostic Result](https://hl7.org.au/fhir/5.0.0/StructureDefinition-au-diagnosticresult.html): 
* Changed the BodyStructure Reference extension slice name from bodySite to bodyStructure ([FHIR-47117](https://jira.hl7.org/browse/FHIR-47117)).
* Changed Observation.effective[x] type to remove type constraint ([FHIR-48632](https://jira.hl7.org/browse/FHIR-48632)).
* Added invariant inv-obs-1 to preadopt R5 behaviour to ensure the BodyStructure Reference extension is present only when Observation.bodySite is not present ([FHIR-47117](https://jira.hl7.org/browse/FHIR-47117)).
 
* Changes to [AU Base Encounter](https://hl7.org.au/fhir/5.0.0/StructureDefinition-au-encounter.html): 
* Removed deprecated Encounter Description extension ([FHIR-47121](https://jira.hl7.org/browse/FHIR-47121)).
* Removed codes (PHONE, VIDEO, EMAIL and SMS) from [ActEncounterCode - AU Extended](https://hl7.org.au/fhir/5.0.0/ValueSet-au-v3-ActEncounterCode-extended.html) value set ([FHIR-47120](https://jira.hl7.org/browse/FHIR-47120)) as these concepts are subsumed by the VR concept and cannot be used to populate the [AU Base Encounter](https://hl7.org.au/fhir/5.0.0/StructureDefinition-au-encounter.html) Encounter.class element in FHIR R4.
 
* Changes to [AU Base Practitioner](https://hl7.org.au/fhir/5.0.0/StructureDefinition-au-practitioner.html): 
* Removed invariants inv-pra-0 (related to the Ahpra Profession Details extension) and inv-pra-1 (related to the Ahpra Registration Details extension), relaxing contraint on their use, and remaining invariants were renumbered ([FHIR-46718](https://jira.hl7.org/browse/FHIR-46718)).
* Removed the explicit inclusion of the Ahpra Profession Details and Ahpra Registration Details extension from Practitioner.qualification([FHIR-46718](https://jira.hl7.org/browse/FHIR-46718)).
 
* Changes to [AU Base Diagnostic Imaging Result](https://hl7.org.au/fhir/5.0.0/StructureDefinition-au-imagingresult.html): 
* Moved the BodyStructure Reference extension to the Observation element instead of Observation.bodySite ([FHIR-47117](https://jira.hl7.org/browse/FHIR-47117)).
* Added invariant inv-obs-1 to preadopt R5 behaviour to ensure the BodyStructure Reference extension is present only when Observation.bodySite is not present ([FHIR-47117](https://jira.hl7.org/browse/FHIR-47117)).
 
* Changes to [AU Local Order Identifier](https://hl7.org.au/fhir/5.0.0/StructureDefinition-au-localorderidentifier.html): 
* Removed cardinality constraint on Identifier.assigner from 1..1 to 0..1 ([FHIR-47188](https://jira.hl7.org/browse/FHIR-47188)).
 
* [AU Medicare Card Number](https://hl7.org.au/fhir/5.0.0/StructureDefinition-au-medicarecardnumber.html): 
* Added minimum length constraint of 10 characters to Identifier.value in [AU Medicare Card Number](https://hl7.org.au/fhir/5.0.0/StructureDefinition-au-medicarecardnumber.html) ([FHIR-46619](https://jira.hl7.org/browse/FHIR-46619)).
 
* Changes to [AU Recorded Sex or Gender Type](https://hl7.org.au/fhir/5.0.0/ValueSet-rsg-type.html): 
* Added Biological Sex at Birth SNOMED CT code (1515311000168102) to value set ([FHIR-46544](https://jira.hl7.org/browse/FHIR-46544)).
 
* Changes to [ActEncounterCode - AU Extended](https://hl7.org.au/fhir/5.0.0/ValueSet-au-v3-ActEncounterCode-extended.html): 
* Removed codes (PHONE, VIDEO, EMAIL and SMS) from [ActEncounterCode - AU Extended](https://hl7.org.au/fhir/5.0.0/ValueSet-au-v3-ActEncounterCode-extended.html) value set as these concepts are subsumed by the VR concept ([FHIR-47120](https://jira.hl7.org/browse/FHIR-47120)).
 
* Changes to all AU Base code systems and value sets: 
* Updated AU Base code system resources to remove conformance to HL7 International [ShareableCodeSystem](http://hl7.org/fhir/StructureDefinition/shareablecodesystem) and instead claim conformance to [ NCTS Complete CodeSystem](https://healthterminologies.gov.au/fhir/StructureDefinition/complete-code-system-4) ([FHIR-47148](https://jira.hl7.org/browse/FHIR-47148)).
* Updated AU Base value set resources to remove conformance to HL7 International [ShareableValueSet](http://hl7.org/fhir/StructureDefinition/shareablevalueset) and instead claim conformance to [ NCTS Composed ValueSet](https://healthterminologies.gov.au/fhir/StructureDefinition/composed-value-set-4) ([FHIR-47149](https://jira.hl7.org/browse/FHIR-47149)).
 

### Release 4.2.2-ballot

* Publication date: 2024-08-04
* Publication status: Ballot
* Based on FHIR version: 4.0.1

The changes in this update are for ballot.

To help implementers, only the more significant changes are listed here.

#### Changes in this version

* New profiles: 
* [AU Base Coverage](https://hl7.org.au/fhir/4.2.2-ballot/StructureDefinition-au-coverage.html) (Draft supporting AU eRequesting FHIR IG)
 
* New extensions: 
* [Australian Veteran Status](https://hl7.org.au/fhir/4.2.2-ballot/StructureDefinition-veteran-status.html) ([au-fhir-base #790](https://github.com/hl7au/au-fhir-base/issues/790))
* [Name Context](https://hl7.org.au/fhir/4.2.2-ballot/StructureDefinition-name-context.html) ([FHIR-45980](https://jira.hl7.org/browse/FHIR-45980))
 
* New value sets: 
* [Jurisdiction ValueSet - AU Extended](https://hl7.org.au/fhir/4.2.2-ballot/ValueSet-au-jurisdiction-extended.html) ([FHIR-43834](https://jira.hl7.org/browse/FHIR-43834), [FHIR-46351](https://jira.hl7.org/browse/FHIR-46351))
* [AU Recorded Sex or Gender (RSG) Source Document Type](https://hl7.org.au/fhir/4.2.2-ballot/ValueSet-rsg-source-document-type.html) ([FHIR-43834](https://jira.hl7.org/browse/FHIR-43834))
* [AU Recorded Sex or Gender Type](https://hl7.org.au/fhir/4.2.2-ballot/ValueSet-rsg-type.html) ([FHIR-43834](https://jira.hl7.org/browse/FHIR-43834))
* [Name Context](https://hl7.org.au/fhir/4.2.2-ballot/ValueSet-name-context.html) ([FHIR-45980](https://jira.hl7.org/browse/FHIR-45980))
 
* New code systems: 
* [AU Recorded Sex or Gender Source Document Type](https://hl7.org.au/fhir/4.2.2-ballot/CodeSystem-rsg-source-document-type.html) ([FHIR-43834](https://jira.hl7.org/browse/FHIR-43834))
* [AU Recorded Sex or Gender Type](https://hl7.org.au/fhir/4.2.2-ballot/CodeSystem-rsg-type.html) ([FHIR-43834](https://jira.hl7.org/browse/FHIR-43834), [FHIR-46428](https://jira.hl7.org/browse/FHIR-46428))
* [Name Context](https://hl7.org.au/fhir/4.2.2-ballot/CodeSystem-name-context.html) ([FHIR-45980](https://jira.hl7.org/browse/FHIR-45980))
 
* New search parameters: 
* [AustralianIndigenousStatus](https://hl7.org.au/fhir/4.2.2-ballot/SearchParameter-indigenous-status.html)
* [EncounterDischargeDisposition](https://hl7.org.au/fhir/4.2.2-ballot/SearchParameter-encounter-discharge-disposition.html)
* [GenderIdentity](https://hl7.org.au/fhir/4.2.2-ballot/SearchParameter-gender-identity.html) ([FHIR-43718](https://jira.hl7.org/browse/FHIR-43718))
 
* Changes to [AU Base Patient](https://hl7.org.au/fhir/4.2.2-ballot/StructureDefinition-au-patient.html): 
* Patient.extension changed to: 
* add Individual Pronouns ([FHIR-43719](https://jira.hl7.org/browse/FHIR-43719))
* add Person Recorded Sex Or Gender (RSG) ([FHIR-43834](https://jira.hl7.org/browse/FHIR-43834))
* add Australian Veteran Status ([au-fhir-base #790](https://github.com/hl7au/au-fhir-base/issues/790))
* remove genderIdentity extension and replace it with the Individual Gender Identity extension ([FHIR-43718](https://jira.hl7.org/browse/FHIR-43718))
 
* Added invariant inv-pat-1 to apply Gender Identity Response value set ([FHIR-43718](https://jira.hl7.org/browse/FHIR-43718))
* Added invariant inv-pat-2 to apply Australian Pronouns value set ([FHIR-43719](https://jira.hl7.org/browse/FHIR-43719))
* Added invariant inv-pat-3 to RSG.type to bind AU Recorded Sex or Gender Type (extensible) ([FHIR-43834](https://jira.hl7.org/browse/FHIR-43834)).
* Added invariant inv-pat-4 to RSG.sourceDocument.type to bind AU Recorded Sex or Gender (RSG) Source Document Type (extensible) ([FHIR-43834](https://jira.hl7.org/browse/FHIR-43834)).
* Added invariant inv-pat-5 to RSG.sourceDocument.jurisdiction to bind Jurisdiction ValueSet - AU Extended (extensible) ([FHIR-43834](https://jira.hl7.org/browse/FHIR-43834)).
 
* Changes to [AU Base RelatedPerson](https://hl7.org.au/fhir/4.2.2-ballot/StructureDefinition-au-relatedperson.html): 
* RelatedPerson.extension changed to: 
* add Individual Gender Identity ([FHIR-43718](https://jira.hl7.org/browse/FHIR-43718))
* add Individual Pronouns ([FHIR-43719](https://jira.hl7.org/browse/FHIR-43719))
* add Person Recorded Sex Or Gender ([FHIR-43834](https://jira.hl7.org/browse/FHIR-43834))
 
* Added invariant inv-relper-0 to apply Gender Identity Response value set ([FHIR-43718](https://jira.hl7.org/browse/FHIR-43718)).
* Added invariant inv-relper-1 to apply Australian Pronouns value set ([FHIR-43719](https://jira.hl7.org/browse/FHIR-43719)).
* Added invariant inv-relper-2 to RSG.type to bind AU Recorded Sex or Gender Type (extensible) ([FHIR-43834](https://jira.hl7.org/browse/FHIR-43834)).
* Added invariant inv-relper-3 to RSG.sourceDocument.type to bind AU Recorded Sex or Gender (RSG) Source Document Type (extensible) ([FHIR-43834](https://jira.hl7.org/browse/FHIR-43834)).
* Added invariant inv-relper-4 to RSG.sourceDocument.jurisdiction to bind Jurisdiction ValueSet - AU Extended (extensible) ([FHIR-43834](https://jira.hl7.org/browse/FHIR-43834)).
 
* Changes to [AU Base Practitioner](https://hl7.org.au/fhir/4.2.2-ballot/StructureDefinition-au-practitioner.html): 
* Practitioner.extension changed to: 
* add Individual Gender Identity ([FHIR-43718](https://jira.hl7.org/browse/FHIR-43718))
* add Individual Pronouns ([FHIR-43719](https://jira.hl7.org/browse/FHIR-43719))
* add Person Recorded Sex Or Gender ([FHIR-43834](https://jira.hl7.org/browse/FHIR-43834))
 
* Added invariant inv-pra-2 to apply Gender Identity Response value set ([FHIR-43718](https://jira.hl7.org/browse/FHIR-43718)).
* Added invariant inv-pra-3 to apply Australian Pronouns value set ([FHIR-43719](https://jira.hl7.org/browse/FHIR-43719)).
* Added invariant inv-pra-4 to RSG.type to bind AU Recorded Sex or Gender Type (extensible) ([FHIR-43834](https://jira.hl7.org/browse/FHIR-43834)).
* Added invariant inv-pra-5 to RSG.sourceDocument.type to bind AU Recorded Sex or Gender (RSG) Source Document Type (extensible) ([FHIR-43834](https://jira.hl7.org/browse/FHIR-43834)).
* Added invariant inv-pra-6 to RSG.sourceDocument.type to bind Jurisdiction ValueSet - AU Extended (extensible) ([FHIR-43834](https://jira.hl7.org/browse/FHIR-43834)).
 
* Changed context of extension [Australian Indigenous Status](https://hl7.org.au/fhir/4.2.2-ballot/StructureDefinition-indigenous-status.html) to add Person and RelatedPerson ([au-fhir-base #794](https://github.com/hl7au/au-fhir-base/issues/794)).
* Changed Observation.code to add Additional Bindings for component value sets in [AU Base Pathology Result](https://hl7.org.au/fhir/4.2.2-ballot/StructureDefinition-au-pathologyresult.html) ([FHIR-46080](https://jira.hl7.org/browse/FHIR-46080)).
* Changed Medication.code to replace slices with Additional Bindings as 'preferred' in [AU Base Medication](https://hl7.org.au/fhir/4.2.2-ballot/StructureDefinition-au-medication.html) ([FHIR-44823](https://jira.hl7.org/browse/FHIR-44823)).
* Changed MedicationAdministration.medicationCodeableConcept to replace slices with Additional Bindings as 'preferred' in [AU Base Medication Administration](https://hl7.org.au/fhir/4.2.2-ballot/StructureDefinition-au-medicationadministration.html) ([FHIR-44823](https://jira.hl7.org/browse/FHIR-44823)).
* Changed MedicationDispense.medicationCodeableConcept to replace slices with Additional Bindings as 'preferred' in [AU Base Medication Dispense](https://hl7.org.au/fhir/4.2.2-ballot/StructureDefinition-au-medicationdispense.html) ([FHIR-44823](https://jira.hl7.org/browse/FHIR-44823)).
* Changed MedicationRequest.medicationCodeableConcept to replace slices with Additional Bindings as 'preferred' in [AU Base Medication Request](https://hl7.org.au/fhir/4.2.2-ballot/StructureDefinition-au-medicationrequest.html) ([FHIR-44823](https://jira.hl7.org/browse/FHIR-44823)).
* Changed MedicationStatement.medicationCodeableConcept to replace slices with Additional Bindings as 'preferred' in [AU Base Medication Statement](https://hl7.org.au/fhir/4.2.2-ballot/StructureDefinition-au-medicationstatement.html) ([FHIR-44823](https://jira.hl7.org/browse/FHIR-44823)).
* Changed Immunization.code to replace slices with Additional Bindings as 'preferred' in [AU Base Immunisation](https://hl7.org.au/fhir/4.2.2-ballot/StructureDefinition-au-immunization.html) ([FHIR-44821](https://jira.hl7.org/browse/FHIR-44821)).
* Added a guidance page on AU Base relationship with other HL7 AU FHIR implementation guides ([FHIR-43843](https://jira.hl7.org/browse/FHIR-43843)).
* Added a guidance page on sex, gender, and related concepts to AU Base to provide guidance on Name to Use, Gender Identity, Pronouns, Recorded Sex or Gender, and Sex Assigned at Birth ([FHIR-46415](https://jira.hl7.org/browse/FHIR-46415), [FHIR-46429](https://jira.hl7.org/browse/FHIR-46429), [FHIR-46430](https://jira.hl7.org/browse/FHIR-46430), [FHIR-46428](https://jira.hl7.org/browse/FHIR-46428), [FHIR-47160](https://jira.hl7.org/browse/FHIR-47160)).

### Release 4.1.0

* Publication date: 2023-02-22
* Publication status: Trial Use
* Based on FHIR version: 4.0.1

To help implementers, only the more significant changes are listed here.

#### Changes in this version

* Changed HL7 AU implementation guide publication structure and format to better align to current HL7 practices.
* New profiles: 
* [AU Health Program Participation Summary](https://hl7.org.au/fhir/4.1.0/StructureDefinition-au-healthprogramparticipation.html)
 
* New extensions: 
* [Result copies to](https://hl7.org.au/fhir/4.1.0/StructureDefinition-result-copies-to.html) ([au-fhir-base #670](https://github.com/hl7au/au-fhir-base/issues/670))
 
* New value sets: 
* [Observation Category Codes - AU Extended](https://hl7.org.au/fhir/4.1.0/ValueSet-au-observation-category-extended.html)
 
* New code systems: 
* [Observation Category Codes AU](https://hl7.org.au/fhir/4.1.0/CodeSystem-au-observation-category.html)
 
* Removed profiles (migrated to AU Core): 
* AU Biological Sex Assigned at Birth
* AU Blood Pressure
* AU Body Height
* AU Body Mass Index
* AU Body Temperature
* AU Body Weight
* AU Estimated Date of Delivery
* AU Gestational Age
* AU Gravidity
* AU Head Circumference
* AU Heart Rate
* AU Last Menstrual Period
* AU Oxygen Saturation
* AU Parity
* AU Respiration Rate
* AU Smoking Status
* AU Vital Signs Panel
 
* Changed Patient.extension in [AU Base Patient:](https://hl7.org.au/fhir/4.1.0/StructureDefinition-au-patient.html) to add genderIdentity and change the binding to [Gender Identity Response](https://healthterminologies.gov.au/fhir/ValueSet/gender-identity-response-1) (extensible) ([au-fhir-base #599](https://github.com/hl7au/au-fhir-base/issues/599), [FHIRIG #186](https://jira.hl7australia.com/browse/FHIRIG-186)).
* Changed Encounter.type binding in [AU Base Encounter](https://hl7.org.au/fhir/4.1.0/StructureDefinition-au-encounter.html) to Encounter Type (preferred) ([au-fhir-base #382](https://github.com/hl7au/au-fhir-base/issues/382), [FHIRIG #191](https://jira.hl7australia.com/browse/FHIRIG-191)).
* Changed Encounter.serviceType binding in [AU Base Encounter](https://hl7.org.au/fhir/4.1.0/StructureDefinition-au-encounter.html) to Service Type (preferred)([au-fhir-base #684](https://github.com/hl7au/au-fhir-base/issues/684), [FHIRIG #191](https://jira.hl7australia.com/browse/FHIRIG-191)).
* Technical correction of DiagnosticReport.code binding strength in [AU Base Diagnostic Report](https://hl7.org.au/fhir/4.1.0/StructureDefinition-au-diagnosticreport.html) to preferred ([FHIRIG #233](https://jira.hl7australia.com/browse/FHIRIG-233)).
* Changed Immunization.statusReason binding in [AU Base Immunisation](https://hl7.org.au/fhir/4.1.0/StructureDefinition-au-immunization.html) to Reason Vaccine Not Administered v3 ([au-fhir-base #745](https://github.com/hl7au/au-fhir-base/issues/745)).
* Changed Immunization.site.coding cardinality in [AU Base Immunisation](https://hl7.org.au/fhir/4.1.0/StructureDefinition-au-immunization.html) to remove cardinality restriction ([FHIRIG #242](https://jira.hl7australia.com/browse/FHIRIG-242)).
* Changed Immunization.route.coding cardinality in [AU Base Immunisation](https://hl7.org.au/fhir/4.1.0/StructureDefinition-au-immunization.html) to remove cardinality restriction ([FHIRIG #242](https://jira.hl7australia.com/browse/FHIRIG-242)).
* Changed Observation.category slicing in [AU Base Pathology Result](https://hl7.org.au/fhir/4.1.0/StructureDefinition-au-pathologyresult.html) to move the preferred binding to a slice for Specific discipline of pathology ([au-fhir-base #744](https://github.com/hl7au/au-fhir-base/issues/744)).
* Changed [Location Type (Physical) AU](https://hl7.org.au/fhir/4.1.0/CodeSystem-au-location-physical-type.html) to deprecate concept 'vi'.

### Release 4.0.0

* Publication date: 2022-05-30
* Publication status: Trial Use
* Based on FHIR version: 4.0.1

To help implementers, only the more significant changes are listed here.

**Changes in this version**

* Changed the canonical URL to http://terminology.hl7.org.au and applied new OIDs to HL7 AU CodeSystems and ValueSets.
* Technical correction to extensions to remove slicing (refactoring).
* Changed identifier slices to Identifier profiles in resource profiles.
* New extensions: 
* Address Identifier
* AHPRA Profession Details
* AHPRA Registration Details
* Contact Purpose
* Date of Arrival in Australia
* Ethnicity
* IHI Verified Date
* Vaccine Vial Serial Number
* Medication Strength
* Australian Time Zone
 
* New profiles: 
* New resource profiles: 
* AU Diagnostic Imaging Report
* AU Diagnostic Imaging Result
* AU Diagnostic Request
* AU Pathology Report
* AU Pathology Result
* AU Base Procedure
* AU Biological Sex Assigned at Birth
* AU Blood Pressure
* AU Body Mass Index
* AU Body Temperature
* AU Heart Rate
* AU Oxygen Saturation
* AU Respiration Rate
* AU Vital Signs Panel
* AU Smoking Status
* AU Estimated Date of Delivery
* AU Gestational Age
* AU Gravidity
* AU Last Menstrual Period
* AU Parity
 
* Identifier type profiles: 
* AU Accession Number
* AU Australian Business Number
* AU Australian Company Number
* AU Australian Registered Body Number
* AU AHPRA Registration Number
* AU Care Agency Employee Identifier
* AU Commonwealth Seniors Health Card Number
* AU CSP Registration Number
* AU Delivery Point Identifier
* AU DVA Number
* AU Employee Number
* AU ETP Prescription Identifier
* AU G-NAF Identifier
* AU Health Care Card Number
* AU HPI-I
* AU HPI-O
* AU IHI
* AU Insurance Member Number
* AU Local Dispense Identifier
* AU Local Order Identifier
* AU Local Prescription Identifier
* AU Local Report Identifier
* AU Location Specific Practice Number
* AU Medical Record Number
* AU Medicare Card Number
* AU Medicare Provider Number
* AU NATA Accreditation Number
* AU NATA Site Number
* AU National Provider Identifier At Organisation
* AU PAI-D Identifier
* AU PAI-O Identifier
* AU PBS Prescriber Number
* AU Pensioner Concession Card Number
* AU Pharmacy Approval Number
 
 
* New code systems: 
* Contact Purpose
* ActCode AU
* DegreeLicenseCertificate AU
* Location Type (Physical) AU
* Location Type AU
 
* New value sets: 
* Contact Purpose
* ActEncounterCode - AU Extended
* hl7VS-degreeLicenseCertificate - AU Extended
* DVA Entitlement
* Accession Number Type
* Order Identifier Type
* Location Type (Physical) - AU Extended
* ServiceDeliveryLocationRoleType - AU Extended
 
* Removed profiles: 
* AU Base Device
* AU Base Immunisation Recommendation
* AU PBS Sponsor
* AU Base Observation Age
 
* Removed value sets: 
* Healthcare Service Types SNOMED)
* Healthcare Service Roles (SNOMED)
* AMT Trade Product
* AMT Trade Product Pack
* AMT Containered Trade Product Pack
* AMT Medicinal Product Unit of Use
* AMT Trade Product Unit of Use
* AMT Medicinal Product Pack
 
* Changed definition of IHI (AU IHI) to add extension IHI Verified Date.
* Changed definition of DVA number (AU DVA Number) to convert invariants to a required binding on Identifier.type of DVA Entitlement (refactoring).
* Changed IdentifierTypeAU, added codes "CAEI", "CSPRN", "DVAU", "LRI", "LSPN", "NATAA", "NATAS", "RACSI", "PAN", "GNAF", and "DPID".
* Changed RelatedPerson.communication.language binding in AU Base Related Person to Common Languages in Australia (extensible).
* Changed Encounter.class binding in AU Base Encounter to ActEncounterCode - AU Extended (extensible).
* Changed Location.type binding in AU Base Location to ServiceDeliveryLocationRoleType - AU Extended (extensible).
* Changed Location.physicalType in AU Base Location to Location Type (Physical) - AU Extended (preferred).
* Changed Location.identifier type in AU Base Location to add AU Location Specific Practice Number.
* Changed HealthcareService.identifier type in AU Base Healthcare Service to add AU Residential Aged Care Service Identifier.
* Changed HealthcareService.type binding in AU Base Healthcare Service to Service Type (preferred).
* Changed HealthcareService.specialty binding in AU Base Healthcare Service to Clinical Specialty (preferred).
* Changed HealthcareService.availableTime.availableStartTime and HealthcareService.availableTime.availableEndTime in AU Base Healthcare Service to add the extension Australian Time Zone.
* Changed PractitionerRole.availableTime.availableStartTime and PractitionerRole.availableTime.availableEndTime in AU Base Practitioner Role to add the extension Australian Time Zone.
* Changed PractitionerRole.code binding in AU Base Practitioner Role to Practitioner Role (preferred).
* Changed PractitionerRole.specialty binding in AU Base Practitioner Role to Clinical Specialty (preferred).
* Changed Organization.identifier type in AU Base Organization to add AU Pharmacy Approval Number.
* Changed Organization.type binding in AU Base Organization to Healthcare Organisation Role Type (preferred).
* Changed Organization.contact.purpose binding in AU Base Organization to Contact Purpose (extensible).
* Changed Practitioner.identifier type in AU Base Practitioner to add AU Ahpra Registration Number.
* Changed Practitioner.qualification.extension in AU Base Practitioner to add extensions Ahpra Profession Details and Ahpra Registration Details.
* Changed Practitioner.qualification.identifier type in AU Base Practitioner to add AU Ahpra Registration Number.
* Changed Practitioner.qualification.code binding in AU Base Practitioner to hl7VS-degreeLicenseCertificate - AU Extended (preferred).
* Changed Patient.extension in AU Base Patient to add extensions Date of Arrival in Australia and interpreterRequired.
* Changed Patient.contact.relationship binding in AU Base Patient to Contact Relationship Type (extensible).
* Changed Address.extension in Australian Address to add the extension Address Identifier.
* Changed Substance.substanceReference to remove type restriction to AU Base Substance.
* Changed AllergyIntolerance.code binding in AU Base Allergy Intolerance to version 2 of Indicator of Hypersensitivity or Intolerance to Substance (preferred).
* Changed AllergyIntolerance.reaction.exposureRoute binding in AU Base Allergy Intolerance to Route of Administration (preferred).
* Changed Condition.bodySite binding strength in AU Base Condition to preferred.
* Changed Observation.code in AU Body Height to add a slice for the SNOMED CT concept.
* Changed Observation.effective[x] in AU Body Height to restrict the type to dateTime.
* Changed Observation.valueQuantity.code binding in AU Body Height to Metric Body Length Units.
* Changed Observation.code in AU Body Weight to add a slice for the SNOMED CT concept.
* Changed Observation.effective[x] in AU Body Weight to restrict the type to dateTime.
* Changed Observation.valueQuantity.code binding in AU Body Weight to Metric Body Weight Units.
* Changed Observation.code in AU Head Circumference to add a slice for the SNOMED CT concept.
* Changed Observation.effective[x] in AU Head Circumference to restrict the type to dateTime.
* Changed Observation.valueQuantity.code binding in AU Head Circumference to Metric Body Length Units.
* Changed Observation.bodySite binding in AU Head Circumference to Body Site (preferred).
* Retitled AU Base Diagnostic Observation to AU Base Diagnostic Result.
* Changed Observation.category cardinality in AU Base Diagnostic Result to 1..*.
* Changed Observation.subject cardinality in AU Base Diagnostic Result to 1..1.
* Changed Observation.specimen type in AU Base Diagnostic Result to remove AU Base Specimen.
* Changed Observation.effective[x] cardinality in AU Base Diagnostic Result to 1..1.
* Changed Observation.hasMember in AU Base Diagnostic Result to allow only AU Diagnostic Result, AU Diagnostic Imaging Result, or AU Pathology Result.
* Changed Observation.code constraint in AU Assertion of No Relevant Finding from fixed value to required pattern.
* Changed Observation.dataAbsentReason cardinality in AU Assertion of No Relevant Finding to remove cardinality constraint.
* Changed ServiceRequest.identifier type in AU Base Diagnostic Request from Placer Identifier to AU Local Order Identifier.
* Changed ServiceRequest.code binding in AU Base Diagnostic Request to Evaluation Procedure (example).
* Changed ServiceRequest.performerType binding in AU Base Diagnostic Request to replace multiple terminology binding slices with a binding to Practitioner Role (preferred).
* Changed ServiceRequest.reasonCode binding in AU Base Diagnostic Request to Reason for Request (preferred).
* Changed ServiceRequest.bodySite binding in AU Base Diagnostic Request to Body Site (preferred).
* Changed DiagnosticReport.identifier type in AU Base Diagnostic Report from Filler Identifier to AU Local Report, AU Local Order Identifier, and AU Accession Number Identifier.
* Changed DiagnosticReport.basedOn type in AU Base Diagnostic Report to add AU Diagnostic Request.
* Changed DiagnosticReport.code binding in AU Base Diagnostic Report to Evaluation Procedure (example).
* Changed DiagnosticReport.result type in AU Base Diagnostic Report to add AU Diagnostic Result, AU Diagnostic Imaging Result, AU Pathology Result.
* Changed Specimen.type, Specimen.collection.method, Specimen.collection.bodySite, and Specimen.container.type terminology constraint to replace the slice with a preferred binding.
* Changed BodyStructure.morphology binding strength in AU Base BodyStructure to preferred.
* Changed BodyStructure.locationQualifier binding in AU Base BodyStructure to Body Site Relative Site Qualifier (preferred).
* Changed Immunization.site binding in AU Base Immunisation, moved the binding from Immunization.site.coding to Immunization.site and changed the strength to preferred.
* Changed Immunization.route binding in AU Base Immunisation, moved the binding from Immunization.route.coding to Immunization.route and changed the strength to preferred.
* Changed Immunization.performer slicing in AU Base Immunisation to remove the slice Immunisation Witnessed By and changed the discriminator to pattern:function.
* Changed Immunization.vaccinationProtocol.targetDisease in AU Base Immunisation to remove the slice No Information for Target Disease.
* Changed Medication.extension in AU Base Medication to remove extensions Medication Brand Name and Medication Generic Name.
* Changed Medication.ingredient.itemReference type in AU Base Medication to remove AU Base Medication and AU Base Substance.
* Changed MedicationRequest.extension in AU Base Medication Request to remove extensions Medication Brand Name and Medication Generic Name.
* Changed MedicationRequest.medicationReference type in AU Base Medication Request to remove AU Base Medication.
* Changed MedicationRequest.reasonCode binding in AU Base Medication Request to Reason for Request (preferred).
* Changed MedicationDispense.extension in AU Base Medication Dispense to remove extensions Medication Brand Name and Medication Generic Name.
* Changed MedicationDispense.medicationReference type in AU Base Medication Dispense to remove AU Base Medication.
* Technical correction to MedicationDispense.dosageInstruction.method in AU Base Medication Dispense to remove partial slice definition.
* Changed MedicationDispense.substitution.reason cardinality in AU Base Medication Dispense to 0..1.
* Changed MedicationStatement.extension in AU Base Medication Statement to remove extensions Medication Brand Name and Medication Generic Name.
* Changed MedicationStatement.medicationReference type in AU Base Medication Statement to remove AU Base Medication.
* Changed MedicationStatement.status binding in AU Base Medication Statement to remove Medication Reason Not Taken (preferred).
* Changed MedicationAdministration.medicationReference type in AU Base Medication Administration to remove AU Base Medication.
* Changed MedicationAdministration.dosage.site binding in AU Base Medication Administration to Body Site (preferred).
* Changed MedicationAdministration.dosage.route binding in AU Base Medication Administration to Route of Administration (preferred).
* Changed MedicationAdministration.dosage.method binding strength in AU Base Medication Administration to preferred.
* Changes specific to moving from STU3 to R4 
* Removed extensions: 
* Performer Party
* Administration Witness
* Associated Practitioner Role
* Section Author
* Related Person Attester Party
* Composition Author Role
* Condition Recorder
* Additional Category
* Metadata Source
* Encounter Origin Organisation
* Encounter Destination Organisation
* Healthcare Service Eligibility Detail
* Healthcare Service Communication
 
* Changed AU Base Diagnostic Procedure Request to AU Base Diagnostic Request.
* Changed AU Base Body Site to AU Base Body Structure.
* Changed Encounter.hospitalization.extension in AU Base Encounter to remove Encounter Origin Organisation and Encounter Destination Organisation.
* Changed HealthcareService.extension in AU Base Healthcare Service to remove Healthcare Service Eligibility Detail and Healthcare Service Communication.
* Changed Composition.extension in AU Base Composition to remove Composition Author Role.
* Changed Composition.attester.extension in AU Base Composition to remove Related Person Attester Party.
* Changed Composition.section.extension in AU Base Composition to remove Section Author.
* Changed AllergyIntolerance.extension in AU Base Allergy Intolerance to remove Author as a RelatedPerson.
* Changed Condition.extension in AU Base Condition to remove Condition Recorder.
* Changed Observation.extension in AU Base Diagnostic Result to remove Performer Party.
* Changed DiagnosticReport.extension in AU Base Diagnostic Report to review Performer Party and Additional Category.
* Changed Immunization.vaccinationProtocol.doseStatus in AU Base Immunisation to remove the slice Dose Status Not Available.
* Changed MedicationAdministration.performer.extension in AU Base Medication Administration to remove the extension Administration Witness.
* Changed MedicationList.extension in AU Base Medication List to remove the extension Authoring Practitioner Role.
 

### Release 1.1.1

* Publication date: 2020-01-21
* Publication status: Trial Use
* Based on FHIR version: 3.0.2

Rebuild of this guide to publish based on FHIR 3.0.2. To help implementers, only the more significant changes are listed here.

**Changes in this version**

* Added Maturity level (FMM) to profile and extension pages.
* New extensions 
* Encounter Description
* Authoring Practitioner Role
* Encounter Origin Organisation
* Encounter Destination Organisation
* Associated Practitioner Role
* Associated Healthcare Service
* Performer Party
* Administration Witness
* Change Description
* Author as a RelatedPerson
* Condition Recorder
* Additional Category
 
* New profiles: 
* AU Base Encounter
* AU Base Immunisation Recommendation
* AU Medicine List
* AU Base Specimen
* AU Assertion of No Relevant Finding
* AU Base Diagnostic Procedure Request
* AU Base Diagnostic Report
* AU Base Diagnostic Observation
* AU Base Substance
 
* New code systems: 
* HL7 V2 Table 0443 - Provider Role (AU Extended).
 
* New value sets: 
* Healthcare Service Types (SNOMED)
* v2 Provider Role - AU Extended
 
* Changed HealthcareService.type binding in AU Base Healthcare Service to Healthcare Service Types (SNOMED) (preferred).
* Technical correction to fix slicing of elements of type coding or codeable concept by fixing system value.
* Changed Immunization.practitioner in AU Base Immunisation to add slices for Immunisation Administered By, Immunisation Approved By, Immunisation Witnessed By.
* Changed Immunization.explanation.reason and reasonNotGiven in AU Base Immunisation from slicing to preferred binding (refactoring).
* Changed Medication.extension in AU Base Medication to remove extension AU PBS Sponsor.
* Changed Medication.form binding in AU Base Medication to Medication Form.
* Changed Medication.ingredient.itemReference type in AU Base Medication to allow only AU Base Medication or AU Base Substance.
* Changed MedicationRequest.medicationReference type in AU Base MedicationRequest to allow only AU Base Medication.
* Changed MedicationDispense.substitution.reason binding in AU Base Medication Dispense to Medicine Substitution Reason.
* Changed MedicationStatement.reasonNotTaken binding in AU Base Medication Statement to Medication Reason Not Taken.
* Changed MedicationStatement.reasonCode binding in AU Base Medication Statement to Medication Reason Taken.
* Changed Observation.code constraint in AU Base Observation Age from required pattern to fixed value.
* Changed Condition.code and Condition.evidence.code in AU Base Condition from slicing to preferred binding (refactoring).
* Changed Condition.bodySite binding in AU Base Condition to Body Site.
* Changed AllergyIntolerance.extension in AU Base Allergy Intolerance to replace Recorder as a RelatedPerson with Author as a RelatedPerson.
* Changed AllergyIntolerance.reaction.substance and AllergyIntolerance.reaction.manifestation in AU Base Allergy Intolerance from slicing to preferred binding (refactoring).
* Changed Dosage.method binding strength in AU Base Dosage to preferred.
* Changed Dosage.additionalInstruction, Dosage.asNeeded[x], Dosage.site, and Dosage.route in AU Base Dosage from slicing to preferred binding (refactoring).

### Release 1.0.2

* Publication date: 2019-05-06
* Publication status: Trial Use
* Based on FHIR version: 3.0.1

First official published version of this implementation guide.

