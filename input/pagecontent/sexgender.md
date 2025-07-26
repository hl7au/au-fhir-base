This page addresses how sex and gender related concepts can be structured in FHIR and conformant to AU Base. Where possible, AU Base has considered the logical data element models provided by [HL7 International’s Cross Paradigm Implementation Guide: Gender Harmony - Sex and Gender Representation, Edition 1 specification](https://hl7.org/xprod/ig/uv/gender-harmony/informative1/).

The table below provides an overview of the sex and gender related concepts in AU Base.

**Legend:**

<img src="green_checkmark.png" width="20"/> **Supported**<sup>1</sup>: The sex or gender related concept is marked as *Must Support*.

<img src="orange_checkmark.png" width="20"/> **Localised**: The sex or gender related concept is localised for use in an Australian context but is not marked as *Must Support*.

<img src="minus_symbol.png" width="20"/> **Not localised**: The sex or gender related concept is not localised for use in an Australian context.

<table border="1" style="width: 100%; margin: auto; border-collapse: collapse;">
	<thead>
		<tr>
			<th style="width: 12%; text-align: center; vertical-align: middle;">
				Sex and<br/>Gender Concept
			</th>
			<th style="width: 12%; text-align: center; vertical-align: middle;">
				<a href="sexgender.html#administrative-gender-patientgender">
					Administrative Gender<br/>(Patient.gender)
				</a>
			</th>
			<th style="width: 12%; text-align: center; vertical-align: middle;">
				<a href="sexgender.html#name-to-use-ntu">Name to Use</a>
			</th>
			<th style="width: 12%; text-align: center; vertical-align: middle;">
				<a href="sexgender.html#pronouns">Pronouns</a>
			</th>
			<th style="width: 12%; text-align: center; vertical-align: middle;">
				<a href="sexgender.html#gender-identity-gi">Gender Identity</a>
			</th>
			<th style="width: 12%; text-align: center; vertical-align: middle;">
				<a href="sexgender.html#recorded-sex-or-gender">
					Recorded Sex <br/>or Gender
				</a>
			</th>
			<th style="width: 12%; text-align: center; vertical-align: middle;">
				<a href="sexgender.html#sex-assigned-at-birth">
					Sex Assigned <br/>at Birth
				</a>
			</th>
			<th style="width: 12%; text-align: center; vertical-align: middle;">
				<a href="sexgender.html#sex-parameter-for-clinical-use-spcu">
					Sex Parameter<br/>for Clinical Use<br/>(SPCU)
				</a>
			</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td style=" text-align: center; vertical-align: middle;">
				<a href="StructureDefinition-au-patient.html">AU Base<br/>Patient</a>
			</td>
			<td style=" text-align: center; vertical-align: middle;">
				<img src="orange_checkmark.png" width="20"/>
			</td>
			<td style=" text-align: center; vertical-align: middle;">
				<img src="orange_checkmark.png" width="20"/>
			</td>
			<td style=" text-align: center; vertical-align: middle;">
				<img src="orange_checkmark.png" width="20"/>
			</td>
			<td style=" text-align: center; vertical-align: middle;">
				<img src="orange_checkmark.png" width="20"/>
			</td>
			<td style=" text-align: center; vertical-align: middle;">
				<img src="orange_checkmark.png" width="20"/>
			</td>
			<td style=" text-align: center; vertical-align: middle;">
				<img src="orange_checkmark.png" width="20"/>
			</td>
			<td style=" text-align: center; vertical-align: middle;">
				<img src="orange_checkmark.png" width="20"/>
			</td>
		</tr>
		<tr>
			<td style=" text-align: center; vertical-align: middle;">
				<a href="StructureDefinition-au-practitioner.html">AU Base <br/>Practitioner</a>
			</td>
			<td style=" text-align: center; vertical-align: middle;">
				<img src="minus_symbol.png" width="20"/>
			</td>
			<td style=" text-align: center; vertical-align: middle;">
				<img src="orange_checkmark.png" width="20"/>
			</td>
			<td style=" text-align: center; vertical-align: middle;">
				<img src="orange_checkmark.png" width="20"/>
			</td>
			<td style=" text-align: center; vertical-align: middle;">
				<img src="orange_checkmark.png" width="20"/>
			</td>
			<td style=" text-align: center; vertical-align: middle;">
				<img src="orange_checkmark.png" width="20"/>
			</td>
			<td style=" text-align: center; vertical-align: middle;">
				<img src="orange_checkmark.png" width="20"/>
			</td>
			<td style=" text-align: center; vertical-align: middle;">
				<img src="minus_symbol.png" width="20"/>
			</td>
		</tr>
		<tr>
			<td style=" text-align: center; vertical-align: middle;">
				<a href="StructureDefinition-au-relatedperson.html">AU Base<br/> RelatedPerson</a>
			</td>
			<td style=" text-align: center; vertical-align: middle;">
				<img src="minus_symbol.png" width="20"/>
			</td>
			<td style=" text-align: center; vertical-align: middle;">
				<img src="orange_checkmark.png" width="20"/>
			</td>
			<td style=" text-align: center; vertical-align: middle;">
				<img src="orange_checkmark.png" width="20"/>
			</td>
			<td style=" text-align: center; vertical-align: middle;">
				<img src="orange_checkmark.png" width="20"/>
			</td>
			<td style=" text-align: center; vertical-align: middle;">
				<img src="orange_checkmark.png" width="20"/>
			</td>
			<td style=" text-align: center; vertical-align: middle;">
				<img src="orange_checkmark.png" width="20"/>
			</td>
			<td style=" text-align: center; vertical-align: middle;">
				<img src="minus_symbol.png" width="20"/>
			</td>
		</tr>
		<tr>
			<td style=" text-align: center; vertical-align: middle;">
				<a href="StructureDefinition-au-diagnosticreport.html">AU Base<br/> DiagnosticReport</a>
			</td>
			<td style=" text-align: center; vertical-align: middle;">
				<img src="minus_symbol.png" width="20"/>
			</td>
			<td style=" text-align: center; vertical-align: middle;">
				<img src="minus_symbol.png" width="20"/>
			</td>
			<td style=" text-align: center; vertical-align: middle;">
				<img src="minus_symbol.png" width="20"/>
			</td>
			<td style=" text-align: center; vertical-align: middle;">
				<img src="minus_symbol.png" width="20"/>
			</td>
			<td style=" text-align: center; vertical-align: middle;">
				<img src="minus_symbol.png" width="20"/>
			</td>
			<td style=" text-align: center; vertical-align: middle;">
				<img src="minus_symbol.png" width="20"/>
			</td>
			<td style=" text-align: center; vertical-align: middle;">
				<img src="orange_checkmark.png" width="20"/>
			</td>
		</tr>
		<tr>
			<td style=" text-align: center; vertical-align: middle;">
				<a href="StructureDefinition-au-imagingreport.html">AU Base <br/>Diagnostic Imaging <br/>Report</a>
			</td>
			<td style=" text-align: center; vertical-align: middle;">
				<img src="minus_symbol.png" width="20"/>
			</td>
			<td style=" text-align: center; vertical-align: middle;">
				<img src="minus_symbol.png" width="20"/>
			</td>
			<td style=" text-align: center; vertical-align: middle;">
				<img src="minus_symbol.png" width="20"/>
			</td>
			<td style=" text-align: center; vertical-align: middle;">
				<img src="minus_symbol.png" width="20"/>
			</td>
			<td style=" text-align: center; vertical-align: middle;">
				<img src="minus_symbol.png" width="20"/>
			</td>
			<td style=" text-align: center; vertical-align: middle;">
				<img src="minus_symbol.png" width="20"/>
			</td>
			<td style=" text-align: center; vertical-align: middle;">
				<img src="orange_checkmark.png" width="20"/>
			</td>
		</tr>
		<tr>
			<td style=" text-align: center; vertical-align: middle;">
				<a href="StructureDefinition-au-pathologyreport.html">AU Base <br/>Pathology Report</a>
			</td>
			<td style=" text-align: center; vertical-align: middle;">
				<img src="minus_symbol.png" width="20"/>
			</td>
			<td style=" text-align: center; vertical-align: middle;">
				<img src="minus_symbol.png" width="20"/>
			</td>
			<td style=" text-align: center; vertical-align: middle;">
				<img src="minus_symbol.png" width="20"/>
			</td>
			<td style=" text-align: center; vertical-align: middle;">
				<img src="minus_symbol.png" width="20"/>
			</td>
			<td style=" text-align: center; vertical-align: middle;">
				<img src="minus_symbol.png" width="20"/>
			</td>
			<td style=" text-align: center; vertical-align: middle;">
				<img src="minus_symbol.png" width="20"/>
			</td>
			<td style=" text-align: center; vertical-align: middle;">
				<img src="orange_checkmark.png" width="20"/>
			</td>
		</tr>
		<tr>
			<td style=" text-align: center; vertical-align: middle;">
				<a href="StructureDefinition-au-medicationrequest.html">AU Base <br/>MedicationRequest</a>
			</td>
			<td style=" text-align: center; vertical-align: middle;">
				<img src="minus_symbol.png" width="20"/>
			</td>
			<td style=" text-align: center; vertical-align: middle;">
				<img src="minus_symbol.png" width="20"/>
			</td>
			<td style=" text-align: center; vertical-align: middle;">
				<img src="minus_symbol.png" width="20"/>
			</td>
			<td style=" text-align: center; vertical-align: middle;">
				<img src="minus_symbol.png" width="20"/>
			</td>
			<td style=" text-align: center; vertical-align: middle;">
				<img src="minus_symbol.png" width="20"/>
			</td>
			<td style=" text-align: center; vertical-align: middle;">
				<img src="minus_symbol.png" width="20"/>
			</td>
			<td style=" text-align: center; vertical-align: middle;">
				<img src="orange_checkmark.png" width="20"/>
			</td>
		</tr>
		<tr>
			<td style=" text-align: center; vertical-align: middle;">
				<a href="StructureDefinition-au-procedure.html">AU Base <br/>Procedure</a>
			</td>
			<td style=" text-align: center; vertical-align: middle;">
				<img src="minus_symbol.png" width="20"/>
			</td>
			<td style=" text-align: center; vertical-align: middle;">
				<img src="minus_symbol.png" width="20"/>
			</td>
			<td style=" text-align: center; vertical-align: middle;">
				<img src="minus_symbol.png" width="20"/>
			</td>
			<td style=" text-align: center; vertical-align: middle;">
				<img src="minus_symbol.png" width="20"/>
			</td>
			<td style=" text-align: center; vertical-align: middle;">
				<img src="minus_symbol.png" width="20"/>
			</td>
			<td style=" text-align: center; vertical-align: middle;">
				<img src="minus_symbol.png" width="20"/>
			</td>
			<td style=" text-align: center; vertical-align: middle;">
				<img src="orange_checkmark.png" width="20"/>
			</td>
		</tr>
		<tr>
			<td style="text-align: center; vertical-align: middle;">
				<a href="StructureDefinition-au-servicerequest.html">AU Base<br/> ServiceRequest</a>
			</td>
			<td style=" text-align: center; vertical-align: middle;">
				<img src="minus_symbol.png" width="20"/>
			</td>
			<td style=" text-align: center; vertical-align: middle;">
				<img src="minus_symbol.png" width="20"/>
			</td>
			<td style=" text-align: center; vertical-align: middle;">
				<img src="minus_symbol.png" width="20"/>
			</td>
			<td style=" text-align: center; vertical-align: middle;">
				<img src="minus_symbol.png" width="20"/>
			</td>
			<td style=" text-align: center; vertical-align: middle;">
				<img src="minus_symbol.png" width="20"/>
			</td>
			<td style=" text-align: center; vertical-align: middle;">
				<img src="minus_symbol.png" width="20"/>
			</td>
			<td style=" text-align: center; vertical-align: middle;">
				<img src="orange_checkmark.png" width="20"/>
			</td>
		</tr>
	</tbody>
</table>

Notes:
1. AU Base provides national level agreement on core localised concepts but does not force conformance, and therefore, no elements are marked as Must Support. Use case implementation guides may apply conformance requirements to sex and gender concepts, e.g. AU Core, and readers are advised to refer to the corresponding table in the applicable implementation guide for information.


### Administrative Gender (Patient.gender)
AU Base supports representation and exchange of [Administrative Gender](https://hl7.org/fhir/R4/patient.html#gender),  i.e. the basic [Patient.gender](https://hl7.org/fhir/R4/patient-definitions.html#Patient.gender) property, in:
- [AU Base Patient](StructureDefinition-au-patient.html)

In AU Base, the `Patient.gender` value is regarded as a Recorded Sex or Gender. If assertions regarding the nature of the `Patient.gender` value are required, a single instance of the [Person Recorded Sex or Gender](https://hl7.org/fhir/extensions/StructureDefinition-individual-recordedSexOrGender.html) extension can be included with these assertions and its `genderElementQualifier` subelement set to a value of "true".

Example: Patient resource with Patient.gender qualified with Person Recorded Sex or Gender extension
~~~
{
  "resourceType" : "Patient",
  ...
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/individual-recordedSexOrGender",
      "extension" : [
        {
          "url" : "value",
          "valueCodeableConcept" : {
            "coding" : [
              {
                "system" : "http://snomed.info/sct",
                "code" : "248153007",
                "display" : "Male"
              }
            ]
          }
        },
                {
          "url" : "type",
          "valueCodeableConcept" : {
            "coding" : [
              {
                "system" : "http://snomed.info/sct",
                "code" : "1515311000168102",
                "display" : "Biological sex at birth"
              }
            ]
          }
        },
        {
          "url" : "genderElementQualifier",
          "valueBoolean" : true
        }
      ]
    }
  ],
  ...
  "gender" : "male"
}
~~~

### Name to Use (NtU)​
AU Base supports representation and exchange of the Name to Use data element (as defined in the [HL7 Cross Paradigm Implementation Guide: Gender Harmony - Sex and Gender Representation, Edition 1](https://hl7.org/xprod/ig/uv/gender-harmony/informative1/)) in:
- [AU Base Patient](StructureDefinition-au-patient.html)
- [AU Base Practitioner](StructureDefinition-au-practitioner.html)
- [AU Base RelatedPerson](StructureDefinition-au-relatedperson.html)

Name to Use is represented using "usual" in `name.use`. 

Example: RelatedPerson resource with name to use
~~~
{
  "resourceType" : "RelatedPerson",
    ...
    "name" : [
    {
      "use" : "usual",
      "family" : "Franklin",
      "given" : [
        "Stella"
      ]
    }
  ],
  ...
}  
~~~

### Pronouns​
AU Base supports representation and exchange of the Pronouns data element (as defined in the [HL7 Cross Paradigm Implementation Guide: Gender Harmony - Sex and Gender Representation, Edition 1](https://hl7.org/xprod/ig/uv/gender-harmony/informative1/)) in:
- [AU Base Patient](StructureDefinition-au-patient.html)
- [AU Base Practitioner](StructureDefinition-au-practitioner.html)
- [AU Base RelatedPerson](StructureDefinition-au-relatedperson.html)

Pronouns is represented with the [Individual Pronouns](http://hl7.org/fhir/StructureDefinition/individual-pronouns) extension. In AU Base the value element of the [Individual Pronouns](http://hl7.org/fhir/StructureDefinition/individual-pronouns) extension is constrained to be [Australian Pronouns](https://www.healthterminologies.gov.au/integration/R4/fhir/ValueSet/australian-pronouns-1) ([extensible](http://hl7.org/fhir/R4/terminologies.html#extensible)).

When populating the value element of the [Individual Pronouns](http://hl7.org/fhir/StructureDefinition/individual-pronouns) extension:
- *they/them/their/theirs/themselves* may be represented by sending the LOINC Answer (LA) code LA29520-6
- *she/her/her/hers/herself* may be represented by sending the LOINC Answer (LA) code LA29519-8
- *he/him/his/his/himself* may be represented by sending the LOINC Answer (LA) code LA29518-0
- *Prefer not to answer* may be represented by sending the Data Absent Reason code "asked-declined"
- *Asked but not known* may be represented by sending the Data Absent Reason code "asked-unknown"
- *Not stated or inadequately described* may be represented by sending the Data Absent Reason code "unknown"
- Where the workflow does not support obtaining a pronoun, it may be represented by sending the Data Absent Reason code "not-asked"
- Where a pronoun is provided but does not correspond to one of the [Australian Pronouns](https://www.healthterminologies.gov.au/integration/R4/fhir/ValueSet/australian-pronouns-1) terms then a text only or alternative specific coded value can be supplied

Example: Practitioner resource with pronouns
~~~
{
  "resourceType" : "Practitioner",
    ...
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/individual-pronouns",
      "extension" : [
        {
          "url" : "value",
          "valueCodeableConcept" : {
            "coding" : [
              {
                "system" : "http://loinc.org",
                "code" : "LA29519-8",
                "display" : "she/her/her/hers/herself"
              }
            ]
          }
        },
        {
          "url" : "period",
          "valuePeriod" : {
            "start" : "2001-05-06"
          }
        }
      ]
    },
  ...
}  
~~~

Example: Patient resource with prefer not to answer for pronouns
~~~
{
  "resourceType" : "Patient",
    ...
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/individual-pronouns",
      "extension" : [
        {
          "url" : "value",
          "valueCodeableConcept" : {
            "coding" : [
              {
                "system" : "http://terminology.hl7.org/CodeSystem/data-absent-reason",
                "code" : "asked-declined",
              }
            ]
          }
        }
      ]
    },
  ...
}  
~~~


### Gender Identity (GI)
AU Base supports representation and exchange of the Gender Identity data element (as defined in the [HL7 Cross Paradigm Implementation Guide: Gender Harmony - Sex and Gender Representation, Edition 1](https://hl7.org/xprod/ig/uv/gender-harmony/informative1/)) and aligned to [Australian Bureau of Statics Standard for Sex, Gender, Variations of Sex Characteristics and Sexual Orientation Variables, 2020](https://www.abs.gov.au/statistics/standards/standard-sex-gender-variations-sex-characteristics-and-sexual-orientation-variables/latest-release#gender) in:
- [AU Base Patient](StructureDefinition-au-patient.html)
- [AU Base Practitioner](StructureDefinition-au-practitioner.html)
- [AU Base RelatedPerson](StructureDefinition-au-relatedperson.html)

Gender Identity is represented with the [Individual Gender Identity](http://hl7.org/fhir/StructureDefinition/individual-genderIdentity) extension. In AU Base the value element of the [Individual Gender Identity](http://hl7.org/fhir/StructureDefinition/individual-genderIdentity) extension is constrained to be [Gender Identity Response](https://healthterminologies.gov.au/fhir/ValueSet/gender-identity-response-1) value set ([extensible](http://hl7.org/fhir/R4/terminologies.html#extensible)).

When populating the value element of the [Individual Gender Identity](http://hl7.org/fhir/StructureDefinition/individual-genderIdentity) extension:
  - *Man or male* may be represented by sending the SNOMED CT code 446151000124109\|Identifies as male gender\|
  - *Woman or female* may be represented by sending the SNOMED CT code 446141000124107\|Identifies as female gender\|
  - *Non-binary* may be represented by sending the SNOMED CT code 33791000087105\|Identifies as nonbinary gender\|
  - *[I/They] use a different term (please specify)*  may be represented by sending only `text` and no `coding`
  - *Prefer not to answer* may be represented by sending the Data Absent Reason code "asked-declined"
  - *Not stated or inadequately described* may be represented by sending the Data Absent Reason code "unknown"
  - Where the workflow does not support obtaining a gender identity value, it may be represented by sending the Data Absent Reason code "not-asked"

Example: Patient resource with gender identity
~~~
{
  "resourceType" : "Patient",
    ...
    "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/individual-genderIdentity",
      "extension" : [
        {
          "url" : "value",
          "valueCodeableConcept" : {
            "coding" : [
              {
                "system" : "http://snomed.info/sct",
                "code" : "446141000124107",
                "display" : "Identifies as female gender (finding)"
              }
            ]
          }
        }
      ]
    },
  ...
}  
~~~


### Recorded Sex or Gender
AU Base supports representation and exchange of the Recorded Sex or Gender (RSG) data element (as defined in the [HL7 Cross Paradigm Implementation Guide: Gender Harmony - Sex and Gender Representation, Edition 1](https://hl7.org/xprod/ig/uv/gender-harmony/informative1/)) in:
- [AU Base Patient](StructureDefinition-au-patient.html)
- [AU Base Practitioner](StructureDefinition-au-practitioner.html)
- [AU Base RelatedPerson](StructureDefinition-au-relatedperson.html)

RSG is represented with the [Person Recorded Sex or Gender](https://hl7.org/fhir/extensions/StructureDefinition-individual-recordedSexOrGender.html) extension. In AU Base:
- the type element is constrained to be [AU Recorded Sex or Gender Type](ValueSet-rsg-type.html) ([extensible](http://hl7.org/fhir/R4/terminologies.html#extensible))
- the sourceDocument element is constrained to be [AU Recorded Sex or Gender (RSG) Source Document Type](ValueSet-rsg-source-document-type.html) ([extensible](http://hl7.org/fhir/R4/terminologies.html#extensible))
- the jurisdiction element is constrained to be [Jurisdiction ValueSet - AU Extended](ValueSet-au-jurisdiction-extended.html) ([extensible](http://hl7.org/fhir/R4/terminologies.html#extensible))

RSG information includes the various sex and gender concepts that are often used in existing systems but are known to not reliably represent a gender identity, sex parameter for clinical use, or attributes related to sexuality, such as sexual orientation, sexual activity, or sexual attraction. When populating recorded sex or gender it is important to select a meaningful terminology for the value element of the [Person Recorded Sex or Gender](https://hl7.org/fhir/extensions/StructureDefinition-individual-recordedSexOrGender.html) extension. For example, when representing a biological sex value it is recommended to use a biological sex value set. See [Sex Assigned at Birth](sexgender.html#sex-assigned-at-birth) for specific guidance on the representation of Sex Assigned at Birth.

Example: Patient resource with recorded gender from a passport
~~~
{
  "resourceType" : "Patient",
    ...
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/individual-recordedSexOrGender",
      "extension" : [
        {
          "url" : "value",
          "valueCodeableConcept" : {
            "coding" : [
              {
                "system" : "http://hl7.org/fhir/administrative-gender",
                "code" : "female"
              }
            ]
          }
        },
        {
          "url" : "type",
          "valueCodeableConcept" : {
            "coding" : [
              {
                "system" : "http://loinc.org",
                "code" : "46098-0"
              }
            ]
          }
        },
        {
          "url" : "effectivePeriod",
          "valuePeriod" : {
            "start" : "2024-12-25"
          }
        },
        {
          "url" : "sourceDocument",
          "valueCodeableConcept" : {
            "coding" : [
              {
                "system" : "http://terminology.hl7.org.au/CodeSystem/rsg-source-document-type",
                "code" : "passport"
              }
            ]
          }
        },
        {
          "url" : "sourceField",
          "valueString" : "Sex"
        },
        {
          "url" : "jurisdiction",
          "valueCodeableConcept" : {
            "coding" : [
              {
                "system" : "urn:iso:std:iso:3166",
                "code" : "AU",
                "display" : "Australia"
              }
            ]
          }
        }
      ]
    }
  ],
  ...
}  
~~~

### Sex Assigned at Birth
AU Base supports representation and exchange of the Sex Assigned at Birth data element (as defined in the [HL7 Cross Paradigm Implementation Guide: Gender Harmony - Sex and Gender Representation, Edition 1](https://hl7.org/xprod/ig/uv/gender-harmony/informative1/)) in:
- [AU Base Patient](StructureDefinition-au-patient.html)
- [AU Base Practitioner](StructureDefinition-au-practitioner.html)
- [AU Base RelatedPerson](StructureDefinition-au-relatedperson.html)

Sex Assigned at Birth is represented with the [Person Recorded Sex or Gender](https://hl7.org/fhir/extensions/StructureDefinition-individual-recordedSexOrGender.html) extension:
- the type element is populated with the SNOMED CT code 1515311000168102\|Biological sex at birth\|
- the value element is constrained to be [Biological Sex](https://healthterminologies.gov.au/fhir/ValueSet/biological-sex-1) ([extensible](http://hl7.org/fhir/R4/terminologies.html#extensible))

<p class="stu-note">The FHIR Work Group is interested in views on whether <a href="https://healthterminologies.gov.au/fhir/ValueSet/biological-sex-1">Biological Sex</a> value set should be a required binding in future releases of AU Base. Please join a meeting or contact the FHIR Work Group if you have any views or perspectives on this.</p>

When populating the value element of the [Person Recorded Sex or Gender](https://hl7.org/fhir/extensions/StructureDefinition-individual-recordedSexOrGender.html) extension for Sex Assigned at Birth:
  - *Male* may be represented by sending the SNOMED CT code 248153007\|Male\|
  - *Female* may be represented by sending the SNOMED CT code 248152002\|Female\|
  - *Intersex* may be represented by sending the SNOMED CT code 32570691000036108\|Intersex\|
  - *Indeterminate sex* may be represented by sending the SNOMED CT code 32570681000036106\|Indeterminate sex\|
  - *Prefer not to answer* may be represented by sending the Data Absent Reason code "asked-declined"
  - *Asked but not known* may be represented by sending the Data Absent Reason code "asked-unknown"
  - *Not stated or inadequately described* may be represented by sending the Data Absent Reason code "unknown"
  - Where the workflow does not support obtaining a sex at birth, it may be represented by sending the Data Absent Reason code "not-asked"

Example: Patient resource with Sex Assigned at Birth from birth certificate
~~~
{
  "resourceType" : "Patient",
    ...
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/individual-recordedSexOrGender",
      "extension" : [
        {
          "url" : "value",
          "valueCodeableConcept" : {
            "coding" : [
              {
                "system" : "http://snomed.info/sct",
                "code" : "248153007",
                "display" : "Male"
              }
            ]
          }
        },
        {
          "url" : "type",
          "valueCodeableConcept" : {
            "coding" : [
              {
                "system" : "http://snomed.info/sct",
                "code" : "1515311000168102",
                "display" : "Biological sex at birth"
              }
            ]
          }
        },
        {
          "url" : "effectivePeriod",
          "valuePeriod" : {
            "start" : "1974-12-25"
          }
        },
        {
          "url" : "acquisitionDate",
          "valueDateTime" : "2005-12-06"
        },
        {
          "url" : "sourceDocument",
          "valueCodeableConcept" : 
          {
            "coding" : [
              {
                "system" : "http://loinc.org",
                "code" : "71230-7",
                "display" : "Birth certificate"
              },
              {
                "system" : "http://snomed.info/sct",
                "code" : "444561001",
                "display" : "Birth certificate"
              }
            ],
            "text" : "Scan of birth certificate"
          }
        },
        {
          "url" : "sourceField",
          "valueString" : "Sex"
        },
        {
          "url" : "jurisdiction",
          "valueCodeableConcept" : {
            "coding" : [
              {
                "system" : "https://healthterminologies.gov.au/fhir/CodeSystem/australian-states-territories-1",
                "code" : "QLD"
              }
            ]
          }
        },
        {
          "url" : "comment",
          "valueString" : "Patient transitioned from male to female in 2001, but their birth certificate still indicates male."
        }
      ]
    },
  ...
}  
~~~

### Sex Parameter for Clinical Use (SPCU)
AU Base supports representation and exchange of Sex Parameter for Clinical Use (SPCU) information (as defined by the [HL7 Cross Paradigm Implementation Guide: Gender Harmony - Sex and Gender Representation, Edition 1](https://hl7.org/xprod/ig/uv/gender-harmony/informative1/)) in:
- [AU Base DiagnosticReport](StructureDefinition-au-diagnosticreport.html)
- [AU Base Diagnostic Imaging Report](StructureDefinition-au-imagingreport.html)
- [AU Base Pathology Report](StructureDefinition-au-pathologyreport.html)
- [AU Base MedicationRequest](StructureDefinition-au-medicationrequest.html)
- [AU Base Patient](StructureDefinition-au-patient.html)
- [AU Base Procedure](StructureDefinition-au-procedure.html)
- [AU Base ServiceRequest](StructureDefinition-au-servicerequest.html)

Sex Parameter for Clinical Use provides exchange of a physical sex category to inform clinical care where required.

Sex Parameter for Clinical Use is represented in FHIR with the [Patient Sex Parameter For Clinical Use](http://hl7.org/fhir/extensions/StructureDefinition-patient-sexParameterForClinicalUse.html) extension:
  - the value element is constrained to be [Sex Parameter for Clinical Use](http://terminology.hl7.org/ValueSet/sex-parameter-for-clinical-use) ([required](http://hl7.org/fhir/R4/terminologies.html#required))

#### General
- A patient may have multiple SPCU values at any one time. These may have overlapping or non-overlapping periods and have different sex parameter values depending on the clinical context.
- When populating the Patient Sex Parameter For Clinical Use extension, it is recommended to include either the [`comment`](https://hl7.org/fhir/extensions/StructureDefinition-patient-sexParameterForClinicalUse-definitions.html#Extension.extension:comment) or [`intendedClinicalUse`](https://build.fhir.org/ig/HL7/fhir-extensions/StructureDefinition-patient-sexParameterForClinicalUse-definitions.html#Extension.extension:intendedClinicalUse) sub-element to indicate the clinical context for the SPCU value.
- Care should be taken to ensure that SPCU values in an AU Base resource instance are consistent with any SPCU values present in referenced FHIR resources. For example, an instance of AU MedicationRequest may hold an SPCU element with a value of "female-typical" while also referencing a Patient resource instance (in MedicationRequest.subject) which holds an SPCU value with a value of "male-typical" and a comment or intendedClinicalUse indicating that the SPCU value applies to all prescribed medications.
- Duplication of SPCU values is possible as they may be present both in a Patient resource and in resources that reference the Patient. This duplication may be desirable (e.g. for increased visibility) or unnecessary, depending on the use case.
- Implementers who wish to only include the SPCU value in a Patient resource and not in other resources may consider using a reference to a contained Patient resource. For example, instead of including an SPCU value directly in a MedicationRequest, the `MedicationRequest.subject` element could reference a contained Patient resource that includes the SPCU value.

#### Typical Usage
- **AU Base DiagnosticReport, AU Base Diagnostic Imaging Report, AU Base Pathology Report** - Inclusion of SPCU values in AU Base DiagnosticReport, AU Base Diagnostic Imaging Report or AU Base Pathology Report instances indicates that the sex parameter is relevant to the particular report.
- **AU Base MedicationRequest** - Inclusion of SPCU values in AU Base MedicationRequest instances indicates that the sex parameter is relevant to the medication request e.g. it informs dosage or use when pregnant.
- **AU Base Patient** - When exchanging AU Base Patient instances that include SPCU values, but are not directly linked to a clinical context or intended clinical use (e.g. a Patient Administration System), it is recommended that the [`comment`](https://hl7.org/fhir/extensions/StructureDefinition-patient-sexParameterForClinicalUse-definitions.html#Extension.extension:comment) or [`intendedClinicalUse`](https://build.fhir.org/ig/HL7/fhir-extensions/StructureDefinition-patient-sexParameterForClinicalUse-definitions.html#Extension.extension:intendedClinicalUse) sub-elements always be included and hold a value that provides the clinical context and/or appropriate clinical uses for the SPCU value.
- **AU Base Procedure** - Inclusion of SPCU values in AU Base Procedure instances indicates that the sex parameter was relevant to the procedure e.g. consideration of typically male or female anatomy.
- **AU Base ServiceRequest** - Inclusion of SPCU values in AU Base ServiceRequest instances indicates that the sex parameter is relevant to the service request e.g. flagging that checking for pregnancy may be required for a particular radiology test.

<p class="stu-note">The FHIR Work Group is interested in feedback from adopters and implementers regarding their experiences with SPCU. In particular, feedback is sought regarding:
&bull; If additional guidance or examples are required.
&bull; If SPCU should explicitly be included in any other AU Base profiles in future releases of AU Base.
The guidance on this page assumes the availability of the <code class=" highlighter-rouge language-plaintext">intendedClinicalUse</code> sub-element, added to the SPCU extension included in the September 2025 ballot of the HL7 International FHIR Extensions Pack.
</p>

Example: Patient resource with Sex Parameter for Clinical Use
~~~
{
   "resourceType":"Patient",
   ...
   "extension":[
      {
         "url":"http://hl7.org/fhir/StructureDefinition/patient-sexParameterForClinicalUse",
         "extension":[
            {
               "url":"value",
               "valueCodeableConcept":{
                  "coding":[
                     {
                        "system":"http://terminology.hl7.org/CodeSystem/sex-parameter-for-clinical-use",
                        "code":"female-typical",
                        "display":"Apply female-typical setting or reference range"
                     }
                  ]
               }
            },
            {
               "url":"period",
               "valuePeriod":{
                  "start":"2025-07-01"
               }
            },
            {
               "url":"comment",
               "valueString":"Apply female-type setting for all radiology tests"
            },
            {
               "url":"supportingInfo",
               "valueReference":{
                  "reference":"Observation/1"
               }
            },
            {
               "url":"supportingInfo",
               "valueReference":{
                  "reference":"MedicationStatement/2"
               }
            }
         ]
      }
   ]
   ...
}
~~~