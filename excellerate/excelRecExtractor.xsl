<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:cw="http://www.hdfgroup.org/metadata/published/xsd" exclude-result-prefixes="xs" version="2.0">
    <xsl:output method="text"/>
    <xsl:param name="RecommendationTag"/>
    <xsl:key name="RecTags" match="//cw:tag/text()" use="."/>
    <xsl:template match="/">
        <xsl:for-each select="//cw:tag/text()[generate-id() = generate-id(key('RecTags', .)[1])]">
            <xsl:value-of select="."/>
            <xsl:variable name="key">
                <xsl:value-of select="."/>
            </xsl:variable>
            <xsl:text>,</xsl:text>
            <xsl:for-each select="//cw:tag[text() = $key]">
                <xsl:value-of select="preceding-sibling::cw:code"/>
                <xsl:if test="not(position() = last())">
                    <xsl:text>|</xsl:text>
                </xsl:if>
            </xsl:for-each>
            <xsl:text>,</xsl:text>
            <xsl:for-each select="//cw:tag[text() = $key]">
                <xsl:for-each select="following-sibling::cw:item">
                    <xsl:value-of select="descendant::cw:name | @name"/>
                    <xsl:text>.</xsl:text>
                    <xsl:value-of select="preceding-sibling::cw:code"/>
                    <xsl:if test="not(position() = last())">
                        <xsl:text>,</xsl:text>
                    </xsl:if>
                </xsl:for-each>
            </xsl:for-each>
            <xsl:text>&#10;</xsl:text>
        </xsl:for-each>
    </xsl:template>
    <xsl:template match="text()"/>
</xsl:stylesheet>
