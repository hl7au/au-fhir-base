### Usage Notes

**Profile specific implementation guidance:**

- Medication definition includes coding as:
  - [PBS Item Code](https://www.pbs.gov.au/pbs/home) - Pharmaceutical Benefits Scheme coding, claiming context is not relevant as medicine coding
  - [Medication Package Global Trade Item Number](http://terminology.hl7.org/ValueSet/v3-GTIN) - Global Trade Item Number (GTIN) physical product reference
  - [AMT Medicines](https://healthterminologies.gov.au/fhir/ValueSet/australian-medication-1) - Australian Medicines Terminology, national drug terminology
  - [MIMS Package](https://www.mims.com.au/index.php) - commonly used medicine coding
- When a code for medication definition is unavailable, just text is allowed in `Medication.code.text`.
- When a medication is compounded and is a list of ingredients, `Medication.code` may contain only the list of ingredients as text in `Medication.code.text`.
- For support as text representation of other medicinal product information consider:
  - ​brand name in [Medication Brand Name](StructureDefinition-medication-brand-name.html) extension
  - ​generic name in [Medication Generic Name](StructureDefinition-medication-generic-name.html) extension
  - medication strength, for medication as a whole, in [Medication Strength](StructureDefinition-medication-strength.html) extension
  - medication form in `Medication.form.text`
  - item form and strength as part of medication definition in `Medication.code.text`
  - manufacturer in `Medication.manufacturer.display`
- When individual ingredient strength is unavailable as a ratio, it can be surfaced as text in `CodeableConcept.text` by using pre-adoption of the FHIR R5 [`Medication.ingredient.strength[x]`](https://www.hl7.org/fhir/R5/medication-definitions.html#Medication.ingredient) element with the extension URL [http://hl7.org/fhir/5.0/StructureDefinition/extension-Medication.ingredient.strength[x]](http://hl7.org/fhir/5.0/StructureDefinition/extension-Medication.ingredient.strength[x]). See this example of use [Tadim](Medication-IngredientStrengthExtension0.html). 
  - This is to be interpreted as the strength of that specific ingredient, not the strength of the medication as a whole.
  - The pre-adopted FHIR R5 `Medication.ingredient.strength[x]` element can be used once on each `Medication.ingredient` element. 
  - Where possible use the existing `Medication.ingredient.strength` element in preference to pre-adopting the FHIR R5 `Medication.ingredient.strength[x]` element.
  - Details on cross version pre-adoption implementation can be found in the FHIR specification [Extensions for converting between versions](https://hl7.org/fhir/R5/versions.html#extensions) section.

**Potentially useful extensions:**

- Medication: [Medication Brand Name](StructureDefinition-medication-brand-name.html)
- Medication: [Medication Generic Name](StructureDefinition-medication-generic-name.html)
- Medication: [Medication Strength](StructureDefinition-medication-strength.html)
