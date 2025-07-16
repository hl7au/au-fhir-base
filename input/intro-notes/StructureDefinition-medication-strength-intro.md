### Usage Notes

**Profile specific implementation guidance:**

- Use this extension for text representation of a medication strength as a whole. Coded representation of medication strength as a whole uses `Medication.code`.
- Strength at ingredient level can be surfaced using the existing `Medication.ingredient.strength` element, or the pre-adopted R5 `Medication.ingredient.strength[x]` element if ratio data is unsuitable.
