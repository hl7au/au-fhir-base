### AU Base Yearly Updates
AU Base will be published yearly. Yearly AU Base updates reflect changes from:
 - HL7 AU projects
   - AU Core
   - AU eRequesting
   - AU Provider Directory
 - requests from the AU FHIR community. 
 
 The approach is outlined in the figure below:

 <div> 
    <img src="yearlyupdate.png" alt="Yearly update of AU Base" style="width:90%"/>
  </div>
*Figure 1: Yearly update of AU Base*
<br/>

#### Maturing the Baseline
The approach to develop and mature AU Base is outlined below making reference to the [FHIR Maturity Level (FMM) levels](generalguidance.html#maturity-levels) is shown in the figure below.

 <div> 
    <img src="maturing.png" alt="Maturing the AU Base baseline" style="width:90%"/>
  </div>
*Figure 3: Maturing the AU Base baseline*
<br/>

#### FHIR Version Support
AU Base has been based on [FHIR Version R4](https://hl7.org/fhir/R4/index.html) since AU Base version 2.0.0. Prior versions were based on FHIR Version STU3. The next version of FHIR that AU Base will be based on has not been decided. It is under consideration on whether the next supported FHIR version is the upcoming FHIR Version R6 and not R5. As of the publication date, there is no timeline for this update.

#### Future Candidate Requirements Under Consideration
The following items are under consideration to add to AU Base.
- **FamilyMemberHistory**: The inclusion of an AU Base FamilyMemberHistory profile is recommended to support localisation of family health history information. Future versions of AU Base will consider this profile to standardise the representation of family health history in Australia.
 - **ChargeItem**: The inclusion of an AU Base ChargeItem profile is recommended to support localisation for representing medical billing information, including MBS codes. Future versions of AU Base will consider this profile to provide consistent representation of chargeable items in the Australian healthcare context.
- **NDIS (National Disability Insurance Scheme) Number**: The inclusion of the NDIS Number Identifier type has been approved for AU Base. Future versions of AU Base will define this identifier to standardise its use in Australian FHIR implementations.
- **State issued Seniors Card Identifier**: The creation of an identifier data type profile for state issued Seniors Cards is under consideration. Further details, examples, and use cases are required to progress this work.
- **Ahpra extensions and content**: Consideration is needed to evaluate the need and the suitability of [Ahpra Profession Details](StructureDefinition-ahpraprofession-details.html) and [Ahpra Registration Details](StructureDefinition-ahpraregistration-details.html) extensions in AU Base, including whether they are appropriately structured to meet relevant requirements.
- **AU Base policies and governance**: Future versions of AU Base will include defined policies and conventions for FHIR artefacts. This may involve an HL7 AU project to develop the material and provide recommendations for enhancing HL7 AU Implementation Guides. This work will address related issues and ensure alignment with governance practices.