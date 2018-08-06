<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/xpath-functions" xmlns:f="http://hl7.org/fhir">
  <xsl:output method="text"/>
  <xsl:template match="f:StructureDefinition">
This profile contains the following variations from [<xsl:value-of select="f:type/@value"/>](<xsl:value-of select="f:baseDefinition/@value"/>):

<xsl:text>      </xsl:text>	
<xsl:apply-templates select="f:differential/f:element[ count( fn:tokenize(f:path/@value,'\.') ) = 2 ]"/>
  </xsl:template>
  <xsl:template match="f:element">
    <xsl:if test="fn:tokenize(f:path/@value,'\.')[2] != 'extension' or f:sliceName">
      <xsl:if test="not(f:sliceName)">1. <xsl:value-of select=" fn:tokenize(f:path/@value,'\.')[2]"/>
      </xsl:if>
      <xsl:if test="f:sliceName">
        <xsl:if test="fn:tokenize(f:path/@value,'\.')[2] != 'extension'">
          <xsl:text>   </xsl:text>
        </xsl:if>
        <xsl:if test="f:short"><xsl:if test="fn:tokenize(f:path/@value,'\.')[2] = 'extension'">1.</xsl:if><xsl:if test="fn:tokenize(f:path/@value,'\.')[2] != 'extension'">2.</xsl:if><xsl:text> </xsl:text><xsl:value-of select="f:short/@value"/>
        </xsl:if>
        <xsl:if test="not(f:short)">
          <xsl:value-of select="f:sliceName/@value"/> extension</xsl:if>
        <xsl:if test="fn:tokenize(f:path/@value,'\.')[2] = 'extension'"> extension</xsl:if>
      </xsl:if>
      <xsl:if test="f:slicing"> sliced</xsl:if>
      <xsl:text>
      </xsl:text>
    </xsl:if>
    <xsl:if test="fn:tokenize(f:path/@value,'\.')[2] != 'extension'">
      <xsl:apply-templates select="following-sibling::f:element[1]" mode="ext"/>
    </xsl:if>
  </xsl:template>
  <xsl:template match="f:element" mode="ext">
    <xsl:if test="f:sliceName and fn:tokenize(f:path/@value,'\.')[3] = 'extension'">
      <xsl:text>      </xsl:text>
      <xsl:if test="f:short">3. <xsl:value-of select="f:short/@value"/> extension</xsl:if>
      <xsl:if test="not(f:short)">3. <xsl:value-of select="f:sliceName/@value"/> extension</xsl:if>
      <xsl:text>
      </xsl:text>
    </xsl:if>
    <xsl:if test="fn:tokenize(f:path/@value,'\.')[3] = 'extension'">
      <xsl:apply-templates select="following-sibling::f:element[1]" mode="ext"/>
    </xsl:if>
  </xsl:template>
</xsl:stylesheet>
