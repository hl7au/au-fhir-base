### Usage Notes

**Profile specific implementation guidance:**
- See [Ahpra Data Guidance](guidance.html#ahpra-data-guidance) for detailed guidance on representing Ahpra-sourced data.
- A tertiary qualification or professional membership (non-Ahpra-sourced data) is represented by `Practitioner.qualification` 
  - If none of the codes from the preferred value set are suitable then at least text should be sent in `Practitioner.qualification.code`
- See each Identifier profile page for guidance related to that identifier type.
