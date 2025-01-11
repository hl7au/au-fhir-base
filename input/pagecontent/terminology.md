This page lists ValueSets, CodeSystems, and Concept Maps defined in this specification. It also includes terminology resources used in AU Base, typically published by the [National Clinical Terminology Service (NCTS)](https://www.healthterminologies.gov.au/) or [HL7 Terminology (THO)](https://terminology.hl7.org/).

<div class="stu-note">
Implementers are advised to take note that expansions of value sets visible in this guide may differ from expansions returned with a server using <a href="http://terminology.hl7.org">HL7 Terminology (THO)</a> version 6.0.0 or higher.
</div>

### Value Sets

See the [FHIR terminology section]({{site.data.fhir.path}}terminologies-valuesets.html) for a complete discussion on value sets and a list of value set names used in FHIR.  Many value sets used in this guide are defined in the base FHIR specification. 

The following value sets are unique to this guide and not listed in the base FHIR specification.

<p><strong>Column attribute descriptions are as follows:</strong></p>
<ul>
  <li><strong>ValueSet:</strong> The title of the value set.</li>
  <li><strong>Profiles and Extensions where used:</strong> Identifies the profiles and extensions that reference the value set.</li>
  <li><strong>Available from:</strong> Where the value set is published.</li>
</ul>

<table border="1" cellspacing="0" cellpadding="0" width="100%">
  <thead>
    <tr style="background-color: #f2f2f2;">
      <th>ValueSet</th>
      <th>Profiles and Extensions where used</th>
      <th>Available from</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><a href="ValueSet-accession-number-type.html">Accession Number Type</a></td>
      <td><a href="StructureDefinition-au-accessionnumber.html">AU Accession Number</a></td>
      <td>AU Base</td>
    </tr>
    <tr>
      <td><a href="ValueSet-au-v3-ActEncounterCode-extended.html">ActEncounterCode - AU Extended</a></td>
      <td><a href="StructureDefinition-au-encounter.html">AU Base Encounter</a></td>
      <td>AU Base</td>
    </tr>
    <tr>
      <td><a href="https://healthterminologies.gov.au/fhir/ValueSet/adverse-reaction-agent-1">Adverse Reaction Agent</a></td>
      <td><a href="StructureDefinition-au-allergyintolerance.html">AU Base Allergy Intolerance</a></td>
      <td>NCTS</td>
    </tr>
    <tr>
      <td><a href="ValueSet-amt-mp-codes.html">AMT Medicinal Product and Substances</a></td>
      <td><a href="StructureDefinition-au-medication.html">AU Base Medication</a></td>
      <td>AU Base</td>
    </tr>
    <tr>
      <td><a href="https://healthterminologies.gov.au/fhir/ValueSet/assertion-of-absence-1">Assertion Of Absence</a></td>
      <td><a href="StructureDefinition-au-norelevantfinding.html">AU Assertion of No Relevant Finding</a></td>
      <td>NCTS</td>
    </tr>
    <tr>
      <td><a href="ValueSet-au-timezone.html">AU Time Zone</a></td>
      <td><a href="StructureDefinition-au-timezone.html">Australian Time Zone</a></td>
      <td>AU Base</td>
    </tr>
    <tr>
      <td><a href="https://healthterminologies.gov.au/fhir/ValueSet/australian-immunisation-register-vaccine-1">Australian Immunisation Register Vaccine</a></td>
      <td><a href="StructureDefinition-au-immunization.html">AU Base Immunisation</a></td>
      <td>NCTS</td>
    </tr>
    <tr>
      <td><a href="https://healthterminologies.gov.au/fhir/ValueSet/australian-indigenous-status-1">Australian Indigenous Status</a></td>
      <td><a href="StructureDefinition-indigenous-status.html">Australian Indigenous Status</a></td>
      <td>NCTS</td>
    </tr>
    <tr>
      <td><a href="https://healthterminologies.gov.au/fhir/ValueSet/australian-medication-1">Australian Medication</a></td>
      <td>
        <a href="StructureDefinition-au-medication.html">AU Base Medication</a>, 
        <a href="StructureDefinition-au-medicationadministration.html">AU Base Medication Administration</a>, 
        <a href="StructureDefinition-au-medicationdispense.html">AU Base Medication Dispense</a>, 
        <a href="StructureDefinition-au-medicationrequest.html">AU Base Medication Request</a>, 
        <a href="StructureDefinition-au-medicationstatement.html">AU Base Medication Statement</a>
      </td>
      <td>NCTS</td>
    </tr>
    <tr>
      <td><a href="https://healthterminologies.gov.au/fhir/ValueSet/australian-pronouns-1">Australian Pronouns</a></td>
      <td><a href="http://hl7.org/fhir/StructureDefinition/individual-pronouns">Individual Pronouns</a></td>
      <td>NCTS</td>
    </tr>
    <tr>
      <td><a href="https://healthterminologies.gov.au/fhir/ValueSet/australian-states-territories-2">Australian States and Territories</a></td>
      <td><a href="StructureDefinition-au-address.html">Australian Address</a></td>
      <td>NCTS</td>
    </tr>
    <tr>
      <td><a href="https://healthterminologies.gov.au/fhir/ValueSet/australian-veteran-status-1">Australian Veteran Status</a></td>
      <td><a href="StructureDefinition-veteran-status.html">Australian Veteran Status</a></td>
      <td>NCTS</td>
    </tr>
    <tr>
      <td><a href="https://healthterminologies.gov.au/fhir/ValueSet/body-site-1">Body Site</a></td>
      <td>
        <a href="StructureDefinition-au-bodystructure.html">AU Base Body Structure</a>, 
        <a href="StructureDefinition-au-condition.html">AU Base Condition</a>, 
        <a href="StructureDefinition-au-imagingresult.html">AU Base Diagnostic Imaging Result</a>, 
        <a href="StructureDefinition-au-servicerequest.html">AU Base Service Request</a>, 
        <a href="StructureDefinition-au-dosage.html">AU Base Dosage</a>, 
        <a href="StructureDefinition-au-medicationadministration.html">AU Base Medication Administration</a>, 
        <a href="StructureDefinition-au-procedure.html">AU Base Procedure</a>, 
        <a href="StructureDefinition-au-specimen.html">AU Base Specimen</a>
      </td>
      <td>NCTS</td>
    </tr>
    <tr>
      <td><a href="https://healthterminologies.gov.au/fhir/ValueSet/body-site-relative-site-qualifier-1">Body Site Relative Site Qualifier</a></td>
      <td><a href="StructureDefinition-au-bodystructure.html">AU Base Body Structure</a></td>
      <td>NCTS</td>
    </tr>
    <tr>
      <td><a href="https://healthterminologies.gov.au/fhir/ValueSet/clinical-condition-1">Clinical Condition</a></td>
      <td><a href="StructureDefinition-au-condition.html">AU Base Condition</a></td>
      <td>NCTS</td>
    </tr>
    <tr>
      <td><a href="https://healthterminologies.gov.au/fhir/ValueSet/clinical-finding-1">Clinical Finding</a></td>
      <td>
        <a href="StructureDefinition-au-allergyintolerance.html">AU Base Allergy Intolerance</a>, 
        <a href="StructureDefinition-au-condition.html">AU Base Condition</a>, 
        <a href="StructureDefinition-au-imagingreport.html">AU Base Diagnostic Imaging Report</a>, 
        <a href="StructureDefinition-au-diagnosticreport.html">AU Base Diagnostic Report</a>, 
        <a href="StructureDefinition-au-pathologyreport.html">AU Base Pathology Report</a>
      </td>
      <td>NCTS</td>
    </tr>
    <tr>
      <td><a href="https://healthterminologies.gov.au/fhir/ValueSet/clinical-specialty-1">Clinical Specialty</a></td>
      <td>
        <a href="StructureDefinition-au-healthcareservice.html">AU Base Healthcare Service</a>, 
        <a href="StructureDefinition-au-practitionerrole.html">AU Base Practitioner Role</a>
      </td>
      <td>NCTS</td>
    </tr>
    <tr>
      <td><a href="ValueSet-au-jurisdiction-extended.html">Jurisdiction ValueSet - AU Extended</a></td>
      <td><a href="http://hl7.org/fhir/StructureDefinition/individual-recordedSexOrGender">Person Recorded Sex Or Gender</a></td>
      <td>AU Base</td>
    </tr>
<tr>
    <td><a href="ValueSet-au-jurisdiction-extended.html">Jurisdiction ValueSet - AU Extended</a></td>
    <td><a href="http://hl7.org/fhir/StructureDefinition/individual-recordedSexOrGender">Person Recorded Sex Or Gender</a></td>
    <td>AU Base</td>
</tr>
<tr>
    <td><a href="ValueSet-rsg-source-document-type.html">AU Recorded Sex or Gender (RSG) Source Document Type</a></td>
    <td><a href="http://hl7.org/fhir/StructureDefinition/individual-recordedSexOrGender">Person Recorded Sex Or Gender</a></td>
    <td>AU Base</td>
</tr>
<tr>
    <td><a href="ValueSet-rsg-type.html">AU Recorded Sex or Gender Type</a></td>
    <td><a href="http://hl7.org/fhir/StructureDefinition/individual-recordedSexOrGender">Person Recorded Sex Or Gender</a></td>
    <td>AU Base</td>
</tr>
<tr>
    <td><a href="https://healthterminologies.gov.au/fhir/ValueSet/common-languages-australia-2">Common Languages in Australia</a></td>
    <td><a href="StructureDefinition-au-patient.html">AU Base Patient</a>, <a href="StructureDefinition-au-practitioner.html">AU Base Practitioner</a>, <a href="StructureDefinition-au-relatedperson.html">AU Base Related Person</a></td>
    <td>NCTS</td>
</tr>
<tr>
    <td><a href="https://healthterminologies.gov.au/fhir/ValueSet/concurrent-supply-grounds-1">Concurrent Supply Grounds</a></td>
    <td><a href="StructureDefinition-subsidised-concurrent-supply.html">Subsidised Concurrent Supply</a></td>
    <td>NCTS</td>
</tr>
<tr>
    <td><a href="ValueSet-contact-purpose.html">Contact Purpose</a></td>
    <td><a href="StructureDefinition-au-organization.html">AU Base Organisation</a>, <a href="StructureDefinition-contact-purpose.html">Contact Purpose</a></td>
    <td>AU Base</td>
</tr>
<tr>
    <td><a href="https://healthterminologies.gov.au/fhir/ValueSet/contact-relationship-type-3">Contact Relationship Type</a></td>
    <td><a href="StructureDefinition-au-patient.html">AU Base Patient</a></td>
    <td>NCTS</td>
</tr>
<tr>
    <td><a href="https://healthterminologies.gov.au/fhir/ValueSet/date-accuracy-indicator-1">Date Accuracy Indicator</a></td>
    <td><a href="StructureDefinition-date-accuracy-indicator.html">Date Accuracy Indicator</a>, <a href="StructureDefinition-date-of-arrival.html">Date of Arrival</a></td>
    <td>NCTS</td>
</tr>
<tr>
    <td><a href="ValueSet-dva-entitlement.html">DVA Entitlement</a></td>
    <td><a href="StructureDefinition-au-dvanumber.html">AU DVA Number</a></td>
    <td>AU Base</td>
</tr>
<tr>
    <td><a href="https://healthterminologies.gov.au/fhir/ValueSet/encounter-type-1">Encounter Type</a></td>
    <td><a href="StructureDefinition-au-encounter.html">AU Base Encounter</a></td>
    <td>NCTS</td>
</tr>
<tr>
    <td><a href="https://healthterminologies.gov.au/fhir/ValueSet/evaluation-procedure-1">Evaluation Procedure</a></td>
    <td><a href="StructureDefinition-au-diagnosticreport.html">AU Base Diagnostic Report</a>,
      <a href="StructureDefinition-au-diagnosticresult.html">AU Base Diagnostic Result</a>, 
      <a href="StructureDefinition-au-servicerequest.html">AU Base Service Request</a></td>
    <td>NCTS</td>
</tr>
<tr>
    <td><a href="https://healthterminologies.gov.au/fhir/ValueSet/gender-identity-response-1">Gender Identity Response</a></td>
    <td><a href="http://hl7.org/fhir/StructureDefinition/individual-genderIdentity">Individual Gender Identity</a></td>
    <td>NCTS</td>
</tr>
<tr>
    <td><a href="https://healthterminologies.gov.au/fhir/ValueSet/health-program-participation-status-1">Health Program Participation Status</a></td>
    <td><a href="StructureDefinition-au-healthprogramparticipation.html">AU Health Program Participation Summary</a></td>
    <td>NCTS</td>
</tr>
<tr>
    <td><a href="https://healthterminologies.gov.au/fhir/ValueSet/healthcare-organisation-role-type-1">Healthcare Organisation Role Type</a></td>
    <td><a href="StructureDefinition-au-organization.html">AU Base Organisation</a></td>
    <td>NCTS</td>
</tr>
<tr>
    <td><a href="ValueSet-au-v2-0360-extended.html">hl7VS-degreeLicenseCertificate - AU Extended</a></td>
    <td><a href="StructureDefinition-au-practitioner.html">AU Base Practitioner</a></td>
    <td>AU Base</td>
</tr>
<tr>
    <td><a href="ValueSet-au-v2-0203-extended.html">hl7VS-identifierType - AU Extended</a></td>
    <td><a href="StructureDefinition-au-australianbusinessnumber.html">AU Australian Business Number</a>, <a href="StructureDefinition-au-australiancompanynumber.html">AU Australian Company Number</a>, <a href="StructureDefinition-au-australianregistredbodynumber.html">AU Australian Registered Body Number</a></td>
    <td>AU Base</td>
</tr>
<tr>
    <td><a href="ValueSet-au-v2-0443-extended.html">hl7VS-providerRole - AU Extended</a></td>
    <td><a href="StructureDefinition-au-immunization.html">AU Base Immunisation</a></td>
    <td>AU Base</td>
</tr>
<tr>
    <td><a href="https://healthterminologies.gov.au/fhir/ValueSet/imaging-anatomic-region-of-interest-1">Imaging Anatomic Region Of Interest</a></td>
    <td><a href="StructureDefinition-au-imagingreport.html">AU Base Diagnostic Imaging Report</a>, <a href="StructureDefinition-au-imagingresult.html">AU Base Diagnostic Imaging Result</a></td>
    <td>NCTS</td>
</tr>
<tr>
    <td><a href="https://healthterminologies.gov.au/fhir/ValueSet/imaging-procedure-1">Imaging Procedure</a></td>
    <td><a href="StructureDefinition-au-imagingreport.html">AU Base Diagnostic Imaging Report</a>, <a href="StructureDefinition-au-imagingresult.html">AU Base Diagnostic Imaging Result</a></td>
    <td>NCTS</td>
</tr>
<tr>
    <td><a href="https://healthterminologies.gov.au/fhir/ValueSet/immunisation-anatomical-site-1">Immunisation Anatomical Site</a></td>
    <td><a href="StructureDefinition-au-immunization.html">AU Base Immunisation</a></td>
    <td>NCTS</td>
</tr>
<tr>
    <td><a href="https://healthterminologies.gov.au/fhir/ValueSet/immunisation-route-of-administration-1">Immunisation Route of Administration</a></td>
    <td><a href="StructureDefinition-au-immunization.html">AU Base Immunisation</a></td>
    <td>NCTS</td>
</tr>
<tr>
    <td><a href="https://healthterminologies.gov.au/fhir/ValueSet/indicator-hypersensitivity-intolerance-to-substance-2">Indicator of Hypersensitivity or Intolerance to Substance</a></td>
    <td><a href="StructureDefinition-au-allergyintolerance.html">AU Base Allergy Intolerance</a></td>
    <td>NCTS</td>
</tr>
<tr>
    <td><a href="https://healthterminologies.gov.au/fhir/ValueSet/ihi-record-status-1">Individual Healthcare Identifier Record Status</a></td>
    <td><a href="StructureDefinition-ihi-record-status.html">IHI Record Status</a></td>
    <td>NCTS</td>
</tr>
<tr>
    <td><a href="https://healthterminologies.gov.au/fhir/ValueSet/ihi-status-1">Individual Healthcare Identifier Status</a></td>
    <td><a href="StructureDefinition-ihi-record-status.html">IHI Record Status</a></td>
    <td>NCTS</td>
</tr>
<tr>
    <td><a href="ValueSet-au-location-physical-type-extended.html">Location Type (Physical) - AU Extended</a></td>
    <td><a href="StructureDefinition-au-location.html">AU Base Location</a></td>
    <td>AU Base</td>
</tr>
<tr>
    <td><a href="https://healthterminologies.gov.au/fhir/ValueSet/medication-form-1">Medication Form</a></td>
    <td><a href="StructureDefinition-au-medication.html">AU Base Medication</a></td>
    <td>NCTS</td>
</tr>
<tr>
    <td><a href="https://healthterminologies.gov.au/fhir/ValueSet/medication-reason-taken-1">Medication Reason Taken</a></td>
    <td><a href="StructureDefinition-au-medicationstatement.html">AU Base Medication Statement</a></td>
    <td>NCTS</td>
</tr>
<tr>
    <td><a href="ValueSet-medication-type.html">Medication Type</a></td>
    <td><a href="StructureDefinition-medication-type.html">Medication Type</a></td>
    <td>AU Base</td>
</tr>
<tr>
    <td><a href="ValueSet-medicine-item-change.html">Medicine Item Change</a></td>
    <td><a href="StructureDefinition-au-medlist.html">AU Medicine List</a></td>
    <td>AU Base</td>
</tr>
<tr>
    <td><a href="https://healthterminologies.gov.au/fhir/ValueSet/medicine-substitution-reason-1">Medicine Substitution Reason</a></td>
    <td><a href="StructureDefinition-au-medicationdispense.html">AU Base Medication Dispense</a>, <a href="StructureDefinition-au-medicationrequest.html">AU Base Medication Request</a></td>
    <td>NCTS</td>
</tr>
<tr>
    <td><a href="ValueSet-mims.html">MIMS</a></td>
    <td><a href="StructureDefinition-au-medication.html">AU Base Medication</a>, <a href="StructureDefinition-au-medicationadministration.html">AU Base Medication Administration</a>, <a href="StructureDefinition-au-medicationdispense.html">AU Base Medication Dispense</a>, <a href="StructureDefinition-au-medicationrequest.html">AU Base Medication Request</a>, <a href="StructureDefinition-au-medicationstatement.html">AU Base Medication Statement</a></td>
    <td>AU Base</td>
</tr>
<tr>
    <td><a href="ValueSet-name-context.html">Name Context</a></td>
    <td><a href="StructureDefinition-name-context.html">Name Context</a></td>
    <td>AU Base</td>
</tr>
<tr>
    <td><a href="ValueSet-au-observation-category-extended.html">Observation Category Codes - AU Extended</a></td>
    <td>-</td>
    <td>AU Base</td>
</tr>
<tr>
    <td><a href="ValueSet-order-identifier-type.html">Order Identifier Type</a></td>
    <td><a href="StructureDefinition-au-localorderidentifier.html">AU Local Order Identifier</a></td>
    <td>AU Base</td>
</tr>
<tr>
    <td><a href="https://healthterminologies.gov.au/fhir/ValueSet/participation-in-health-program-1">Participation in Health Program</a></td>
    <td><a href="StructureDefinition-au-healthprogramparticipation.html">AU Health Program Participation Summary</a></td>
    <td>NCTS</td>
</tr>
<tr>
    <td><a href="https://healthterminologies.gov.au/fhir/ValueSet/pathology-diagnostic-service-category-1">Pathology Diagnostic Service Category</a></td>
    <td><a href="StructureDefinition-au-pathologyreport.html">AU Base Pathology Report</a>, <a href="StructureDefinition-au-pathologyresult.html">AU Base Pathology Result</a></td>
    <td>NCTS</td>
</tr>
<tr>
    <td><a href="ValueSet-pbs-item.html">PBS Item Codes</a></td>
    <td><a href="StructureDefinition-au-medication.html">AU Base Medication</a>, <a href="StructureDefinition-au-medicationadministration.html">AU Base Medication Administration</a>, <a href="StructureDefinition-au-medicationdispense.html">AU Base Medication Dispense</a>, <a href="StructureDefinition-au-medicationrequest.html">AU Base Medication Request</a>, <a href="StructureDefinition-au-medicationstatement.html">AU Base Medication Statement</a></td>
    <td>AU Base</td>
</tr>
<tr>
    <td><a href="https://healthterminologies.gov.au/fhir/ValueSet/procedure-1">Procedure</a></td>
    <td><a href="StructureDefinition-au-procedure.html">AU Base Procedure</a></td>
    <td>NCTS</td>
</tr>
<tr>
    <td><a href="https://www.healthterminologies.gov.au/ValueSet/spia-chemical-pathology-refset-3">RCPA - SPIA Chemical Pathology Terminology Reference Set</a></td>
    <td><a href="StructureDefinition-au-pathologyreport.html">AU Base Pathology Report</a>, <a href="StructureDefinition-au-pathologyresult.html">AU Base Pathology Result</a></td>
    <td>NCTS</td>
</tr>
<tr>
    <td><a href="https://www.healthterminologies.gov.au/ValueSet/spia-haematology-refset-3">RCPA - SPIA Haematology Terminology Reference Set</a></td>
    <td><a href="StructureDefinition-au-pathologyreport.html">AU Base Pathology Report</a>, <a href="StructureDefinition-au-pathologyresult.html">AU Base Pathology Result</a></td>
    <td>NCTS</td>
</tr>
<tr>
    <td><a href="https://www.healthterminologies.gov.au/ValueSet/spia-immunopathology-refset-3">RCPA - SPIA Immunopathology Terminology Reference Set</a></td>
    <td><a href="StructureDefinition-au-pathologyreport.html">AU Base Pathology Report</a>, <a href="StructureDefinition-au-pathologyresult.html">AU Base Pathology Result</a></td>
    <td>NCTS</td>
</tr>
<tr>
    <td><a href="https://www.healthterminologies.gov.au/ValueSet/spia-microbiology-serology-molecular-refset-3">RCPA - SPIA Microbiology Serology Molecular Pathology Terminology Reference Set</a></td>
    <td><a href="StructureDefinition-au-pathologyreport.html">AU Base Pathology Report</a>, <a href="StructureDefinition-au-pathologyresult.html">AU Base Pathology Result</a></td>
    <td>NCTS</td>
</tr>
<tr>
    <td><a href="https://healthterminologies.gov.au/fhir/ValueSet/spia-pathology-reporting-1">RCPA SPIA Pathology Reporting</a></td>
    <td><a href="StructureDefinition-au-pathologyreport.html">AU Base Pathology Report</a>, <a href="StructureDefinition-au-pathologyresult.html">AU Base Pathology Result</a></td>
    <td>NCTS</td>
</tr>
<tr>
    <td><a href="https://healthterminologies.gov.au/fhir/ValueSet/reason-non-participation-health-program-1">Reason For Non Participation In Health Program</a></td>
    <td><a href="StructureDefinition-au-healthprogramparticipation.html">AU Health Program Participation Summary</a></td>
    <td>NCTS</td>
</tr>
<tr>
    <td><a href="https://healthterminologies.gov.au/fhir/ValueSet/reason-for-request-1">Reason for Request</a></td>
    <td><a href="StructureDefinition-au-servicerequest.html">AU Base Service Request</a>, <a href="StructureDefinition-au-medicationrequest.html">AU Base Medication Request</a></td>
    <td>NCTS</td>
</tr>
<tr>
    <td><a href="https://healthterminologies.gov.au/fhir/ValueSet/reason-vaccine-administered-1">Reason Vaccine Administered</a></td>
    <td><a href="StructureDefinition-au-immunization.html">AU Base Immunisation</a></td>
    <td>NCTS</td>
</tr>
<tr>
    <td><a href="https://healthterminologies.gov.au/fhir/ValueSet/reason-vaccine-not-administered-3">Reason Vaccine Not Administered</a></td>
    <td><a href="StructureDefinition-au-immunization.html">AU Base Immunisation</a></td>
    <td>NCTS</td>
</tr>
<tr>
    <td><a href="https://healthterminologies.gov.au/fhir/ValueSet/related-person-relationship-type-1">Related Person Relationship Type</a></td>
    <td><a href="StructureDefinition-au-relatedperson.html">AU Base Related Person</a></td>
    <td>NCTS</td>
</tr>
<tr>
    <td><a href="https://healthterminologies.gov.au/fhir/ValueSet/route-of-administration-1">Route of Administration</a></td>
    <td><a href="StructureDefinition-au-allergyintolerance.html">AU Base Allergy Intolerance</a>, <a href="StructureDefinition-au-dosage.html">AU Base Dosage</a>, <a href="StructureDefinition-au-medicationadministration.html">AU Base Medication Administration</a></td>
    <td>NCTS</td>
</tr>
<tr>
    <td><a href="https://healthterminologies.gov.au/fhir/ValueSet/separation-mode-1">Separation Mode</a></td>
    <td><a href="StructureDefinition-au-encounter.html">AU Base Encounter</a></td>
    <td>NCTS</td>
</tr>
<tr>
    <td><a href="ValueSet-service-provision-conditions.html">Service Provision Conditions Australian Concepts</a></td>
    <td><a href="StructureDefinition-au-healthcareservice.html">AU Base Healthcare Service</a></td>
    <td>AU Base</td>
</tr>
<tr>
    <td><a href="https://healthterminologies.gov.au/fhir/ValueSet/service-type-1">Service Type</a></td>
    <td><a href="StructureDefinition-au-encounter.html">AU Base Encounter</a>, <a href="StructureDefinition-au-healthcareservice.html">AU Base Healthcare Service</a></td>
    <td>NCTS</td>
</tr>
<tr>
    <td><a href="ValueSet-au-v3-ServiceDeliveryLocationRoleType-extended.html">ServiceDeliveryLocationRoleType - AU Extended</a></td>
    <td><a href="StructureDefinition-au-location.html">AU Base Location</a></td>
    <td>AU Base</td>
</tr>
<tr>
    <td><a href="https://healthterminologies.gov.au/fhir/ValueSet/specimen-collection-procedure-1">Specimen Collection Procedure</a></td>
    <td><a href="StructureDefinition-au-specimen.html">AU Base Specimen</a></td>
    <td>NCTS</td>
</tr>
<tr>
    <td><a href="https://healthterminologies.gov.au/fhir/ValueSet/specimen-container-type-1">Specimen Container Type</a></td>
    <td><a href="StructureDefinition-au-specimen.html">AU Base Specimen</a></td>
    <td>NCTS</td>
</tr>
<tr>
    <td><a href="https://healthterminologies.gov.au/fhir/ValueSet/specimen-type-1">Specimen Type</a></td>
    <td><a href="StructureDefinition-au-specimen.html">AU Base Specimen</a></td>
    <td>NCTS</td>
</tr>
<tr>
    <td><a href="https://healthterminologies.gov.au/fhir/ValueSet/substance-1">Substance</a></td>
    <td><a href="StructureDefinition-au-substance.html">AU Base Substance</a></td>
    <td>NCTS</td>
</tr>
<tr>
    <td><a href="https://healthterminologies.gov.au/fhir/ValueSet/vaccination-target-disease-1">Vaccination Target Disease</a></td>
    <td><a href="StructureDefinition-au-immunization.html">AU Base Immunisation</a></td>
    <td>NCTS</td>
</tr>
  </tbody>
</table>

### Code Systems

See the [FHIR terminology section]({{site.data.fhir.path}}terminologies-systems.html) for a complete discussion on code systems and a list of code system names used in FHIR. Most code systems used in this guide are defined in the base FHIR specification. 

The following code systems are used in the value sets listed above.

<p><strong>Column attribute descriptions are as follows:</strong></p>
<ul>
  <li><strong>CodeSystem:</strong> The title of a code system.</li>
  <li><strong>ValueSet where used:</strong> The value set(s) that reference the code system.</li>
  <li><strong>Available from:</strong> Where the code system is published.</li>
  <li><strong>Publisher:</strong> Identifies the organisation responsible for maintaining the code system.</li>
</ul>

<table border="1" cellspacing="0" cellpadding="0" width="100%">
  <thead>
    <tr style="background-color: #f2f2f2;">
      <th>CodeSystem</th>
      <th>ValueSet where used</th>
      <th>Available from</th>
      <th>Publisher</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><a href="http://terminology.hl7.org/CodeSystem/v3-ActCode">ActCode</a></td>
      <td><a href="ValueSet-au-v3-ActEncounterCode-extended.html">ActEncounterCode - AU Extended</a></td>
      <td>HL7 Terminology (THO)</td>
      <td>Health Level Seven International</td>
    </tr>
    <tr>
        <td><a href="CodeSystem-au-v3-ActCode.html">ActCode AU</a></td>
        <td><a href="ValueSet-au-v3-ActEncounterCode-extended.html">ActEncounterCode - AU Extended</a></td>
        <td>AU Base</td>
        <td>HL7 Australia</td>
    </tr>
    <tr>
        <td><a href="CodeSystem-rsg-source-document-type.html">AU Recorded Sex or Gender Source Document Type</a></td>
        <td><a href="ValueSet-rsg-source-document-type.html">AU Recorded Sex or Gender (RSG) Source Document Type</a></td>
        <td>AU Base</td>
        <td>HL7 Australia</td>
    </tr>
    <tr>
        <td><a href="CodeSystem-rsg-type.html">AU Recorded Sex or Gender Type</a></td>
        <td><a href="ValueSet-rsg-type.html">AU Recorded Sex or Gender Type</a></td>
        <td>AU Base</td>
        <td>HL7 Australia</td>
    </tr>
    <tr>
        <td><a href="https://www.healthterminologies.gov.au/CodeSystem/anzsic-2006-20130626">Australian and New Zealand Standard Industrial Classification (ANZSIC), 2006 (Revision 2.0)</a></td>
        <td><a href="https://healthterminologies.gov.au/fhir/ValueSet/anzsic-1">Australian And New Zealand Standard Industrial Classification</a></td>
        <td>NCTS</td>
        <td>Australian Bureau of Statistics (ABS)</td>
    </tr>
    <tr>
        <td><a href="https://www.healthterminologies.gov.au/CodeSystem/australian-immunisation-register-vaccine-20221118">Australian Immunisation Register Vaccine</a></td>
        <td><a href="https://healthterminologies.gov.au/fhir/ValueSet/australian-immunisation-register-vaccine-1">Australian Immunisation Register Vaccine</a></td>
        <td>NCTS</td>
        <td>Services Australia</td>
    </tr>
    <tr>
        <td><a href="https://healthterminologies.gov.au/fhir/CodeSystem/australian-indigenous-status-1">Australian Indigenous Status</a></td>
        <td><a href="https://healthterminologies.gov.au/fhir/ValueSet/australian-indigenous-status-1">Australian Indigenous Status</a></td>
        <td>NCTS</td>
        <td>Australian Digital Health Agency</td>
    </tr>
    <tr>
        <td><a href="https://healthterminologies.gov.au/fhir/CodeSystem/australian-states-territories-1">Australian States and Territories</a></td>
        <td><a href="https://healthterminologies.gov.au/fhir/ValueSet/australian-states-territories-2">Australian States and Territories</a></td>
        <td>NCTS</td>
        <td>Australian Digital Health Agency</td>
    </tr>
    <tr>
        <td><a href="https://www.healthterminologies.gov.au/CodeSystem/australian-veteran-status-1">Australian Veteran Status</a></td>
        <td><a href="https://healthterminologies.gov.au/fhir/ValueSet/australian-veteran-status-1">Australian Veteran Status</a></td>
        <td>NCTS</td>
        <td>Australian Digital Health Agency</td>
    </tr>
    <tr>
        <td><a href="https://healthterminologies.gov.au/fhir/CodeSystem/concurrent-supply-grounds-1">Concurrent Supply Grounds</a></td>
        <td><a href="https://healthterminologies.gov.au/fhir/ValueSet/concurrent-supply-grounds-1">Concurrent Supply Grounds</a></td>
        <td>NCTS</td>
        <td>Australian Digital Health Agency</td>
    </tr>
    <tr>
        <td><a href="CodeSystem-contact-purpose.html">Contact Purpose</a></td>
        <td><a href="ValueSet-contact-purpose.html">Contact Purpose</a></td>
        <td>AU Base</td>
        <td>HL7 Australia</td>
    </tr>
    <tr>
        <td><a href="http://terminology.hl7.org/CodeSystem/data-absent-reason">Data Absent Reason</a></td>
        <td>
          <a href="https://healthterminologies.gov.au/fhir/ValueSet/australian-pronouns-1">Australian Pronouns</a>,
          <a href="https://healthterminologies.gov.au/fhir/ValueSet/biological-sex-1">Biological Sex</a>,
          <a href="https://healthterminologies.gov.au/fhir/ValueSet/gender-identity-response-1">Gender Identity Response</a>
        </td>
        <td>HL7 Terminology (THO)</td>
        <td>Health Level Seven International</td>
    </tr>
    <tr>
        <td><a href="https://healthterminologies.gov.au/fhir/CodeSystem/date-accuracy-indicator-1">Date Accuracy Indicator</a></td>
        <td><a href="https://healthterminologies.gov.au/fhir/ValueSet/date-accuracy-indicator-1">Date Accuracy Indicator</a></td>
        <td>NCTS</td>
        <td>Australian Digital Health Agency</td>
    </tr>
    <tr>
        <td><a href="CodeSystem-au-v2-0360.html">DegreeLicenseCertificate AU</a></td>
        <td><a href="ValueSet-au-v2-0360-extended.html">hl7VS-degreeLicenseCertificate - AU Extended</a></td>
        <td>AU Base</td>
        <td>HL7 Australia</td>
    </tr>
    <tr>
        <td><a href="http://terminology.hl7.org/CodeSystem/v2-0074">DiagnosticServiceSectionId</a></td>
        <td><a href="https://healthterminologies.gov.au/fhir/ValueSet/pathology-diagnostic-service-category-1">Pathology Diagnostic Service Category</a></td>
        <td>HL7 Terminology (THO)</td>
        <td>Health Level Seven International</td>
    </tr>
    <tr>
        <td><a href="http://terminology.hl7.org/CodeSystem/v2-0203">IdentifierType</a></td>
        <td><a href="ValueSet-accession-number-type.html">Accession Number Type</a>, <a href="ValueSet-order-identifier-type.html">Order Identifier Type</a>, <a href="ValueSet-au-v2-0203-extended.html">hl7VS-identifierType - AU Extended</a></td>
        <td>HL7 Terminology (THO)</td>
        <td>Health Level Seven International</td>
    </tr>
    <tr>
        <td><a href="CodeSystem-au-v2-0203.html">IdentifierType AU</a></td>
        <td><a href="ValueSet-au-v2-0203-extended.html">hl7VS-identifierType - AU Extended</a>, <a href="ValueSet-dva-entitlement.html">DVA Entitlement</a></td>
        <td>AU Base</td>
        <td>HL7 Australia</td>
    </tr>
    <tr>
        <td><a href="https://healthterminologies.gov.au/fhir/CodeSystem/ihi-record-status-1">Individual Healthcare Identifier Record Status</a></td>
        <td><a href="https://healthterminologies.gov.au/fhir/ValueSet/ihi-record-status-1">Individual Healthcare Identifier Record Status</a></td>
        <td>NCTS</td>
        <td>Australian Digital Health Agency</td>
    </tr>
    <tr>
        <td><a href="https://healthterminologies.gov.au/fhir/CodeSystem/ihi-status-1">Individual Healthcare Identifier Status</a></td>
        <td><a href="https://healthterminologies.gov.au/fhir/ValueSet/ihi-status-1">Individual Healthcare Identifier Status</a></td>
        <td>NCTS</td>
        <td>Australian Digital Health Agency</td>
    </tr>
    <tr>
        <td><a href="https://terminology.hl7.org/CodeSystem-ISO3166Part1.html">ISO3166Part1</a></td>
        <td><a href="ValueSet-au-jurisdiction-extended.html">Jurisdiction ValueSet - AU Extended</a></td>
        <td>HL7 Terminology (THO)</td>
        <td>International Organization for Standardization (ISO)</td>
    </tr>
    <tr>
        <td><a href="https://terminology.hl7.org/6.0.0/CodeSystem-v3-iso3166-2.html">ISO3166_2</a></td>
        <td><a href="ValueSet-au-jurisdiction-extended.html">Jurisdiction ValueSet - AU Extended</a></td>
        <td>HL7 Terminology (THO)</td>
        <td>International Organization for Standardization (ISO)</td>
    </tr>
    <tr>
        <td><a href="http://terminology.hl7.org/CodeSystem/location-physical-type">LocationType</a></td>
        <td><a href="ValueSet-au-location-physical-type-extended.html">Location Type (Physical) - AU Extended</a></td>
        <td>HL7 Terminology (THO)</td>
        <td>Health Level Seven International</td>
    </tr>
    <tr>
        <td><a href="CodeSystem-au-location-physical-type.html">Location Type (Physical) AU</a></td>
        <td><a href="ValueSet-au-location-physical-type-extended.html">Location Type (Physical) - AU Extended</a></td>
        <td>AU Base</td>
        <td>HL7 Australia</td>
    </tr>
    <tr>
        <td><a href="CodeSystem-au-location-type.html">Location Type AU</a></td>
        <td><a href="ValueSet-au-location-physical-type-extended.html">ServiceDeliveryLocationRoleType - AU Extended</a></td>
        <td>AU Base</td>
        <td>HL7 Australia</td>
    </tr>
    <tr>
        <td><a href="https://www.healthterminologies.gov.au/CodeSystem/LOINC-2.77">LOINC</a></td>
        <td>
            <a href="ValueSet-rsg-source-document-type.html">AU Recorded Sex or Gender (RSG) Source Document Type</a>, 
            <a href="ValueSet-rsg-type.html">AU Recorded Sex or Gender Type</a>, 
            <a href="https://www.healthterminologies.gov.au/ValueSet/spia-chemical-pathology-refset-3">RCPA - SPIA Chemical Pathology Terminology Reference Set</a>, 
            <a href="https://www.healthterminologies.gov.au/ValueSet/spia-haematology-refset-3">RCPA - SPIA Haematology Terminology Reference Set</a>, 
            <a href="https://www.healthterminologies.gov.au/ValueSet/spia-immunopathology-refset-3">RCPA - SPIA Immunopathology Terminology Reference Set</a>, 
            <a href="https://www.healthterminologies.gov.au/ValueSet/spia-microbiology-serology-molecular-refset-3">RCPA - SPIA Microbiology Serology Molecular Pathology Terminology Reference Set</a>, 
            <a href="https://healthterminologies.gov.au/fhir/ValueSet/spia-pathology-reporting-1">RCPA SPIA Pathology Reporting</a>
        </td>
        <td>NCTS, HL7 Terminology (THO)</td>
        <td>Regenstrief Institute, Inc</td>
    </tr>
    <tr>
        <td><a href="CodeSystem-medication-type.html">Medication Type</a></td>
        <td><a href="ValueSet-medication-type.html">Medication Type</a></td>
        <td>AU Base</td>
        <td>HL7 Australia</td>
    </tr>
    <tr>
        <td><a href="CodeSystem-medicine-item-change.html">Medicine Item Change</a></td>
        <td><a href="ValueSet-medicine-item-change.html">Medicine Item Change</a></td>
        <td>AU Base</td>
        <td>HL7 Australia</td>
    </tr>
    <tr>
        <td><a href="CodeSystem-mims-external.html">Monthly Index of Medical Specialties (MIMS)</a></td>
        <td><a href="ValueSet-mims.html">MIMS</a></td>
        <td>AU Base</td>
        <td>MIMS Australia Pty Ltd</td>
    </tr>
    <tr>
        <td><a href="CodeSystem-name-context.html">Name Context</a></td>
        <td><a href="ValueSet-name-context.html">Name Context</a></td>
        <td>AU Base</td>
        <td>HL7 Australia</td>
    </tr>
    <tr>
        <td><a href="CodeSystem-au-observation-category.html">Observation Category Codes AU</a></td>
        <td><a href="ValueSet-au-observation-category-extended.html">Observation Category Codes - AU Extended</a></td>
        <td>AU Base</td>
        <td>HL7 Australia</td>
    </tr>
    <tr>
        <td><a href="CodeSystem-pbs-item-external.html">PBS Item Codes</a></td>
        <td><a href="ValueSet-pbs-item.html">PBS Item Codes</a></td>
        <td>AU Base</td>
        <td>Department of Health and Aged Care, Commonwealth of Australia</td>
    </tr>
    <tr>
        <td><a href="http://terminology.hl7.org/CodeSystem/v2-0443">providerRole</a></td>
        <td><a href="ValueSet-au-v2-0443-extended.html">hl7VS-providerRole - AU Extended</a></td>
        <td>HL7 Terminology (THO)</td>
        <td>Health Level Seven International</td>
    </tr>
    <tr>
        <td><a href="CodeSystem-au-v2-0443.html">providerRole AU</a></td>
        <td><a href="ValueSet-au-v2-0443-extended.html">hl7VS-providerRole - AU Extended</a></td>
        <td>AU Base</td>
        <td>HL7 Australia</td>
    </tr>
    <tr>
        <td><a href="http://terminology.hl7.org/CodeSystem/v3-RoleCode">RoleCode</a></td>
        <td><a href="ValueSet-au-v3-ServiceDeliveryLocationRoleType-extended.html">ServiceDeliveryLocationRoleType - AU Extended</a></td>
        <td>HL7 Terminology (THO)</td>
        <td>Health Level Seven International</td>
    </tr>
    <tr>
        <td><a href="https://healthterminologies.gov.au/fhir/CodeSystem/separation-mode-1">Separation Mode</a></td>
        <td><a href="https://healthterminologies.gov.au/fhir/ValueSet/separation-mode-1">Separation Mode</a></td>
        <td>NCTS</td>
        <td>Australian Digital Health Agency</td>
    </tr>
    <tr>
        <td><a href="CodeSystem-service-provision-conditions.html">Service Provision Conditions Australian Concepts</a></td>
        <td><a href="ValueSet-service-provision-conditions.html">Service Provision Conditions Australian Concepts</a></td>
        <td>AU Base</td>
        <td>HL7 Australia</td>
    </tr>
    <tr>
        <td><a href="https://www.healthterminologies.gov.au/CodeSystem/32506021000036107-20240630">SNOMED Clinical Terms (Australian extension)</a></td>
        <td>
            <a href="https://healthterminologies.gov.au/fhir/ValueSet/adverse-reaction-agent-1">Adverse Reaction Agent</a>, 
            <a href="ValueSet-amt-mp-codes.html">AMT Medicinal Product and Substances</a>, 
            <a href="https://healthterminologies.gov.au/fhir/ValueSet/assertion-of-absence-1">Assertion Of Absence</a>, 
            <a href="https://healthterminologies.gov.au/fhir/ValueSet/australian-medication-1">Australian Medication</a>, 
            <a href="ValueSet-rsg-type.html">AU Recorded Sex or Gender Type</a>, 
            <a href="https://healthterminologies.gov.au/fhir/ValueSet/body-site-1">Body Site</a>, 
            <a href="https://healthterminologies.gov.au/fhir/ValueSet/body-site-relative-site-qualifier-1">Body Site Relative Site Qualifier</a>, 
            <a href="https://healthterminologies.gov.au/fhir/ValueSet/clinical-condition-1">Clinical Condition</a>, 
            <a href="https://healthterminologies.gov.au/fhir/ValueSet/clinical-finding-1">Clinical Finding</a>, 
            <a href="https://healthterminologies.gov.au/fhir/ValueSet/clinical-specialty-1">Clinical Specialty</a>, 
            <a href="https://healthterminologies.gov.au/fhir/ValueSet/contact-relationship-type-3">Contact Relationship Type</a>, 
            <a href="https://healthterminologies.gov.au/fhir/ValueSet/encounter-type-1">Encounter Type</a>, 
            <a href="https://healthterminologies.gov.au/fhir/ValueSet/evaluation-procedure-1">Evaluation Procedure</a>, 
            <a href="https://healthterminologies.gov.au/fhir/ValueSet/gender-identity-response-1">Gender Identity Response</a>, 
            <a href="https://healthterminologies.gov.au/fhir/ValueSet/health-program-participation-status-1">Health Program Participation Status</a>, 
            <a href="https://healthterminologies.gov.au/fhir/ValueSet/healthcare-organisation-role-type-1">Healthcare Organisation Role Type</a>, 
            <a href="https://healthterminologies.gov.au/fhir/ValueSet/imaging-procedure-1">Imaging Procedure</a>, 
            <a href="https://healthterminologies.gov.au/fhir/ValueSet/imaging-anatomic-region-of-interest-1">Imaging Anatomic Region Of Interest</a>, 
            <a href="https://healthterminologies.gov.au/fhir/ValueSet/immunisation-anatomical-site-1">Immunisation Anatomical Site</a>, 
            <a href="https://healthterminologies.gov.au/fhir/ValueSet/immunisation-route-of-administration-1">Immunisation Route of Administration</a>, 
            <a href="https://healthterminologies.gov.au/fhir/ValueSet/indicator-hypersensitivity-intolerance-to-substance-2">Indicator of Hypersensitivity or Intolerance to Substance</a>, 
            <a href="https://healthterminologies.gov.au/fhir/ValueSet/medication-form-1">Medication Form</a>, 
            <a href="https://healthterminologies.gov.au/fhir/ValueSet/medication-reason-taken-1">Medication Reason Taken</a>, 
            <a href="https://healthterminologies.gov.au/fhir/ValueSet/medicine-substitution-reason-1">Medicine Substitution Reason</a>, 
            <a href="https://healthterminologies.gov.au/fhir/ValueSet/participation-in-health-program-1">Participation in Health Program</a>, 
            <a href="https://healthterminologies.gov.au/fhir/ValueSet/procedure-1">Procedure</a>, 
            <a href="https://healthterminologies.gov.au/fhir/ValueSet/reason-non-participation-health-program-1">Reason for Non Participation in Health Program</a>, 
            <a href="https://healthterminologies.gov.au/fhir/ValueSet/reason-for-request-1">Reason for Request</a>, 
            <a href="https://healthterminologies.gov.au/fhir/ValueSet/reason-vaccine-administered-1">Reason Vaccine Administered</a>, 
            <a href="https://healthterminologies.gov.au/fhir/ValueSet/reason-vaccine-not-administered-3">Reason Vaccine Not Administered</a>, 
            <a href="https://healthterminologies.gov.au/fhir/ValueSet/related-person-relationship-type-1">Related Person Relationship Type</a>, 
            <a href="https://healthterminologies.gov.au/fhir/ValueSet/service-type-1">Service Type</a>, 
            <a href="https://healthterminologies.gov.au/fhir/ValueSet/specimen-collection-procedure-1">Specimen Collection Procedure</a>, 
            <a href="https://healthterminologies.gov.au/fhir/ValueSet/specimen-container-type-1">Specimen Container Type</a>, 
            <a href="https://healthterminologies.gov.au/fhir/ValueSet/specimen-type-1">Specimen Type</a>, 
            <a href="https://healthterminologies.gov.au/fhir/ValueSet/substance-1">Substance</a>, 
            <a href="https://healthterminologies.gov.au/fhir/ValueSet/vaccination-target-disease-1">Vaccination Target Disease</a>
        </td>
        <td>NCTS</td>
        <td>Australian Digital Health Agency</td>
    </tr>
    <tr>
        <td><a href="https://terminology.hl7.org/CodeSystem-IANATimeZoneDatabase.html">Time Zones</a></td>
        <td><a href="ValueSet-au-timezone.html">AU Time Zone</a></td>
        <td>HL7 Terminology (THO)</td>
        <td>Internet Assigned Numbers Authority (IANA)</td>
    </tr>
  </tbody>
</table>

### Concept Maps

See the [FHIR terminology section]({{site.data.fhir.path}}terminologies-conceptmaps.html) for a complete discussion on concept maps and a list of concept map names used in FHIR.  Most concept maps relevant to this guide are defined in the base FHIR specification. The following Australian concept maps are unique to this guide and not listed in the base FHIR specification. These are relevant to value sets that are bound to AU Base profiles.

**Concept maps published in the NCTS**
- [Australian States and Territories v1 to Australian States and Territories v2](https://healthterminologies.gov.au/fhir/ConceptMap/australian-states-territories-v1-to-v2-1)
- [METeOR Indigenous Status 291036 to Australian Indigenous Status](https://healthterminologies.gov.au/fhir/ConceptMap/meteor-indigenous-291036-to-australian-indigenous-status-2)
- [METeOR Person Gender 635994 to HL7 FHIR AdministrativeGender](https://healthterminologies.gov.au/fhir/ConceptMap/meteor-person-gender-635994-to-hl7-fhir-administrativegender-1)
- [METeOR Person Gender 741825 to HL7 FHIR AdministrativeGender](https://healthterminologies.gov.au/fhir/ConceptMap/meteor-person-gender-741825-to-fhir-administrativegender-1)
- [METeOR Person Sex 635126 to Biological Sex](https://healthterminologies.gov.au/fhir/ConceptMap/meteor-person-sex-635126-to-biological-sex-1)
- [Reason Vaccine Not Administered v1 to Reason Vaccine Not Administered v2](https://healthterminologies.gov.au/fhir/ConceptMap/reason-vaccine-not-administered-v1-to-v2-1)
- [Reason Vaccine Not Administered v2 to Reason Vaccine Not Administered v3](https://healthterminologies.gov.au/fhir/ConceptMap/reason-vaccine-not-administered-v2-to-v3-1)
