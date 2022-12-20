### Usage Notes

**Profile specific implementation guidance:**
- When defining a type of mobile or remotely delivered service location:
  - `Location.mode` is sent as "kind"
  - One instance of `Location.type` is sent as "MOBL"
  - Additional types of `Location.type` are instantiated to indicate the service is tailored for delivery in these kinds of locations (e.g. "AMB", "COMM", "PTRES", "SCHOOL", or "WORK").
- When defining a remotely delivered service location:
  - `Location.mode` is sent as "kind"
  - `Location.type` is sent as "VI"
  - `Location.physicalType` is sent as "vi"
