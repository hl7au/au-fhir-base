## {{ page.title }}
{:.no_toc}

<!-- TOC -->

* Do not remove this line (it will not be displayed)
{:toc}

# Maturity Levels 
These levels used for this Implementation Guide are associated with the [FHIR Maturity Model](http://build.fhir.org/versions.html#maturity) and adjusted for local use.

The content of this release has been subject to significant review through ballot and other HL7 AU processes and many aspects of it have been implemented and 
subjected to interoperability testing through Connectathons and early adoption. However, the degree of testing has varied. Some resources have been well tested 
in a variety of environments. Others have received relatively little real-world exercise. In general, the infrastructure should be considered to be more stable 
than the resources themselves. Guidance from early implementation will help address these areas.

All artifacts in this specification are assigned a "Maturity Level", known as FMM (after the well known CMM  grades). The FMM level can be used by implementers to judge how advanced - and therefore stable - an artifact is. 
The following FMM levels are defined:

0. The resource or profile (artifact) has been published on the current build. This level is synonymous with Draft.

1. PLUS the artifact produces no warnings during the build process and the responsible WG has indicated that they consider the artifact substantially complete and ready for implementation. 

2. PLUS the artifact has been tested and successfully exchanged between at least three independently developed systems leveraging at least 80% of the core data elements using semi-realistic data and scenarios based on at least one of the declared scopes of the resource (e.g. at a connectathon). These interoperability results must have been reported to and accepted by the responsible working group.

3. PLUS the artifact has been verified by the work group as meeting the [Trial Use Quality Guidelines](http://wiki.hl7.org/index.php?title=DSTU_2_QA_guidelines) and has been subject to a round of formal balloting; has at least 10 implementer comments recorded in the tracker drawn from at least 3 organizations resulting in at least one substantive change

4. PLUS the artifact is published in a formal publication (e.g. a FHIR Implementation Guide), and implemented in multiple prototype projects. As well, the responsible work group agrees the resource is sufficiently stable to require implementer consultation for subsequent non-backward compatible changes.

5. PLUS the artifact has been published in two formal publication release cycles at FMM1+ (i.e. Trial Use level) and has been implemented in at least 5 independent production systems in more than one country

"Normative": the artifact is now considered stable
