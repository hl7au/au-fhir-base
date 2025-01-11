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

##### Patient Internal Identifier (PI) Profile
The introduction of an AU Patient Internal Identifier profile with Identifier.type = PI (Patient internal identifier) has been requested to support internal system patient identifiers used in diagnostic requests. This proposal aligns with current practices in systems.

##### Family Member History Profile
The addition of an AU Base Family Member History profile has been proposed to align with Australian use cases. 

##### Panel of Observations Guidance
The guidance on representing panels of observations in AU Base diagnostic profiles requires further investigation and community consultation to determine the most appropriate approach for Australian use cases.

##### Discharge Disposition Value Set
The `Encounter.hospitalization.dischargeDisposition` value set requires review to align with updated terminology. Future updates to AU Base will consider this change, including consultation with the implementer community to assess adoption.

##### AU Base Language Support for Healthcare Services
Australian specific language binding may be added to the AU Base HealthcareService profile to align with existing AU Base profiles and support consistent use in downstream implementation guides. Further exploration and testing are required.

##### AU Base ChargeItem Profile
The addition of an AU Base ChargeItem profile has been proposed to support MBS codes and align with Australian use cases.

##### NDIS (National Disability Insurance Scheme) Identification Number
The inclusion of support for the NDIS identification number has been proposed for AU Base to enable standardized use in FHIR for Australian use cases. The NDIS number, sometimes called the reference number, is a unique nine-digit identifier assigned to individuals participating in the scheme. Further requirements gathering and testing are necessary before implementation.

##### State-Issued Seniors Card Identifier
The addition of support for a state-issued Seniors Card identifier has been proposed for inclusion in AU Base to align with Australian use cases and facilitate standardized implementation. Further requirements gathering and collaboration with jurisdictions are needed.