<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:xs="http://www.w3.og/2001/XMLSchema" xmlns:xlink="http://www.w3.org/1999/xlink"
  xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns="http://www.loc.gov/mods/v3"
  xsi:schemaLocation="http://www.loc.gov/mods/v3 http://www.loc.gov/standards/mods/v3/mods-3-5.xsd"
  exclude-result-prefixes="xs" xpath-default-namespace="http://www.loc.gov/mods/v3" version="2.0">
  
  <xsl:output encoding="UTF-8" method="xml" indent="yes"/>
  <xsl:strip-space elements="*"/>
  
  <!-- identity transform -->
  <xsl:template match="@* | node()">
    <xsl:copy>
      <xsl:apply-templates select="@* | node()"/>
    </xsl:copy>
  </xsl:template>
  
  <xsl:variable name="filename" select="collection('../modsbyPID/?select=*.xml')"/>
  
  
  <xsl:template name="main">
    <xsl:for-each select="$filename">
      <xsl:variable name="fn" select="normalize-space(tokenize(document-uri(.), '/')[last()])"/>
      <xsl:result-document href="{concat('./output/',$fn)}">
        <xsl:copy>
          <xsl:apply-templates select="@* | node()"/>
        </xsl:copy>
      </xsl:result-document>
    </xsl:for-each>
  </xsl:template>
  
  <!-- subject/geographic wouldn't match, for whatever reason. using `|` (union) to catch the subject/geographic paths -->
  <xsl:template match="subject[@valueURI='http://id.loc.gov/authorities/names/n82273669']
    | subject[@valueURI='http://id.loc.gov/authorities/names/n85274941']
    | subject[@valueURI='http://id.loc.gov/authorities/names/n80040520']
    | subject[@valueURI='http://id.loc.gov/authorities/subjects/sh2009002915']">
    <xsl:copy>
      <xsl:apply-templates select="@*|node()"/>
    </xsl:copy>
    <note displayLabel="Browse"><xsl:value-of select="'Towns in East TN including Gatlinburg, Pigeon Forge, Sevierville and Pittman Center, TN'"/></note>
  </xsl:template>
  
  <!-- arrowmont -->
  <xsl:template match="subject[@authority='geonames'][geographic[matches(., 'Arrowmont School of Arts and Crafts')]]">
    <xsl:copy>
      <xsl:apply-templates select="@*|node()"/>
    </xsl:copy>
    <note displayLabel="Browse"><xsl:value-of select="'Arrowmont School of Arts &amp; Crafts'"/></note>
  </xsl:template>
  
  <!-- GSMNP -->
  <xsl:template match="subject[@valueURI='http://id.loc.gov/authorities/subjects/sh2005004887']">
    <xsl:copy>
      <xsl:apply-templates select="@*|node()"/>
    </xsl:copy>
    <note displayLabel="Browse"><xsl:value-of select="'Great Smoky Mountains National Park'"/></note>
  </xsl:template>
    
</xsl:stylesheet>