# Bundle - Medicine list in a bundle - AU Base Implementation Guide v6.0.1-ci-build

* [**Table of Contents**](toc.md)
* [**FHIR Artefacts**](fhirartefacts.md)
* [**Artefacts Summary**](artifacts.md)
* **Bundle - Medicine list in a bundle**

## Example Bundle: Bundle - Medicine list in a bundle



## Resource Content

```json
{
  "resourceType" : "Bundle",
  "id" : "example0",
  "meta" : {
    "lastUpdated" : "2014-08-18T01:43:33Z"
  },
  "identifier" : {
    "system" : "https://tools.ietf.org/html/rfc4122",
    "value" : "4989a6a4-4e99-11e9-8647-d663bd873d93"
  },
  "type" : "collection",
  "entry" : [{
    "fullUrl" : "urn:uuid:e229b450-4e9c-11e9-8647-d663bd873d93",
    "resource" : {
      "resourceType" : "List",
      "id" : "e229b450-4e9c-11e9-8647-d663bd873d93",
      "meta" : {
        "profile" : ["http://hl7.org.au/fhir/StructureDefinition/au-medlist"]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"List_e229b450-4e9c-11e9-8647-d663bd873d93\"> </a>\n            <h1>Current Medication on Discharge</h1>\n\n            <h2>Patient</h2>\n            <table>\n              <tbody>\n                <tr>\n                  <th>Name</th>\n                  <td>Mr Nicholas Jones </td>\n                </tr>\n                <tr>\n                  <th>DoB</th>\n                  <td>8 January 1949 (70)</td>\n                </tr>\n                <tr>\n                  <th>Gender</th>\n                  <td>Male</td>\n                </tr>\n                <tr>\n                  <th>Indigenous status</th>\n                  <td>Neither Aboriginal nor Torres Strait Islander origin</td>\n                </tr>\n                <tr>\n                  <th>IHI</th>\n                  <td>8003608833357361</td>\n                </tr>\n                <tr>\n                  <th>Address</th>\n                  <td>4 Brisbane Street, Brisbane, QLD 4112, Australia</td>\n                </tr>\n              </tbody>\n            </table>\n\n            <h2>Provider details</h2>\n            <table>\n              <tbody>\n                <tr>\n                  <th>Hospital name</th>\n                  <td>Downunder Hospital</td>\n                </tr>\n                <tr>\n                  <th>Hospital address</th>\n                  <td>3 McGregor Street, Blacktown, NSW 2148, Australia</td>\n                </tr>\n                <tr>\n                  <th>Telephone number</th>\n                  <td>(02)5550 3333</td>\n                </tr>\n                <tr>\n                  <th>Doctor</th>\n                  <td>Dr Helen Mayo, Cardiologist</td>\n                </tr>\n                <tr>\n                  <th>HPI-I</th>\n                  <td>8003619900015717</td>\n                </tr>\n                <tr>\n                  <th>Prescriber Number</th>\n                  <td>453221</td>\n                </tr>\n              </tbody>\n            </table>\n\n            <h2>Current Medicines List on Discharge at 19/03/2019</h2>\n            <table border=\"1\">\n              <thead>\n                <tr>\n                  <th>Medicine</th>\n                  <th>Brand name</th>\n                  <th>Directions</th>\n                  <th>Morn</th>\n                  <th>Mid</th>\n                  <th>Eve</th>\n                  <th>Bed</th>\n                  <th>Medicine purpose</th>\n                  <th>Special instructions</th>\n                </tr>\n              </thead>\n              <tbody>\n                <tr>\n                  <td>FLUOXETINE 20mg TABLETS</td>\n                  <td>LOVAN, PROZAC, ZACTIN</td>\n                  <td>Take HALF a tablet dispersed in water in the MORNING.</td>\n                  <td>0.5</td>\n                  <td/>\n                  <td/>\n                  <td/>\n                  <td>For depression.</td>\n                  <td/>\n                </tr>\n                <tr>\n                  <td>ASPIRIN 100mg EC TABLET</td>\n                  <td>CARTIA</td>\n                  <td>Swallow whole ONE tablet in the MORNING WITH FOOD.</td>\n                  <td>1</td>\n                  <td/>\n                  <td/>\n                  <td/>\n                  <td>To thin the blood to prevent heart attack or stroke.</td>\n                  <td>Swallow whole after food. If develop swollen ankles, difficulty in breathing,\n                    black stools or vomit that looks like coffee grounds, stop taking the medicine\n                    and contact the doctor without delay. It may be advisable to stop taking aspirin\n                    7 days before planed surgery and some dental procedure; discuss with your doctor\n                    or dentist.</td>\n                </tr>\n                <tr>\n                  <td>TICAGRELOR 90mg TABLETS</td>\n                  <td>BRILINTA</td>\n                  <td>Take ONE tablet TWICE a day.</td>\n                  <td>1</td>\n                  <td/>\n                  <td/>\n                  <td>1</td>\n                  <td>For angina or to keep the blood thin.</td>\n                  <td>Do not take more than one aspirin tablet or capsule each day while being\n                    treated with this medicine.</td>\n                </tr>\n                <tr>\n                  <td>OMEGA-3-ACID ETHYL ESTERS 1000mg CAPSULES</td>\n                  <td>OMACOR</td>\n                  <td>Take ONE capsule at NIGHT.</td>\n                  <td/>\n                  <td/>\n                  <td/>\n                  <td>1</td>\n                  <td/>\n                  <td/>\n                </tr>\n                <tr>\n                  <td>NIFEDIPINE 30mg CONTROLLED RELEASE TABLETS</td>\n                  <td>ADEFIN XL 30, ADALAT OROS, ADEFIN OROS, ADDOS XR 30, APO-NIFEDIPINE XR</td>\n                  <td>Swallow whole ONE tablet at NIGHT.</td>\n                  <td/>\n                  <td/>\n                  <td/>\n                  <td>1</td>\n                  <td/>\n                  <td>Swallow whole with a glass of fluid, do not crush or chew the tablets. Take\n                    regularly and do not miss doses. Do not stop taking suddenly unless advised by\n                    your doctor. This medicine may affect mental alertness and/or operate machinery.\n                    If affected do not drive or operate machinery. Avoid eating grapefruit or\n                    drinking grapefruit juice while being treated with this medicine.</td>\n                </tr>\n                <tr>\n                  <td>GLYCERIL TRINITRATE 600mcg (30) SUBLINGUAL TABLETS</td>\n                  <td>ANGININE</td>\n                  <td>Place ONE tablet under the tongue and allow to dissolve when needed for chest\n                    pain. DISCARD CONTENTS THREE MONTHS AFTER OPENING.</td>\n                  <td>When necessary.</td>\n                  <td/>\n                  <td/>\n                  <td/>\n                  <td>To relieve chest pain associated with angina.</td>\n                  <td>Sit or lie down before use as it may cause dizziness. Get up gradually from\n                    sitting or lying to minimise this effect. Place half to one tablet under the\n                    tongue. Do not swallow it. After the pain has been relieved, spit out what is\n                    left of the tablet to avoid adverse effects such as headache. It is important to\n                    store these tablets properly or they may not work as well. Keep them in the\n                    original glass bottle away from moisture, heat and light. Do not carry them\n                    close to your body. Write the date on the bottle when you open it and discard\n                    any unused tablets 3 months later (after that time, they will not be reliably\n                    effective).</td>\n                </tr>\n                <tr>\n                  <td>ATORVASTATIN 80mg TABLETS</td>\n                  <td>APO-ATORVASTATIN, LIPITOR, LORSTAT</td>\n                  <td>Take ONE tablet at NIGHT.</td>\n                  <td/>\n                  <td/>\n                  <td/>\n                  <td>1</td>\n                  <td>To lower cholesterol levels in the blood.</td>\n                  <td>Avoid eating grapefruit or drinking grapefruit juice while being treated with\n                    this medicine as this could increase the chances of side-effects occurring. Seek\n                    medical advice promptly if your urine is dark (brown) or you have any muscle\n                    pain, tenderness or weakness.</td>\n                </tr>\n                <tr>\n                  <td>METOPROLOL 50mg TABLETS</td>\n                  <td>MINAX 50, BETALOC</td>\n                  <td>Take ONE tablet TWICE a day (Relabelled Medication).</td>\n                  <td>1</td>\n                  <td/>\n                  <td/>\n                  <td>1</td>\n                  <td>For reducing blood pressure, angina or disturbances of heart rhythm.</td>\n                  <td/>\n                </tr>\n              </tbody>\n            </table>\n          </div>"
      },
      "status" : "current",
      "mode" : "snapshot",
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "8654-6"
        }],
        "text" : "Current Medicine on Discharge"
      },
      "subject" : {
        "reference" : "urn:uuid:f12d073e-4e99-11e9-8647-d663bd873d93"
      },
      "date" : "2019-03-19",
      "entry" : [{
        "item" : {
          "reference" : "urn:uuid:e36cef42-4ea3-11e9-8647-d663bd873d93"
        }
      },
      {
        "item" : {
          "reference" : "urn:uuid:fbc87b14-4ea4-11e9-8647-d663bd873d93"
        }
      },
      {
        "item" : {
          "reference" : "urn:uuid:9b6194f8-4ea5-11e9-8647-d663bd873d93"
        }
      },
      {
        "item" : {
          "reference" : "urn:uuid:cede882c-4ea5-11e9-8647-d663bd873d93"
        }
      },
      {
        "item" : {
          "reference" : "urn:uuid:f0a81ae0-4ea5-11e9-8647-d663bd873d93"
        }
      },
      {
        "item" : {
          "reference" : "urn:uuid:2450a7ea-4ea6-11e9-8647-d663bd873d93"
        }
      },
      {
        "item" : {
          "reference" : "urn:uuid:613a96e8-4ea6-11e9-8647-d663bd873d93"
        }
      },
      {
        "item" : {
          "reference" : "urn:uuid:91296398-4ea6-11e9-8647-d663bd873d93"
        }
      }]
    }
  },
  {
    "fullUrl" : "urn:uuid:f12d073e-4e99-11e9-8647-d663bd873d93",
    "resource" : {
      "resourceType" : "Patient",
      "id" : "f12d073e-4e99-11e9-8647-d663bd873d93",
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Patient_f12d073e-4e99-11e9-8647-d663bd873d93\"> </a>\n            <p>\n              <b>Generated Narrative with Details</b>\n            </p>\n            <p><b>id</b>: f12d073e-4e99-11e9-8647-d663bd873d93</p>\n            <p><b>meta</b>: </p>\n            <p><b>identifier</b>: IHI = 8003608833357361</p>\n            <p><b>name</b>: Nicholas Jones </p>\n            <p><b>telecom</b>: nick.jones@amail.example.com(HOME), ph: (0491) 570 006(MOBILE)</p>\n            <p><b>gender</b>: male</p>\n            <p><b>birthDate</b>: 08/01/1949</p>\n            <p><b>address</b>: 4 Brisbane Street Brisbane QLD 4112 Australia (HOME)</p>\n          </div>"
      },
      "extension" : [{
        "url" : "http://hl7.org.au/fhir/StructureDefinition/indigenous-status",
        "valueCoding" : {
          "system" : "https://healthterminologies.gov.au/fhir/CodeSystem/australian-indigenous-status-1",
          "code" : "4",
          "display" : "Neither Aboriginal nor Torres Strait Islander origin"
        }
      }],
      "identifier" : [{
        "extension" : [{
          "url" : "http://hl7.org.au/fhir/StructureDefinition/ihi-status",
          "valueCoding" : {
            "system" : "https://healthterminologies.gov.au/fhir/CodeSystem/ihi-status-1",
            "code" : "active",
            "display" : "active"
          }
        },
        {
          "url" : "http://hl7.org.au/fhir/StructureDefinition/ihi-record-status",
          "valueCoding" : {
            "system" : "https://healthterminologies.gov.au/fhir/CodeSystem/ihi-record-status-1",
            "code" : "Verified",
            "display" : "Verified"
          }
        }],
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "NI",
            "display" : "National unique individual identifier"
          }]
        },
        "system" : "http://ns.electronichealth.net.au/id/hi/ihi/1.0",
        "value" : "8003608833357361"
      }],
      "name" : [{
        "family" : "Jones",
        "given" : ["Nicholas"],
        "prefix" : ["Mr"]
      }],
      "telecom" : [{
        "system" : "email",
        "value" : "nick.jones@amail.example.com",
        "use" : "home"
      },
      {
        "system" : "phone",
        "value" : "(0491) 570 006",
        "use" : "mobile"
      }],
      "gender" : "male",
      "birthDate" : "1949-01-08",
      "address" : [{
        "use" : "home",
        "line" : ["4 Brisbane Street"],
        "city" : "Brisbane",
        "state" : "QLD",
        "postalCode" : "4112",
        "country" : "Australia"
      }]
    }
  },
  {
    "fullUrl" : "urn:uuid:9024d4a6-4ea0-11e9-8647-d663bd873d93",
    "resource" : {
      "resourceType" : "PractitionerRole",
      "id" : "9024d4a6-4ea0-11e9-8647-d663bd873d93",
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"PractitionerRole_9024d4a6-4ea0-11e9-8647-d663bd873d93\"> </a>\n            <p>\n              <b>Generated Narrative with Details</b>\n            </p>\n            <p><b>id</b>: 9024d4a6-4ea0-11e9-8647-d663bd873d93</p>\n            <p><b>identifier</b>: Medicare Provider Number = 2426621B</p>\n            <p><b>active</b>: true</p>\n            <p><b>practitioner</b>: <a href=\"Practitioner-example0.html\">Generated Summary: id:\n              example0; HPI-I = 8003619900015717, Prescriber Number = 453221; active; Helen Mayo ;\n                helen.mayo@downunderhospital.example.com(WORK)</a></p>\n            <p><b>organization</b>: <a href=\"Organization-example0.html\">Generated Summary: id:\n              example0; HPI-O = 8003621566684455; active; name: Downunder Hospital;\n                helen.mayo@downunderhospital.exanple.com(WORK)</a></p>\n            <p><b>specialty</b>: Cardiologist <span style=\"background: LightGoldenRodYellow\">(Details : {SNOMED CT code '17561000' = 'Cardiologist', given as\n                'Cardiologist'})</span></p>\n            <p><b>location</b>: <a href=\"Location-example0.html\">Generated Summary: id: example0;\n                status: active; name: Downunder Hospital Blacktown; ph: 025553555(WORK)</a></p>\n            <p><b>telecom</b>: ph: 0255503333(WORK)</p>\n          </div>"
      },
      "identifier" : [{
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org.au/CodeSystem/v2-0203",
            "code" : "UPIN"
          }]
        },
        "system" : "http://ns.electronichealth.net.au/id/provider-number",
        "value" : "2426621B"
      }],
      "active" : true,
      "practitioner" : {
        "reference" : "urn:uuid:9024d118-4ea0-11e9-8647-d663bd873d93"
      },
      "organization" : {
        "reference" : "urn:uuid:b377cc18-4ea2-11e9-8647-d663bd873d93"
      },
      "specialty" : [{
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "17561000",
          "display" : "Cardiologist"
        }]
      }],
      "telecom" : [{
        "system" : "phone",
        "value" : "025553333",
        "use" : "work"
      }]
    }
  },
  {
    "fullUrl" : "urn:uuid:9024d118-4ea0-11e9-8647-d663bd873d93",
    "resource" : {
      "resourceType" : "Practitioner",
      "id" : "9024d118-4ea0-11e9-8647-d663bd873d93",
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Practitioner_9024d118-4ea0-11e9-8647-d663bd873d93\"> </a>\n            <p>\n              <b>Generated Narrative with Details</b>\n            </p>\n            <p><b>id</b>: 9024d118-4ea0-11e9-8647-d663bd873d93</p>\n            <p><b>identifier</b>: HPI-I = 8003619900015717, Prescriber Number = 453221</p>\n            <p><b>active</b>: true</p>\n            <p><b>name</b>: Helen Mayo </p>\n            <p><b>telecom</b>: helen.mayo@downunderhospital.example.com(WORK)</p>\n            <p><b>address</b>: 3 McGregor Street Blacktown NSW 2148 Australia (WORK)</p>\n            <h3>Qualifications</h3>\n            <table class=\"grid\">\n              <tr>\n                <td>-</td>\n                <td>\n                  <b>Identifier</b>\n                </td>\n                <td>\n                  <b>Code</b>\n                </td>\n                <td>\n                  <b>Issuer</b>\n                </td>\n              </tr>\n              <tr>\n                <td>*</td>\n                <td>Ahpra Registration Number = MED0000932945</td>\n                <td>General Practitioner <span style=\"background: LightGoldenRodYellow\">(Details :\n                    {http://www.abs.gov.au/ausstats/abs@.nsf/mf/1220.0 code '253111' = '253111',\n                    given as 'General Practitioner'})</span></td>\n                <td>Ahpra</td>\n              </tr>\n            </table>\n          </div>"
      },
      "identifier" : [{
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "NPI",
            "display" : "National provider identifier"
          }]
        },
        "system" : "http://ns.electronichealth.net.au/id/hi/hpii/1.0",
        "value" : "8003610833334085"
      },
      {
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org.au/CodeSystem/v2-0203",
            "code" : "PRES",
            "display" : "Prescriber Number"
          }]
        },
        "system" : "http://ns.electronichealth.net.au/id/medicare-prescriber-number",
        "value" : "453221"
      }],
      "active" : true,
      "name" : [{
        "family" : "Mayo",
        "given" : ["Helen"],
        "prefix" : ["Dr"]
      }],
      "telecom" : [{
        "system" : "email",
        "value" : "helen.mayo@downunderhospital.example.com",
        "use" : "work"
      }],
      "address" : [{
        "use" : "work",
        "line" : ["3 McGregor Street"],
        "city" : "Blacktown",
        "state" : "NSW",
        "postalCode" : "2148",
        "country" : "Australia"
      }],
      "qualification" : [{
        "identifier" : [{
          "type" : {
            "coding" : [{
              "system" : "http://terminology.hl7.org.au/CodeSystem/v2-0203",
              "code" : "AHPRA",
              "display" : "Australian Health Practitioner Regulation Agency Registration Number"
            }]
          },
          "system" : "http://hl7.org.au/id/ahpra-registration-number",
          "value" : "MED0000932945"
        }],
        "code" : {
          "coding" : [{
            "system" : "http://www.abs.gov.au/ausstats/abs@.nsf/mf/1220.0",
            "code" : "253111",
            "display" : "General Practitioner"
          }],
          "text" : "General Practitioner"
        },
        "issuer" : {
          "display" : "Ahpra"
        }
      }]
    }
  },
  {
    "fullUrl" : "urn:uuid:b377cc18-4ea2-11e9-8647-d663bd873d93",
    "resource" : {
      "resourceType" : "Organization",
      "id" : "b377cc18-4ea2-11e9-8647-d663bd873d93",
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Organization_b377cc18-4ea2-11e9-8647-d663bd873d93\"> </a>\n            <p>\n              <b>Generated Narrative with Details</b>\n            </p>\n            <p><b>id</b>: b377c682-4ea2-11e9-8647-d663bd873d93</p>\n            <p><b>identifier</b>: HPI-O = 8003621566684455</p>\n            <p><b>active</b>: true</p>\n            <p><b>name</b>: Downunder Hospital</p>\n            <p><b>address</b>: 3 McGregor Street Blacktown NSW 2148 Australia</p>\n          </div>"
      },
      "identifier" : [{
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org.au/CodeSystem/v2-0203",
            "code" : "NOI",
            "display" : "National Organisation Identifier"
          }]
        },
        "system" : "http://ns.electronichealth.net.au/id/hi/hpio/1.0",
        "value" : "8003621566684455"
      }],
      "active" : true,
      "name" : "Downunder Hospital",
      "address" : [{
        "line" : ["3 McGregor Street"],
        "city" : "Blacktown",
        "state" : "NSW",
        "postalCode" : "2148",
        "country" : "Australia"
      }]
    }
  },
  {
    "fullUrl" : "urn:uuid:e36cef42-4ea3-11e9-8647-d663bd873d93",
    "resource" : {
      "resourceType" : "MedicationStatement",
      "id" : "e36cef42-4ea3-11e9-8647-d663bd873d93",
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MedicationStatement_e36cef42-4ea3-11e9-8647-d663bd873d93\"> </a>\n            <h2>Patient</h2>\n            <table>\n              <tbody>\n                <tr>\n                  <th>Name</th>\n                  <td>Mr Nicholas Jones </td>\n                </tr>\n                <tr>\n                  <th>DoB</th>\n                  <td>8 January 1949 (70)</td>\n                </tr>\n                <tr>\n                  <th>Gender</th>\n                  <td>Male</td>\n                </tr>\n                <tr>\n                  <th>Indigenous status</th>\n                  <td>Neither Aboriginal nor Torres Strait Islander origin</td>\n                </tr>\n                <tr>\n                  <th>IHI</th>\n                  <td>8003608833357361</td>\n                </tr>\n                <tr>\n                  <th>Address</th>\n                  <td>4 Brisbane Street, Brisbane, QLD 4112, Australia</td>\n                </tr>\n              </tbody>\n            </table>\n            <h2>Medication</h2>\n            <table border=\"1\">\n              <thead>\n                <tr>\n                  <th>Medicine</th>\n                  <th>Brand name</th>\n                  <th>Directions</th>\n                  <th>Morn</th>\n                  <th>Mid</th>\n                  <th>Eve</th>\n                  <th>Bed</th>\n                  <th>Medicine purpose</th>\n                  <th>Special instructions</th>\n                </tr>\n              </thead>\n              <tbody>\n                <tr>\n                  <td>FLUOXETINE 20mg TABLETS</td>\n                  <td>LOVAN, PROZAC, ZACTIN</td>\n                  <td>Take HALF a tablet dispersed in water in the MORNING.</td>\n                  <td>0.5</td>\n                  <td/>\n                  <td/>\n                  <td/>\n                  <td>For depression.</td>\n                  <td/>\n                </tr>\n              </tbody>\n            </table>\n          </div>"
      },
      "status" : "active",
      "medicationCodeableConcept" : {
        "coding" : [{
          "extension" : [{
            "url" : "http://hl7.org.au/fhir/StructureDefinition/medication-type",
            "valueCoding" : {
              "system" : "http://terminology.hl7.org.au/CodeSystem/medication-type",
              "code" : "UPDSF",
              "display" : "Unbranded product with strengths and form"
            }
          }],
          "system" : "http://snomed.info/sct",
          "code" : "844301000168106",
          "display" : "Fluoxetine 20 mg tablet"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org.au/fhir/StructureDefinition/medication-type",
            "valueCoding" : {
              "system" : "http://terminology.hl7.org.au/CodeSystem/medication-type",
              "code" : "BPD",
              "display" : "Branded product with no strengths or form"
            }
          }],
          "system" : "http://snomed.info/sct",
          "code" : "2938011000036102"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org.au/fhir/StructureDefinition/medication-type",
            "valueCoding" : {
              "system" : "http://terminology.hl7.org.au/CodeSystem/medication-type",
              "code" : "BPD",
              "display" : "Branded product with no strengths or form"
            }
          }],
          "system" : "http://snomed.info/sct",
          "code" : "2954011000036108"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org.au/fhir/StructureDefinition/medication-type",
            "valueCoding" : {
              "system" : "http://terminology.hl7.org.au/CodeSystem/medication-type",
              "code" : "BPD",
              "display" : "Branded product with no strengths or form"
            }
          }],
          "system" : "http://snomed.info/sct",
          "code" : "2952011000036104"
        }],
        "text" : "FLUOXETINE 20mg TABLETS, LOVAN,PROZAC,ZACTIN"
      },
      "subject" : {
        "reference" : "urn:uuid:f12d073e-4e99-11e9-8647-d663bd873d93"
      },
      "reasonCode" : [{
        "text" : "Depression."
      }],
      "dosage" : [{
        "text" : "Take HALF a tablet dispersed in water in the MORNING.",
        "timing" : {
          "repeat" : {
            "frequency" : 1,
            "period" : 1,
            "periodUnit" : "d",
            "when" : ["MORN"]
          }
        },
        "doseAndRate" : [{
          "doseQuantity" : {
            "value" : 0.5,
            "unit" : "TAB",
            "system" : "http://terminology.hl7.org/CodeSystem/v3-orderableDrugForm",
            "code" : "TAB"
          }
        }]
      }]
    }
  },
  {
    "fullUrl" : "urn:uuid:fbc87b14-4ea4-11e9-8647-d663bd873d93",
    "resource" : {
      "resourceType" : "MedicationStatement",
      "id" : "fbc87b14-4ea4-11e9-8647-d663bd873d93",
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MedicationStatement_fbc87b14-4ea4-11e9-8647-d663bd873d93\"> </a>\n            <h2>Patient</h2>\n            <table>\n              <tbody>\n                <tr>\n                  <th>Name</th>\n                  <td>Mr Nicholas Jones </td>\n                </tr>\n                <tr>\n                  <th>DoB</th>\n                  <td>8 January 1949 (70)</td>\n                </tr>\n                <tr>\n                  <th>Gender</th>\n                  <td>Male</td>\n                </tr>\n                <tr>\n                  <th>Indigenous status</th>\n                  <td>Neither Aboriginal nor Torres Strait Islander origin</td>\n                </tr>\n                <tr>\n                  <th>IHI</th>\n                  <td>8003608833357361</td>\n                </tr>\n                <tr>\n                  <th>Address</th>\n                  <td>4 Brisbane Street, Brisbane, QLD 4112, Australia</td>\n                </tr>\n              </tbody>\n            </table>\n            <h2>Medication</h2>\n            <table border=\"1\">\n              <thead>\n                <tr>\n                  <th>Medicine</th>\n                  <th>Brand name</th>\n                  <th>Directions</th>\n                  <th>Morn</th>\n                  <th>Mid</th>\n                  <th>Eve</th>\n                  <th>Bed</th>\n                  <th>Medicine purpose</th>\n                  <th>Special instructions</th>\n                </tr>\n              </thead>\n              <tbody>\n                <tr>\n                  <td>ASPIRIN 100mg EC TABLET</td>\n                  <td>CARTIA</td>\n                  <td>Swallow whole ONE tablet in the MORNING WITH FOOD.</td>\n                  <td>1</td>\n                  <td/>\n                  <td/>\n                  <td/>\n                  <td>To thin the blood to prevent heart attack or stroke.</td>\n                  <td>Swallow whole after food. If develop swollen ankles, difficulty in breathing,\n                    black stools or vomit that looks like coffee grounds, stop taking the medicine\n                    and contact the doctor without delay. It may be advisable to stop taking aspirin\n                    7 days before planed surgery and some dental procedure; discuss with your doctor\n                    or dentist.&quot;</td>\n                </tr>\n              </tbody>\n            </table>\n          </div>"
      },
      "status" : "active",
      "medicationCodeableConcept" : {
        "coding" : [{
          "extension" : [{
            "url" : "http://hl7.org.au/fhir/StructureDefinition/medication-type",
            "valueCoding" : {
              "system" : "http://terminology.hl7.org.au/CodeSystem/medication-type",
              "code" : "UPDSF",
              "display" : "Unbranded product with strengths and form"
            }
          }],
          "system" : "http://snomed.info/sct",
          "code" : "75561000036109",
          "display" : "Aspirin 100 mg enteric tablet"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org.au/fhir/StructureDefinition/medication-type",
            "valueCoding" : {
              "system" : "http://terminology.hl7.org.au/CodeSystem/medication-type",
              "code" : "BPD",
              "display" : "Branded product with no strengths or form"
            }
          }],
          "system" : "http://snomed.info/sct",
          "code" : "3338011000036100",
          "display" : "Cartia"
        }],
        "text" : "ASPIRIN 100mg EC TABLET, CARTIA"
      },
      "subject" : {
        "reference" : "urn:uuid:f12d073e-4e99-11e9-8647-d663bd873d93"
      },
      "reasonCode" : [{
        "text" : "To thin the blood to prevent heart attack or stroke."
      }],
      "dosage" : [{
        "text" : "Swallow whole ONE tablet in the MORNING WITH FOOD.",
        "patientInstruction" : "Swallow whole after food. If develop swollen ankles, difficulty in breathing, black stools or vomit that looks like coffee grounds, stop taking the medicine and contact the doctor without delay. It may be advisable to stop taking aspirin 7 days before planed surgery and some dental procedure; discuss with your doctor or dentist.",
        "timing" : {
          "repeat" : {
            "frequency" : 1,
            "periodUnit" : "d",
            "when" : ["MORN"]
          }
        },
        "doseAndRate" : [{
          "doseQuantity" : {
            "value" : 1,
            "unit" : "TAB",
            "system" : "http://terminology.hl7.org/CodeSystem/v3-orderableDrugForm",
            "code" : "TAB"
          }
        }]
      }]
    }
  },
  {
    "fullUrl" : "urn:uuid:9b6194f8-4ea5-11e9-8647-d663bd873d93",
    "resource" : {
      "resourceType" : "MedicationStatement",
      "id" : "9b6194f8-4ea5-11e9-8647-d663bd873d93",
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MedicationStatement_9b6194f8-4ea5-11e9-8647-d663bd873d93\"> </a>\n            <h2>Patient</h2>\n            <table>\n              <tbody>\n                <tr>\n                  <th>Name</th>\n                  <td>Mr Nicholas Jones </td>\n                </tr>\n                <tr>\n                  <th>DoB</th>\n                  <td>8 January 1949 (70)</td>\n                </tr>\n                <tr>\n                  <th>Gender</th>\n                  <td>Male</td>\n                </tr>\n                <tr>\n                  <th>Indigenous status</th>\n                  <td>Neither Aboriginal nor Torres Strait Islander origin</td>\n                </tr>\n                <tr>\n                  <th>IHI</th>\n                  <td>8003608833357361</td>\n                </tr>\n                <tr>\n                  <th>Address</th>\n                  <td>4 Brisbane Street, Brisbane, QLD 4112, Australia</td>\n                </tr>\n              </tbody>\n            </table>\n            <h2>Medication</h2>\n            <table border=\"1\">\n              <thead>\n                <tr>\n                  <th>Medicine</th>\n                  <th>Brand name</th>\n                  <th>Directions</th>\n                  <th>Morn</th>\n                  <th>Mid</th>\n                  <th>Eve</th>\n                  <th>Bed</th>\n                  <th>Medicine purpose</th>\n                  <th>Special instructions</th>\n                </tr>\n              </thead>\n              <tbody>\n                <tr>\n                  <td>TICAGRELOR 90mg TABLETS</td>\n                  <td>BRILINTA</td>\n                  <td>Take ONE tablet TWICE a day.</td>\n                  <td>1</td>\n                  <td/>\n                  <td/>\n                  <td>1</td>\n                  <td>For angina or to keep the blood thin.</td>\n                  <td>Do not take more than one aspirin tablet or capsule each day while being\n                    treated with this medicine.</td>\n                </tr>\n              </tbody>\n            </table>\n          </div>"
      },
      "status" : "active",
      "medicationCodeableConcept" : {
        "coding" : [{
          "extension" : [{
            "url" : "http://hl7.org.au/fhir/StructureDefinition/medication-type",
            "valueCoding" : {
              "system" : "http://terminology.hl7.org.au/CodeSystem/medication-type",
              "code" : "UPDSF",
              "display" : "Unbranded product with strengths and form"
            }
          }],
          "system" : "http://snomed.info/sct",
          "code" : "32641000036100",
          "display" : "Ticagrelor 90 mg tablet"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org.au/fhir/StructureDefinition/medication-type",
            "valueCoding" : {
              "system" : "http://terminology.hl7.org.au/CodeSystem/medication-type",
              "code" : "BPD",
              "display" : "Branded product with no strengths or form"
            }
          }],
          "system" : "http://snomed.info/sct",
          "code" : "32101000036105",
          "display" : "Brilinta"
        }],
        "text" : "TICAGRELOR 90mg TABLETS, BRILINTA"
      },
      "subject" : {
        "reference" : "urn:uuid:f12d073e-4e99-11e9-8647-d663bd873d93"
      },
      "reasonCode" : [{
        "text" : "For angina or to keep the blood thin."
      }],
      "dosage" : [{
        "text" : "Take ONE tablet TWICE a day.",
        "patientInstruction" : "Do not take more than one aspirin tablet or capsule each day while being treated with this medicine.",
        "timing" : {
          "repeat" : {
            "frequency" : 2,
            "period" : 1,
            "periodUnit" : "d",
            "when" : ["MORN", "HS"]
          }
        },
        "doseAndRate" : [{
          "doseQuantity" : {
            "value" : 1,
            "unit" : "TAB",
            "system" : "http://terminology.hl7.org/CodeSystem/v3-orderableDrugForm",
            "code" : "TAB"
          }
        }]
      }]
    }
  },
  {
    "fullUrl" : "urn:uuid:cede882c-4ea5-11e9-8647-d663bd873d93",
    "resource" : {
      "resourceType" : "MedicationStatement",
      "id" : "cede882c-4ea5-11e9-8647-d663bd873d93",
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MedicationStatement_cede882c-4ea5-11e9-8647-d663bd873d93\"> </a>\n            <h2>Patient</h2>\n            <table>\n              <tbody>\n                <tr>\n                  <th>Name</th>\n                  <td>Mr Nicholas Jones </td>\n                </tr>\n                <tr>\n                  <th>DoB</th>\n                  <td>8 January 1949 (70)</td>\n                </tr>\n                <tr>\n                  <th>Gender</th>\n                  <td>Male</td>\n                </tr>\n                <tr>\n                  <th>Indigenous status</th>\n                  <td>Neither Aboriginal nor Torres Strait Islander origin</td>\n                </tr>\n                <tr>\n                  <th>IHI</th>\n                  <td>8003608833357361</td>\n                </tr>\n                <tr>\n                  <th>Address</th>\n                  <td>4 Brisbane Street, Brisbane, QLD 4112, Australia</td>\n                </tr>\n              </tbody>\n            </table>\n            <h2>Medication</h2>\n            <table border=\"1\">\n              <thead>\n                <tr>\n                  <th>Medicine</th>\n                  <th>Brand name</th>\n                  <th>Directions</th>\n                  <th>Morn</th>\n                  <th>Mid</th>\n                  <th>Eve</th>\n                  <th>Bed</th>\n                  <th>Medicine purpose</th>\n                  <th>Special instructions</th>\n                </tr>\n              </thead>\n              <tbody>\n                <tr>\n                  <td>OMEGA-3-ACID ETHYL ESTERS 1000mg CAPSULES</td>\n                  <td>OMACOR</td>\n                  <td>Take ONE capsule at NIGHT.</td>\n                  <td/>\n                  <td/>\n                  <td/>\n                  <td>1</td>\n                  <td/>\n                  <td/>\n                </tr>\n              </tbody>\n            </table>\n          </div>"
      },
      "status" : "active",
      "medicationCodeableConcept" : {
        "coding" : [{
          "extension" : [{
            "url" : "http://hl7.org.au/fhir/StructureDefinition/medication-type",
            "valueCoding" : {
              "system" : "http://terminology.hl7.org.au/CodeSystem/medication-type",
              "code" : "UPDSF",
              "display" : "Unbranded product with strengths and form"
            }
          }],
          "system" : "http://snomed.info/sct",
          "code" : "931840011000036108",
          "display" : "Omega-3-acid ethyl esters-90 1 g capsule"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org.au/fhir/StructureDefinition/medication-type",
            "valueCoding" : {
              "system" : "http://terminology.hl7.org.au/CodeSystem/medication-type",
              "code" : "BPD",
              "display" : "Branded product with no strengths or form"
            }
          }],
          "system" : "http://snomed.info/sct",
          "code" : "929850011000036100",
          "display" : "Omacor"
        }],
        "text" : "OMEGA-3-ACID ETHYL ESTERS 1000mg CAPSULES, OMACOR"
      },
      "subject" : {
        "reference" : "urn:uuid:f12d073e-4e99-11e9-8647-d663bd873d93"
      },
      "dosage" : [{
        "text" : "Take ONE capsule at NIGHT.",
        "timing" : {
          "repeat" : {
            "frequency" : 1,
            "period" : 1,
            "periodUnit" : "d",
            "when" : ["HS"]
          }
        },
        "doseAndRate" : [{
          "doseQuantity" : {
            "value" : 1,
            "unit" : "CAP",
            "system" : "http://terminology.hl7.org/CodeSystem/v3-orderableDrugForm",
            "code" : "CAP"
          }
        }]
      }]
    }
  },
  {
    "fullUrl" : "urn:uuid:f0a81ae0-4ea5-11e9-8647-d663bd873d93",
    "resource" : {
      "resourceType" : "MedicationStatement",
      "id" : "f0a81ae0-4ea5-11e9-8647-d663bd873d93",
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MedicationStatement_f0a81ae0-4ea5-11e9-8647-d663bd873d93\"> </a>\n            <h2>Patient</h2>\n            <table>\n              <tbody>\n                <tr>\n                  <th>Name</th>\n                  <td>Mr Nicholas Jones </td>\n                </tr>\n                <tr>\n                  <th>DoB</th>\n                  <td>8 January 1949 (70)</td>\n                </tr>\n                <tr>\n                  <th>Gender</th>\n                  <td>Male</td>\n                </tr>\n                <tr>\n                  <th>Indigenous status</th>\n                  <td>Neither Aboriginal nor Torres Strait Islander origin</td>\n                </tr>\n                <tr>\n                  <th>IHI</th>\n                  <td>8003608833357361</td>\n                </tr>\n                <tr>\n                  <th>Address</th>\n                  <td>4 Brisbane Street, Brisbane, QLD 4112, Australia</td>\n                </tr>\n              </tbody>\n            </table>\n            <h2>Medication</h2>\n            <table border=\"1\">\n              <thead>\n                <tr>\n                  <th>Medicine</th>\n                  <th>Brand name</th>\n                  <th>Directions</th>\n                  <th>Morn</th>\n                  <th>Mid</th>\n                  <th>Eve</th>\n                  <th>Bed</th>\n                  <th>Medicine purpose</th>\n                  <th>Special instructions</th>\n                </tr>\n              </thead>\n              <tbody>\n                <tr>\n                  <td>NIFEDIPINE 30mg CONTROLLED RELEASE TABLETS</td>\n                  <td>ADEFIN XL 30, ADALAT OROS, ADEFIN OROS, ADDOS XR 30, APO-NIFEDIPINE XR</td>\n                  <td>Swallow whole ONE tablet at NIGHT.</td>\n                  <td/>\n                  <td/>\n                  <td/>\n                  <td>1</td>\n                  <td/>\n                  <td>Swallow whole with a glass of fluid, do not crush or chew the tablets. advised\n                    by your doctor. This medicine may affect mental alertness and/or operate\n                    machinery. Take regularly and do not miss doses. Do not stop taking suddenly\n                    unless If affected do not drive or operate machinery. Avoid eating grapefruit or\n                    drinking grapefruit juice while being treated with this medicine.</td>\n                </tr>\n              </tbody>\n            </table>\n          </div>"
      },
      "status" : "active",
      "medicationCodeableConcept" : {
        "coding" : [{
          "extension" : [{
            "url" : "http://hl7.org.au/fhir/StructureDefinition/medication-type",
            "valueCoding" : {
              "system" : "http://terminology.hl7.org.au/CodeSystem/medication-type",
              "code" : "UPDSF",
              "display" : "Unbranded product with strengths and form"
            }
          }],
          "system" : "http://snomed.info/sct",
          "code" : "23369011000036100",
          "display" : "Nifedipine 30 mg modified release tablet"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org.au/fhir/StructureDefinition/medication-type",
            "valueCoding" : {
              "system" : "http://terminology.hl7.org.au/CodeSystem/medication-type",
              "code" : "BPDSF",
              "display" : "Branded product with strengths and form"
            }
          }],
          "system" : "http://snomed.info/sct",
          "code" : "7270011000036102",
          "display" : "Adefin XL 30 mg modified release tablet"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org.au/fhir/StructureDefinition/medication-type",
            "valueCoding" : {
              "system" : "http://terminology.hl7.org.au/CodeSystem/medication-type",
              "code" : "BPD",
              "display" : "Branded product with no strengths or form"
            }
          }],
          "system" : "http://snomed.info/sct",
          "code" : "28961000168100",
          "display" : "Adalat Oros"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org.au/fhir/StructureDefinition/medication-type",
            "valueCoding" : {
              "system" : "http://terminology.hl7.org.au/CodeSystem/medication-type",
              "code" : "BPD",
              "display" : "Branded product with no strengths or form"
            }
          }],
          "system" : "http://snomed.info/sct",
          "code" : "30671000168101",
          "display" : "Addos XR"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org.au/fhir/StructureDefinition/medication-type",
            "valueCoding" : {
              "system" : "http://terminology.hl7.org.au/CodeSystem/medication-type",
              "code" : "BPD",
              "display" : "Branded product with no strengths or form"
            }
          }],
          "system" : "http://snomed.info/sct",
          "code" : "501000168108",
          "display" : "Nifedipine XR (Apo)"
        }],
        "text" : "NIFEDIPINE 30mg CONTROLLED RELEASE TABLETS, ADEFIN XL 30, ADALAT OROS, ADEFIN OROS, ADDOS XR 30, APO-NIFEDIPINE XR"
      },
      "subject" : {
        "reference" : "urn:uuid:f12d073e-4e99-11e9-8647-d663bd873d93"
      },
      "dosage" : [{
        "text" : "Swallow whole ONE tablet at NIGHT.",
        "patientInstruction" : "Swallow whole with a glass of fluid, do not crush or chew the tablets. Take regularly and do not miss doses. Do not stop taking suddenly unless advised by your doctor. This medicine may affect mental alertness and/or operate machinery. If affected do not drive or operate machinery. Avoid eating grapefruit or drinking grapefruit juice while being treated with this medicine.",
        "timing" : {
          "repeat" : {
            "frequency" : 1,
            "period" : 1,
            "periodUnit" : "d",
            "when" : ["HS"]
          }
        },
        "doseAndRate" : [{
          "doseQuantity" : {
            "value" : 1,
            "unit" : "TAB",
            "system" : "http://terminology.hl7.org/CodeSystem/v3-orderableDrugForm",
            "code" : "TAB"
          }
        }]
      }]
    }
  },
  {
    "fullUrl" : "urn:uuid:2450a7ea-4ea6-11e9-8647-d663bd873d93",
    "resource" : {
      "resourceType" : "MedicationStatement",
      "id" : "2450a7ea-4ea6-11e9-8647-d663bd873d93",
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MedicationStatement_2450a7ea-4ea6-11e9-8647-d663bd873d93\"> </a>\n            <h2>Patient</h2>\n            <table>\n              <tbody>\n                <tr>\n                  <th>Name</th>\n                  <td>Mr Nicholas Jones </td>\n                </tr>\n                <tr>\n                  <th>DoB</th>\n                  <td>8 January 1949 (70)</td>\n                </tr>\n                <tr>\n                  <th>Gender</th>\n                  <td>Male</td>\n                </tr>\n                <tr>\n                  <th>Indigenous status</th>\n                  <td>Neither Aboriginal nor Torres Strait Islander origin</td>\n                </tr>\n                <tr>\n                  <th>IHI</th>\n                  <td>8003608833357361</td>\n                </tr>\n                <tr>\n                  <th>Address</th>\n                  <td>4 Brisbane Street, Brisbane, QLD 4112, Australia</td>\n                </tr>\n              </tbody>\n            </table>\n            <h2>Medication</h2>\n            <table border=\"1\">\n              <thead>\n                <tr>\n                  <th>Medicine</th>\n                  <th>Brand name</th>\n                  <th>Directions</th>\n                  <th>Morn</th>\n                  <th>Mid</th>\n                  <th>Eve</th>\n                  <th>Bed</th>\n                  <th>Medicine purpose</th>\n                  <th>Special instructions</th>\n                </tr>\n              </thead>\n              <tbody>\n                <tr>\n                  <td>GLYCERIL TRINITRATE 600mcg (30) SUBLINGUAL TABLETS</td>\n                  <td>ANGININE</td>\n                  <td>Place ONE tablet under the tongue and allow to dissolve when needed for chest\n                    pain. DISCARD CONTENTS THREE MONTHS AFTER OPENING.</td>\n                  <td>When necessary.</td>\n                  <td/>\n                  <td/>\n                  <td/>\n                  <td>To relieve chest pain associated with angina.</td>\n                  <td>Sit or lie down before use as it may cause dizziness. Get up gradually from\n                    sitting or lying to minimise this effect. Place half to one tablet under the\n                    tongue. Do not swallow it. After the pain has been relieved, spit out what is\n                    left of the tablet to avoid adverse effects such as headache. It is important to\n                    store these tablets properly or they may not work as well. Keep them in the\n                    original glass bottle away from moisture, heat and light. Do not carry them\n                    close to your body. Write the date on the bottle when you open it and discard\n                    any unused tablets 3 months later (after that time, they will not be reliably\n                    effective).</td>\n                </tr>\n              </tbody>\n            </table>\n          </div>"
      },
      "status" : "not-taken",
      "medicationCodeableConcept" : {
        "coding" : [{
          "extension" : [{
            "url" : "http://hl7.org.au/fhir/StructureDefinition/medication-type",
            "valueCoding" : {
              "system" : "http://terminology.hl7.org.au/CodeSystem/medication-type",
              "code" : "UPG",
              "display" : "Unbranded package with no container"
            }
          }],
          "system" : "http://snomed.info/sct",
          "code" : "82521011000036105",
          "display" : "Glyceryl trinitrate 600 microgram sublingual tablet, 30"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org.au/fhir/StructureDefinition/medication-type",
            "valueCoding" : {
              "system" : "http://terminology.hl7.org.au/CodeSystem/medication-type",
              "code" : "BPD",
              "display" : "Branded product with no strengths or form"
            }
          }],
          "system" : "http://snomed.info/sct",
          "code" : "3935011000036104",
          "display" : "Anginine"
        }],
        "text" : "GLYCERIL TRINITRATE 600mcg (30) SUBLINGUAL TABLETS, ANGININE"
      },
      "subject" : {
        "reference" : "urn:uuid:f12d073e-4e99-11e9-8647-d663bd873d93"
      },
      "reasonCode" : [{
        "text" : "To relieve chest pain associated with angina."
      }],
      "dosage" : [{
        "text" : "Place ONE tablet under the tongue and allow to dissolve when needed for chest pain. DISCARD CONTENTS THREE MONTHS AFTER OPENING.",
        "patientInstruction" : "Sit or lie down before use as it may cause dizziness. Get up gradually from sitting or lying to minimise this effect. Place half to one tablet under the tongue. Do not swallow it. After the pain has been relieved, spit out what is left of the tablet to avoid adverse effects such as headache. It is important to store these tablets properly or they may not work as well. Keep them in the original glass bottle away from moisture, heat and light. Do not carry them close to your body. Write the date on the bottle when you open it and discard any unused tablets 3 months later (after that time, they will not be reliably effective).",
        "timing" : {
          "repeat" : {
            "frequency" : 1,
            "period" : 1,
            "periodUnit" : "d"
          }
        },
        "asNeededBoolean" : true
      }]
    }
  },
  {
    "fullUrl" : "urn:uuid:613a96e8-4ea6-11e9-8647-d663bd873d93",
    "resource" : {
      "resourceType" : "MedicationStatement",
      "id" : "613a96e8-4ea6-11e9-8647-d663bd873d93",
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MedicationStatement_613a96e8-4ea6-11e9-8647-d663bd873d93\"> </a>\n            <h2>Patient</h2>\n            <table>\n              <tbody>\n                <tr>\n                  <th>Name</th>\n                  <td>Mr Nicholas Jones </td>\n                </tr>\n                <tr>\n                  <th>DoB</th>\n                  <td>8 January 1949 (70)</td>\n                </tr>\n                <tr>\n                  <th>Gender</th>\n                  <td>Male</td>\n                </tr>\n                <tr>\n                  <th>Indigenous status</th>\n                  <td>Neither Aboriginal nor Torres Strait Islander origin</td>\n                </tr>\n                <tr>\n                  <th>IHI</th>\n                  <td>8003608833357361</td>\n                </tr>\n                <tr>\n                  <th>Address</th>\n                  <td>4 Brisbane Street, Brisbane, QLD 4112, Australia</td>\n                </tr>\n              </tbody>\n            </table>\n            <h2>Medication</h2>\n            <table border=\"1\">\n              <thead>\n                <tr>\n                  <th>Medicine</th>\n                  <th>Brand name</th>\n                  <th>Directions</th>\n                  <th>Morn</th>\n                  <th>Mid</th>\n                  <th>Eve</th>\n                  <th>Bed</th>\n                  <th>Medicine purpose</th>\n                  <th>Special instructions</th>\n                </tr>\n              </thead>\n              <tbody>\n                <tr>\n                  <td>ATORVASTATIN 80mg TABLETS</td>\n                  <td>APO-ATORVASTATIN, LIPITOR, LORSTAT</td>\n                  <td>Take ONE tablet at NIGHT.</td>\n                  <td/>\n                  <td/>\n                  <td/>\n                  <td>1</td>\n                  <td>To lower cholesterol levels in the blood.</td>\n                  <td>Avoid eating grapefruit or drinking grapefruit juice while being treated with\n                    this medicine as this could increase the chances of side-effects occurring. Seek\n                    medical advice promptly if your urine is dark (brown) or you have any muscle\n                    pain, tenderness or weakness.</td>\n                </tr>\n              </tbody>\n            </table>\n          </div>"
      },
      "status" : "active",
      "medicationCodeableConcept" : {
        "coding" : [{
          "extension" : [{
            "url" : "http://hl7.org.au/fhir/StructureDefinition/medication-type",
            "valueCoding" : {
              "system" : "http://terminology.hl7.org.au/CodeSystem/medication-type",
              "code" : "UPDSF",
              "display" : "Unbranded product with strengths and form"
            }
          }],
          "system" : "http://snomed.info/sct",
          "code" : "23165011000036107",
          "display" : "Atorvastatin 80 mg tablet"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org.au/fhir/StructureDefinition/medication-type",
            "valueCoding" : {
              "system" : "http://terminology.hl7.org.au/CodeSystem/medication-type",
              "code" : "BPD",
              "display" : "Branded product with no strengths or form"
            }
          }],
          "system" : "http://snomed.info/sct",
          "code" : "8071000168101",
          "display" : "Atorvastatin (Apo)"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org.au/fhir/StructureDefinition/medication-type",
            "valueCoding" : {
              "system" : "http://terminology.hl7.org.au/CodeSystem/medication-type",
              "code" : "BPD",
              "display" : "Branded product with no strengths or form"
            }
          }],
          "system" : "http://snomed.info/sct",
          "code" : "3877011000036101",
          "display" : "Lipitor"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org.au/fhir/StructureDefinition/medication-type",
            "valueCoding" : {
              "system" : "http://terminology.hl7.org.au/CodeSystem/medication-type",
              "code" : "BPD",
              "display" : "Branded product with no strengths or form"
            }
          }],
          "system" : "http://snomed.info/sct",
          "code" : "3877011000036101",
          "display" : "Lipitor"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org.au/fhir/StructureDefinition/medication-type",
            "valueCoding" : {
              "system" : "http://terminology.hl7.org.au/CodeSystem/medication-type",
              "code" : "BPD",
              "display" : "Branded product with no strengths or form"
            }
          }],
          "system" : "http://snomed.info/sct",
          "code" : "19751000036109",
          "display" : "Lorstat"
        }],
        "text" : "ATORVASTATIN 80mg TABLETS, APO-ATORVASTATIN, LIPITOR, LORSTAT"
      },
      "subject" : {
        "reference" : "urn:uuid:f12d073e-4e99-11e9-8647-d663bd873d93"
      },
      "reasonCode" : [{
        "text" : "To relieve chest pain associated with angina."
      }],
      "dosage" : [{
        "text" : "Take ONE tablet at NIGHT.",
        "patientInstruction" : "Avoid eating grapefruit or drinking grapefruit juice while being treated with this medicine as this could increase the chances of side-effects occurring. Seek medical advice promptly if your urine is dark (brown) or you have any muscle pain, tenderness or weakness.",
        "timing" : {
          "repeat" : {
            "frequency" : 1,
            "period" : 1,
            "periodUnit" : "d",
            "when" : ["HS"]
          }
        },
        "doseAndRate" : [{
          "doseQuantity" : {
            "value" : 1,
            "unit" : "TAB",
            "system" : "http://terminology.hl7.org/CodeSystem/v3-orderableDrugForm",
            "code" : "TAB"
          }
        }]
      }]
    }
  },
  {
    "fullUrl" : "urn:uuid:91296398-4ea6-11e9-8647-d663bd873d93",
    "resource" : {
      "resourceType" : "MedicationStatement",
      "id" : "91296398-4ea6-11e9-8647-d663bd873d93",
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MedicationStatement_91296398-4ea6-11e9-8647-d663bd873d93\"> </a>\n            <h2>Patient</h2>\n            <table>\n              <tbody>\n                <tr>\n                  <th>Name</th>\n                  <td>Mr Nicholas Jones </td>\n                </tr>\n                <tr>\n                  <th>DoB</th>\n                  <td>8 January 1949 (70)</td>\n                </tr>\n                <tr>\n                  <th>Gender</th>\n                  <td>Male</td>\n                </tr>\n                <tr>\n                  <th>Indigenous status</th>\n                  <td>Neither Aboriginal nor Torres Strait Islander origin</td>\n                </tr>\n                <tr>\n                  <th>IHI</th>\n                  <td>8003608833357361</td>\n                </tr>\n                <tr>\n                  <th>Address</th>\n                  <td>4 Brisbane Street, Brisbane, QLD 4112, Australia</td>\n                </tr>\n              </tbody>\n            </table>\n            <h2>Medication</h2>\n            <table border=\"1\">\n              <thead>\n                <tr>\n                  <th>Medicine</th>\n                  <th>Brand name</th>\n                  <th>Directions</th>\n                  <th>Morn</th>\n                  <th>Mid</th>\n                  <th>Eve</th>\n                  <th>Bed</th>\n                  <th>Medicine purpose</th>\n                  <th>Special instructions</th>\n                </tr>\n              </thead>\n              <tbody>\n                <tr>\n                  <td>METOPROLOL 50mg TABLETS</td>\n                  <td>MINAX 50, BETALOC</td>\n                  <td>Take ONE tablet TWICE a day (Relabelled Medication).</td>\n                  <td>1</td>\n                  <td/>\n                  <td/>\n                  <td>1</td>\n                  <td>For reducing blood pressure, angina or disturbances of heart rhythm.</td>\n                  <td/>\n                </tr>\n              </tbody>\n            </table>\n          </div>"
      },
      "status" : "active",
      "medicationCodeableConcept" : {
        "coding" : [{
          "extension" : [{
            "url" : "http://hl7.org.au/fhir/StructureDefinition/medication-type",
            "valueCoding" : {
              "system" : "http://terminology.hl7.org.au/CodeSystem/medication-type",
              "code" : "UPDSF",
              "display" : "Unbranded product with strengths and form"
            }
          }],
          "system" : "http://snomed.info/sct",
          "code" : "23221011000036102",
          "display" : "Metoprolol tartrate 50 mg tablet"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org.au/fhir/StructureDefinition/medication-type",
            "valueCoding" : {
              "system" : "http://terminology.hl7.org.au/CodeSystem/medication-type",
              "code" : "BPD",
              "display" : "Branded product with no strengths or form"
            }
          }],
          "system" : "http://snomed.info/sct",
          "code" : "4275011000036101",
          "display" : "Minax"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org.au/fhir/StructureDefinition/medication-type",
            "valueCoding" : {
              "system" : "http://terminology.hl7.org.au/CodeSystem/medication-type",
              "code" : "BPD",
              "display" : "Branded product with no strengths or form"
            }
          }],
          "system" : "http://snomed.info/sct",
          "code" : "3906011000036103",
          "display" : "Betaloc"
        }],
        "text" : "METOPROLOL 50mg TABLETS, MINAX 50, BETALOC"
      },
      "subject" : {
        "reference" : "urn:uuid:f12d073e-4e99-11e9-8647-d663bd873d93"
      },
      "reasonCode" : [{
        "text" : "For reducing blood pressure, angina or disturbances of heart rhythm."
      }],
      "dosage" : [{
        "text" : "Take ONE tablet TWICE a day.",
        "timing" : {
          "repeat" : {
            "frequency" : 2,
            "period" : 1,
            "periodUnit" : "d",
            "when" : ["MORN", "HS"]
          }
        },
        "doseAndRate" : [{
          "doseQuantity" : {
            "value" : 1,
            "unit" : "TAB",
            "system" : "http://terminology.hl7.org/CodeSystem/v3-orderableDrugForm",
            "code" : "TAB"
          }
        }]
      }]
    }
  }]
}

```
