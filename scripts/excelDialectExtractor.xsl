<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:cw="http://www.hdfgroup.org/metadata/published/xsd" exclude-result-prefixes="xs" version="2.0">
    <xsl:output method="text"/>
    <xsl:param name="DialectToExtract"/>

    <!-- <xsl:param name="titlePasser">
        <xsl:for-each select="//cw:code[text() = $DialectToExtract]">
            <xsl:value-of select="preceding-sibling::cw:title"/>
        </xsl:for-each>
    </xsl:param>-->
    <xsl:template match="/">
        <xsl:text>Concept,</xsl:text>
        <xsl:value-of select="$DialectToExtract"/>
        <xsl:text>&#10;</xsl:text>
        <xsl:for-each select="//cw:path[@dialect = $DialectToExtract]">
            <xsl:sort select="../cw:name"/>
            <xsl:value-of select="preceding-sibling::cw:name"/>
            <xsl:text>,</xsl:text><xsl:value-of select="."/>
            <xsl:text>&#10;</xsl:text>
        </xsl:for-each>
    </xsl:template>
    <xsl:template match="text()"/>
</xsl:stylesheet>
