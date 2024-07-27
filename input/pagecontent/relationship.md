### HL7 AU FHIR specifications
 AU Base is designed to serve as a base layer within the broader context of FHIR implementations in an Australian healthcare environment. AU Base is definitional in nature and not intended for standalone implementation. It provides an additional set of localised options in addition to what is available in the FHIR standard including Australian extensions and Australian terminology. AU Base provides a source of truth for nationally agreed Australian concepts in FHIR such as Medicare card number or Australian Indigenous Status. 

Australian realm IGs and implementers are expected to use an AU Base defined concept where one exists instead of redefining locally.

In summary, AU Base:
- defines Australian realm concepts (e.g. Medicare card number) as an additional set of options to what is available in the FHIR standard including extensions and terminology.
- provides ‘Base’ profiles to inform a reader of which added concepts are considered relevant to a particular resource type. 
- does not apply cardinality constraints or required binding strengths that enforce conformance to those concepts except in rare circumstances. Must support flags are not utilised in AU Base profiles.
- does not recommend or mandate any particular resource, element, or interactions.

The context of AU Base within the set of HL7 AU standards is shown in the figure below:
- the **FHIR standard** is the foundation, which creates a common platform or foundation on which a variety of different solutions are implemented. 
- **AU Base** defines local concepts for use in an Australian context introducing relevant identifiers, terminology, extensions. 
- **AU Core** defines a set of conformance requirements that enforce a set of 'minimum requirements' on the local concepts from AU Base through cardinality constraints, required/extensible binding strengths, RESTful API, and conformance requirements.
- **Use case IGs** (e.g AU eRequesting and Provider Directory) build on AU Core to address specific use cases, defining a set of conformance requirements on top of AU Core, using additional building blocks from AU Base as needed.

This layering of IGs balances relative adoption and implementation maturity of FHIR and requirements of the use cases involved.

  <div> 
    <img src="architecture.png" alt="HL7 AU FHIR specification architecture" style="width:85%"/>
  </div>
*Figure 1: Context of AU Base within the set of HL7 AU standards*
<br/>

### Relationship to other IGs

AU Base aligns to, and leverages, international standards and other national standards. Corresponding profiles and extensions included in relevant FHIR implementation guides were reviewed and considered during the development process to ensure alignment and facilitate adoption of this standard. These implementation guides include:
- [HL7 Cross Paradigm Implementation Guide: Gender Harmony - Sex and Gender Representation, Edition 1](https://hl7.org/xprod/ig/uv/gender-harmony/informative1/)
- [International Patient Access 1.0.0](https://hl7.org/fhir/uv/ipa/STU1/)
- [International Patient Summary Implementation Guide 1.1.0](https://hl7.org/fhir/uv/ips/STU1.1/)

The relationship of AU Base to other implementation guides is shown in the figure below. For illustrative purposes one downstream IG (AU Core) is shown.

 <div> 
    <img src="context-colour.png" alt="Relationship to other IGs" style="width:70%"/>
  </div>
*Figure 3: Relationship to Other IGs*
<br/>

Implementation Guide |Relationship
---|---
[AU Core](https://build.fhir.org/ig/hl7au/au-fhir-core/)|This IG defines a set of conformance requirements that enforce a set of 'minimum requirements' on the local concepts from AU Base through cardinality constraints, required/extensible binding strengths, RESTful API, and conformance requirements. AU Core uses AU Base as the basis for profiles that define the FHIR resources to be supported, and the elements, extensions, vocabularies, and value sets that SHALL be present are identified, and how they are used is defined.
[AU Provider Directory](https://build.fhir.org/ig/hl7au/au-fhir-pd/)|This IG defines a set of conformance requirements for the purpose of implementation of provider directory services. AU Provider Directory uses AU Base as the basis for profiles that define the FHIR resources to be supported, and the elements, extensions, vocabularies, and value sets that SHALL be present are identified, and how they are used is defined.
[HL7 Cross Paradigm Implementation Guide: Gender Harmony - Sex and Gender Representation](https://hl7.org/xprod/ig/uv/gender-harmony/informative1/)|This IG provides definitive guidance on how to exchange clinical sex and gender affirming information using HL7 models. Sex and gender concepts from this IG have been reviewed for the potential for adoption in Australia. Where adopted, these concepts are included by reference in AU Base.
[International Patient Access](https://hl7.org/fhir/uv/ipa/STU1/)|This IG describes how an application acting on behalf of a patient can access information about the patient from a clinical records system using a FHIR based API. The profiles in this IG were reviewed and considered during development of AU Base. 
[International Patient Summary Implementation Guide](https://hl7.org/fhir/uv/ips/STU1.1/)|This IG describes specify how to represent in HL7 FHIR the International Patient Summary (IPS). An International Patient Summary (IPS) document is an electronic health record extract containing essential healthcare information about a subject of care. The profiles in this IG were reviewed and considered during development of AU Base. AU Base is designed to be compatible with the data requirements of IPS.
{:.grid}



