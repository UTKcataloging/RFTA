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
    
    <xsl:template match="subject[topic[matches(lower-case(.), 'medical personnel') 
        or matches(lower-case(.), 'first responders') 
        or matches(lower-case(.), 'red cross and red crescent')]]">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
        <note displayLabel="Browse">
            <xsl:value-of select="'Medical Personnel &amp; First Responders'"/>
        </note>
    </xsl:template>
    
    <xsl:template match="subject[topic[matches(lower-case(.), 'individuals/families suffering losses') 
        or matches(lower-case(.), 'individuals (tourists or locals) directly affected by the fire')]]">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
        <note displayLabel="Browse">
            <xsl:value-of select="'Individuals Directly Affected by the Fire'"/>
        </note>
    </xsl:template>
    
    <xsl:template match="subject[topic[matches(lower-case(.), 'public and government officials') 
        or matches(lower-case(.), 'park service personnel') 
        or matches(lower-case(.), 'teachers')]]">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
        <note displayLabel="Browse">
            <xsl:value-of select="'Educators and Public or Government officials or employees'"/>    
        </note>
    </xsl:template>
    
    <xsl:template match="subject[topic[matches(lower-case(.), 'meteorologists')
        or matches(lower-case(.), 'environmentalists')]]">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
        <note displayLabel="Browse">
            <xsl:value-of select="'Meterologists &amp; Environmentalists'"/>
        </note>
    </xsl:template>
    
    <xsl:template match="subject[topic[matches(lower-case(.), 'emergency management')
        or matches(lower-case(.), 'first responders')]]">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
        <note displayLabel="Browse">
            <xsl:value-of select="'Emergency Management'"/>
        </note>
    </xsl:template>
    
    <xsl:template match="subject[topic[matches(lower-case(.), 'disaster response and recovery')
        or matches(lower-case(.), 'fire extinction')
        or matches(lower-case(.), 'disaster relief')
        or matches(lower-case(.), 'veterinary critical care')
        or matches(lower-case(.), 'animals--effect of fires on')
        or matches(lower-case(.), 'mental health')
        or matches(lower-case(.), 'veterinarians')]]">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
        <note displayLabel="Browse">
            <xsl:value-of select="'Disaster Response &amp; Recovery'"/>
        </note>
    </xsl:template>
    
    <xsl:template match="subject[topic[matches(lower-case(.), 'mycology')
        or matches(lower-case(.), 'soils--effect of fires on, fire ecology')
        or matches(lower-case(.), 'forest regeneration')
        or matches(lower-case(.), 'hiking')
        or matches(lower-case(.), 'climatic changes')]]">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
        <note displayLabel="Browse">
            <xsl:value-of select="'Ecology'"/>
        </note>
    </xsl:template>
    
    <xsl:template match="subject[topic[matches(lower-case(.), 'sevierville (tenn.)')
        or matches(lower-case(.), 'pittman center (tenn.)')
        or matches(lower-case(.), 'gatlinburg (tenn.)')
        or matches(lower-case(.), 'dollywood (pigeon forge, tenn.)')]]">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
        <note displayLabel="Browse">
            <xsl:value-of select="'Towns in East TN including Gatlinburg, Pigeon Forge, Sevierville and Pittman Center, TN'"/>
        </note>
    </xsl:template>
    
    
   
</xsl:stylesheet>