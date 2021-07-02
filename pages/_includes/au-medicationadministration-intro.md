**AU Base Medication Administration**  *[[FMM Level 2](guidance.html)]*

This profile defines a medication administration structure including core localisation concepts for use in an Australian context. 

The purpose of this profile is to provide national level agreement on core localised concepts. 

This profile does not force conformance to core localised concepts. It enables implementers and modellers to make their own rules, i.e. [profiling](http://hl7.org/fhir/profiling.html), about how to support these concepts for specific implementation needs.


#### Extensions
No extensions are available for this profile.


#### Usage Notes
A full medication definition as medicationReference or medicationCodeableConcept can be included to define the drug/medication concept. Medication definition includes coding as:
* [PBS Item Code](https://www.pbs.gov.au/pbs/home) - Pharmaceutical Benefits Scheme coding, claiming context is not relevant as medicine coding
* [Medication Package Global Trade Item Number](https://www.gs1.org/standards/id-keys/gtin) - Global Trade Item Number (GTIN) physical product reference
* [AMT Medicines](https://www.healthterminologies.gov.au/integration/R4/fhir/ValueSet/australian-medication-1) - Australian Medicines Terminology, national drug terminology
* [MIMS Package](https://www.mims.com.au/index.php) - commonly used medicine coding


#### Examples
No examples are available for this profile.