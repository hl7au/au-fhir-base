### AU Base Yearly Updates
AU Base will be published a least yearly. AU Base updates reflect changes supporting:
 - HL7 AU projects
   - AU Core
   - AU eRequesting
   - AU Patient Summary
 - Australian FHIR Community Process Projects 
 - Requests from the AU FHIR community. 
 
 The approach is outlined in the figure below:

 <div> 
    <img src="yearlyupdate.png" alt="Update of AU Base" style="width:90%"/>
  </div>
*Figure 1: Update of AU Base*
<br/>

### Maturing the Baseline
The approach to develop and mature AU Base is outlined in the figure below making reference to the [Australian FHIR Maturity Model (AFMM) levels](generalguidance.html#maturity-levels).

 <div> 
    <img src="maturing.png" alt="Maturing the AU Base Baseline" style="width:90%"/>
  </div>
*Figure 3: Maturing the AU Base baseline*
<br/>

### FHIR Version Support
AU Base has been based on [FHIR Version R4](https://hl7.org/fhir/R4/index.html) since AU Base version 2.0.0. Prior versions were based on FHIR Version STU3. The next version of FHIR that AU Base will be based on has not been decided. It is under consideration on whether the next supported FHIR version is the upcoming FHIR Version R6 and not R5. As of the publication date, there is no timeline for this update.

### Future Candidate Requirements Under Consideration
The following items are under consideration to add to AU Base ([Link to Deferred List in Jira](https://jira.hl7.org/issues/?jql=project%20%3D%20FHIR%20AND%20Specification%20%3D%20%22%5BFHIR-au-base%5D%22%20AND%20status%20%3D%20Deferred)).
 - **AU Base Charge Item**: The inclusion of an AU Base Charge Item profile is under consideration to support localisation of the representation of medical billing information, including MBS codes, to support localised, standard representation of chargeable items in an Australian healthcare context. 
- **AU Base Ethnicity**: The inclusion of a CodeableConcept extension to support ethnicity is under consideration. There is concern on the lack of an appropriate terminology, noting the Australian Standard Classification of Cultural and Ethnic Groups (ASCCEG) 2019 has been considered, and the more specific ancestry coding index. Feedback is sought on the suitability of these coding standards in supporting targeted provision of culturally appropriate healthcare services. In addition, a single CodeableConcept extension may not suitable for use when an ethnic identity is comprised of an unstructured string of potentially multiple composites (e.g. 'Of Malaysian and German descent but associates more as a Malay'). Feedback is sought on how to support an unstructured string, including the possibility of a string alternative to cater for narrative or composite text statements. 
- **AU Base Family Member History**: The inclusion of an AU Base Family Member History profile is under consideration to support localised, standard representation of family health history in an Australian healthcare context.
- **AU Base Health Insurer Identifier**: The inclusion of an AU Base profile to define a health insurer identifier is under consideration to support consistent, standardised identification of health insurers, including private health insurers, in an Australian healthcare context.
- **AU Base NDIS (National Disability Insurance Scheme) Number**: The inclusion of an AU Base profile to define the NDIS Number is under consideration for a future release of AU Base.
- **AU Base HSP-O and HAE-O Identifiers**: The inclusion of AU Base datatype profiles to define representations of national identifiers (Australian Digital Health Agency) for Healthcare Support Service Provider Organisation (HSP-O) and Healthcare Administration Entity (HAE) Organsation.