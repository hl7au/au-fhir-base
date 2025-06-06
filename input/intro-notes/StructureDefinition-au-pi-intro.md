### Usage Notes

**Profile specific implementation guidance:**
- The term "application", as used in the context of the patient internal identifier, is a broad term that includes on-premise practice management system, multi-tenant cloud based electronic medical record application, or other clinical information systems including those used in pharmacy, laboratory, or imaging settings.
- An organisation can create a stable identifier that is unique within the application by including aspects such as software provider, system instance, instance identifier and identifier type when constructed with `Identifier.system` and `Identifier.value`.  For example:
   - `http://software-provider.com/system-instance/identifiers/patient-id` for a single instance of an application assigning patient identifiers
   - `http://cloud-provider.com/identifiers/patient-id` for a cloud provider assigning patient identifiers for multiple clients
   - `http://cloud-provider.com/identifiers/tenant-id/patient-id` for an identifier assigned within the context of a tenant of a multi-tenanted application
- Additional guidance can be found in the [Identifiers](https://hl7.org/fhir/R4/datatypes.html#Identifier) section of the FHIR Specification.
- A PI is different to a Medical Record Number (MR) in a number of ways:
  - An MR is purposefully intended to be referenced and shared by many systems in a given network, hospital or health service. The purpose of an MR is to identify and match against patients across that network. It is assigned, managed and kept in sync by an assigning application, typically a Patient Master Index. 
  - A PI is an identifier for a patient assigned within an application instance and may be exchanged with other applications, with the expectation that subsequent exchanges may return this PI to aid in patient matching. It is not intended to be broadly shared beyond the consuming applications and is not managed by an assigning application like a Patient Master Index. A PI is **not** a strong key, implementers need to take great care when sharing PIs.

 