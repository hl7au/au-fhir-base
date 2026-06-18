<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile Patient
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:Patient</sch:title>
    <sch:rule context="f:Patient">
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/patient-birthPlace']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/patient-birthPlace': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org.au/fhir/StructureDefinition/indigenous-status']) &lt;= 1">extension with URL = 'http://hl7.org.au/fhir/StructureDefinition/indigenous-status': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org.au/fhir/StructureDefinition/closing-the-gap-registration']) &lt;= 1">extension with URL = 'http://hl7.org.au/fhir/StructureDefinition/closing-the-gap-registration': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/patient-mothersMaidenName']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/patient-mothersMaidenName': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/patient-interpreterRequired']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/patient-interpreterRequired': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org.au/fhir/StructureDefinition/date-of-arrival']) &lt;= 1">extension with URL = 'http://hl7.org.au/fhir/StructureDefinition/date-of-arrival': maximum cardinality of 'extension' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Patient/f:birthDate</sch:title>
    <sch:rule context="f:Patient/f:birthDate">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org.au/fhir/StructureDefinition/date-accuracy-indicator']) &lt;= 1">extension with URL = 'http://hl7.org.au/fhir/StructureDefinition/date-accuracy-indicator': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/patient-birthTime']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/patient-birthTime': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:value) &lt;= 1">value: maximum cardinality of 'value' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
