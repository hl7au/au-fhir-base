<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/xpath-functions"  xmlns:f="http://hl7.org/fhir">
	<xsl:output method="text"/>
	<xsl:template match="f:StructureDefinition"><xsl:result-document href="{concat(f:id/@value,'-summary.md')}" method="text">This profile contains the following variations from [<xsl:value-of select="f:type/@value"/>](<xsl:value-of select="replace(f:baseDefinition/@value,'http://hl7.org/fhir/StructureDefinition/','http://hl7.org/fhir/STU3/')"/>):
<xsl:apply-templates select="f:differential/f:element[ fn:position() != 1]"/>
</xsl:result-document>
 </xsl:template>
  <xsl:template match="f:element">
    <xsl:variable name="idvalue" select="@id"/>
    <xsl:variable name="parts" select="fn:tokenize(f:path/@value,'\.')"/>
    
    <xsl:variable name="isextension" select="$parts[count($parts)]= 'extension' and not(f:slicing)"/>
    <xsl:if test="$isextension"><xsl:text>
</xsl:text><xsl:if test="count($parts) > 2"><xsl:text>&#x20;&#x20;&#x20;</xsl:text></xsl:if>&#x20;&#x20;* <xsl:apply-templates select="//f:snapshot/f:element[@id = $idvalue]" mode="card"/><xsl:text> </xsl:text><xsl:if test="not(f:short)"><xsl:value-of select="f:sliceName/@value"/></xsl:if>  <xsl:value-of select="f:short/@value"/> extension</xsl:if>
    <xsl:if test="not($isextension) and (count($parts)=2 or f:sliceName)">
      <xsl:variable name="isslice" select="f:sliceName"/>
      <xsl:if test="$isslice">
<xsl:text>
</xsl:text>&#x20;&#x20;* </xsl:if><xsl:if test="not($isslice)">
1. </xsl:if><xsl:apply-templates select="//f:snapshot/f:element[@id = $idvalue]" mode="card"/><xsl:text> </xsl:text>&lt;span style='color:green'&gt; <xsl:value-of select="$parts[count($parts)]"/> &lt;/span&gt; <xsl:value-of select="f:short/@value"/>
<xsl:if test="f:type/f:code/@value='Reference' and not(f:slicing)"> (Reference as: <xsl:for-each select="f:type[f:code/@value='Reference' and f:targetProfile]"><xsl:if test="position()!=1"> \| </xsl:if><xsl:value-of select="tokenize(f:targetProfile/@value, '/')[position()=last()]"/></xsl:for-each>)</xsl:if>
<xsl:if test="f:slicing"> sliced</xsl:if>
    </xsl:if>
  </xsl:template>
     <xsl:template match="f:element" mode="card">
     <xsl:if test="f:min/@value='0' and f:max/@value='1'">at most one</xsl:if>
     <xsl:if test="f:min/@value='0' and f:max/@value='*'">zero or more</xsl:if>
     <xsl:if test="f:min/@value='0' and f:max/@value!='1' and f:max/@value!='*'">zero to <xsl:value-of select="f:max/@value"/></xsl:if>
     <xsl:if test="(f:min/@value='1' and f:max/@value='1') or (not(f:max) and not(f:min))">exactly one</xsl:if>
     <xsl:if test="f:min/@value='1' and f:max/@value='*'">one or more</xsl:if>
     <xsl:if test="f:min/@value='1' and f:max/@value!='1' and f:max/@value!='*'">one to <xsl:value-of select="f:max/@value"/></xsl:if>     
  </xsl:template>
</xsl:stylesheet>
