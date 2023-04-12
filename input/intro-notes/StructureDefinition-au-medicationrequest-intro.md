<p class="stu-note">We have introduced support for the extension Patient Sex Parameter For Clinical Use. This extension is published in this guide to pre-adopt the material published in the R5 <a href="http://hl7.org/fhir/extensions/1.0.0">FHIR Extensions Pack</a>. This extension is an R4 (4.0.1) conversion of the canonical extension and contains forwards incompatible data types when converted to R4 (see the extension page in this guide for information on any  material differences). Implementers are advised to take note that this content may be removed or changed and to take caution if using this extension.</p>

### Usage Notes

**Profile specific implementation guidance:**
- When identifying a medication, this resource can use either a code or refer to a Medication resource. 
- If making use of `MedicationRequest.code`, this profile includes coding as:
  - [PBS Item Code](https://www.pbs.gov.au/pbs/home) - Pharmaceutical Benefits Scheme coding, claiming context is not relevant as medicine coding
  - [Medication Package Global Trade Item Number](http://terminology.hl7.org/ValueSet/v3-GTIN) - Global Trade Item Number (GTIN) physical product reference
  - [AMT Medicines](https://healthterminologies.gov.au/fhir/ValueSet/australian-medication-1) - Australian Medicines Terminology, national drug terminology
  - [MIMS Package](https://www.mims.com.au/index.php) - commonly used medicine coding
- If a medication is compounded and is a list of ingredients, `MedicationRequest.code` is still present and may contain only the list of ingredients as text in `MedicationRequest.code.text`.
- Where additional medicinal product information is needed, `MedicationRequest.medicationReference` is preferred to `MedicationRequest.code` and use of extensions, see guidance on [AU Base Medication](StructureDefinition-au-medication.html).
- When exchanging concepts of sex or gender, refer to the guidance in the [Gender Harmony Implementation Guide](http://hl7.org/xprod/ig/uv/gender-harmony/).
- See each Identifier profile page for guidance related to that identifier type.

**Potentially useful extensions:**
* MedicationRequest: [Medication Brand Name](StructureDefinition-medication-brand-name.html) 
* MedicationRequest: [Medication Generic Name](StructureDefinition-medication-generic-name.html)