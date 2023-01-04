### Usage Notes

**Profile specific implementation guidance:**
- When identifying a medication, this resource can use either a code or refer to a Medication resource. 
- If making use of `MedicationAdministration.code`, this profile includes coding as:
  - [PBS Item Code](https://www.pbs.gov.au/pbs/home) - Pharmaceutical Benefits Scheme coding, claiming context is not relevant as medicine coding
  - [Medication Package Global Trade Item Number](http://terminology.hl7.org/ValueSet/v3-GTIN) - Global Trade Item Number (GTIN) physical product reference
  - [AMT Medicines](https://healthterminologies.gov.au/fhir/ValueSet/australian-medication-1) - Australian Medicines Terminology, national drug terminology
  - [MIMS Package](https://www.mims.com.au/index.php) - commonly used medicine coding
- If a medication is compounded and is a list of ingredients, `MedicationAdministration.code` is still present and may contain only the list of ingredients as text in `MedicationAdministration.code.text`.
- Where additional medicinal product information is needed, `MedicationAdministration.medicationReference` is preferred to `MedicationAdministration.code` and use of extensions, see guidance on [AU Base Medication](StructureDefinition-au-medication.html).