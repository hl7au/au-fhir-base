### Usage Notes

**Profile specific implementation guidance:**
- See each Identifier profile page for guidance related to that identifier type.
- This profile supports the sex, gender, and related concepts of: Name to Use, Gender Identity, Individual Pronouns, Recorded Sex or Gender, Sex Assigned at Birth:
   - When exchanging concepts of sex or gender, refer to the guidance in [Sex and Gender](sexgender.html) and the [Gender Harmony Implementation Guide](http://hl7.org/xprod/ig/uv/gender-harmony/).
- When constructing an address:
  - an international address can be represented using the core [Address](http://hl7.org/fhir/R4/datatypes.html#Address) data type
  - an Australian address can be represented using the [Australian Address](StructureDefinition-au-address.html) data type profile
- A tertiary qualification or professional membership (e.g. Ahpra) is represented by `Practitioner.qualification`
  - If none of the codes from the preferred value set are suitable then at least text should be sent in `Practitioner.qualification.code`
