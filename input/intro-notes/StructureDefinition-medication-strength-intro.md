### Usage Notes

**Profile specific implementation guidance:**
- Medication strength, for medication as a whole, is represented using this extension. When representing the medication strength, of an individual ingredient, use the native FHIR element `Medication.ingredient.strength` as [Ratio](https://hl7.org/fhir/R4/datatypes.html#Ratio) wherever possible. If the strength cannot be represented as a Ratio, it can be represented as text, quantity or coded by using the R5 to R4 pre-adoption extension [ExtensionMedication_Ingredient_Strength](http://hl7.org/fhir/uv/xver-r5.r4/0.1.0/StructureDefinition-ext-R5-Medication.ing.strength.html). 
  - See the profile specific implementation guidance in [AU Base Medication](StructureDefinition-au-medication.html) for more information.