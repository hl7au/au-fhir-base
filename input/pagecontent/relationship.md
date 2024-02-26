The FHIR standard defines the capabilities and standardised format for sharing health information, serving as a platform with a set of base resources, frameworks, and APIs. These components are the main building blocks used in a variety of healthcare contexts. However, FHIR by itself does not address specific jurisdictional needs, such as unique identifiers, terminology, or legal requirements.

AU Base expands the FHIR standard to include requirements specific to the Australian context by incorporating national healthcare practices, data standards, and regulations. 

Key features of AU Base include: 

- Introduces Australian-specific concepts to the FHIR standard, including including national [extensions](profiles-and-extensions.html#extensions) and [terminology](terminology.html).
- Provides data type profiles that encapsulate Australian-specific concepts, such as [Australian Address](StructureDefinition-au-address.html) or [Medicare Provider Number](StructureDefinition-au-medicareprovidernumber.html)
- Provides 'Base' profiles, which guide the inclusion of Australian-relevant concepts within specific resource types, for example, which guide the inclusion of Australian-relevant concepts within specific resource types, for example, e.g. [AU Base PractitionerRole](StructureDefinition-au-practitionerrole.html)
- Enhances FHIR standard capabilities without specifically recommending or requiring any particular resource, element, or interaction

AU Base is designed not to impose constraints but rather introduces concepts and extensions for use in an Australian level, providing a flexible framework that can be extended or more narrowly defined by subsequent, more focused implementation guides.

### HL7 AU FHIR specification architecture

The AU Base architecture is designed to serve as a foundational layer within the broader context of FHIR implementations in an Australian healthcare environment. It is important to note that AU Base is definitional in nature and not intended for standalone implementation. Instead, it provides an extension of the FHIR standard by introducing concepts specific to the Australian context. This approach ensures that there is a common understanding and agreement within the community on how to represent and exchange healthcare information in Australia.

AU Base establishes a set of standards and definitions that other Australian realm FHIR Implementation Guides (IGs) are expected to adopt, eliminating the need for redefinition of these concepts in subsequent guides. This way, AU Base plays a key role in how the FHIR standard is used in Australian healthcare, promoting consistency and facilitating the seamless sharing of information without dictating overly specific implementation details.

The figure below shows the hierarchical structure and relationships within the FHIR standards as applied in the Australian healthcare context: 
- At the foundation, we have the **FHIR standard**, which creates a common platform or foundation on which a variety of different solutions are implemented. 
- **AU Base** adapts FHIR to for use in an Australian context introducing relevant concepts and extensions. 
- **AU Core** builds on AU Base to set specific operational standards and profiles for common use within the Australian context. 
- **Use case IGs** (AU eRequesting, AU IPS, etc) tailor these standards to address specific scenarios.

These layers work together to ensure a cohesive, interoperable, and efficient healthcare information system across Australia. 

  <div> 
    <img src="architecture.png" alt="HL7 AU FHIR specification architecture" style="width:85%"/>
  </div>
<br/>



