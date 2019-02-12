# {{ page.title }}

## Intent of this Implementation Guide
This implementation guide does not attempt to constrain for specific use cases. 
Instead it defines representations of how commonly needed concepts, in an Australian context, can be applied generally.
This implementation guide can then be drawn on for specific use cases and further constraints added for the needs of those cases.
By referencing the AU Base definition in downstream implementation guides there is a basic level of alignment in representations across those guides.  
This alignment allows general processing and simpler exchange of information from one implementation guide domain to another without the need for extensive integration treanslation tasks.
This becomes more useful as the number of specific use case implementation guides expands and the potential issues of movement of information in an out of multiple domains of interest is addressed.
This approach manifests as the following representation outcomes in this guide, as follows:
* Cardinality:  most representations described have a cardinality as defined in the core FHIR specification (which is general in nature), this is to avoid required content for use cases that do not need or support the content.
* Must Support: the FHIR profiling Must Support flags is not used in this guide; for similar reasons to the cardinality there is no assertion of required support for any of the elements profiled in this guide.
* Terminology Binding: elements that can be bound to terminology are often sliced offering one or more specific binding options that can be required in downstream guides; this also provides valuesets that are common/suitable for the Australian context. 
* Slice Constraints: in this guide choice or repeating elements are often sliced to define specific profiling options for that element, specific slices needed in downstream guides can be picked up and made required (cardinality), or must support as needed. Slicing on elements is left open to allow other slice profiles to be added as needed.

## Maturity Levels 
These levels used for this Implementation Guide are associated with the [FHIR Maturity Model](http://build.fhir.org/versions.html#maturity) and adjusted for local use.

The content of this release has been subject to significant review through ballot and other HL7 AU processes and many aspects of it have been implemented and 
subjected to interoperability testing through Connectathons and early adoption. However, the degree of testing has varied. Some resources have been well tested 
in a variety of environments. Others have received relatively little real-world exercise. In general, the infrastructure should be considered to be more stable 
than the resources themselves. Guidance from early implementation will help address these areas.

All artifacts in this specification are assigned a "Maturity Level", known as FMM (after the well known CMM  grades). The FMM level can be used by implementers to judge how advanced - and therefore stable - an artifact is. 
The following FMM levels are defined:

{:start="0"}
**DRAFT 0** The resource or profile (artifact) has been published on the current build. This level is synonymous with Draft.

**FMM 1** DRAFT 0 PLUS the artifact produces no warnings during the build process and the responsible WG has indicated that they consider the artifact substantially complete and ready for implementation. 

**FMM 2** FMM 1 PLUS the artifact has been tested and successfully exchanged between at least three independently developed systems leveraging at least 80% of the core data elements using semi-realistic data and scenarios based on at least one of the declared scopes of the resource (e.g. at a connectathon). These interoperability results must have been reported to and accepted by the responsible working group.

**FMM 3** FMM 2 PLUS the artifact has been verified by the work group as meeting the [Trial Use Quality Guidelines](http://wiki.hl7.org/index.php?title=DSTU_2_QA_guidelines) and has been subject to a round of formal balloting; has at least 10 implementer comments recorded in the tracker drawn from at least 3 organizations resulting in at least one substantive change

**FMM 4** FMM 3 PLUS the artifact is published in a formal publication (e.g. a FHIR Implementation Guide), and implemented in multiple prototype projects. As well, the responsible work group agrees the resource is sufficiently stable to require implementer consultation for subsequent non-backward compatible changes.

**FMM 5** FMM 5 PLUS the artifact has been published in two formal publication release cycles at FMM1+ (i.e. Trial Use level) and has been implemented in at least 5 independent production systems.

Normative the artifact is now considered stable

Reference should also be made to [Version Management Policy](http://build.fhir.org/versions.html)