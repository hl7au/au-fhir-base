## Contained Resources
In some circumstances, the content referred to in the resource reference does not have an independent existence apart from the resource that contains it - it cannot be identified independently, and nor can it have its own independent transaction scope. For example, use of a Medication resource to represent medicinal product identification within the context of a MedicationRequest. In these circumstances the resource should be [contained](http://hl7.org/fhir/R4/references.html#contained). 

If referencing a contained resource, both the contained resource and the referencing resource **SHALL** conform to an AU Core profile. Further guidance about the general use case for [contained resources](http://hl7.org/fhir/R4/references.html#contained) can be found in the base FHIR specification.

In AU Core profiles:
- Systems constructing a resource that represent medication or body structure information are encouraged to make use of contained resources. 
  - Operations on Medication resources are expected to be within the context of a referencing resource query such as an ExplanationOfBenefit, Flag, MedicationAdministration, MedicationDipsense, MedicationRequest or MedicationStatement.
  - Operations on BodyStructure resources are expected to be within the context of a referencing resource query such as a Consent, DiagnosticReport, Observation, or ServiceRequest.
- Otherwise, when responding to a query, servers should not use inline contained resources to represent the returned data.

## Missing Data

There are situations when information for a particular data element is missing and the source system does not know reason for the absence of data. If the source system does not have data for an element with a minimum cardinality = 0 (including elements labeled *Must Support*), the data element **SHALL** be omitted from the resource.  If the data element is a *Mandatory* element (in other words, where the minimum cardinality is > 0), it **SHALL** be present for *even if* the source system does not have data. The core specification provides guidance for what to do in this situation, which is summarised below:

1.  For *non-coded* data elements including type [Reference](http://hl7.org/fhir/R4/references.html#Reference), 
  - use the [DataAbsentReason extension](http://hl7.org/fhir/StructureDefinition/data-absent-reason) in the data type if the AU Core profile for that resource does not require a child element
  - if the AU Core profile mandates a child element such as a valid identifier or reference then the resource must that element otherwise the instance will not be conformant
  - use the code `unknown` - The value is expected to exist but is not known.
  
    Example: ExplanationOfBenefit resource where the patient's insurance coverage is not available.
    ~~~
    {
      "resourceType" : "ExplanationOfBenefit",
           ...
           "outcome" : "complete",
             "insurance" : [
               {
                 "focal" : true,
                 "coverage" : {
                   "extension" : [
                     {
                       "url" : "http://hl7.org/fhir/StructureDefinition/data-absent-reason",
                       "valueCode" : "unknown"
                     }
                   ]
                 }
               }
             ],
             ...
         }
    ~~~

1. For *coded* data elements:
   - *example*, *preferred*, or *extensible* binding strengths (CodeableConcept , or Coding datatypes):
      - if the source systems has text but no coded data, only the text element is used.
          - for Coding datatypes, the text only data is represented as a `display` element.
      - if there is neither text or coded data:
        - the appropriate "unknown" concept code **SHALL** be present if the binding strength is *extensible*
        - if the value set does not have an appropriate "unknown" concept code, use `unknown` from the [DataAbsentReason Code System](http://terminology.hl7.org/CodeSystem/data-absent-reason).

        Example: AllergyIntolerance resource where the manifestation is unknown.
        ~~~
        ...
        "reaction" : [
          {
            "manifestation" : [
              {
                "coding" : [
                  {
                    "system" : "http://terminology.hl7.org/CodeSystem/data-absent-reason",
                    "code" : "unknown",
                    "display" : "unknown"
                  }
                ]
              }
            ]
          }
        ]
        ...
        ~~~

   - *required* binding strength (CodeableConcept or code datatypes):
      - the appropriate "unknown" concept code **SHALL** be present if available
      - if the value set does not have the appropriate “unknown” concept code you must use a concept from the value set otherwise the instance will not be conformant

        - For AU Core profiles, the following mandatory or conditionally mandatory* status elements with required binding have no appropriate "unknown" concept code:
          - `AllergyIntolerance.clinicalStatus`*
          - `Condition.clinicalStatus`*
          - `Composition.status`
          - `DiagnosticReport.status`
          - `DocumentReference.status`
          - `ExplanationOfBenefit.status`
          - `Immunization.status`
          - `List.status`


        *The clinicalStatus element is conditionally mandatory based on resource specific constraints. 

<!-- If one of these status code is missing, in response to a create or update transaction on the resource a `422` http error code and an OperationOutcome **SHALL** be returned. --> 
<!-- If one of these status code is missing, in response to a read transaction on the resource a `404` http error code and an OperationOutcome **SHALL** be returned. If returning a response to a search, the problematic resource **SHALL** be excluded from the search set and a *warning* OperationOutcome **SHOULD** be included indicating that additional search results were found but could not be compliantly expressed and have been suppressed. -->


## Suppressed Data
In some circumstances, specific pieces of data may hidden due to security or privacy reasons. Elements with a minimum cardinality = 0 (including elements labeled Must Support), the element SHALL be omitted from the resource if they are suppressed.

For mandatory elements (minimum cardinality is > 0), the element SHALL be populated but it may exceed the data receiver’s access rights to know that the data is suppressed:
- where a receiver does not have access rights to know that data is suppressed use the code `masked` from the [DataAbsentReason Code System](http://terminology.hl7.org/CodeSystem/data-absent-reason) following the section on [Missing Data](guidance.html#missing-data)
- where a receiver may know that the data is suppressed use the code `unknown` from the [DataAbsentReason Code System](http://terminology.hl7.org/CodeSystem/data-absent-reason) following the section on [Missing Data](guidance.html#missing-data)


## Extensibility – “additional” elements
A sending system may send "additional" elements beyond those flagged with Must Support in an AU Core profile. Additional elements allow local requirements to be reflected including technical and workflow context for the resource, and extending the health information supported in exchanges. For this reason extensibility is generally allowed in AU Core profiles, only in some use case profiles are the rules tightened to limit the nature of additional information that can be sent.

Depending on local requirements, a receiving or persisting system may ignore these "additional" elements, may treat the data as for rendering only, or be capable of recognising and using the element. A resource exchanged containing an additional element **SHALL** conform to AU Core conformance requirements. Requirements applicable to handling additional elements are summarised below: 
- an additional element **SHALL** be part of a supported resource, it may be a canonical element or an extension
- an additional element **SHALL** conform to the HL7 FHIR standard 
- a resource referenced by an additional element **SHALL** conform to an AU Core profile and the HL7 FHIR standard
- where the additional element is an extension 
   - a system **SHALL** process a known extension according to it's definition
   - a system **SHALL** process unknown extensions as per the [core specification guidance on exchanging extensions](https://www.hl7.org/fhir/extensibility.html#exchange)

Orphaned resources, i.e. not referenced by an element in supported resource, **SHALL NOT** be allowed.

System obligations on handling additional elements are:
- Systems that construct or send information **SHALL** ensure that a resource meet all applicable AU Core conformance requirements
- Systems that receive or persist information, when sent a resource with an "additional" set of elements:
  - **SHALL** meaningfully process the Must Support elements; depending on local requirements this may mean display, persist, index, or action in an event or request workflow 
  - **SHOULD** persist additional elements where the system is capable of doing so, and the additional element is not a modifier extension   
  - **MAY** choose to ignore the additional elements
  - **MAY** choose to reject non-conformant resources but are not required to


## Medicine information

The FHIR standard defines the following resources for exchanging medicine information:
- [Medication](http://hl7.org/fhir/R4/medication.html)
- [MedicationAdministration](http://hl7.org/fhir/R4/medicationadministration.html)
- [MedicationDispense](http://hl7.org/fhir/R4/medicationdispense.html)
- [MedicationRequest](http://hl7.org/fhir/R4/medicationrequest.html)
- [MedicationStatement](http://hl7.org/fhir/R4/medicationstatement.html)

[AU Core Medication](StructureDefinition-au-core-medication.html) is profiled to support medicinal product identification in an Australian healthcare context.
AU Core profiles of MedicationStatement (with AU Core Medication) are used to support summary statements of medicine use. 
AU Core profiles of MedicationAdministration (with AU Core Medication) are used to support medication chart and other administration use cases.
AU Core profiles of MedicationDipsense (with AU Core Medication) are used to support to support dispense records and ePrescribing use cases.
AU Core profiles of MedicationRequest (with AU Core Medication) are used to support prescription, ordering, and ePrescribing use cases.

**Medicinal Product Identification**

For extemporaneous medications, the medication code is the mandatory primary mechanism to identify a medicine but contain only a text list of ingredients or it may be a code from a medicines terminology.

For non-extemporaneous medications, the medication code (or set of codes) is the mandatory primary mechanism to identify a medicine and it's defining attributes (by terminology lookup) including form and strength. 

Australian Medicines Terminology (AMT) is the national terminology for identification and naming of medicines in clinical systems for Australia. 
The AMT is published monthly to include new items on the Australian Register of Therapeutic Goods from the TGA, as well as items listed on the Pharmaceutical Benefits Scheme. 
The AMT is published as part of SNOMED CT-AU (Australian edition of SNOMED CT) and can be downloaded in a variety of formats from the [National Clinical Terminology Service (NCTS)](https://www.healthterminologies.gov.au/).

*TBD: Insert PBS.*

In addition to the medication code, the majority of use cases support exchange of structured medicine information as separate data elements covering brand name, generic name, item form and strength, and manufacturer.

These data elements may be supported as coded, or text, and systems are likely to use a combination of coded and text elements when constructing a Medication resource. The guidance for how to support coded or text is summarised below: 

1. For *coded* support for brand name, generic name, manufacturer, item form and strength:
   - Fully coded support is provided using code.coding with [Medication Type extension](http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-medication-type.html) extension in the resource (i.e. MedicationAdministration, MedicationStatement, MedicationDispense, MedicationRequest, Medication):
      - brand name = `code.coding` with [Medication Type extension](http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-medication-type.html) using `BPD` from the [Medication Type code system](http://build.fhir.org/ig/hl7au/au-fhir-base/CodeSystem-medication-type.html)
      - generic name = `code.coding` with [Medication Type extension](http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-medication-type.html) using `UPD` from the [Medication Type code system](http://build.fhir.org/ig/hl7au/au-fhir-base/CodeSystem-medication-type.html)
      - generic item form and strength = `code.coding` with [Medication Type extension](http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-medication-type.html) using `UPDSF` from the [Medication Type code system](http://build.fhir.org/ig/hl7au/au-fhir-base/CodeSystem-medication-type.html)
      - branded item form and strength = `code.coding` with [Medication Type extension](http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-medication-type.html) using `BPDSF` from the [Medication Type code system](http://build.fhir.org/ig/hl7au/au-fhir-base/CodeSystem-medication-type.html)
   - If the resource is a Medication resource:
      - form and strength are also provided in `form`, `ingredient.itemCodeableConcept` and `ingredient.strength`
      - manufacturer = `manufacturer.identifer`

    Example: Medication with coded brand name, generic name, manufacturer, item form and strength.
    ~~~
    {
      "resourceType": "Medication",
        ...
        "code": {
          "coding": [
            {
              "extension": [
                {
                  "url": "http://hl7.org.au/fhir/StructureDefinition/medication-type",
                  "valueCoding": {
                    "system": "http://terminology.hl7.org.au/CodeSystem/medication-type",
                    "code": "UPD",
                    "display": "Unbranded product with no strengths or form"
                  }
                }
              ],
              "system": "http://pbs.gov.au/code/item",
              "code": "02647H",
              "display": "BENZYLPENICILLIN"
            },
            {
              "extension": [
                {
                  "url": "http://hl7.org.au/fhir/StructureDefinition/medication-type",
                  "valueCoding": {
                    "system": "http://terminology.hl7.org.au/CodeSystem/medication-type",
                    "code": "BPD",
                    "display": "Branded product with no strengths or form"
                  }
                }
              ],
              "system": "http://snomed.info/sct",
              "code": "3539011000036105",
              "display": "Benpen"
            },
            {
              "extension": [
                {
                  "url": "http://hl7.org.au/fhir/StructureDefinition/medication-type",
                  "valueCoding": {
                    "system": "http://terminology.hl7.org.au/CodeSystem/medication-type",
                    "code": "UPDSF",
                    "display": "Unbranded product with strengths and form"
                  }
                }
              ],
              "system": "http://snomed.info/sct",
              "code": "32753011000036104",
              "display": "benzylpenicillin 3 g injection, 1 vial"
            },
            {
              "extension": [
                {
                  "url": "http://hl7.org.au/fhir/StructureDefinition/medication-type",
                  "valueCoding": {
                    "system": "http://terminology.hl7.org.au/CodeSystem/medication-type",
                    "code": "BPDSF",
                    "display": "Branded product with strengths and form"
                  }
                }
              ],
              "system": "http://snomed.info/sct",
              "code": "32328011000036106",
              "display": "Benpen 3 g powder for injection, 1 vial"
            }
          ]
        },
        "manufacturer": {
          "identifier": {
            "system": "http://pbs.gov.au/code/manufacturer",
            "value": "CS"
          }
        },
        "form": {
          "coding": [
            {
              "system": "http://snomed.info/sct",
              "code": "129011000036109",
              "display": "injection"
            }
          ],
          "text": "Injection"
        },
        "ingredient": [
          {
            "itemCodeableConcept": {
              "coding": [
                {
                  "system": "http://snomed.info/sct",
                  "code": "1849011000036104",
                  "display": "benzylpenicillin"
                }
              ]
            },
            "strength": {
              "numerator": {
                "value": 3,
                "unit": "g"
              },
              "denominator": {
                "value": 1,
                "unit": "unit"
              }
            }
          }
        ]
    }
    ~~~

1.  For *non-coded* support for brand name, generic name, manufacturer, item form and strength:
    - Fully non-coded support is provided using the Medication resource
        - brand name = [Medication Brand Name extension](http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-medication-brand-name.html)
        - generic name = [Medication Generic Name extension](http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-medication-generic-name.html)
        - item form and strength = `code.text`
        - manufacturer = `manufacturer.display`
  
    Example: Medication with text only brand name, generic name, item form and strength.
    ~~~
    {
      "resourceType": "Medication",
       ...
       "extension": [
         {
           "url": "http://hl7.org.au/fhir/StructureDefinition/medication-generic-name",
           "valueString": "Benzylpenicillin"
         },
         {
           "url": "http://hl7.org.au/fhir/StructureDefinition/medication-brand-name",
           "valueString": "Benpen"
         }
       ],
       "code": {
         "text": "Benpen 3 g powder for injection, 1 vial"
       },
       "manufacturer": {
         "display": "Seqirus"
       }
    }
    ~~~


## Lists

*TBD: Insert guidance.*


## Representing communication preferences

**Patient**

The table below provides guidance on representing communication preferences for a patient. Blank cells in the table indicate that the given element is absent from the resource.

<table class="list" style="width:100%">
    <colgroup>
       <col span="1" style="width: 20%;"/>
       <col span="1" style="width: 18%;"/>
       <col span="1" style="width: 18%;"/>
       <col span="1" style="width: 20%;"/>
       <col span="1" style="width: 24%;"/>
    </colgroup>
	<tbody>
      <tr>
        <th>Scenario</th>
        <th>communication.language</th>
        <th>communication.preferred</th>
        <th>extension:interpreterRequired</th>
		<th>Notes</th>
      </tr>
      <tr>
        <td>Preferred language is English</td>
        <td></td>
        <td></td>
        <td></td>
        <td>No element sent, as per the guidance in the <a href="http://hl7.org/fhir/patient-definitions.html#Patient.communication">Comments</a> of Patient.communication</td>
      </tr>
      <tr>
        <td>Preferred language is other than English</td>
        <td>language.coding</td>
        <td>'true'</td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>Interpreter required, language is known</td>
        <td>language.coding</td>
        <td>'true'</td>
        <td>'true'</td>
        <td></td>
      </tr>
      <tr>
        <td>Interpreter required, language is not known</td>
        <td></td>
        <td></td>
        <td>'true'</td>
        <td></td>
      </tr>
      <tr>
        <td>Interpreter is not required</td>
        <td></td>
        <td></td>
        <td>'false'</td>
        <td></td>
      </tr>
      <tr>
        <td>Communicates with multiple languages</td>
        <td>language.coding</td>
        <td></td>
        <td></td>
        <td>Each language instantiated in separate communication nodes; communication.preferred and extension:interpreterRequired may be sent as needed.</td>
      </tr>
    </tbody>
</table>

Example: Patient resource with intepreter required and language is known
~~~
{
  "resourceType" : "Patient",
    ...
      "extension" : [
        {
          "url" : "http://hl7.org/fhir/StructureDefinition/patient-interpreterRequired",
          "valueBoolean" : true
        }          
       ]
    },
    ...
    "communication" : [
    {
      "language" : {
        "coding" : [
          {
            "system" : "urn:ietf:bcp:47",
            "code" : "yue"
          }
        ],
        "text" : "Cantonese"
      },
      "preferred" : true
    }
  ]
}
~~~


**RelatedPerson**

The table below provides guidance on representing communication preferences for a related person. Blank cells in the indicate that the given element is absent from the resource.

<table class="list" style="width:100%">
    <colgroup>
       <col span="1" style="width: 20%;"/>
       <col span="1" style="width: 18%;"/>
       <col span="1" style="width: 18%;"/>
       <col span="1" style="width: 20%;"/>
       <col span="1" style="width: 24%;"/>
    </colgroup>
	<tbody>
      <tr>
        <th>Scenario</th>
        <th>communication.language</th>
        <th>communication.preferred</th>
		<th>Notes</th>
      </tr>
      <tr>
        <td>Preferred language is English</td>
        <td></td>
        <td></td>
        <td>No element sent, as per the guidance in the Comments</a> of RelatedPerson.communication</td>
      </tr>
      <tr>
        <td>Preferred language is other than English</td>
        <td>language.coding</td>
        <td>'true'</td>
        <td></td>
      </tr>
      <tr>
        <td>Communicates with multiple languages</td>
        <td>language.coding</td>
        <td></td>
        <td>Each language instantiated in separate communication nodes; communication.preferred may be sent as needed.</td>
      </tr>
    </tbody>
</table>

Blank cells in the above table indicate that the given element is absent from the resource.