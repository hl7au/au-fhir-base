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

### Maturing the Baseline
The approach to develop and mature AU Base is outlined below making reference to the [Australian FHIR Maturity Model (AFMM) levels](generalguidance.html#maturity-levels) is shown in the figure below.

 <div> 
    <img src="maturing.png" alt="Maturing the AU Base baseline" style="width:90%"/>
  </div>
*Figure 3: Maturing the AU Base baseline*
<br/>

### FHIR Version Support
AU Base has been based on [FHIR Version R4](https://hl7.org/fhir/R4/index.html) since AU Base version 2.0.0. Prior versions were based on FHIR Version STU3. The next version of FHIR that AU Base will be based on has not been decided. It is under consideration on whether the next supported FHIR version is the upcoming FHIR Version R6 and not R5. As of the publication date, there is no timeline for this update.

### Future Candidate Requirements Under Consideration
The following items are under consideration to add to AU Base.
- **AU Base Family Member History**: The inclusion of an AU Base Family Member History profile is under consideration to support localised, standard representation of family health history in an Australian healthcare context.
 - **AU Base Charge Item**: The inclusion of an AU Base Charge Item profile is under consideration to support localisation of the representation of medical billing information, including MBS codes, to support localised, standard representation of chargeable items in an Australian healthcare context.
- **AU Base NDIS (National Disability Insurance Scheme) Number**: The inclusion of an AU Base profile to define the NDIS Number is under consideration for a future release of AU Base.
- **AU Base Health Insurer Identifier**: The inclusion of an AU Base profile to define a health insurer identifier is under consideration to support consistent, standardised identification of health insurers, including private health insurers, in an Australian healthcare context.
- **Ahpra extensions and content**: The need and the suitability of [Ahpra Profession Details](StructureDefinition-ahpraprofession-details.html) and [Ahpra Registration Details](StructureDefinition-ahpraregistration-details.html) extensions in AU Base is unclear and further consideration will be undertaken, including whether these extensions are appropriately structured to meet current, relevant requirements.
- **AU Base profile policies and governance**: Future versions of AU Base will make reference to policies and conventions for FHIR artefacts. In particular for AU Base, there is interest in further defining the design conventions for AU Base use case profiles and AU Base non-use case profiles. Given the nature and scope of the work across all HL7 AU FHIR implementation guides, there is likely to be an HL7 AU project to develop the material and provide recommendations for enhancing HL7 AU Implementation Guides. This work will address related issues and ensure alignment with governance practices.