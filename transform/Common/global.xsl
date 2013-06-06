<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:iso="http://purl.oclc.org/dsdl/schematron" xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="#all" version="2.0">

    <xsl:template name="check-format-type">
        <h1>
            <xsl:choose>
                <xsl:when test="//iso:schema">ISO Schematron Documentation</xsl:when>
                <xsl:when test="//xsl:stylesheet">XSLT Documentation</xsl:when>
                <xsl:otherwise>Generic Documentation</xsl:otherwise>
            </xsl:choose>
        </h1>
    </xsl:template>
    
    <xsl:template name="insert-css">
        <link type="text/css" rel="stylesheet" href="base.css"/>
    </xsl:template>
</xsl:stylesheet>
