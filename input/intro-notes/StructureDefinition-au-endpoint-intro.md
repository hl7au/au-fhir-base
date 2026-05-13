### Usage Notes
- To represent the environment type of an endpoint (e.g. production, staging, test), use the cross-version extension [extension-Endpoint.environmentType](http://hl7.org/fhir/5.0/StructureDefinition/extension-Endpoint.environmentType) from the [FHIR Cross-Version Extensions IG (xver-r5.r4)](https://hl7.org/fhir/uv/xver-r5.r4/0.1.0/index.html). This extension backports the R5 `Endpoint.environmentType` element for use in R4.
  - Values are drawn from the [endpoint-environment](http://hl7.org/fhir/endpoint-environment) code system (`prod`, `staging`, `dev`, `test`, `train`).

#### AU-defined terminology
- The following AU-defined terminology within this IG may be useful when populating `Endpoint.connectionType` and `Endpoint.payloadType`:
- [Australian Service Interfaces](ValueSet-au-service-interfaces.html) — connection type codes for Australian messaging services, derived from [Australian Secure Message Service Interfaces](CodeSystem-smd-interfaces.html)
- [AU Endpoint Payload Type](ValueSet-au-endpoint-payload-type.html) — payload type codes for Australian endpoints, derived from [Australian Endpoint Payload Types](CodeSystem-au-endpoint-payload-type.html)
