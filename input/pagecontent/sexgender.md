### Name to Use (NtU)​

By making `name.use` a *Must Support* data element, this profile explicitly supports representation and exchange of the Name to Use data element (as defined in the [HL7 Cross Paradigm Implementation Guide: Gender Harmony - Sex and Gender Representation, Edition 1](https://hl7.org/xprod/ig/uv/gender-harmony/informative1/)). Name to Use is represented using ‘usual’ in `name.use`. It should be noted that, `name.period` is not a *Must Support* data element in this version of the profile.

### Pronouns​

By making Individual Pronouns extension a *Must Support* data element, this profile explicitly supports representation and exchange of the Pronouns data element (as defined in the [HL7 Cross Paradigm Implementation Guide: Gender Harmony - Sex and Gender Representation, Edition 1](https://hl7.org/xprod/ig/uv/gender-harmony/informative1/)). The value element of the [Individual Pronouns extension](http://hl7.org/fhir/StructureDefinition/individual-pronouns) is constrained in this profile to be [Australian Pronouns](https://www.healthterminologies.gov.au/integration/R4/fhir/ValueSet/australian-pronouns-1) ([extensible](http://hl7.org/fhir/R4/terminologies.html#extensible)).
- This profile supports indvidual pronouns using the [Individual Pronouns extension](http://hl7.org/fhir/StructureDefinition/individual-pronouns) and the [Australian Pronouns](https://www.healthterminologies.gov.au/integration/R4/fhir/ValueSet/australian-pronouns-1) value set supplied as the individual pronoun value.
  - *they/them/their/theirs/themselves* may be represented by sending the LOINC Answer (LA) code LA29520-6
  - *she/her/her/hers/herself* may be represented by sending the LOINC Answer (LA) code LA29519-8
  - *he/him/his/his/himself* may be represented by sending the LOINC Answer (LA) code LA29518-0
  - *Prefer not to answer* may be represented by sending the Data Absent Reason code "asked-declined"
  - *Asked but not known* may be represented by sending the Data Absent Reason code "asked-unknown"
  - *Not stated or inadequately described* may be represented by the Data Absent Reason code "unknown"
  - Where the workflow does not support obtaining a pronoun, it may be represented by sending the Data Absent Reason code "not-asked"
  - Where a preferred pronoun is provided but is not one of the [Australian Pronouns](https://www.healthterminologies.gov.au/integration/R4/fhir/ValueSet/australian-pronouns-1) terms then a text only or alternative  specific coded value can be supplied.

### Gender Identity (GI)

By making Individual Gender Identity extension a *Must Support* data element, this profile explicitly supports representation and exchange of the Gender Identity data element (as defined in the [HL7 Cross Paradigm Implementation Guide: Gender Harmony - Sex and Gender Representation, Edition 1](https://hl7.org/xprod/ig/uv/gender-harmony/informative1/)). The value element of the [Individual Gender Identity extension](http://hl7.org/fhir/StructureDefinition/individual-genderIdentity) is constrained in this profile to be [Gender Identity Response](https://healthterminologies.gov.au/fhir/ValueSet/gender-identity-response-1) ([extensible](http://hl7.org/fhir/R4/terminologies.html#extensible)).
- This profile supports patient gender identity aligned to [Australian Bureau of Statics Standard for Sex, Gender, Variations of Sex Characteristics and Sexual Orientation Variables, 2020](https://www.abs.gov.au/statistics/standards/standard-sex-gender-variations-sex-characteristics-and-sexual-orientation-variables/latest-release#gender) using the [Individual Gender Identity extension](http://hl7.org/fhir/StructureDefinition/individual-genderIdentity) and [Gender Identity Response](https://healthterminologies.gov.au/fhir/ValueSet/gender-identity-response-1) value set.
  - *Man or male* may be represented by sending the SNOMED CT code 446151000124109\|Identifies as male gender\|
  - *Woman or female* may be represented by sending the SNOMED CT code 446141000124107\|Identifies as female gender\|
  - *Non-binary* may be represented by sending the SNOMED CT code 33791000087105\|Identifies as nonbinary gender\|
  - *[I/They] use a different term (please specify)*  may be represented by sending only text and no code
  - *Prefer not to answer* may be represented by sending the code "asked-declined"
  - *Not stated or inadequately described* may be represented by the code "unknown"
  - Where the workflow does not support obtaining a gender identity value, it may be represented by sending the code "not-asked"

### Sex Assigned at Birth

Sex assigned at birth is represented using the [Person Recorded Sex or Gender extension](https://hl7.org/fhir/extensions/StructureDefinition-individual-recordedSexOrGender.html) as profiled by [AU Core Sex Assigned At Birth](StructureDefinition-au-core-rsg-sexassignedab.html). It should be noted the [Person Recorded Sex or Gender extension](https://hl7.org/fhir/extensions/StructureDefinition-individual-recordedSexOrGender.html) is not marked as *Must Support* in this version of the profile.


### Profile specific implementation guidance
- An individual's IHI **SHOULD** be used in `Patient.identifier` if available, in preference to Medicare or DVA numbers
- See the [Representing communication preferences](general-guidance.html#representing-communication-preferences) section for guidance
- When constructing an address
  - an international address can be represented using the core [Address](http://hl7.org/fhir/R4/datatypes.html#Address) data type
  - an Australian address **SHOULD** be represented using the [Australian Address](http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-address.html) data type profile
- When exchanging concepts of sex or gender, refer to the guidance in the [Gender Harmony Implementation Guide](http://hl7.org/xprod/ig/uv/gender-harmony/) and [AU Base Patient](https://build.fhir.org/ig/hl7au/au-fhir-base//StructureDefinition-au-patient.html)
