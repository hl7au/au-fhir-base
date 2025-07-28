### Intent of This Implementation Guide
This implementation guide does not attempt to constrain for specific use cases. 
Instead it defines representations of how commonly needed concepts, in an Australian context, can be applied generally.

This implementation guide can then be drawn on for specific use cases and further constraints added for the needs of those cases.
By referencing the AU Base definition in downstream implementation guides there is a basic level of alignment in representation across those guides.
This alignment allows general processing and simpler exchange of information from one implementation guide domain to another without the need for extensive integration translation tasks.
This becomes more useful as the number of specific use case implementation guides expands and the potential issues of movement of information into and out of multiple domains of interest is addressed.

This approach manifests as the following representation outcomes in this guide, as follows:
* Cardinality: most representations described have a cardinality as defined in the core FHIR specification (which is general in nature) to avoid required content for use cases that do not need or support the content.
* Must Support: the FHIR profiling Must Support flags are not used in this guide; for similar reasons to the cardinality there is no assertion of required support for any of the elements profiled in this guide.
* Terminology Binding: elements that can be bound to terminology are often sliced to offer one or more specific binding options that can be required in downstream guides; this also provides value sets that are common/suitable for the Australian context. 
* Slice Constraints: in this guide choice or repeating elements are often sliced to define specific profiling options for that element, specific slices needed in downstream guides can be picked up and made required (cardinality), or must support as needed. Slicing on elements is left open to allow other slice profiles to be added as needed.

For a directly implementable usage of AU Base for a general level of capability it is recommended the AU Core implementation guide be considered. AU Core introduces a required level of element support that give a core set of capability that can be implemented and assumed.


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

This guide publishes and maintains rules on how to exchange various business identifiers in Australia as a set of Identifier data type profiles, e.g. [AU PBS Prescriber Number](/StructureDefinition-au-pbsprescribernumber.html). 

While national and registry / exchange service identifiers will define the namespace to use when sending an identifier, a local identifier requires the organisation to define their own namespace when exchanging identifiers they manage.

When constructing a local identifier it is preferable that an organisation uses their own local system identifier namespace (e.g. "https://local organisation domain/identifier type") but if that is not available then an organisation can use their HPI-O or ABN to construct a legal, globally unique identifier system for some local identifiers.

When an organisation has a need to create a stable identifier that is unique within an application, e.g. [AU Patient Internal Identifier](StructureDefinition-au-pi.html), it can do this by including aspects such as software provider, system instance, instance identifier and identifier type when constructing with `Identifier.system` and `Identifier.value`. For example:
   - a single instance of an application assigning patient identifiers: `http://software-provider.com/system-instance/identifiers/patient-id` 
   - a cloud provider assigning patient identifiers for multiple clients: `http://cloud-provider.com/identifiers/patient-id` 
   - an identifier assigned by a tenant within a multi-tenant application: `http://cloud-provider.com/identifiers/tenant-id/patient-id` 

Additional guidance can be found in the [Identifiers](https://hl7.org/fhir/R4/datatypes.html#Identifier) section of the FHIR Specification.

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

The guidance below describes how to represent languages that may be used to communicate about a patient's health including preferred language and if an interpreter is required. This guidance applies to AU Base Patient and AU Base RelatedPerson, and uses the [Interpreter Required](http://hl7.org/fhir/extensions/StructureDefinition-patient-interpreterRequired.html) extension:
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