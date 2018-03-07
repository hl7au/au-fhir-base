manual definition.xml.zip updates

StructureDefinition.au-patient.xml 
- remove elements with no type.code code defined (~ element [133] [140]) xml attribute elements should no be included

spec.internals
- add a map "http://hl7.org.au/fhir/v2/0203": "CodeSystem-au-hl7v2-0203.html", 
- same domain not matching the id seems to be a problem for IG builder