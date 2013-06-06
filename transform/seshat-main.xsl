<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:iso="http://purl.oclc.org/dsdl/schematron"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl"
    xmlns:seshat="http://www.example.com/new-namespace/seshat" exclude-result-prefixes="#all"
    version="2.0">

    <xsl:output method="html"/>    
    <xsl:include href="./Common/global.xsl"/>
    <xsl:strip-space elements="*"/>
    
    
    <xsl:template match="/">
        <xsl:text disable-output-escaping="yes">&lt;!DOCTYPE html> &lt;html xmlns="http://www.w3.org/1999/xhtml"></xsl:text>
        <head>
            <title>Seshat - documentation</title>
            <xsl:call-template name="insert-css"/>
        </head>
        <body>
            <div id="container">
                <xsl:call-template name="check-format-type"/>
                <xsl:apply-templates/>
            </div>
        </body>
        <xsl:text disable-output-escaping="yes">&lt;/html></xsl:text>
    </xsl:template>

    

    <seshat:doc target="seshat:doc">
        <seshat:head>
            <seshat:title>seshat:doc</seshat:title>
            <seshat:creator>Thomas Smith</seshat:creator>
            <seshat:created>20/02/2013</seshat:created>
        </seshat:head>
        <seshat:body>
            <seshat:desc>
                <seshat:p>This is a main Seshat documentation element</seshat:p>
            </seshat:desc>
            <seshat:code>&lt;p>some text &lt;>proc:nl/>&lt;/p></seshat:code>
        </seshat:body>
    </seshat:doc>
    <xsl:template match="seshat:doc">
        <div class="new-doc-item">
            <xsl:apply-templates/>
        </div>
        <hr/>
    </xsl:template>
        
    <xsl:template match="seshat:head">
        <div class="item-head">
            <xsl:apply-templates/>
        </div>
    </xsl:template>
    
    <xsl:template match="seshat:body">
        <div class="item-head">
            <xsl:apply-templates/>
        </div>      
    </xsl:template>
           
    <xsl:template match="seshat:title">
        <h2>
            <a>
                <xsl:attribute name="id">
                    <xsl:value-of select="translate(., ':', '-')"/>
                </xsl:attribute>
            </a>
            <xsl:apply-templates/>
        </h2>
    </xsl:template>
    
    <xsl:template match="seshat:creator">
        <span class="author">
            <xsl:text>Created by: </xsl:text>
            <xsl:apply-templates/>
        </span>
    </xsl:template>
    
    <xsl:template match="seshat:created">
        <xsl:text> on </xsl:text>
        <time>
            <xsl:apply-templates/>
        </time>
    </xsl:template>
    
    <xsl:template match="seshat:desc">
        <span class="description">
           <b>Description: </b>
           <xsl:apply-templates/>
        </span>
    </xsl:template>
    
    <xsl:template match="seshat:p">
        <p>
            <xsl:apply-templates/>
        </p>
    </xsl:template>
    
    <xsl:template match="seshat:b">
        <b>
            <xsl:apply-templates/>
        </b>
    </xsl:template>
    
    <xsl:template match="seshat:change-grp">
        <table class="change-grp">
            <thead>
                <td>Date of change</td>
                <td>Contributor</td>
                <td>Comments</td>
            </thead>
            <xsl:apply-templates/>
        </table>
    </xsl:template>
    
    <xsl:template match="seshat:code">
        <code>
            <xsl:apply-templates/>
        </code>
    </xsl:template>
    
    <xsl:template match="seshat:change">
        <tr>
            <td>
                <time>
                   <xsl:value-of select="@date"/>
                </time>
            </td>
            <xsl:apply-templates/>
        </tr>
    </xsl:template>
    
    <xsl:template match="seshat:contributor">
        <td>
            <xsl:apply-templates/>
        </td>
    </xsl:template>
    <xsl:template match="seshat:reason">
        <td>
            <xsl:apply-templates/>
        </td>
    </xsl:template>
    
    
    <xsl:template match="xsl:template"/>
    <xsl:template match="iso:pattern"/>    
</xsl:stylesheet>
