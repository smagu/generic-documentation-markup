<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"    
    xmlns:iso="http://purl.oclc.org/dsdl/schematron"
    xmlns:seshat="http://www.example.com/new-namespace/seshat"
    exclude-result-prefixes="xs"
    version="2.0">
    <xsl:output method="html"/>    
    <xsl:include href="./Common/global.xsl"/>
    
    
    <xsl:template match="/">
        <xsl:text disable-output-escaping="yes">&lt;!DOCTYPE html> &lt;html xmlns="http://www.w3.org/1999/xhtml"></xsl:text>
        <head>
            <title>Seshat: Index</title>
            <xsl:call-template name="insert-css"/>
        </head>
        <body>
            <div id="container">
                <h1>Seshat Index</h1>
                <ul>
                    <xsl:apply-templates/>
                </ul>
            </div>
        </body>
        <xsl:text disable-output-escaping="yes">&lt;/html></xsl:text>
    </xsl:template>
    
    <xsl:template match="seshat:doc">
        <li>
            <a>
                <xsl:attribute name="href">
                    <!--<xsl:value-of select="concat(translate(seshat:head/seshat:title, ':', '-'), '.html')"/>-->
                    <xsl:value-of select="concat('test.html#', translate(seshat:head/seshat:title, ':', '-'))"/>
                </xsl:attribute>
                <xsl:apply-templates select="seshat:head/seshat:title"/>
            </a>
        </li>
    </xsl:template>
    
    
    <xsl:template match="xsl:template"/>
    <xsl:template match="iso:pattern"/>    
    
</xsl:stylesheet>