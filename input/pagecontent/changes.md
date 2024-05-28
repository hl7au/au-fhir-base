### Release TBD
- Expected Publication date: December 2023
- Expected Publication status: Trial Use
- Based on FHIR version: 4.0.1

The changes in this update are in progress and yet to be balloted.

To help implementers, only the more significant changes are listed here.

#### Changes in this version
<ul>
  <li>TBD.</li>
  <li>New profiles:
  <ul>
  <li>None</li>
  </ul>
  </li>
  <li>New extensions:
  <ul>
  <li><a href="StructureDefinition-veteran-status.html">Australian Veteran Status</a> (<a href="https://github.com/hl7au/au-fhir-base/issues/790">au-fhir-base #790</a>)</li>
  </ul>
  </li>
  <li>New value sets:
  <ul>
  <li><a href="ValueSet-rsg-source-document-jurisdiction.html">Common AU Recorded Sex or Gender (RSG) Source Document Jurisdiction</a></li>
  <li><a href="ValueSet-rsg-source-document-type.html">Common AU Recorded Sex or Gender (RSG) Source Document Type</a></li>
  <li><a href="ValueSet-rsg-type.html">Common AU Recorded Sex or Gender Type</a></li>
  <li><a href="ValueSet-au-coverage-type-extended.html">Coverage Type and Self-Pay Codes - AU Extended</a></li>
  <li><a href="ValueSet-au-coverage-selfpay-extended.html">Coverage SelfPay Codes - AU Extended</a></li>
  </ul>
  </li>
  <li>New code systems:
  <ul>
  <li><a href="CodeSystem-rsg-source-document-type.html">AU Recorded Sex or Gender Source Document Type</a></li>
   <li><a href="CodeSystem-rsg-type.html">AU Recorded Sex or Gender Type</a></li>
  <li><a href="CodeSystem-au-coverage-selfpay.html">Coverage SelfPay Codes AU</a></li>
  </ul>
  </li>
  <li>New search parameters:
  <ul>
  <li><a href="SearchParameter-indigenous-status.html">AustralianIndigenousStatus</a></li>
  <li><a href="SearchParameter-encounter-discharge-disposition.html">EncounterDischargeDisposition</a></li>
  <li><a href="SearchParameter-gender-identity.html">GenderIdentity</a> (<a href="https://jira.hl7.org/browse/FHIR-43718">FHIR-43718</a>)</li>
  </ul>
  </li>
  <li>Changes to <a href="StructureDefinition-au-patient.html">AU Base Patient</a>:
    <ul>
      <li>Patient.extension changed to:
          <ul>
            <li>add Individual Pronouns (<a href="https://jira.hl7.org/browse/FHIR-43719">FHIR-43719</a>)</li>
            <li>add Person Recorded Sex Or Gender (RSG) (<a href="https://jira.hl7.org/browse/FHIR-43834">FHIR-43834</a>)</li>
            <li>add Australian Veteran Status</li>
            <li>remove genderIdentity extension and replace it with the Individual Gender Identity extension (<a href="https://jira.hl7.org/browse/FHIR-43718">FHIR-43718</a>)</li>
          </ul>
      </li>    
      <li>Added invariant inv-pat-1 to apply Gender Identity Response value set (<a href="https://jira.hl7.org/browse/FHIR-43718">FHIR-43718</a>)</li>
      <li>Added invariant inv-pat-2 to apply Australian Pronouns value set (<a href="https://jira.hl7.org/browse/FHIR-43719">FHIR-43719</a>)</li>
      <li>Added invariant inv-pat-3 to RSG.type to bind Common AU Recorded Sex or Gender Type (extensible) (<a href="https://jira.hl7.org/browse/FHIR-43834">FHIR-43834</a>).</li>
      <li>Added invariant inv-pat-4 to RSG.sourceDocument.type to bind Common AU Recorded Sex or Gender (RSG) Source Document Type (extensible) (<a href="https://jira.hl7.org/browse/FHIR-43834">FHIR-43834</a>).</li>
      <li>Added invariant inv-pat-5 to RSG.sourceDocument.jurisdiction to bind Common AU Recorded Sex or Gender (RSG) Source Document Jurisdiction (extensible) (<a href="https://jira.hl7.org/browse/FHIR-43834">FHIR-43834</a>).</li>
    </ul> 
  </li>
  <li>Changes to <a href="StructureDefinition-au-relatedperson.html">AU Base RelatedPerson</a>:
    <ul>
      <li>RelatedPerson.extension changed to:
        <ul>
          <li>add Individual Gender Identity (<a href="https://jira.hl7.org/browse/FHIR-43718">FHIR-43718</a>)</li>
          <li>add Individual Pronouns (<a href="https://jira.hl7.org/browse/FHIR-43719">FHIR-43719</a>)</li>
          <li>add Person Recorded Sex Or Gender (<a href="https://jira.hl7.org/browse/FHIR-43834">FHIR-43834</a>)</li>
        </ul>
      </li>
      <li>Added invariant inv-relper-0 to apply Gender Identity Response value set (<a href="https://jira.hl7.org/browse/FHIR-43718">FHIR-43718</a>)</li>
      <li>Added invariant inv-relper-1 to apply Australian Pronouns value set (<a href="https://jira.hl7.org/browse/FHIR-43719">FHIR-43719</a>)</li>
      <li>Added invariant inv-relper-2 to RSG.type to bind Common AU Recorded Sex or Gender Type (extensible) (<a href="https://jira.hl7.org/browse/FHIR-43834">FHIR-43834</a>).</li>
      <li>Added invariant inv-relper-3 to RSG.sourceDocument.type to bind Common AU Recorded Sex or Gender (RSG) Source Document Type (extensible) (<a href="https://jira.hl7.org/browse/FHIR-43834">FHIR-43834</a>).</li>
      <li>Added invariant inv-relper-4 to RSG.sourceDocument.jurisdiction to bind Common AU Recorded Sex or Gender (RSG) Source Document Jurisdiction (extensible) (<a href="https://jira.hl7.org/browse/FHIR-43834">FHIR-43834</a>).</li>
    </ul>
  </li>
  <li>Changes to <a href="StructureDefinition-au-practitioner.html">AU Base Practitioner</a>:
    <ul>
      <li>Practitioner.extension changed to:
        <ul>
          <li>add Individual Gender Identity (<a href="https://jira.hl7.org/browse/FHIR-43718">FHIR-43718</a>)</li>
          <li>add Individual Pronouns (<a href="https://jira.hl7.org/browse/FHIR-43719">FHIR-43719</a>)</li>
          <li>add Person Recorded Sex Or Gender (<a href="https://jira.hl7.org/browse/FHIR-43834">FHIR-43834</a>)</li>
        </ul>
      </li>
      <li>Added invariant inv-pra-2 to apply Gender Identity Response value set (<a href="https://jira.hl7.org/browse/FHIR-43718">FHIR-43718</a>)</li>
      <li>Added invariant inv-pra-3 to apply Australian Pronouns value set (<a href="https://jira.hl7.org/browse/FHIR-43719">FHIR-43719</a>)</li>
      <li>Added invariant inv-pra-4 to RSG.type to bind Common AU Recorded Sex or Gender Type (extensible) (<a href="https://jira.hl7.org/browse/FHIR-43834">FHIR-43834</a>).</li>
      <li>Added invariant inv-pra-5 to RSG.sourceDocument.type to bind Common AU Recorded Sex or Gender (RSG) Source Document Type (extensible) (<a href="https://jira.hl7.org/browse/FHIR-43834">FHIR-43834</a>).</li>
      <li>Added invariant inv-pra-6 to RSG.sourceDocument.type to bind Common AU Recorded Sex or Gender (RSG) Source Document Jurisdiction (extensible) (<a href="https://jira.hl7.org/browse/FHIR-43834">FHIR-43834</a>).</li>
    </ul>
  </li>
  <li>Changed context of extension <a href="StructureDefinition-indigenous-status.html">Australian Indigenous Status</a> to add Person and RelatedPerson.</li>
  <li>Added a guidance page on AU Base relationship with other HL7 AU FHIR implementation guides.</li>
</ul>

### Release 4.1.0
- Publication date: 2023-02-22
- Publication status: Trial Use
- Based on FHIR version: 4.0.1

To help implementers, only the more significant changes are listed here.

#### Changes in this version
<ul>
<li>Changed HL7 AU implementation guide publication structure and format to better align to current HL7 practices.</li>
<li>New profiles:
<ul>
<li><a href="StructureDefinition-au-healthprogramparticipation.html">AU Health Program Participation Summary</a></li>
</ul>
</li>
<li>New extensions:
<ul>
<li><a href="StructureDefinition-result-copies-to.html">Result copies to</a> (<a href="https://github.com/hl7au/au-fhir-base/issues/670">au-fhir-base #670</a>)</li>
</ul>
</li>
<li>New value sets:
<ul>
<li><a href="ValueSet-au-observation-category-extended.html">Observation Category Codes - AU Extended</a></li>
</ul>
</li>
<li>New code systems:
<ul>
<li><a href="CodeSystem-au-observation-category.html">Observation Category Codes AU</a></li>
</ul>
</li>
<li>Removed profiles (migrated to AU Core):
<ul style="-moz-column-count: 3; -moz-column-gap: 20px;  -webkit-column-count: 3;  -webkit-column-gap: 20px;  column-count: 3;  column-gap: 20px;">
    <li>AU Biological Sex Assigned at Birth</li>
    <li>AU Blood Pressure</li>
    <li>AU Body Height</li>
    <li>AU Body Mass Index</li>
    <li>AU Body Temperature</li>
    <li>AU Body Weight</li>
    <li>AU Estimated Date of Delivery</li>
    <li>AU Gestational Age</li>
    <li>AU Gravidity</li>
    <li>AU Head Circumference</li>
    <li>AU Heart Rate</li>
    <li>AU Last Menstrual Period</li>
    <li>AU Oxygen Saturation</li>
    <li>AU Parity</li>
    <li>AU Respiration Rate</li>
    <li>AU Smoking Status</li>
    <li>AU Vital Signs Panel</li>
</ul>
</li>
<li>Changed Patient.extension in <a href="StructureDefinition-au-patient.html">AU Base Patient:</a> to add genderIdentity and change the binding to <a href="https://healthterminologies.gov.au/fhir/ValueSet/gender-identity-response-1">Gender Identity Response</a> (extensible) (<a href="https://github.com/hl7au/au-fhir-base/issues/599">au-fhir-base #599</a>, <a href="https://jira.hl7australia.com/browse/FHIRIG-186">FHIRIG #186</a>).</li>
<li>Changed Encounter.type binding in <a href="StructureDefinition-au-encounter.html">AU Base Encounter</a> to Encounter Type (preferred) (<a href="https://github.com/hl7au/au-fhir-base/issues/382">au-fhir-base #382</a>, <a href="https://jira.hl7australia.com/browse/FHIRIG-191">FHIRIG #191</a>).</li>
<li>Changed Encounter.serviceType binding in <a href="StructureDefinition-au-encounter.html">AU Base Encounter</a> to Service Type (preferred)(<a href="https://github.com/hl7au/au-fhir-base/issues/684">au-fhir-base #684</a>, <a href="https://jira.hl7australia.com/browse/FHIRIG-191">FHIRIG #191</a>).</li>
<li>Technical correction of DiagnosticReport.code binding strength in <a href="StructureDefinition-au-diagnosticreport.html">AU Base Diagnostic Report</a> to preferred (<a href="https://jira.hl7australia.com/browse/FHIRIG-233">FHIRIG #233</a>).</li>
<li>Changed Immunization.statusReason binding in <a href="StructureDefinition-au-immunization.html">AU Base Immunisation</a> to Reason Vaccine Not Administered v3 (<a href="https://github.com/hl7au/au-fhir-base/issues/745">au-fhir-base #745</a>).</li>
<li>Changed Immunization.site.coding cardinality in <a href="StructureDefinition-au-immunization.html">AU Base Immunisation</a> to remove cardinality restriction (<a href="https://jira.hl7australia.com/browse/FHIRIG-242">FHIRIG #242</a>).</li>
<li>Changed Immunization.route.coding cardinality in <a href="StructureDefinition-au-immunization.html">AU Base Immunisation</a> to remove cardinality restriction (<a href="https://jira.hl7australia.com/browse/FHIRIG-242">FHIRIG #242</a>).</li>
<li>Changed Observation.category slicing in <a href="StructureDefinition-au-pathologyresult.html">AU Base Pathology Result</a> to move the preferred binding to a slice for Specific discipline of pathology (<a href="https://github.com/hl7au/au-fhir-base/issues/744">au-fhir-base #744</a>).</li>
<li>Changed <a href="CodeSystem-au-location-physical-type.html">Location Type (Physical) AU</a> to deprecate concept 'vi'.</li>
</ul>


### Release 4.0.0
- Publication date: 2022-05-30
- Publication status: Trial Use
- Based on FHIR version: 4.0.1

To help implementers, only the more significant changes are listed here.

**Changes in this version**
<ul>
<li>Changed the canonical URL to http://terminology.hl7.org.au and applied new OIDs to HL7 AU CodeSystems and ValueSets.</li>
<li>Technical correction to extensions to remove slicing (refactoring).</li>
<li>Changed identifier slices to Identifier profiles in resource profiles.</li>
<li>New extensions: 
<ul style="-moz-column-count: 3; -moz-column-gap: 20px;  -webkit-column-count: 3;  -webkit-column-gap: 20px;  column-count: 3;  column-gap: 20px;">
<li>Address Identifier</li>
<li>AHPRA Profession Details</li>
<li>AHPRA Registration Details</li>
<li>Contact Purpose</li>
<li>Date of Arrival in Australia</li>
<li>Ethnicity</li>
<li>IHI Verified Date</li>
<li>Vaccine Vial Serial Number</li>
<li>Medication Strength</li>
<li>Australian Time Zone</li>
</ul>
</li> 
<li>New profiles:
<ul>
  <li>New resource profiles:
  <ul style="-moz-column-count: 3; -moz-column-gap: 20px;  -webkit-column-count: 3;  -webkit-column-gap: 20px;  column-count: 3;  column-gap: 20px;">
  <li>AU Diagnostic Imaging Report</li>
  <li>AU Diagnostic Imaging Result</li>
  <li>AU Diagnostic Request</li>
  <li>AU Pathology Report</li>
  <li>AU Pathology Result</li>
  <li>AU Base Procedure</li>
  <li>AU Biological Sex Assigned at Birth</li>
  <li>AU Blood Pressure</li>
  <li>AU Body Mass Index</li>
  <li>AU Body Temperature</li>
  <li>AU Heart Rate</li>
  <li>AU Oxygen Saturation</li>
  <li>AU Respiration Rate</li>
  <li>AU Vital Signs Panel</li>
  <li>AU Smoking Status</li>
  <li>AU Estimated Date of Delivery</li>
  <li>AU Gestational Age</li>
  <li>AU Gravidity</li>
  <li>AU Last Menstrual Period</li>
  <li>AU Parity</li>
  </ul>
  </li>
  <li>Identifier type profiles: 
  <ul style="-moz-column-count: 3; -moz-column-gap: 20px;  -webkit-column-count: 3;  -webkit-column-gap: 20px;  column-count: 3;  column-gap: 20px;">
  <li>AU Accession Number</li>
  <li>AU Australian Business Number</li>
  <li>AU Australian Company Number</li>
  <li>AU Australian Registered Body Number</li>
  <li>AU AHPRA Registration Number</li>
  <li>AU Care Agency Employee Identifier</li>
  <li>AU Commonwealth Seniors Health Card Number</li>
  <li>AU CSP Registration Number</li>
  <li>AU Delivery Point Identifier</li>
  <li>AU DVA Number</li>
  <li>AU Employee Number</li>
  <li>AU ETP Prescription Identifier</li>
  <li>AU G-NAF Identifier</li>
  <li>AU Health Care Card Number</li>
  <li>AU HPI-I</li>
  <li>AU HPI-O</li>
  <li>AU IHI</li>
  <li>AU Insurance Member Number</li>
  <li>AU Local Dispense Identifier</li>
  <li>AU Local Order Identifier</li>
  <li>AU Local Prescription Identifier</li>
  <li>AU Local Report Identifier</li>
  <li>AU Location Specific Practice Number</li>
  <li>AU Medical Record Number</li>
  <li>AU Medicare Card Number</li>
  <li>AU Medicare Provider Number</li>
  <li>AU NATA Accreditation Number</li>
  <li>AU NATA Site Number</li>
  <li>AU National Provider Identifier At Organisation</li>
  <li>AU PAI-D Identifier</li>
  <li>AU PAI-O Identifier</li>
  <li>AU PBS Prescriber Number</li>
  <li>AU Pensioner Concession Card Number</li>
  <li>AU Pharmacy Approval Number</li>
  </ul>
  </li>
  </ul>
</li>
<li>New code systems:
<ul style="-moz-column-count: 3; -moz-column-gap: 20px;  -webkit-column-count: 3;  -webkit-column-gap: 20px;  column-count: 3;  column-gap: 20px;">
<li>Contact Purpose</li>
<li>ActCode AU</li>
<li>DegreeLicenseCertificate AU</li>
<li>Location Type (Physical) AU</li>
<li>Location Type AU</li>
</ul>
</li>
<li>New value sets:
<ul style="-moz-column-count: 3; -moz-column-gap: 20px;  -webkit-column-count: 3;  -webkit-column-gap: 20px;  column-count: 3;  column-gap: 20px;">
<li>Contact Purpose</li>
<li>ActEncounterCode - AU Extended</li>
<li>hl7VS-degreeLicenseCertificate - AU Extended</li>
<li>DVA Entitlement</li>
<li>Accession Number Type</li>
<li>Order Identifier Type</li>
<li>Location Type (Physical) - AU Extended</li>
<li>ServiceDeliveryLocationRoleType - AU Extended</li>
</ul>
</li>
<li>Removed profiles:
<ul>
<li>AU Base Device</li>
<li>AU Base Immunisation Recommendation</li>
<li>AU PBS Sponsor</li>
<li>AU Base Observation Age</li>
</ul>
</li>
<li>Removed value sets:
<ul style="-moz-column-count: 3; -moz-column-gap: 20px;  -webkit-column-count: 3;  -webkit-column-gap: 20px;  column-count: 3;  column-gap: 20px;">
<li>Healthcare Service Types SNOMED)</li>
<li>Healthcare Service Roles (SNOMED)</li>
<li>AMT Trade Product</li>
<li>AMT Trade Product Pack</li>
<li>AMT Containered Trade Product Pack</li>
<li>AMT Medicinal Product Unit of Use</li>
<li>AMT Trade Product Unit of Use</li>
<li>AMT Medicinal Product Pack</li>
</ul>
</li>
<li>Changed definition of IHI (AU IHI) to add extension IHI Verified Date.</li>
<li>Changed definition of DVA number (AU DVA Number) to convert invariants to a required binding on Identifier.type of DVA Entitlement (refactoring).</li>
<li>Changed IdentifierTypeAU, added codes "CAEI", "CSPRN", "DVAU", "LRI", "LSPN", "NATAA", "NATAS", "RACSI", "PAN", "GNAF", and "DPID".</li>
<li>Changed RelatedPerson.communication.language binding in AU Base Related Person to Common Languages in Australia (extensible).</li>
<li>Changed Encounter.class binding in AU Base Encounter to ActEncounterCode - AU Extended (extensible).</li>
<li>Changed Location.type binding in AU Base Location to ServiceDeliveryLocationRoleType - AU Extended (extensible).</li>
<li>Changed Location.physicalType in AU Base Location to Location Type (Physical) - AU Extended (preferred).</li>
<li>Changed Location.identifier type in AU Base Location to add AU Location Specific Practice Number.</li>
<li>Changed HealthcareService.identifier type in AU Base Healthcare Service to add AU Residential Aged Care Service Identifier.</li>
<li>Changed HealthcareService.type binding in AU Base Healthcare Service to Service Type (preferred).</li>
<li>Changed HealthcareService.specialty binding in AU Base Healthcare Service to Clinical Specialty (preferred).</li>
<li>Changed HealthcareService.availableTime.availableStartTime and HealthcareService.availableTime.availableEndTime in AU Base Healthcare Service to add the extension Australian Time Zone.</li>
<li>Changed PractitionerRole.availableTime.availableStartTime and PractitionerRole.availableTime.availableEndTime in AU Base Practitioner Role to add the extension Australian Time Zone.</li>
<li>Changed PractitionerRole.code binding in AU Base Practitioner Role to Practitioner Role (preferred).</li>
<li>Changed PractitionerRole.specialty binding in AU Base Practitioner Role to Clinical Specialty (preferred).</li>
<li>Changed Organization.identifier type in AU Base Organization to add AU Pharmacy Approval Number.</li>
<li>Changed Organization.type binding in AU Base Organization to Healthcare Organisation Role Type (preferred).</li>
<li>Changed Organization.contact.purpose binding in AU Base Organization to Contact Purpose (extensible).</li>
<li>Changed Practitioner.identifier type in AU Base Practitioner to add AU Ahpra Registration Number.</li>
<li>Changed Practitioner.qualification.extension in AU Base Practitioner to add extensions Ahpra Profession Details and Ahpra Registration Details.</li>
<li>Changed Practitioner.qualification.identifier type in AU Base Practitioner to add AU Ahpra Registration Number.</li>
<li>Changed Practitioner.qualification.code binding in AU Base Practitioner to hl7VS-degreeLicenseCertificate - AU Extended (preferred).</li>
<li>Changed Patient.extension in AU Base Patient to add extensions Date of Arrival in Australia and interpreterRequired.</li>
<li>Changed Patient.contact.relationship binding in AU Base Patient to Contact Relationship Type (extensible).</li>
<li>Changed Address.extension in Australian Address to add the extension Address Identifier.</li>
<li>Changed Substance.substanceReference to remove type restriction to AU Base Substance.</li>
<li>Changed AllergyIntolerance.code binding in AU Base Allergy Intolerance to version 2 of Indicator of Hypersensitivity or Intolerance to Substance (preferred).</li>
<li>Changed AllergyIntolerance.reaction.exposureRoute binding in AU Base Allergy Intolerance to Route of Administration (preferred).</li>
<li>Changed Condition.bodySite binding strength in AU Base Condition to preferred.</li>
<li>Changed Observation.code in AU Body Height to add a slice for the SNOMED CT concept.</li>
<li>Changed Observation.effective[x] in AU Body Height to restrict the type to dateTime.</li>
<li>Changed Observation.valueQuantity.code binding in AU Body Height to Metric Body Length Units.</li>
<li>Changed Observation.code in AU Body Weight to add a slice for the SNOMED CT concept.</li>
<li>Changed Observation.effective[x] in AU Body Weight to restrict the type to dateTime.</li>
<li>Changed Observation.valueQuantity.code binding in AU Body Weight to Metric Body Weight Units.</li>
<li>Changed Observation.code in AU Head Circumference to add a slice for the SNOMED CT concept.</li>
<li>Changed Observation.effective[x] in AU Head Circumference to restrict the type to dateTime.</li>
<li>Changed Observation.valueQuantity.code binding in AU Head Circumference to Metric Body Length Units.</li>
<li>Changed Observation.bodySite binding in AU Head Circumference to Body Site (preferred).</li>
<li>Retitled AU Base Diagnostic Observation to AU Base Diagnostic Result.</li>
<li>Changed Observation.category cardinality in AU Base Diagnostic Result to 1..*.</li>
<li>Changed Observation.subject cardinality in AU Base Diagnostic Result to 1..1.</li>
<li>Changed Observation.specimen type in AU Base Diagnostic Result to remove AU Base Specimen.</li>
<li>Changed Observation.effective[x] cardinality in AU Base Diagnostic Result to 1..1.</li>
<li>Changed Observation.hasMember in AU Base Diagnostic Result to allow only AU Diagnostic Result, AU Diagnostic Imaging Result, or AU Pathology Result.</li>
<li>Changed Observation.code constraint in AU Assertion of No Relevant Finding from fixed value to required pattern.</li>
<li>Changed Observation.dataAbsentReason cardinality in AU Assertion of No Relevant Finding to remove cardinality constraint.</li>
<li>Changed ServiceRequest.identifier type in AU Base Diagnostic Request from Placer Identifier to AU Local Order Identifier.</li>
<li>Changed ServiceRequest.code binding in AU Base Diagnostic Request to Evaluation Procedure (example).</li>
<li>Changed ServiceRequest.performerType binding in AU Base Diagnostic Request to replace multiple terminology binding slices with a binding to Practitioner Role (preferred).</li>
<li>Changed ServiceRequest.reasonCode binding in AU Base Diagnostic Request to Reason for Request (preferred).</li>
<li>Changed ServiceRequest.bodySite binding in AU Base Diagnostic Request to Body Site (preferred).</li> 
<li>Changed DiagnosticReport.identifier type in AU Base Diagnostic Report from Filler Identifier to AU Local Report, AU Local Order Identifier, and AU Accession Number Identifier.</li>
<li>Changed DiagnosticReport.basedOn type in AU Base Diagnostic Report to add AU Diagnostic Request.</li>
<li>Changed DiagnosticReport.code binding in AU Base Diagnostic Report to Evaluation Procedure (example).</li>
<li>Changed DiagnosticReport.result type in AU Base Diagnostic Report to add AU Diagnostic Result, AU Diagnostic Imaging Result, AU Pathology Result.</li>
<li>Changed Specimen.type, Specimen.collection.method, Specimen.collection.bodySite, and Specimen.container.type terminology constraint to replace the slice with a preferred binding.</li>
<li>Changed BodyStructure.morphology binding strength in AU Base BodyStructure to preferred.</li>
<li>Changed BodyStructure.locationQualifier	 binding in AU Base BodyStructure to Body Site Relative Site Qualifier (preferred).</li>
<li>Changed Immunization.site binding in AU Base Immunisation, moved the binding from Immunization.site.coding to Immunization.site and changed the strength to preferred.</li>
<li>Changed Immunization.route binding in AU Base Immunisation, moved the binding from Immunization.route.coding to Immunization.route and changed the strength to preferred.</li>
<li>Changed Immunization.performer slicing in AU Base Immunisation to remove the slice Immunisation Witnessed By and changed the discriminator to pattern:function.</li>
<li>Changed Immunization.vaccinationProtocol.targetDisease in AU Base Immunisation to remove the slice No Information for Target Disease.</li>
<li>Changed Medication.extension in AU Base Medication to remove extensions Medication Brand Name and Medication Generic Name.</li>
<li>Changed Medication.ingredient.itemReference type in AU Base Medication to remove AU Base Medication and AU Base Substance.</li>
<li>Changed MedicationRequest.extension in AU Base Medication Request to remove extensions Medication Brand Name and Medication Generic Name.</li>
<li>Changed MedicationRequest.medicationReference type in AU Base Medication Request to remove AU Base Medication.</li>
<li>Changed MedicationRequest.reasonCode binding in AU Base Medication Request to Reason for Request (preferred).</li>
<li>Changed MedicationDispense.extension in AU Base Medication Dispense to remove extensions Medication Brand Name and Medication Generic Name.</li>
<li>Changed MedicationDispense.medicationReference type in AU Base Medication Dispense to remove AU Base Medication.</li>
<li>Technical correction to MedicationDispense.dosageInstruction.method in AU Base Medication Dispense to remove partial slice definition.</li>
<li>Changed MedicationDispense.substitution.reason cardinality in AU Base Medication Dispense to 0..1.</li>
<li>Changed MedicationStatement.extension in AU Base Medication Statement to remove extensions Medication Brand Name and Medication Generic Name.</li>
<li>Changed MedicationStatement.medicationReference type in AU Base Medication Statement to remove AU Base Medication.</li>
<li>Changed MedicationStatement.status binding in AU Base Medication Statement to remove Medication Reason Not Taken (preferred).</li>
<li>Changed MedicationAdministration.medicationReference type in AU Base Medication Administration to remove AU Base Medication.</li>
<li>Changed MedicationAdministration.dosage.site binding in AU Base Medication Administration to Body Site (preferred).</li>
<li>Changed MedicationAdministration.dosage.route binding in AU Base Medication Administration to Route of Administration (preferred).</li>
<li>Changed MedicationAdministration.dosage.method binding strength in AU Base Medication Administration to preferred.</li>
<li>Changes specific to moving from STU3 to R4
<ul>
<li>Removed extensions: 
<ul style="-moz-column-count: 3; -moz-column-gap: 20px;  -webkit-column-count: 3;  -webkit-column-gap: 20px;  column-count: 3;  column-gap: 20px;">
<li>Performer Party</li>
<li>Administration Witness</li>
<li>Associated Practitioner Role</li>
<li>Section Author</li>
<li>Related Person Attester Party</li>
<li>Composition Author Role</li>
<li>Condition Recorder</li>
<li>Additional Category</li>
<li>Metadata Source</li>
<li>Encounter Origin Organisation</li>
<li>Encounter Destination Organisation</li>
<li>Healthcare Service Eligibility Detail</li>
<li>Healthcare Service Communication</li>
</ul>
</li>
<li>Changed AU Base Diagnostic Procedure Request to AU Base Diagnostic Request.</li>
<li>Changed AU Base Body Site to AU Base Body Structure.</li>
<li>Changed Encounter.hospitalization.extension in AU Base Encounter to remove Encounter Origin Organisation and Encounter Destination Organisation.</li>
<li>Changed HealthcareService.extension in AU Base Healthcare Service to remove Healthcare Service Eligibility Detail and Healthcare Service Communication.</li>
<li>Changed Composition.extension in AU Base Composition to remove Composition Author Role.</li>
<li>Changed Composition.attester.extension in AU Base Composition to remove Related Person Attester Party.</li>
<li>Changed Composition.section.extension in AU Base Composition to remove Section Author.</li>
<li>Changed AllergyIntolerance.extension in AU Base Allergy Intolerance to remove Author as a RelatedPerson.</li>
<li>Changed Condition.extension in AU Base Condition to remove Condition Recorder.</li>
<li>Changed Observation.extension in AU Base Diagnostic Result to remove Performer Party.</li>
<li>Changed DiagnosticReport.extension in AU Base Diagnostic Report to review Performer Party and Additional Category.</li>
<li>Changed Immunization.vaccinationProtocol.doseStatus in AU Base Immunisation to remove the slice Dose Status Not Available.</li>
<li>Changed MedicationAdministration.performer.extension in AU Base Medication Administration to remove the extension Administration Witness.</li>
<li>Changed MedicationList.extension in AU Base Medication List to remove the extension Authoring Practitioner Role.</li>
</ul>
</li>
</ul>


### Release 1.1.1
- Publication date: 2020-01-21
- Publication status: Trial Use
- Based on FHIR version: 3.0.2

Rebuild of this guide to publish based on FHIR 3.0.2. To help implementers, only the more significant changes are listed here.

**Changes in this version**
<ul>
<li>Added Maturity level (FMM) to profile and extension pages.</li>
<li>New extensions
<ul style="-moz-column-count: 3; -moz-column-gap: 20px;  -webkit-column-count: 3;  -webkit-column-gap: 20px;  column-count: 3;  column-gap: 20px;">
<li>Encounter Description</li>
<li>Authoring Practitioner Role</li>
<li>Encounter Origin Organisation</li>
<li>Encounter Destination Organisation</li>
<li>Associated Practitioner Role</li>
<li>Associated Healthcare Service</li>
<li>Performer Party</li>
<li>Administration Witness</li>
<li>Change Description</li>
<li>Author as a RelatedPerson</li>
<li>Condition Recorder</li>
<li>Additional Category</li>
</ul>
</li>
<li>New profiles:
<ul style="-moz-column-count: 3; -moz-column-gap: 20px;  -webkit-column-count: 3;  -webkit-column-gap: 20px;  column-count: 3;  column-gap: 20px;">
<li>AU Base Encounter</li>
<li>AU Base Immunisation Recommendation</li>
<li>AU Medicine List</li>
<li>AU Base Specimen</li>
<li>AU Assertion of No Relevant Finding</li>
<li>AU Base Diagnostic Procedure Request</li>
<li>AU Base Diagnostic Report</li>
<li>AU Base Diagnostic Observation</li>
<li>AU Base Substance</li>
</ul>
</li>
<li>New code systems: 
<ul>
<li>HL7 V2 Table 0443 - Provider Role (AU Extended).</li>
</ul>
</li>
<li>New value sets:
<ul>
<li>Healthcare Service Types (SNOMED)</li>
<li>v2 Provider Role - AU Extended</li>
</ul>
</li>
<li>Changed HealthcareService.type binding in AU Base Healthcare Service to Healthcare Service Types (SNOMED) (preferred).</li>
<li>Technical correction to fix slicing of elements of type coding or codeable concept by fixing system value.</li>
<li>Changed Immunization.practitioner in AU Base Immunisation to add slices for Immunisation Administered By, Immunisation Approved By, Immunisation Witnessed By.</li>
<li>Changed Immunization.explanation.reason and reasonNotGiven in AU Base Immunisation from slicing to preferred binding (refactoring).</li>
<li>Changed Medication.extension in AU Base Medication to remove extension AU PBS Sponsor.</li>
<li>Changed Medication.form binding in AU Base Medication to Medication Form.</li>
<li>Changed Medication.ingredient.itemReference type in AU Base Medication to allow only AU Base Medication or AU Base Substance.</li>
<li>Changed MedicationRequest.medicationReference type in AU Base MedicationRequest to allow only AU Base Medication.</li>
<li>Changed MedicationDispense.substitution.reason binding in AU Base Medication Dispense to Medicine Substitution Reason.</li>
<li>Changed MedicationStatement.reasonNotTaken binding in AU Base Medication Statement to Medication Reason Not Taken.</li>
<li>Changed MedicationStatement.reasonCode binding in AU Base Medication Statement to Medication Reason Taken.</li>
<li>Changed Observation.code constraint in AU Base Observation Age from required pattern to fixed value.</li>
<li>Changed Condition.code and Condition.evidence.code in AU Base Condition from slicing to preferred binding (refactoring).</li>
<li>Changed Condition.bodySite binding in AU Base Condition to Body Site.</li>
<li>Changed AllergyIntolerance.extension in AU Base Allergy Intolerance to replace Recorder as a RelatedPerson with Author as a RelatedPerson.</li>
<li>Changed AllergyIntolerance.reaction.substance and AllergyIntolerance.reaction.manifestation in AU Base Allergy Intolerance from slicing to preferred binding (refactoring).</li>
<li>Changed Dosage.method binding strength in AU Base Dosage to preferred.</li>
<li>Changed Dosage.additionalInstruction, Dosage.asNeeded[x], Dosage.site, and Dosage.route in AU Base Dosage from slicing to preferred binding (refactoring).</li>
</ul>

### Release 1.0.2
- Publication date: 2019-05-06
- Publication status: Trial Use
- Based on FHIR version: 3.0.1

First official published version of this implementation guide.
