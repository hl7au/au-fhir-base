**Extension: Encryption Certificate PEM X509**  *[[FMM Level 3](guidance.html)]*

This extension applies to the Endpoint resource and is used to represent encrypted certficate content for an endpoint.

This extension allows an endpoint entry to define a suitable certficate for use in communications on the associated channel.

#### Usage Notes

The value recorded is an X509 certificate in PEM format as per [RFC7468](https://tools.ietf.org/html/rfc7468).

#### Examples

[Endpoint with secure message extensions](Endpoint-example0.html)
