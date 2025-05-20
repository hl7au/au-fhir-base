### Usage Notes

**Profile specific implementation guidance:**
- An organisation can create a stable identifier that is unique within the application by including aspects such as software provider, system instance, instance identifier and identifier type with the use of `Identifier.system` and `Identifier.value`. For example:
```
       {
          ...
          "system": "http://example.system.com/system-instance/identifiers/identifer-type",
          "value": "identifier-value",
          ...
       }   
``` 
- A Patient Internal Identifier (PII) is different to a Medical Record Number (MRN) in a number of ways:
  - A Medical Record Number (MRN) is purposefully intended to be referenced and shared by many systems in a given network, hospital or health service. It's purpose is to identify and match against patients across that network. It is assigned, managed and kept in sync by a central system, typically a Patient Master Index. 
  - A Patient Internal Identifier (PII) is an identifier for a patient assigned within an application or application instance. It is not intended to be widely shared or managed by a central system like a Patient Master Index. A PII is **not** a strong key and should be shared and used with great care.

