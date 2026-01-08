### Usage Notes

**Profile specific implementation guidance:**
- When defining a type of mobile or remotely delivered service location:
  - `Location.mode` is sent as "kind"
  - One instance of `Location.type` is sent as "MOBL"
  - Additional types of `Location.type` indicate the service is tailored for delivery in these kinds of locations (e.g. "AMB", "COMM", "PTRES", "SCHOOL", or "WORK").
- When defining a remotely delivered service location:
  - `Location.mode` is sent as "kind"
  - `Location.type` is sent as "VI"
  - `Location.physicalType` is sent as "vi"
- When constructing an address:
  - an international address can be represented using the core [Address](http://hl7.org/fhir/R4/datatypes.html#Address) data type
  - an Australian address **SHOULD** be represented using the [Australian Address](StructureDefinition-au-address.html) data type profile