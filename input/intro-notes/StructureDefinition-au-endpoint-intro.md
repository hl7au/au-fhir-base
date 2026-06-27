### Usage Notes

**Profile specific implementation guidance:**

- To represent the environment type of an endpoint (e.g. production, staging, test), use the cross-version extension [extension-Endpoint.environmentType](https://hl7.org/fhir/uv/xver-r5.r4/0.1.0/StructureDefinition-ext-R5-Endpoint.environmentType.html) from the [FHIR Cross-Version Extensions IG (xver-r5.r4)](https://hl7.org/fhir/uv/xver-r5.r4/0.1.0/index.html). This extension backports the R5 `Endpoint.environmentType` element for use in R4.
 
**Potentially useful extensions:**

- Endpoint: [Receiving Facility](StructureDefinition-au-receivingfacility.html)
- Endpoint: [Receiving Application](StructureDefinition-au-receivingapplication.html)
- Endpoint: [Encryption Certificate PEM X509](StructureDefinition-encryption-certificate-pem-x509.html)

#### NEW AU-defined terminology
- The following AU-defined value sets and code systems have been applied to `Endpoint.connectionType` and `Endpoint.payloadType`:
- [Australian Service Interface](ValueSet-au-service-interface.html) — value set of connection type codes for Australian messaging services, including AU-defined codes from [Australian Connection Type Interface](CodeSystem-au-connection-type-interface.html) CodeSystem and [R4 defined](https://terminology.hl7.org/7.2.0/en/CodeSystem-endpoint-connection-type.html) codes.
- [Australian Endpoint Payload Type](ValueSet-au-endpoint-payload-type.html) — value set of payload type codes for Australian endpoints, including AU-defined codes from the [Australian Endpoint Payload Type](CodeSystem-au-endpoint-payload-type.html) CodeSystem and [R4 defined](https://hl7.org/fhir/R4/valueset-endpoint-payload-type.html) codes.

