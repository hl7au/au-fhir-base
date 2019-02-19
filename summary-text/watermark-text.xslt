<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/xpath-functions"  xmlns:f="http://hl7.org/fhir" exclude-result-prefixes="xs xsl fn f">
	<xsl:output method="xml"/>
	<xsl:template match="f:StructureDefinition">
    <xsl:variable name="isdraft" select="f:differential/f:element/f:extension/f:valueCode/@value='draft'"/>
    <xsl:result-document href="{concat(f:id/@value,'-watermark.md')}" method="xml" omit-xml-declaration="yes"><xsl:if test="$isdraft">DRAFT<br/>ONLY</xsl:if></xsl:result-document> 
  </xsl:template>
</xsl:stylesheet>
