### Usage Notes

**Profile specific implementation guidance:**

- Medication definition includes coding as:
  - [PBS Item Code](https://www.pbs.gov.au/pbs/home) - Pharmaceutical Benefits Scheme coding, claiming context is not relevant as medicine coding
  - [Medication Package Global Trade Item Number](http://terminology.hl7.org/ValueSet/v3-GTIN) - Global Trade Item Number (GTIN) physical product reference
  - [AMT Medicines](https://healthterminologies.gov.au/fhir/ValueSet/australian-medication-1) - Australian Medicines Terminology, national drug terminology
  - [MIMS Package](https://www.mims.com.au/index.php) - commonly used medicine coding
- When a code for medication definition is unavailable, just text is allowed in `Medication.code.text`.
- When a medication is compounded and is a list of ingredients, `Medication.code` may contain only the list of ingredients as text in `Medication.code.text`.
- When representing the medication strength, of an individual ingredient, use the native FHIR element `Medication.ingredient.strength` as [Ratio](https://hl7.org/fhir/R4/datatypes.html#Ratio) wherever possible. If the strength cannot be represented as a Ratio, it can be represented as text, quantity or coded by using the R5 to R4 pre-adoption extension [ExtensionMedication_Ingredient_Strength](http://hl7.org/fhir/uv/xver-r5.r4/0.1.0/StructureDefinition-ext-R5-Medication.ing.strength.html).     
- For support as text representation of other medicinal product information consider:
  - ​brand name in [Medication Brand Name](StructureDefinition-medication-brand-name.html) extension
  - ​generic name in [Medication Generic Name](StructureDefinition-medication-generic-name.html) extension
  - medication strength, for medication as a whole, in [Medication Strength](StructureDefinition-medication-strength.html) extension
  - medication strength, for an individual ingredient, in the R5 to R4 pre-adoption extension [FHIR R5 element pre-adoption](https://hl7.org/fhir/R5/versions.html#extensions) of [`Medication.ingredient.strength[x]`](https://www.hl7.org/fhir/R5/medication-definitions.html#Medication.ingredient). See example [Tadim](Medication-IngredientStrengthExtension0.html).
  - medication form in `Medication.form.text`
  - item form and strength as part of medication definition in `Medication.code.text`
  - manufacturer in `Medication.manufacturer.display`

**Potentially useful extensions:**

- Medication: [Medication Brand Name](StructureDefinition-medication-brand-name.html)
- Medication: [Medication Generic Name](StructureDefinition-medication-generic-name.html)
- Medication: [Medication Strength](StructureDefinition-medication-strength.html)
- Medication.ingredient.strength: [ExtensionMedication_Ingredient_Strength](http://hl7.org/fhir/uv/xver-r5.r4/0.1.0/StructureDefinition-ext-R5-Medication.ing.strength.html)
