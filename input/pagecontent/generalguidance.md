### Intent of this Implementation Guide
This implementation guide does not attempt to constrain for specific use cases. 
Instead it defines representations of how commonly needed concepts, in an Australian context, can be applied generally.

This implementation guide can then be drawn on for specific use cases and further constraints added for the needs of those cases.
By referencing the AU Base definition in downstream implementation guides there is a basic level of alignment in representation across those guides.  
This alignment allows general processing and simpler exchange of information from one implementation guide domain to another without the need for extensive integration translation tasks.
This becomes more useful as the number of specific use case implementation guides expands and the potential issues of movement of information into and out of multiple domains of interest is addressed.

This approach manifests as the following representation outcomes in this guide, as follows:
* Cardinality:  most representations described have a cardinality as defined in the core FHIR specification (which is general in nature) to avoid required content for use cases that do not need or support the content.
* Must Support: the FHIR profiling Must Support flags are not used in this guide; for similar reasons to the cardinality there is no assertion of required support for any of the elements profiled in this guide.
* Terminology Binding: elements that can be bound to terminology are often sliced to offer one or more specific binding options that can be required in downstream guides; this also provides value sets that are common/suitable for the Australian context. 
* Slice Constraints: in this guide choice or repeating elements are often sliced to define specific profiling options for that element, specific slices needed in downstream guides can be picked up and made required (cardinality), or must support as needed. Slicing on elements is left open to allow other slice profiles to be added as needed.

For a directly implementable usage of AU Base for a general level of capability it is recommended the AU Core implementation guide be considered. AU Core introduces a required level of element support that give a core set of capability that can be implemented and assumed.


### Maturity Levels 
These levels used for this Implementation Guide are associated with the [FHIR Maturity Model](http://hl7.org/fhir/R4/versions.html#maturity) and adjusted for local use.

The content of this release has been subject to significant review through ballot and other HL7 AU processes and many aspects of it have been implemented and 
subjected to interoperability testing through connectathons and early adoption. However, the degree of testing has varied. Some resources have been well tested 
in a variety of environments. Others have received relatively little real-world exercise. In general, the infrastructure should be considered to be more stable 
than the resources themselves. Guidance from early implementation will help address these areas.

All artifacts in this specification are assigned a "Maturity Level", known as FMM (after the well-known CMM  grades). The FMM level can be used by implementers to judge how advanced - and therefore stable - an artifact is. 
The following FMM levels are defined:

{:start="0"}
**DRAFT 0** The resource or profile (artifact) has been published on the current build. This level is synonymous with Draft.

**FMM 1** DRAFT 0 PLUS the artifact produces no warnings during the build process and the responsible WG has indicated that they consider the artifact substantially complete and ready for implementation. 

**FMM 2** FMM 1 PLUS the artifact has been tested and successfully supports interoperability among at least three independently developed systems leveraging most of the scope (e.g. at least 80% of the core data elements) using semi-realistic data and scenarios based on at least one of the declared scopes of the artifact (e.g. at a connectathon). These interoperability results must have been reported to and accepted by the responsible working group.

**FMM 3** FMM 2 PLUS the artifact has been verified by the work group as meeting the [Conformance Resource Quality Guidelines](https://confluence.hl7.org/display/FHIR/Conformance+QA+Criteria); has been subject to a round of formal balloting; has at least 10 distinct implementer comments recorded in the tracker drawn from at least 3 organizations resulting in at least one substantive change.

**FMM 4** FMM 3 PLUS the artifact is published in a formal publication (e.g. a FHIR Implementation Guide), and implemented in multiple prototype projects. As well, the responsible work group agrees the artefact is sufficiently stable to require implementer consultation for subsequent non-backward compatible changes.

**FMM 5** FMM 5 PLUS the artifact has been published in two formal publication release cycles at FMM1+ (i.e. Trial Use level) and has been implemented in at least 5 independent production systems.

**Normative** the artifact is now considered stable.

Reference should also be made to [Version Management Policy](http://hl7.org/fhir/R4/versions.html).

### SNOMED CT Australian Edition
[SNOMED CT](https://snomed.info/sct) (Systematized Nomenclature of Medicine – Clinical Terms) is a comprehensive clinical terminology widely used in healthcare to support the electronic exchange of clinical health information.
In Australia, SNOMED CT-AU extends SNOMED CT for recording structured clinical data in health
records in Australian conditions. Many SNOMED CT-AU value sets have already been developed and published by the National Clinical Terminology Service [NCTS](https://www.healthterminologies.gov.au). 
These nationally agreed and published value sets are maximal in nature to support reuse across multiple use cases and support the breadth of the ecosystem to enable interoperability. 

#### SNOMED CT Version Options

1. Using only the system http://snomed.info/sct refers to an unspecified edition and version of SNOMED CT. For example:

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

1. Using the system *plus* the AU extension identifier `http://snomed.info/sct/32506021000036107` denotes using an unspecified version of the Australian edition of SNOMED CT (SNOMED CT-AU). For example: 

    ~~~
    "code": {
            "coding": [
                {
                    "system": "http://snomed.info/sct,
                    "version": "http://snomed.info/sct/32506021000036107",
                    "code": "322236009",
                    "display": "Paracetamol 500 mg oral tablet"
                }
            ],
            "text": "paracetamol 500 mg tablet"
        }
    ~~~

1. Using the system *plus* the AU extension identifier, *plus* a version denotes using a specific version of SNOMED CT-AU `http://snomed.info/sct/32506021000036107/version/20240531`. For example: 

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

This guide publishes and maintains rules on how to exchange various business identifiers in Australia as a set of Identifier data type profiles, e.g. [AU PBS Prescriber Number](/StructureDefinition-au-pbsprescribernumber.html). 

While national and registry / exchange service identifiers will define the namespace to use when sending an identifier, a local identifier requires the organisation to define their own namespace when exchanging identifiers they manage.  

When constructing a local identifier it is preferable that an organisation uses their own local system identifier namespace (e.g. "https://local organisation domain/identifier type") but if that is not available then an organisation can use their HPI-O or ABN to construct a legal, globally unique identifier system for some local identifiers.

**HPI-O scoped Identifiers**

HPI-O scoped identifiers enable exchange of an organisation's local identifiers for items such as a patient medical record or a pathology report by combining a dedicated Australian Digital Health Agency published namespace and their HPI-O to construct a legal, globally unique identifier system for their local identifiers.

The full list of available identifier namespaces can be found by browsing the [ns.electronichealth.net.au identifier namespaces](http://ns.electronichealth.net.au/browse-identifiers.html); there are several HPI-O scoped identifier namespaces available:
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
assigner" : {
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

The full list of available identifier namespaces can be found by browsing the [ns.electronichealth.net.au identifier namespaces](http://ns.electronichealth.net.au/browse-identifiers.html); there are two ABN-scoped identifier namespaces available:
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
assigner" : {
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


### Ahpra Data Guidance
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
