### Usage Notes

**Profile specific implementation guidance:**

- To represent the environment type of an endpoint (e.g. production, staging, test), use the cross-version extension [extension-Endpoint.environmentType](https://hl7.org/fhir/uv/xver-r5.r4/0.1.0/StructureDefinition-ext-R5-Endpoint.environmentType.html) from the [FHIR Cross-Version Extensions IG (xver-r5.r4)](https://hl7.org/fhir/uv/xver-r5.r4/0.1.0/index.html). This extension backports the R5 `Endpoint.environmentType` element for use in R4.
 
**Potentially useful extensions:**

- Endpoint: [Receiving Facility](StructureDefinition-au-receivingfacility.html)
- Endpoint: [Receiving Application](StructureDefinition-au-receivingapplication.html)
- Endpoint: [Encryption Certificate PEM X509](StructureDefinition-encryption-certificate-pem-x509.html)