### Usage Notes

**Profile specific implementation guidance:**
- See each Identifier profile page for guidance related to that identifier type.
- This profile supports the sex, gender, and related concepts of: Name to Use, Gender Identity, Individual Pronouns, Recorded Sex or Gender, Sex Assigned at Birth.
- When exchanging concepts of sex or gender, refer to the guidance in [Sex and Gender](sexgender.html) and the [Gender Harmony Implementation Guide](http://hl7.org/xprod/ig/uv/gender-harmony/).
- See [Ahpra Data Guidance](generalguidance.html#ahpra-data-guidance) for detailed guidance on representing Ahpra-sourced data.
- A tertiary qualification or professional membership (non-Ahpra-sourced data) is represented by `Practitioner.qualification`
  - If none of the codes from the preferred value set are suitable then at least text should be sent in `Practitioner.qualification.code`

