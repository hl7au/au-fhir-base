### Usage Notes
- To represent the environment type of an endpoint (e.g. production, staging, test), use the cross-version extension [extension-Endpoint.environmentType](https://hl7.org/fhir/uv/xver-r5.r4/0.1.0/StructureDefinition-ext-R5-Endpoint.environmentType.html) from the [FHIR Cross-Version Extensions IG (xver-r5.r4)](https://hl7.org/fhir/uv/xver-r5.r4/0.1.0/index.html). This extension backports the R5 `Endpoint.environmentType` element for use in R4.
  - Values are drawn from the [endpoint-environment](http://hl7.org/fhir/endpoint-environment) code system (`prod`, `staging`, `dev`, `test`, `train`).

#### Useful extensions
The following extensions are defined in this IG and may be useful when implementing AU Base Endpoint:

- [Receiving Facility](StructureDefinition-au-receivingfacility.html) (`au-receivingfacility`) — identifies the receiving facility for a message exchange.
- [Receiving Application](StructureDefinition-au-receivingapplication.html) (`au-receivingapplication`) — identifies the receiving application for a message exchange.
- [Encryption Certificate PEM X509](StructureDefinition-encryption-certificate-pem-x509.html) (`encryption-certificate-pem-x509`) — provides a PEM-encoded X.509 certificate used for encrypting messages sent to the endpoint.

