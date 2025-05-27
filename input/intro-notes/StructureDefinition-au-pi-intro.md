### Usage Notes

**Profile specific implementation guidance:**
- The term "Applications", used below, is a broad term that includes single instance on-premise practice management systems, single and multi-tenant cloud based electronical medical record and clinical information systems.
- A Patient Internal Identifier (PI) is an identifier for a patient assigned within an application instance exchanged with another application, with the expectation that subsequent exchanges may return this PI to aid in patient matching.
- An organisation can create a stable identifier that is unique within the application by including aspects such as software provider, system instance, instance identifier and identifier type with the use of `Identifier.system` and `Identifier.value`.  For example:
   - `http://software-provider.com/system-instance/identifiers/patient-id` for a single instance of an application assigning patient identifiers
   - `http://cloud-provider.com/identifiers/patient-id` for a cloud provider assigning patient identifiers for multiple clients
   - `http://cloud-provider.com/identifiers/tenant-id/patient-id` for an identifier assigned within the context of a tenant of a multi-tenanted application
- Additional guidance can be found in the [Identifiers](https://hl7.org/fhir/R4/datatypes.html#Identifier) section of the FHIR Specification.
- A Patient Internal Identifier (PI) is different to a Medical Record Number (MR) in a number of ways:
  - A Medical Record Number (MR) is purposefully intended to be referenced and shared by many systems in a given network, hospital or health service. It's purpose is to identify and match against patients across that network. It is assigned, managed and kept in sync by an assigning application, typically a Patient Master Index. 
  - A Patient Internal Identifier (PI) is an identifier for a patient assigned within an application instance exchanged with another application, with the expectation that subsequent exchanges may return this PI to aid in patient matching.It is not intended to be broadly shared beyond the consuming applications and is not managed by an assigning application like a Patient Master Index. A PI is **not** a strong key, implementers need to take great care when sharing PIs.

 