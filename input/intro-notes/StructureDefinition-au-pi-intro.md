### Usage Notes

**Profile specific implementation guidance:**

- A patient internal identifier is different to an MRN in a number of ways:
  - An MRN is purposefully intended to be referenced and shared by many systems in a given network, hospital or health service. The purpose of an MRN is to identify and match against patients across that network. It is assigned, managed and kept in sync by an assigning application, typically a Patient Master Index. 
  - An patient internal identifier is a patient identifier assigned within a single application. It is only unique within the assigning application instance and is not intended to be widely shared.
 