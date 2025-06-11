### Usage Notes

**Profile specific implementation guidance:**

- An organisation can create a stable identifier that is unique within the application by including aspects such as software provider, instance identifier and identifier type when constructing with `Identifier.system` and `Identifier.value`. For example:
   - a single instance of an application assigning patient identifiers: http://software-provider.com/system-instance/identifiers/patient-id
   - a cloud provider assigning patient identifiers for multiple clients: http://cloud-provider.com/identifiers/patient-id
- A patient internal identifier is different to an MRN in a number of ways:
  - An MRN is purposefully intended to be referenced and shared by many systems in a given network, hospital or health service. The purpose of an MRN is to identify and match against patients across that network. It is assigned, managed and kept in sync by an assigning application, typically a Patient Master Index. 
  - An patient internal identifier is a patient identifier assigned within a single application. It is only unique within the assigning application instance and is not intended to be widely shared.
 