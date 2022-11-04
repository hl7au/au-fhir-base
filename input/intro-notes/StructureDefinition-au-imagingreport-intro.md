### Usage Notes
When constructing the report:
<ul>
<li>a local identifier is sent with a <a href="http://ns.electronichealth.net.au/id/hpio-scoped/report/1.0/index.html">HPI-O scoped</a> identifier namespace if there isn't a local namespace available (see the <a href="https://github.com/AuDigitalHealth/ci-fhir-r4/wiki/Frequently-Asked-Questions">FAQ</a>) for more information</li>
<li>code matches one Observation.code referenced in result</li>
<li>performer is sent as one Organization (radiology laboratory) and one or more PractitionerRoles (radiologist)</li></ul>

For a report of a multi-modality procedure:
<ul>
<li>result is sent with the Observation representing the multi-modality procedure observation</li>  
<li>code is sent with the same code in that multi-modality procedure Observation</li>  
<li>the individual component examinations are referenced by that Observation (Observation.hasMember) and not directly referenced by the DiagnosticReport</li>  
</ul>
