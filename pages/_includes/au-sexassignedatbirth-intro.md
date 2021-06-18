**AU Biological Sex Assigned at Birth** *[[FMM Level 0](guidance.html)]*

A person's biological sex is based upon their sex characteristics, such as their chromosomes, hormones and reproductive organs. A person's sex can change over the course of their lifetime and may differ from their sex assigned at birth.

Sex assigned at birth refers to what was determined by sex characteristics observed at birth or infancy, including genital and chromosome composition. Sex assigned at birth is captured once for a person and is not expected to change within their lifetime.

This is based on:
* [AIHW Person – sex concept](https://meteor.aihw.gov.au/content/index.phtml/itemId/635233)
* [Australian Government Guidelines on the Recognition of Sex and Gender](https://www.ag.gov.au/rights-and-protections/publications/australian-government-guidelines-recognition-sex-and-gender)
* [ABS Standard for Sex, Gender, Variations of Sex Characteristics and Sexual Orientation Variables, 2020](https://www.abs.gov.au/statistics/standards/standard-sex-gender-variations-sex-characteristics-and-sexual-orientation-variables/latest-release)

**Boundaries and Relationships**

This profile is not intended for capturing other related attributes such as: 
* a person's gender - gender is part of a person’s personal and social identity. It refers to the way a person feels, presents and is recognised within the community. A person's gender should be represented using an appropriate resource, see [AU Base Patient](StructureDefinition-au-patient.html), [AU Base RelatedPerson](http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-relatedperson.html), and [AU Base Practitioner](http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-practitioner.html).
* sex recorded on a birth certificate - although the values for sex assigned at birth and sex recorded on a birth certificate for a person will typically align, sex recorded on a birth certificate should be represented using an [Observation](http://hl7.org/fhir/R4/observation.html) resource. For more information see [Patient Gender and Sex](http://hl7.org/fhir/R4/patient.html#gender).
* other biological sex concepts (e.g. phenotypic sex, current sex, etc) - these are  testable observations about a biological property of a patient, and as such should be represented using an [Observation](http://hl7.org/fhir/R4/observation.html) resource. Work on supporting other biological sex concepts is expected to result in more profiles published in this implementation guide. 
  
**Usage notes**
  
Sex at birth and other biological sex concepts are clinical observations and form part of the clinical decision such as reference range information. The Australian Government Guidelines on the Recognition of Sex and Gender state that that this information should only be captured where there is a legitimate need for that information (i.e. as necessary as part of the clinical content) and it is consistent with Australian Privacy Principle 3.

To record a sex at birth of a person born with genetic, hormonal or physical sex characteristics that are not typically female or male, value should be 32570691000036108 \| Intersex \|. 
When the biological sex at birth cannot be cannot be determined, value should be 32570681000036106  \| Indeterminate sex\|.

**Examples**

[Sex assigned at birth: Intersex](Observation-sex-at-birth-intersex.html)

[Sex assigned at birth: Female](Observation-sex-at-birth-female.html)

[Sex assigned at birth: Male](Observation-06d63c90-0316-426d-97fa-d34ee65a0abd.html)



