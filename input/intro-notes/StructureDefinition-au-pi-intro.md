### Usage Notes

**Profile specific implementation guidance:**

- An organisation can create a stable identifier that is unique within the application by including aspects such as software provider, system instance, instance identifier and identifier type when constructing with `Identifier.system` and `Identifier.value`. For example:
   - a single instance of an application assigning patient identifiers: `http://software-provider.com/system-instance/identifiers/patient-id` 
   - a cloud provider assigning patient identifiers for multiple clients: `http://cloud-provider.com/identifiers/patient-id` 
   - an identifier assigned by a tenant within a multi-tenant application: `http://cloud-provider.com/identifiers/tenant-id/patient-id` 
- Additional guidance can be found in the [Identifiers](https://hl7.org/fhir/R4/datatypes.html#Identifier) section of the FHIR Specification.
- A patient internal identifier is different to a Medical Record Number (MRN) in a number of ways:
  - An MRN is purposefully intended to be referenced and shared by many systems in a given network, hospital or health service. The purpose of an MRN is to identify and match against patients across that network. It is assigned, managed and kept in sync by an assigning application, typically a Patient Master Index. 
  - A patient internal identifier is an identifier for a patient assigned within a single application. While it may be exchanged with other applications, this is usually for context specific patient matching with the expectation that subsequent exchanges may return this patient internal identifier. For example, exchange between a practice management system and a pathology information system. It is not intended to be broadly shared beyond the consuming applications and is not managed by an assigning application like a Patient Master Index. A patient internal identifier is not a strong key, implementers need to take great care when sharing patient internal identifiers.
 