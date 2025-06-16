### Usage Notes

**Profile specific implementation guidance:**

- This extension is to be interpreted as the strength of the medication as a whole and should only be used once
- This extension should be used to support non-coded representation of the medication strength, coded representation of medication strength where strength is part of `Medication.code` this should be used in preference to an extension
- Strength at ingredient level can be surfaced using the preadopted R5 `Medication.ingredient.strengthCodeableConcept` element
