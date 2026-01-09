{::options toc_levels="1..4"/}

### Implementation Guide Approach

AU Base is designed to serve as a [base layer](relationship.html) within the broader context of FHIR implementations in the Australian healthcare environment. AU Base is definitional in nature and not intended for standalone implementation or to provide direction on what to do in a particular use case. For a directly implementable usage of AU Base it is recommended that [AU Core](https://build.fhir.org/ig/hl7au/au-fhir-core/) is adopted. 

AU Base extends the FHIR standard to define nationally agreed localised FHIR structures for use in Australia. AU Base is the source of truth for the nationally agreed FHIR representation of Australian concepts such as [Australian Medicare card number](StructureDefinition-au-medicarecardnumber.html) or [Australian Indigenous Status](StructureDefinition-indigenous-status.html).

The definitional approach allows for individual concepts, agnostic to a specific domain or use case, to be defined and shared at a national level without the need for a separate project or to specify conformance requirements for a particular use case. Implementers working with a common concept, that has national usage, are encouraged to submit for adoption into AU Base. 

Australian realm IGs and implementers are expected to comply with AU Base and AU Core and to define extensions, search parameters or operations (in order of precedence):
* in the FHIR standard i.e. FHIR Extensions Pack
* in AU Base (this IG)
* in a downstream IG (e.g. AU eRequesting or AU Patient Summary)
* in a local IG only if necessary

#### Scope of AU Base FHIR Artefacts

AU Base, as the Australian extension of the FHIR standard (including [FHIR Extensions Pack](https://hl7.org/fhir/extensions/), [FHIR Search Parameter Registry](https://hl7.org/fhir/R4/searchparameter-registry.html), and [HL7 Terminology (THO)](https://build.fhir.org/ig/HL7/UTG/documentation.html)), defines:
* Extensions for local use concepts e.g. Australian Indigenous Status, Subsidised Concurrent Supply
* Search parameters for searching local use concepts
* Terminology localised for use in an Australian context
  * concepts unique to Australia e.g. communication languages unique to Australia, Australian Medicines Terminology (AMT), discharge disposition codes
  * usage localised to Australia e.g. nationally endorsed clinical reference sets represented as value sets
* Profiles describing the use of FHIR structure for use in an Australian context:
  * Definitional data type profiles e.g. Australian address, Australian time zone, Identifiers such as national patient and provider identifiers
  * Base resource profiles (e.g. [AU Base Patient](StructureDefinition-au-patient.html), [AU Base MedicationStatement](StructureDefinition-au-medicationstatement.html))
  * Generic use case profiles (e.g. [AU Medicine List](StructureDefinition-au-medlist.html), [AU Base Diagnostic Imaging Result](StructureDefinition-au-imagingresult.html)), where there is no existing project to undertake the work

AU Base does not define actors (i.e. ActorDefinitions) or support requirements associated with actors (e.g. CapabilityStatements or apply Obligations). This IG does not prescribe the usage or support requirements for any particular use case. 


#### Extension Approach
AU Base extends the set of extensions available in the FHIR standard (i.e. FHIR Extensions Pack) for Australia. Extensions are defined in AU Base when:
* there is no native FHIR element that can be used
* there is no available extension in the core FHIR Extensions Pack or through pre-adoption of a later version of FHIR
* it is not suitable/achievable to define the extension in the core FHIR Extensions Pack
* the use is not specific to a single use case or domain (i.e. specific to a single IG)

This approach means that AU Core will not define extensions - AU Core profiles are intended for multiple use cases so all extensions for use in AU Core are defined in AU Base or the core FHIR Extensions Pack.

Any extension intended for use in a healthcare context and that is not unique to Australia is to be defined in the core FHIR Extensions Pack, the fallback is to define the extension in AU Base if that submission to the core FHIR Extensions Pack is not accepted.

AU Base extensions are modelled only to define the concept and not to prescribe particular support requirements or usage for specific actors. Downstream IGs, such as AU Core, profile extensions as needed to define the applicable support requirements e.g. [AU Core Sex Assigned At Birth](https://hl7.org.au/fhir/core/StructureDefinition-au-core-rsg-sexassignedab.html) which profiles the [Person Recorded Sex or Gender extension](https://hl7.org/fhir/extensions/StructureDefinition-individual-recordedSexOrGender.html).

#### Search Parameter Approach
AU Base extends the set of search parameters available in the FHIR standard (i.e. FHIR Search Parameter Registry and FHIR Extensions pack). Search parameters are defined in AU Base when:
* there is no available search parameter in the FHIR standard
* the use is not specific to searching an extension defined in a downstream IG

AU Base defined search parameters are definitional, and intend to be as expansive as possible to avoid limiting downstream use case decisions. For this reason, search parameters are defined as open and aspects such as chaining, modifiers, comparators are not limited.

This approach means that other HL7 AU IGs will not define search parameters unless they are for IG specific extensions. Definition of new search parameters for native FHIR elements, core FHIR extensions, or AU Base extensions is to be done in AU Base. Downstream IGs, such as AU Core, profile search parameters as needed to describe the applicable support requirements e.g. [AU Core clinical-patient](https://build.fhir.org/ig/hl7au/au-fhir-core/SearchParameter-au-core-clinical-patient.html) that defines support for chained identifiers.

#### Terminology Approach
AU Base defines terminology additional to that used in the FHIR standard (including [HL7 Terminology (THO)](https://build.fhir.org/ig/HL7/UTG/documentation.html)). 

Code systems are defined in AU Base when:
* it is not suitable/achievable to add the needed concepts to an existing published code system (e.g. some Australian Bureau of Statistics terminology is not yet available as a FHIR code system)
* it is not suitable/achievable to define the new code system in [HL7 Terminology (THO)](https://build.fhir.org/ig/HL7/UTG/documentation.html)
  * terminology can be defined temporarily in an AU Base code system to support development during a release while work on promoting the concepts to [HL7 Terminology (THO)](https://build.fhir.org/ig/HL7/UTG/documentation.html) is progressing
* the use of the code system is not specific to a single use case or domain (i.e. specific to a single IG)

Sometimes, only additional concepts are required rather than a new code system. Where possible, individual concepts are added to an existing code system and promoted to the applicable international code systems, e.g. international edition of SNOMED CT, if the concept is not Australian-specific.

Value sets are defined in AU Base when:
* there is no available core FHIR value set (including in [HL7 Terminology (THO)](https://build.fhir.org/ig/HL7/UTG/documentation.html)) that matches the set of values for usage agreed by the responsible work group
* the content of the value set is not predominantly SNOMED CT or LOINC*<sup>1</sup> 
* the use is not specific to a single use case or domain (i.e. specific to a single IG)

*<sup>1</sup>Value sets defined for usage in HL7 AU IGs that are SNOMED CT or LOINC predominant are published via the [National Clinical Terminology Service (NCTS)](https://www.healthterminologies.gov.au/) directly rather than AU Base.*

##### Terminology Selection
Compliance with the FHIR standard is mandatory. This can mean that some terminology rules are pre-determined e.g. supplying at least the standardised LOINC coding for vitals observations defined in the FHIR standard or complying with extensible and required bindings defined for elements in the FHIR standard.

When selecting terminology for use in an Australia healthcare context some rules of thumb apply:
* SNOMED CT-AU is the default preferred terminology for clinical concepts (e.g. AllergyIntolerance.reaction.manifestation) and should always be considered
  * If a nationally agreed clinical reference set is available that should be considered as the starting position for the set of values if SNOMED CT-AU is agreed to be the terminology bound to in the HL7 AU specification
* A peak body or other relevant national authority endorsed terminology may override the above point, e.g. RCPA endorsed pathology reporting terminology is LOINC
  * The endorsed set of values, where available, should be considered as the starting position for the set of values e.g. for pathology reporting 
* For Australian specific demographic concepts e.g. ADF Veteran Status or Australian Indigenous Status or Australian States and Territories, the Australian applicable standard is used. This often resulting in a ‘new’ FHIR code system to publish that terminology. That 'new' FHIR code system would be defined in AU Base. 
  * Which standard is the applicable standard depends on the meaning and use of the element:
    * If the driver is reporting then the ABS and/or AIHW concepts are typically preferred, and refer to current standard for Person and provider identification in healthcare
    * For other concepts (e.g. not clinical or Australian specific demographics) the applicable standard is used where it is available preferencing the international and/or FHIR implemented terminology for that concept. Examples of this type of element would be the terminology for country codes or language codes or MIME types.
* Where possible, use the widely implemented, international terminology - add/change concepts rather than creating new competing code systems. Only where a set of concepts is semantically bounded and Australian specific is the preferred long term solution to create and manage an Australian jurisdictional terminology published in a FHIR code system.

#### Data Type Profile Approach
AU Base data type profiles are definitional and used to describe a concept relevant for usage in the Australian healthcare context. It is preferred to use a data type profile over a new extension or an inline slice in a base resource profile. Typically the data type that is profiled:
* is a complex data type e.g. Dosage, Identifier, Address, CodeableConcept. 
* includes a fixed distinguishing part to identify the concept being represented e.g. Identifier.type or Address.country

[Business Identifiers](generalguidance.html#business-identifiers) defined in AU Base are defined as well formed identifiers (not inline slices in resource profiles) and include data quality requirements such as invariants, cardinality constraints, extensions, and terminology. For detail on why identifiers are defined as a data type profile and not as slices refer to [Identifier data type profiles - define the mechanism for reference / inclusion in AU Base profiles of resources #429](https://github.com/hl7au/au-fhir-base/issues/429).

Data type profiles that do not represent business identifiers do not follow the same approach and are definitional rather than describing well formed instances and therefore are conservative in including data quality rules, similar to the [approach to modelling base resource profiles](generalguidance.html#base-resource-profile-approach) below.


#### Base Resource Profile Approach

AU Base Resource Profiles inform a reader of which concepts are considered relevant to a particular resource type when used in an Australian context including extensions, terminology, and identifiers. 

AU Base is intentionally designed to be a dependency for all Australian implementation guides, and to encourage derivation from AU Base resource profiles. These base resource profiles:
* do not force conformance to core localised concepts or prescribe usage in particular scenarios
* are only constrained (e.g. cardinality) where the constraint is agreed as applicable nation-wide and across use cases to avoid limiting options for downstream use case decisions and business rules

This profile approach enables implementers and modellers to make their own rules, i.e. [profiling](http://hl7.org/fhir/profiling.html), about how to support these concepts for specific implementation needs.

Therefore, when modelling AU Base resource profiles:
* Open: profiles are defined as open, i.e. allowing additional elements and rules which makes for a much for flexible template - it's open for use in wider contexts, but also means that the content of the resource is not closed, and applications have to decide how to handle content not described by the profile. 
* Extensions: extensions are only explicitly modelled in the profile to identify the nationally agreed extension to use for a particular concept.
* Cardinality: cardinality is only constrained where there is national agreement that for all use cases in the Australian healthcare context the cardinality restriction needs to be applied (e.g. legislative requirements).
* Terminology Binding: where possible, elements are bound to the nationally recognised value set which is either inherited from the FHIR standard or a localised value set. Localisation occurs through a number of mechanisms including nationally maintained clinical reference sets in the [National Clinical Terminology Service (NCTS)](https://www.healthterminologies.gov.au/), terminology published by government agencies such as the [Australian Bureau of Statistics](https://www.abs.gov.au/), [Australian Institute of Health and Welfare](https://www.aihw.gov.au/), [Services Australia](https://www.servicesaustralia.gov.au/), and use case projects that contribute additional concepts as needed for use in implementation.
  * by default, bindings specified in AU Base are [preferred](https://hl7.org/fhir/R4/terminologies.html#preferred) to indicate the recommended local terminology. The binding can be stronger where either binding inherited by the FHIR standard is stronger (and therefore cannot be relaxed) or where there is strong national agreement on the terminology for use in an Australian healthcare context across use cases. 
  * where multiple terminologies are recognised for use in the Australian healthcare context, the set of terminologies are described using the additional bindings extension, e.g. in [AU Base Medication](StructureDefinition-au-medication.html), `Medication.code` uses additional bindings to describe usage of Australian Medicines Terminology, PBS Item Codes, MIMS, and GTIN.
* Slice Constraints: slicing is avoided as much as possible. Slicing limits the opportunities for downstream IGs and applications to define their own business rules and this is to be avoided at the AU Base level. Slicing, where present, is used to define a real world concept that cannot be meaningfully modelled using another profiling technique, and is left open to allow for flexibility.
* References: references are not constrained to avoid limiting the opportunities for downstream IGs and applications to define their own business rules.
* Type choices: types are restricted only where there is national agreement to restrict that usage in Australia. Additionally, AU Base data type profiles suitable for usage for that particular element are added. 
* Must Support and Obligations: _Must Support_ or Obligation is not present as there is no assertion of required support for any of the elements profiled in this guide for a particular usage.

Some FHIR resource types are not profiled in AU Base as it is too abstract to be support meaningful localisation across use cases in a base resource profile e.g. Basic, Observation, and Device. For these resource types, AU Core or a downstream use case IG can profile directly instead of inheriting from an AU Base profile. 

#### Generic Use Case Profile Approach

Generic use case profiles (e.g. [AU Medicine List](StructureDefinition-au-medlist.html), [AU Base Diagnostic Imaging Result](StructureDefinition-au-imagingresult.html)), profile a FHIR resource to define structures relevant to a particular use case but do not prescribe conformance for a particular actor or scenario. These profiles are intended to be temporary, and are included in AU Base where there is:
* sufficient community need for national level agreement on the 'what' for a use case
* sufficient community agreement on the 'what' for a use case
* there is no current or coming soon IG project that covers the scope of the use case

Generic use case resource profiles are defined as open, i.e. allowing additional elements and rules which makes for a much for flexible template - it's open for use in wider contexts, but also means that the content of the resource is not closed, and applications have to decide how to handle content not described by the profile. 

Generic use case profiles remain definitional, encourage derivation, and do not include _Must Support_ or Obligation. Constraints are limited to defining the particular scope and typically include some type of fixed value or terminology constraint to describe the kind of concept. Constraints are still minimal to avoid limiting downstream IG modelling and implementation choices.

When an IG project is started that covers the scope of an AU Base generic use case profile, that profile is moved to new IG project and then either deprecated or removed in AU Base. For example:
* the AU Core vital signs profiles started in AU Base and were subsequently moved to AU Core and then removed from AU Base
* the AU eRequesting ServiceRequest profile started in AU Base and was subsequently moved to AU eRequesting and then deprecated in AU Base

### Maturity Levels 
These levels used for HL7 AU FHIR Implementation Guides are associated with the [FHIR Maturity Model](http://hl7.org/fhir/R4/versions.html#maturity) and adjusted for local use.

The content of this release has been subject to significant review through ballot and other HL7 AU processes and many aspects of it have been implemented and 
subjected to interoperability testing through Connectathons and early adoption. However, the degree of testing has varied. Some resources have been well tested 
in a variety of environments. Others have received relatively little real-world exercise. In general, the infrastructure should be considered to be more stable 
than the resources themselves. Guidance from early implementation will help address these areas.

All artefacts in this specification are assigned a "Maturity Level", known as AFMM (after the well-known CMM grades) - Australian FHIR Maturity Model. The AFMM level can be used by implementers to judge how advanced - and therefore stable - an artefact is. 

The following AFMM levels are defined:

{:start="0"}
**DRAFT 0** The resource or profile (artefact) has been published on the current build. Artefacts with this level must have a standards status of Draft.

**AFMM 1** DRAFT 0 PLUS the artefact produces no warnings or errors during the build process that have not been accepted by the responsible WG; and the responsible WG has indicated that they consider the artefact substantially complete and ready for implementation.

**AFMM 2** AFMM 1 PLUS the artefact has been tested and successfully supports interoperability among at least three independently developed systems leveraging most of the scope (e.g. at least 80% of the core data elements) using appropriate data and scenarios based on at least one of the declared scopes of the artefact (e.g. at a Connectathon). These interoperability results must have been reported to and accepted by the FHIRWG.

**AFMM 3** AFMM 2 PLUS the artefact has been verified by the work group as meeting the [Conformance Resource Quality Guidelines](https://confluence.hl7.org/display/FHIR/Conformance+QA+Criteria); has been subject to a round of formal balloting; has at least 10 distinct implementer comments recorded in the tracker drawn from at least 3 organisations resulting in at least one substantive change.

**AFMM 4** AFMM 3 PLUS the artefact is published in a formal publication (e.g. a FHIR Implementation Guide), and implemented in multiple prototype projects. As well, the responsible work group agrees the artefact is sufficiently stable to require implementer consultation for subsequent non-backward compatible changes.

**AFMM 5** AFMM 4 PLUS the artefact has been published in two formal publication release cycles at AFMM1+ (i.e. Trial Use level) and has been implemented in at least 5 independent production systems.

**Normative** AFMM 5 PLUS the responsible work group and the FHIRWG agree the material is ready to lock down according to the [inter-version](https://hl7.org/fhir/versions.html#change) change rules and the artefact has passed HL7 AU normative ballot. This is synonymous with [Normative](https://hl7.org/fhir/versions.html#normative) standard status.

Reference should also be made to [Version Management Policy](http://hl7.org/fhir/R4/versions.html).


### HL7 AU FHIR Artefact Release Publishing Policy
Publishing requirements applied to HL7 AU FHIR implementation guides are applied based on the AFMM assessment of artefacts and govern whether artefacts may form part of a draft release, preview release, ballot release, or official publication of a standard.

**DRAFT 0** maturity level artefacts are considered not substantially complete by the responsible work group and not necessarily ready for implementation. Subsequently any artefact content remaining at this level will not be published in official publication of [Trial-Use or Normative](https://hl7.org/fhir/R4/versions.html#std-process) specifications.

 **DRAFT 0** maturity level artefacts may be included in any releases provided as **draft**, **preview** or **ballot** snapshots. This allows feedback to be sought on this material through Connectathons, testing and ballot activities. **DRAFT 0** level artefacts, by committee consensus, may achieve **AFMM 1** between ballot and official publication allowing them to be included in the official publication of a [Trial-Use or Normative](https://hl7.org/fhir/R4/versions.html#std-process) specification.

The editorial removal of **DRAFT 0** maturity level artefacts that are available in the main continuous integration (CI) branch of a specifications for official publication releases may result in differences to the narrative, summary and profile content to exclude description of, and reference to, these artefacts. Any **DRAFT 0** maturity level artefacts that are removed in this way will be mentioned in the specification change log.

**AFMM 1+** maturity level artefacts are eligible for inclusion in all official [Trial-Use or Normative](https://hl7.org/fhir/R4/versions.html#std-process) publications and also **draft**, **preview** or **ballot** snapshots. Artefact AFMM levels may be revised from time to time using the Australian FHIR Maturity Model level assessment criteria to progress material towards assertion of [Normative](https://hl7.org/fhir/R4/versions.html#std-process) status.

Official publication of a [Normative](https://hl7.org/fhir/R4/versions.html#std-process) specification will have one or more artefacts confirmed at **AFMM 5** or **Normative** maturity level. 

### SNOMED CT Australian Edition
[SNOMED CT](https://snomed.info/sct) (Systematized Nomenclature of Medicine – Clinical Terms) is a comprehensive clinical terminology widely used in healthcare to support the electronic exchange of clinical health information.
In Australia, SNOMED CT Australian Edition (SNOMED CT-AU) extends SNOMED CT with local variations and customisation relevant to the Australian healthcare community.
Many SNOMED CT-AU value sets have already been developed and published by the [National Clinical Terminology Service](https://www.healthterminologies.gov.au) (NCTS). 
These nationally agreed and published value sets are maximal in nature to support reuse across multiple use cases and support the breadth of the ecosystem to enable interoperability.
SNOMED CT-AU is used extensively in AU Base for various clinical concepts including allergies, problems, and procedures. When using concepts from SNOMED CT in AU Base profile, implementers can use the default system URI referring to an unspecified edition/or version (as shown in option one) or when supporting validation on AU Edition-only concepts and preferred terms implementers provide the accompanying extension identifier (as per option two) and also describe a specific version of SNOMED CT-AU (as shown in option three). 

#### SNOMED CT Version Options

1. Using only the system `http://snomed.info/sct` refers to an unspecified edition and version of SNOMED CT. This default method leaves it to the server to select the SNOMED CT edition and version to validate against. For example:

    ~~~
    "code": {
            "coding": [
                {
                    "system": "http://snomed.info/sct,
                    "code": "322236009",
                    "display": "Paracetamol 500 mg oral tablet"
                }
            ],
            "text": "paracetamol 500 mg tablet"
        }
    ~~~

1. Using the system *plus* the AU extension identifier `http://snomed.info/sct/32506021000036107` denotes using an unspecified version of the Australian edition of SNOMED CT (SNOMED CT-AU). This can be used to specify the Australian Edition for the purposes of validation of an Australian Medicinal Product code. For example: 

    ~~~
    "code": {
            "coding": [
                {
                    "system": "http://snomed.info/sct,
                    "version": "http://snomed.info/sct/32506021000036107",
                    "code": "	23628011000036109",
                    "display": "Paracetamol 500 mg tablet"
                }
            ],
            "text": "paracetamol 500 mg tablet"
        }
    ~~~

1. Using the system *plus* the AU extension identifier, *plus* a version denotes using a specific version of SNOMED CT-AU `http://snomed.info/sct/32506021000036107/version/20240531`. This might be used for validating a Medicinal Product Unit of Use code from a previous version of SNOMED CT-AU. For example: 

    ~~~
    "code": {
            "coding": [
                {
                    "system": "http://snomed.info/sct,
                    "version": "http://snomed.info/sct/32506021000036107/version/20240531",
                    "code": "23628011000036109",
                    "display": "paracetamol 500 mg tablet"
                }
            ],
            "text": "paracetamol 500 mg tablet"
        }
    ~~~

### Business Identifiers

["Business" identifiers](http://hl7.org/fhir/R4/resource.html#identifiers) are used extensively to consistently identify real world entities across systems, contexts of use, and other formats (e.g. HL7 v2 , CDA , XDS, and many more). 

Defined in this implementation guide are profiles for business identifiers for use in populating the following data elements:
   - `Device.identifier`
   - `DiagnosticReport.identifier`
   - `HealthcareService.identifier`
   - `Location.identifier`
   - `MedicationDispense.identifier`
   - `MedicationRequest.identifier`
   - `Observation.identifier`
   - `Organization.identifier`
   - `Patient.identifier`
   - `RelatedPerson.identifier`
   - `Practitioner.identifier`
   - `Practitioner.qualification.identifier`
   - `PractitionerRole.identifier`
   - `ServiceRequest.identifier`
          
Business identifiers will typically be a national identifier (ABN, Medicare Provider, IHI), registry / exchange service identifier (ETP, eRx), or local identifier (MRN, Placer Identifier).

This guide publishes and maintains rules on how to exchange various business identifiers in Australia as a set of Identifier data type profiles, e.g. [AU PBS Prescriber Number](StructureDefinition-au-pbsprescribernumber.html). 

While national and registry / exchange service identifiers will define the namespace to use when sending an identifier, a local identifier requires the organisation to define their own namespace when exchanging identifiers they manage.

When constructing a local identifier it is preferable that an organisation uses their own local system identifier namespace (e.g. "https://local organisation domain/identifier type") but if that is not available then an organisation can use their HPI-O or ABN to construct a legal, globally unique identifier system for some local identifiers.

When an organisation has a need to create a stable identifier that is unique within an application, e.g. [AU Patient Internal Identifier](StructureDefinition-au-pi.html), it can do this by including aspects such as software provider, system instance, instance identifier and identifier type when constructing with `Identifier.system` and `Identifier.value`. For example:
   - a single instance of an application assigning patient identifiers: `http://software-provider.com/system-instance/identifiers/patient-id` 
   - a cloud provider assigning patient identifiers for multiple clients: `http://cloud-provider.com/identifiers/patient-id` 
   - an identifier assigned by a tenant within a multi-tenant application: `http://cloud-provider.com/identifiers/tenant-id/patient-id` 

Additional guidance can be found in the [Identifiers](https://hl7.org/fhir/R4/datatypes.html#Identifier) section of the FHIR standard.

**HPI-O scoped Identifiers**

HPI-O scoped identifiers enable exchange of an organisation's local identifiers for items such as a patient medical record or a pathology report by combining a dedicated Australian Digital Health Agency published namespace and their HPI-O to construct a legal, globally unique identifier system for their local identifiers.

The full list of available identifier namespaces can be found by browsing the [ns.electronichealth.net.au identifier namespaces](https://developer.digitalhealth.gov.au/namespaces/browse-identifiers.html); there are several HPI-O scoped identifier namespaces available:
   - http://ns.electronichealth.net.au/id/hpio-scoped/accessionnumber/1.0
   - http://ns.electronichealth.net.au/id/hpio-scoped/dispense/1.0
   - http://ns.electronichealth.net.au/id/hpio-scoped/medicalrecord/1.0
   - http://ns.electronichealth.net.au/id/hpio-scoped/order/1.0
   - http://ns.electronichealth.net.au/id/hpio-scoped/prescription/1.0
   - http://ns.electronichealth.net.au/id/hpio-scoped/report/1.0
   - http://ns.electronichealth.net.au/id/hpio-scoped/service-provider-individual/1.0

There are four parts to using a HPI-O scoped identifier in FHIR: system, value, assigner and depending on the identifier profile requirements, a coded type. 

The system value is constructed in the format of [baseURL]/HPI-O, e.g.:

~~~
"system" : "http://ns.electronichealth.net.au/id/hpio-scoped/service-provider-individual/1.0/8003621566684455"
~~~

The value contains the local identifier, e.g.:
~~~
"value" : "3235209"
~~~

The assigner contains the name of the organisation that issues or manages the identifier, e.g.:

~~~
"assigner" : {
    "display" : "Devonport Family Medicine Clinic"
}
~~~

Example: PractitionerRole resource with an employee number (local identifier)
~~~
{
  "resourceType" : "PractitionerRole",
    ...
    "identifier" : [
      {
        "type" : {
          "coding" : [
            {
              "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
              "code" : "EI",
              "display" : "Employee number"
              }
            ],
          "text" : "Employee Number"
      },
      "system" : "http://ns.electronichealth.net.au/id/hpio-scoped/service-provider-individual/1.0/8003621566684455",
      "value" : "3235209",
      "assigner" : {
        "display" : "Devonport Family Medicine Clinic"
    },
  ...
}  
~~~


**ABN scoped Identifiers**

ABN scoped identifiers enable exchange of an organisation's local identifiers for items such as a patient medical record by combining a dedicated Australian Digital Health Agency published namespace and their ABN to construct a legal, globally unique identifier system for their local identifiers.

The full list of available identifier namespaces can be found by browsing the [ns.electronichealth.net.au identifier namespaces](https://developer.digitalhealth.gov.au/namespaces/browse-identifiers.html); there are two ABN-scoped identifier namespaces available:
   - http://ns.electronichealth.net.au/id/abn-scoped/medicalrecord/1.0
   - http://ns.electronichealth.net.au/id/abn-scoped/service-provider-individual/1.0

There are four parts to using an ABN scoped identifier in FHIR: system, value, assigner and depending on the identifier profile requirements, a coded type. 

The system value is constructed in the format of [baseURL]/ABN, e.g.:

~~~
"system" : "http://ns.electronichealth.net.au/id/abn-scoped/medicalrecord/1.0/51824754455"
~~~

The value contains the local identifier, e.g.:
~~~
"value" : "12345446"
~~~

The assigner contains the name of the organisation that issues or manages the identifier, e.g.:

~~~
"assigner" : {
    "display" : "Test Hospital Org"
}
~~~

Example: Patient resource with a medical record number (local identifier)
~~~
{
  "resourceType" : "Patient",
    ...
      "identifier" : [
        {
        "type" : {
          "coding" : [
            {
              "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
                     "code" : "MR",
                     "display" : "Medical record number"
                   }
                 ],
          "text" : "Medical Record Number"
        },
        "system" : "http://ns.electronichealth.net.au/id/abn-scoped/medicalrecord/1.0/51824754455",
        "value" : "12344456",
        "assigner" : {
          "display" : "Test Hospital Org"
    },
  ...
}
~~~


### Australian Health Practitioner Regulation Agency (Ahpra) Data Guidance

<p class="stu-note">This section refers to deprecated material and is retained until the <a href="StructureDefinition-ahpraregistration-details.html">Ahpra Registration Details</a> and <a href="StructureDefinition-ahpraprofession-details.html">Ahpra Profession Details</a> extensions are retired.</p>

This guidance on the representation of Ahpra-sourced data is taken and adapted from Ahpra's practitioner information exchange (PIE) interoperability specification: Find registration.

Ahpra data items should be exchanged using a Practitioner resource.

This guidance matches Ahpra data items to the corresponding element in a Practitioner resource, making use of extensions [Ahpra Profession Details](StructureDefinition-ahpraprofession-details.html) and [Ahpra Registration Details](StructureDefinition-ahpraregistration-details.html) as needed.


#### Ahpra Person Data

<table class="list" width="100%">
    <tr>
    <th>Ahpra data element</th>
    <th>Element in <a href="StructureDefinition-au-practitioner.html">AU Base Practitioner</a></th>
    </tr>
    <tr>
        <td>Name Edit Date</td>
        <td>Practitioner.name.period.start</td>
    </tr>
    <tr>
        <td>Name Title</td>
        <td>Practitioner.name.prefix</td>
    </tr>
    <tr>
        <td>Family Name</td>
        <td>Practitioner.name.family</td>
    </tr>
    <tr>
        <td>Given Name</td>
        <td>Practitioner.name.given</td>
    </tr>
    <tr>
        <td>Middle Name</td>
        <td>Practitioner.name.given</td>
    </tr>
    <tr>
        <td>Profession Number</td>
        <td>Practitioner.identifier</td>
    </tr>
</table>


#### Ahpra Qualification Data

<table class="list" width="100%">
    <tr>
    <th>Ahpra data element</th>
    <th>Element in <a href="StructureDefinition-au-practitioner.html">AU Base Practitioner</a></th>
    </tr>
    <tr>
        <td>Qualification Title</td>
        <td>Practitioner.qualification.code.text</td>
    </tr>
    <tr>
        <td>Awarding Institution</td>
        <td>Practitioner.qualification.issuer.resolve().name</td>
    </tr>
    <tr>
        <td>Country Qualification Obtained</td>
        <td>Practitioner.qualification.issuer.resolve().address.country</td>
    </tr>
    <tr>
        <td>Year of Qualification</td>
        <td>Practitioner.qualification.period.start</td>
    </tr>
</table>

#### Ahpra Profession Data

<table class="list" width="100%">
    <tr>
    <th>Ahpra data element</th>
    <th>Element in <a href="StructureDefinition-au-practitioner.html">AU Base Practitioner</a></th>
    </tr>
    <tr>
        <td>Profession Number</td>
        <td>Practitioner.qualification.identifier</td>
    </tr>
    <tr>
        <td>Profession</td>
        <td>Practitioner.qualification.extension:ahpraprofession-details.ahpraProfession.text</td>
    </tr>
    <tr>
        <td>Profession Start Date</td>
        <td>Practitioner.qualification.period.start</td>
    </tr>
    <tr>
        <td>Conditions</td>
        <td>Practitioner.qualification.extension:ahpraprofession-details.ahpraCondition</td>
    </tr>
    <tr>
        <td>Undertakings</td>
        <td>Practitioner.qualification.extension:ahpraprofession-details.ahpraUndertaking</td>
    </tr>
    <tr>
        <td>Reprimands</td>
        <td>Practitioner.qualification.extension:ahpraprofession-details.ahpraReprimand</td>
    </tr>
    <tr>
        <td>Cautions</td>
        <td>Practitioner.qualification.extension:ahpraprofession-details.ahpraCaution</td>
    </tr>
</table>

#### Ahpra Registration Data

<table class="list" width="100%">
    <tr>
    <th>Ahpra data element</th>
    <th>Element in <a href="StructureDefinition-au-practitioner.html">AU Base Practitioner</a></th>
    </tr>
    <tr>
        <td>Profession Number</td>
        <td>Practitioner.qualification.identifier</td>
    </tr>
    <tr>
        <td>Profession</td>
        <td>Practitioner.qualification.extension:ahpraprofession-details.ahpraProfession.text</td>
    </tr>
    <tr>
        <td>Registration Record Number</td>
        <td>Practitioner.qualification.extension:ahpraregistration-details.ahpraRegistrationRecordNumber</td>
    </tr>
    <tr>
        <td>Division</td>
        <td>Practitioner.qualification.extension:ahpraregistration-details.ahpradivision.text</td>
    </tr>
    <tr>
        <td>Registration Type</td>
        <td>Practitioner.	qualification.extension:ahpraregistration-details.ahpraregistrationtype.text</td>
    </tr>
    <tr>
        <td>Registration Sub-Type</td>
        <td>Practitioner.qualification.extension:ahpraregistration-details.ahpraregistrationsubtype.text</td>
    </tr>
    <tr>
        <td>Registration Status</td>
        <td>Practitioner.qualification.extension:ahpraregistration-details.ahpraregistrationstatus.text</td>
    </tr>
    <tr>
        <td>Registration Expiry</td>
        <td>Practitioner.qualification.period.end</td>
    </tr>
    <tr>
        <td>Specialty</td>
        <td>Practitioner.qualification.extension:ahpraregistration-details.ahpraspecialty.text</td>
    </tr>
    <tr>
        <td>Field of Specialty Practice</td>
        <td>Practitioner.qualification.extension:ahpraregistration-details.ahprafieldofspecialtypractice.text</td>
    </tr>
    <tr>
        <td>Initial Registration Date</td>
        <td>Practitioner.qualification.period.start</td>
    </tr>
    <tr>
        <td>Endorsements</td>
        <td>Practitioner.qualification.extension:ahpraregistration-details.ahpraEndorsement</td>
    </tr>
    <tr>
        <td>Notations</td>
        <td>Practitioner.qualification.extension:ahpraregistration-details.ahpraNotation</td>
    </tr>
</table>

### Representing Communication Preferences

The guidance below describes how to represent languages that can be used to communicate about a patient's health including preferred language and if an interpreter is required. This guidance applies to AU Base Patient and AU Base RelatedPerson, and uses the [Interpreter Required](http://hl7.org/fhir/extensions/StructureDefinition-patient-interpreterRequired.html) extension:
* When sent in a Patient resource, the information exchanged is about the languages that may be used to communicate with the patient about their health. 
* When sent in a RelatedPerson resource, the information exchanged is about languages that may be used to communicate with the related person about the patient's health.
 
The table below is divided into different scenarios. Blank cells indicate that the given element is absent from the resource in that scenario.

<table class="list" style="width:100%">
    <colgroup>
       <col span="1" style="width: 20%;"/>
       <col span="1" style="width: 18%;"/>
       <col span="1" style="width: 18%;"/>
       <col span="1" style="width: 20%;"/>
       <col span="1" style="width: 24%;"/>
    </colgroup>
	<tbody>
      <tr>
        <th>Scenario</th>
        <th>communication.language</th>
        <th>communication.preferred</th>
        <th>extension:interpreterRequired</th>
		<th>Notes</th>
      </tr>
      <tr>
        <td>Preferred language is English</td>
        <td></td>
        <td></td>
        <td></td>
        <td>No element sent, as per the guidance in the Comments of <a href="http://hl7.org/fhir/patient-definitions.html#Patient.communication">Patient.communication</a> and <a href="https://hl7.org/fhir/relatedperson-definitions.html#RelatedPerson.communication">RelatedPerson.communication</a>.</td>
      </tr>
      <tr>
        <td>Preferred language is other than English</td>
        <td>language.coding</td>
        <td>'true'</td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>Interpreter required, language is known</td>
        <td>language.coding</td>
        <td>'true'</td>
        <td>'true'</td>
        <td></td>
      </tr>
      <tr>
        <td>Interpreter required, language is not known</td>
        <td></td>
        <td></td>
        <td>'true'</td>
        <td></td>
      </tr>
      <tr>
        <td>Interpreter is not required</td>
        <td></td>
        <td></td>
        <td>'false'</td>
        <td></td>
      </tr>
      <tr>
        <td>Communicates with multiple languages</td>
        <td>language.coding</td>
        <td></td>
        <td></td>
        <td>Each language instantiated in separate communication nodes; communication.preferred and extension:interpreterRequired may be sent as needed.</td>
      </tr>
    </tbody>
</table>

Example: Patient resource with interpreter required and language is known
~~~
{
  "resourceType" : "Patient",
    ...
      "extension" : [
        {
          "url" : "http://hl7.org/fhir/StructureDefinition/patient-interpreterRequired",
          "valueBoolean" : true
        }          
       ]
    },
    ...
    "communication" : [
    {
      "language" : {
        "coding" : [
          {
            "system" : "urn:ietf:bcp:47",
            "code" : "yue"
          }
        ],
        "text" : "Cantonese"
      },
      "preferred" : true
    }
  ]
}
~~~

### Representing Body Site, Which May Include Laterality
When exchanging Procedure, Condition, or ServiceRequest resources conformant to AU Base, there may be a need to represent a relevant body site and associated laterality using CodeableConcept elements. In FHIR, body site and associated laterality can be recorded in various ways, and implementers are encouraged to consider the guidance on the following scenarios when implementing:

1. Primary finding/procedure/service code with body site and laterality as a pre-coordinated code.
1. Primary finding/procedure/service code with body site (without laterality) as a pre-coordinated code, and a separate laterality coded qualifier.
1. Coded body site with laterality and separate primary finding/procedure/service code.
1. Coded body site without laterality and separate coded laterality qualifier and a primary finding/procedure/service code.

To support consistent representation the following is recommended for each case. This approach can be applied to Condition, Procedure, and ServiceRequest.

1\. Primary finding/procedure/service `code` only (pre-coordinated code including body site and laterality)
* For systems that have pre-coordinated coding describing a concept fully:
  * use only the `code` element to contain information on body site with laterality.

Example: Condition resource cellulitis of right knee
~~~
{
  "resourceType" : "Condition",
  "id" : "cellulitis",
  ...
  "code" : {
    "coding" : [
      {
        "system" : "http://snomed.info/sct",
        "code" : "10633311000119108",
        "display" : "Cellulitis of right knee"
      },
      "text" : "Cellulitis of right knee"
    ]
  }
  ...
}
~~~

2\. Primary finding/procedure/service `code` only (pre-coordinated code including body site without laterality and separate laterality qualifier)
* For systems that have pre-coordinated coding describing a concept including body site without laterality, and have a laterality qualifier recorded separately e.g. left, right:
  * use the `code` element:
    * `code.coding` contains the primary concept including body site (without laterality).
    * `code.text` is used to describe concept fully, this can include information on recorded laterality e.g. ', Right'.
  * in this case laterality is not expressed in coded form.


Example: Condition resource showing coded condition that includes body site, laterality as text only
~~~
{
  "resourceType" : "Condition",
  "id" : "cellulitis",
  ...
  "code" : {
    "coding" : [
      {
        "system" : "http://snomed.info/sct",
        "code" : "13301002",
        "display" : "Cellulitis of knee"
      },
      "text" : "Cellulitis of knee, Right"
    ]
  }
  ...
}
~~~

3\. Coded `body site` with laterality and separate primary finding/procedure/service `code`.
* For systems that have pre-coordinated coding describing primary concept without body site and separate body site with laterality recorded as coded value:
  * use the code element:
    * `code.coding` contains the primary concept alone (no body site or laterality).
    * `code.text` describes the concept fully, this can include information on recorded body site and laterality as text.
  * optionally, coded element `bodySite` may be supplied containing the coded body site with laterality.


Example: Condition resource showing coded condition, coded body site that includes laterality
~~~
{
  "resourceType" : "Condition",
  "id" : "cellulitis",
  ...
  "code" : {
    "coding" : [
      {
        "system" : "http://snomed.info/sct",
        "code" : "128045006",
        "display" : "Cellulitis"
      },
      "text" : "Cellulitis, Right Knee"
    ]
  },
  "bodySite" : [
    {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "6757004",
        "display" : "Structure of right knee region"
      }],
      "text" : "Right Knee"
    }
  ]
  ...
}
~~~


4\. Coded `body site` without laterality and separate coded laterality qualifier and a primary finding/procedure/service `code`.
* For systems that have pre-coordinated coding describing primary concept without body site and a body site without laterality is as separate coded value, and laterality qualifier recorded separately e.g. left, right:
  * use the `code` element:
    * `code.coding` contains the primary concept alone (no body site or laterality).
    * `code.text` describes the concept fully, this can include information on recorded body site and laterality as text.
  * optionally, coded element bodySite may be supplied containing:
    * `bodySite.coding` contains the coded body site without laterality.
    * `bodySite.text` describes the body site concept fully, this can include information on recorded laterality as text e.g. ', Right'.


Example: Condition resource with coded condition, coded body site, laterality as text only
~~~
{
  "resourceType" : "Condition",
  "id" : "cellulitis",
  ...
  "code" : {
    "coding" : [
      {
        "system" : "http://snomed.info/sct",
        "code" : "128045006",
        "display" : "Cellulitis"
      },
      "text" : "Cellulitis, Knee, Right"
    ]
  },
  "bodySite" : [
    {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "72696002",
        "display" : "Knee region structure"
      }],
      "text" : "Knee, Right"
    }
  ]
  ...
}
~~~
