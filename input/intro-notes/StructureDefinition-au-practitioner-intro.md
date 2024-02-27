### Usage Notes

**Profile specific implementation guidance:**
- See [Ahpra Data Guidance](guidance.html#ahpra-data-guidance) for detailed guidance on representing Ahpra-sourced data.
- A tertiary qualification or professional membership (non-Ahpra-sourced data) is represented by `Practitioner.qualification` 
  - If none of the codes from the preferred value set are suitable then at least text should be sent in `Practitioner.qualification.code`
- See each Identifier profile page for guidance related to that identifier type.
- When exchanging concepts of sex or gender, refer to the guidance in the [Gender Harmony Implementation Guide](http://hl7.org/xprod/ig/uv/gender-harmony/).
- Where the workflow does not support obtaining a gender identity value, it may be represented by sending the code "not-asked"
