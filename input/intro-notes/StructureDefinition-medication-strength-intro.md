### Usage Notes

**Profile specific implementation guidance:**

- This extension should be used to support non-coded representation of the medication strength. Coded representation of medication strength should be used in preference to this extension where possible, using `Medication.code`
- This extension is to be interpreted as the strength of the medication as a whole and should only be used once
- Strength at ingredient level can be surfaced using the existing `Medication.ingredient.strength` element, or the preadopted R5 `Medication.ingredient.strength[x]` extension if ratio data is unsuitable
