### Usage Notes

**Profile specific implementation guidance:**
- An organisation can create a stable identifier that is unique within the application by including aspects such as software provider, system instance, instance identifier and identifier type with the use of `Identifier.system` and `Identifier.value`. 
- A Patient Internal Identifier (PII) is different to a Medical Record Number (MRN) in a number of ways:
  - A Medical Record Number (MRN) is purposefully intended to be referenced and shared by many systems in a given network, hospital or health service. It's purpose is to identify and match against patients across that network. It is assigned, managed and kept in sync by a central system, typically a Patient Master Index. 
  - A Patient Internal Identifier (PII) is an identifier for a patient assigned within an application or application instance. It is not intended to be broadly shared beyond the consuming applications and is not managed by a central system like a Patient Master Index. A PII is **not** a strong key and should be shared and used with great care.

**Applications**
- "Applications" is a broad term that includes single instances, single and multi-tenant cloud systems. It is up to the implementer organisation to determine an appropriate `Identifier.system` that will avoid collisions and to manage that space and the resolvability of URLs over time.  For example:
   - `http://software-provider.com/system-instance/identifiers/patient-id` for a single instance of an application assigning patient identifiers.
   - `http://cloud-provider.com/identifiers/patient-id` for a cloud provider assigning patient identifiers for multiple clients.
   - `http://provider.com/identifiers/guid` for any provider that uses guid identifiers
 