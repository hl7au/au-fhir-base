<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/xpath-functions" xmlns:f="http://hl7.org/fhir">
	<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>

    <xsl:template match="node()|@*">
      <xsl:copy>
         <xsl:apply-templates select="node()|@*"/>
      </xsl:copy>
    </xsl:template>

    <xsl:template match="f:isModifierReason"/>
    
    <xsl:template match="f:valueSetCanonical">
      <xsl:element name="f:valueSetReference">
         <xsl:element name="f:reference">
           <xsl:attribute name="value"><xsl:value-of select="@value"/></xsl:attribute>
         </xsl:element>
      </xsl:element>
    </xsl:template>
    
     <xsl:template match="f:type[f:code/@value='Reference' and count(f:targetProfile)>1]">
       <xsl:for-each select="f:targetProfile">
         <xsl:element name="f:type">
           <xsl:element name="f:code">
               <xsl:attribute name="value">Reference</xsl:attribute>
           </xsl:element>
          <xsl:element name="f:targetProfile">
            <xsl:attribute name="value"><xsl:value-of select="@value"/></xsl:attribute>
          </xsl:element>
         </xsl:element>
       </xsl:for-each>
     </xsl:template>
     
     <xsl:template match="f:element[f:type and not(f:type/f:code)]"/>

    <xsl:template match="f:resource[not(f:example)]/f:sourceReference">
      <xsl:element name="f:example">
               <xsl:attribute name="value">false</xsl:attribute>
           </xsl:element>
      <xsl:copy-of select="."/>
    </xsl:template>
        
     <xsl:template match="f:context[f:type/@value='fhirpath']">
         <xsl:if test="generate-id(../f:context[1])=generate-id(.)"><xsl:element name="f:contextType">
            <xsl:attribute name="value">resource</xsl:attribute>
         </xsl:element>
         </xsl:if>
        <xsl:element name="f:context">
            <xsl:attribute name="value"><xsl:value-of select="f:expression/@value"/></xsl:attribute>
         </xsl:element>
     </xsl:template>
     <xsl:template match="f:context[f:type/@value='element']">
         <xsl:if test="generate-id(../f:context[1])=generate-id(.)"><xsl:element name="f:contextType">
            <xsl:attribute name="value">datatype</xsl:attribute>
         </xsl:element>
         </xsl:if>
        <xsl:element name="f:context">
            <xsl:attribute name="value"><xsl:value-of select="f:expression/@value"/></xsl:attribute>
         </xsl:element>
     </xsl:template>

</xsl:stylesheet>
