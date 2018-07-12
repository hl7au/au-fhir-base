**AU Base Medication**  *[FMM Level [0](guidance.html)]*

This profile defines a medication information structure including core localisation concepts for Australia. 
Wherever possible, the structure for medication information profiled here, has been aligned to the proposed R4 [Medication](http://hl7.org/fhir/2018May/medication.html). In support of alignment it is expected that value of Medication.package.content.item is the same as Medication.code; and the following elements have been profile to allow a maximum cardinality of 1:

* Medication.package
* Medication.package.content
* Medication.package.batch

The following elements available in STU3 [Medication](http://hl7.org/fhir/STU3/medication.html)  have been removed from the standard structure of R4 [Medication](http://hl7.org/fhir/2018May/medication.html), and for this reason it is recommended use of these elements is not encouraged:

* Medication.isBrand
* Medication.isOverCounter
* Medication.package.container

**Examples**

* [Fluconazole Dose Based Medication](Medication-MedicationDoseBased.html)
* [Paracetamol Generic Pack](medication-GenericPack0.html)
* [Nexium Hp7 Brand Pack](medication-BrandedPack0.html)
* [Nexium Hp7 Combination Package with Product Parts](medication-CombinationPackage0.html)
* [Clarithromycin 500mg Tablet Unbranded Product](medication-UnbrandedProduct0.html)
* [Esomeprazole 20mg Tablet Unbranded Product](medication-UnbrandedProduct1.html)
* [Amoxicillin 500mg Capsule Unbranded Product](medication-UnbrandedProduct2.html) 
* [Norvasc 10 mg Tablet Brand Product with Batch Details](Medication-Norvasc10mgTabletBrandProductwithBatchDetails.html)