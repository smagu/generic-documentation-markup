<?xml version="1.0" encoding="utf-8"?><iso:schema 
   xmlns:iso="http://purl.oclc.org/dsdl/schematron"
   xmlns:seshat="http://www.example.com/new-namespace/seshat"
   xmlns="http://purl.oclc.org/dsdl/schematron">
   
   <seshat:doc target="local-root-test">
      <seshat:head>
         <seshat:title>local-root-test</seshat:title>
         <seshat:creator>Thomas Smith</seshat:creator>
         <seshat:created>20/02/2013</seshat:created>
      </seshat:head>
      <seshat:body>
         <seshat:desc>
            <seshat:p>Schematron rule for testing everything at root level</seshat:p>
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
   <iso:pattern id="local-root-test">
      <iso:rule id="abc-123" context="/*">
         <iso:assert test="name()='ROOTELEMENT'"><iso:emph>Error:</iso:emph> Root element is <iso:name/>, not &lt;ROOTELEMENT&gt;</iso:assert>
      </iso:rule>
   </iso:pattern>
</iso:schema>