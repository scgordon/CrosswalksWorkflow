<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:cw="http://www.hdfgroup.org/metadata/published/xsd" exclude-result-prefixes="xs" version="2.0">
    <xsl:output method="text"/>
    <xsl:param name="RecommendationTag"/>

    <xsl:template match="/">
        <!--<xsl:for-each select="//cw:spiral[descendant::cw:tag=$RecommendationTag]"><xsl:value-of select="cw:spiral"/></xsl:for-each>-->
        <xsl:value-of select="$RecommendationTag"/>
        <xsl:text>,</xsl:text>
        <xsl:for-each select="//cw:tag[text() = $RecommendationTag]"><xsl:for-each select="following-sibling::cw:item">
            <xsl:value-of select="descendant::cw:name|@name"/>
            <xsl:text>,</xsl:text>
        </xsl:for-each></xsl:for-each>
    </xsl:template>
    <xsl:template match="text()"/>
</xsl:stylesheet>
