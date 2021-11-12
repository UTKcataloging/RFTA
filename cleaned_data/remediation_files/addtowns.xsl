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
  
  <xsl:template match="subject[geographic[matches(., 'Sevierville (Tenn.)')]]">
    <xsl:copy>
      <xsl:apply-templates select="@*|node()"/>
    </xsl:copy>
    <note displayLabel="Weird Stuff"><xsl:sequence select="'what the heck'"/></note>
  </xsl:template>
  
<!--  <xsl:template match="subject[geographic[matches(normalize-space(.), 'Sevierville (Tenn.)')
    or matches(lower-case(.), 'sevierville (tenn.)')
    or matches(lower-case(.), 'pittman center (tenn.)')
    or matches(lower-case(.), 'gatlinburg (tenn.)')
    or matches(lower-case(.), 'dollywood (pigeon forge, tenn.)')]]">
    <xsl:copy>
      <xsl:apply-templates select="@*|node()"/>
    </xsl:copy>
    <note displayLabel="Browse">
      <xsl:value-of select="'Towns in East TN including Gatlinburg, Pigeon Forge, Sevierville and Pittman Center, TN'"/>
    </note>
  </xsl:template>-->
  
</xsl:stylesheet>