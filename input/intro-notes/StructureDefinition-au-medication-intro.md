### Usage Notes

**Profile specific implementation guidance:**

- Medication definition includes coding as:
  - [PBS Item Code](https://www.pbs.gov.au/pbs/home) - Pharmaceutical Benefits Scheme coding, claiming context is not relevant as medicine coding
  - [Medication Package Global Trade Item Number](http://terminology.hl7.org/ValueSet/v3-GTIN) - Global Trade Item Number (GTIN) physical product reference
  - [AMT Medicines](https://healthterminologies.gov.au/fhir/ValueSet/australian-medication-1) - Australian Medicines Terminology, national drug terminology
  - [MIMS Package](https://www.mims.com.au/index.php) - commonly used medicine coding
- When a code for medication definition is unavailable, just text is allowed in `Medication.code.text`.
- When a medication is compounded and is a list of ingredients, `Medication.code` may contain only the list of ingredients as text in `Medication.code.text`.
- Non-coded support for other medicinal product information can be supported as follows:
  - ​brand name in [Medication Brand Name](StructureDefinition-medication-brand-name.html) extension
  - ​generic name in [Medication Generic Name](StructureDefinition-medication-generic-name.html) extension
  - medication strength in [Medication Strength](StructureDefinition-medication-strength.html) extension
  - item form and strength as part of medication definition in `Medication.code.text`
  - manufacturer in `Medication.manufacturer.display`
- When data for `Medication.ingredient.strength` is unavailable as a ratio, ingredient strength can be surfaced as text via the [backported R5](https://www.hl7.org/fhir/medication-definitions.html#Medication.ingredient.strength_x_) `Medication.ingredient.strength[x]` element as a CodeableConcept:
  - This is to be interpreted as the strength of that specific ingredient, not the strength of the medication as a whole
  - The backported element can be used once on each `Medication.ingredient` element
  - Where the existing `Medication.ingredient.strength` element can be used, this should be used in preference to using the preadopted R5 element

**Potentially useful extensions:**

- Medication: [Medication Brand Name](StructureDefinition-medication-brand-name.html)
- Medication: [Medication Generic Name](StructureDefinition-medication-generic-name.html)
- Medication: [Medication Strength](StructureDefinition-medication-strength.html)
