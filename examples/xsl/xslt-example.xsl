<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:proc="http://www.example.com/process-elements/1/"
    xmlns:abcname="http://www.example.com/abcname/1/"
    xmlns:contact="http://www.example.com/contact/1/"
    xmlns:reference="http://www.example.com/reference/"
    xmlns:seshat="http://www.example.com/new-namespace/seshat"
    exclude-result-prefixes="#all"  version="2.0">
    <seshat:doc scope="all" target="proc:nl">
        <seshat:head>
            <seshat:title>proc:nl</seshat:title>
            <seshat:creator>Thomas Smith</seshat:creator>
            <seshat:created>20/02/2013</seshat:created>
        </seshat:head>
        <seshat:body>
            <seshat:desc>New line element
            </seshat:desc>
            <seshat:code>&lt;p>some text &lt;>proc:nl/>&lt;/p></seshat:code>
            <seshat:change-grp>
                <seshat:change date="01-01-2013">
                    <seshat:contributor>Thomas Smith</seshat:contributor>
                    <seshat:reason>Changed so it has a new 'nla' namespace</seshat:reason>
                </seshat:change>
                <seshat:change date="02-02-2013">
                    <seshat:contributor>John Smith</seshat:contributor>
                    <seshat:reason>Namespace typo - must be 'nl'</seshat:reason>
                </seshat:change>
            </seshat:change-grp>
        </seshat:body>
    </seshat:doc>
    <xsl:template match="proc:nl">
        <br/>
    </xsl:template>
 
    <seshat:doc scope="all" target="abcname:prelim">
        <seshat:head>
            <seshat:title>abcname:prelim</seshat:title>
            <seshat:creator>Thomas Smith</seshat:creator>
            <seshat:created>20/02/2013</seshat:created>
        </seshat:head>
        <seshat:body>
            <seshat:desc>Cases prelim. This is very long paragraph. bal ba ablabalal  This is very long paragraph. bal ba ablabalal   This is very long paragraph. bal ba ablabalal  This is very long paragraph. bal ba ablabalal  This is very long paragraph. bal ba ablabalal
            </seshat:desc>
            <seshat:code>&lt;abcname:prelim>&lt;body/>&lt;abcname:prelim></seshat:code>
            <seshat:change-grp>
                <seshat:change date="01-01-2013">
                    <seshat:contributor>Thomas Smith</seshat:contributor>
                    <seshat:reason>Changed so it has a new 'nla' namespace</seshat:reason>
                </seshat:change>
                <seshat:change date="02-02-2013">
                    <seshat:contributor>John Smith</seshat:contributor>
                    <seshat:reason>Namespace typo - must be 'nl'</seshat:reason>
                </seshat:change>
            </seshat:change-grp>
        </seshat:body>
    </seshat:doc>
    <xsl:template match="abcname:prelim">
        <xsl:apply-templates/>
        <span class="elementlabelbar">abcname:prelim</span>
    </xsl:template>
  
    <seshat:doc scope="all" target="reference:link[not(@service) and reference:locator/reference:locator-key/reference:key-name/@name='filename']">
        <seshat:head>
            <seshat:title>reference:link</seshat:title>
            <seshat:creator>Thomas Smith</seshat:creator>
            <seshat:created>15/12/2010</seshat:created>
        </seshat:head>
        <seshat:body>
            <seshat:desc>this is a new  mark-up
            </seshat:desc>
            <seshat:change-grp>
                <seshat:change date="05-07-2011">
                    <seshat:contributor>John Smith</seshat:contributor>
                    <seshat:reason>updated some xpaths</seshat:reason>
                </seshat:change>
            </seshat:change-grp>
        </seshat:body>
    </seshat:doc>
    <xsl:template
        match="reference:link[not(@service) and reference:loc/reference:loc-key/reference:key-name/@name='filename']">
        <a hreference="{reference:loc/reference:loc-key/reference:key-value/@value}">
            <xsl:apply-templates/>
        </a>
    </xsl:template>

    <xsl:template match="contact:email">
        <a>
            <xsl:attribute name="hreference">
                <xsl:text>mailto:</xsl:text>
                <xsl:value-of select="@normval"/>
            </xsl:attribute>
            <xsl:apply-templates/>
        </a>
    </xsl:template>
</xsl:stylesheet>
