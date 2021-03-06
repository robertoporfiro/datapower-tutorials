<?xml version="1.0" encoding="UTF-8"?>
<!-- @generated mapFile="growSimple.map" md5sum="506e0f5c926848e4d4f478f1339e0ae8" version="7.5.100" -->
<!--
*****************************************************************************
*   This file has been generated by the IBM XML Mapping Editor.
*
*   Mapping file:		growSimple.map
*   Map declaration(s):	growSimple
*   Input file(s):		simpleTestIn.xsd
*   Output file(s):		simpleTestIn.xsd
*
*   Note: Do not modify the contents of this file as it is overwritten
*         each time the mapping model is updated.
*****************************************************************************
-->
<xsl:stylesheet
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xalan="http://xml.apache.org/xslt"
    xmlns:str="http://exslt.org/strings"
    xmlns:set="http://exslt.org/sets"
    xmlns:math="http://exslt.org/math"
    xmlns:fn="http://www.w3.org/2005/xpath-functions"
    xmlns:regexp="http://exslt.org/regular-expressions"
    xmlns:dyn="http://exslt.org/dynamic"
    xmlns:dp="http://www.datapower.com/extensions"
    xmlns:exsl="http://exslt.org/common"
    xmlns:date="http://exslt.org/dates-and-times"
    xmlns:io="http://Simple"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xmlns:xs4xs="http://www.w3.org/2001/XMLSchema"
    xmlns:map="http://Simple/growSimple"
    xmlns:msl="http://www.ibm.com/xmlmap"
    exclude-result-prefixes="str set math fn regexp dyn dp exsl date dp map xalan msl"
    version="1.0">
  <xsl:output method="xml" encoding="UTF-8" indent="no"/>

  <!-- root wrapper template  -->
  <xsl:template match="/">
    <xsl:choose>
      <xsl:when test="msl:datamap">
        <msl:datamap>
          <xsl:element name="dataObject">
            <xsl:attribute name="xsi:type">
              <xsl:value-of select="'io:simpleTestIn_._type'"/>
            </xsl:attribute>
            <xsl:call-template name="map:growSimple2">
              <xsl:with-param name="simpleTestIn" select="msl:datamap/dataObject[1]"/>
            </xsl:call-template>
          </xsl:element>
        </msl:datamap>
      </xsl:when>
      <xsl:otherwise>
        <xsl:apply-templates select="io:simpleTestIn" mode="map:growSimple"/>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <!-- This rule represents an element mapping: "io:simpleTestIn" to "io:simpleTestIn".  -->
  <xsl:template match="io:simpleTestIn"  mode="map:growSimple">
    <io:simpleTestIn>
      <xsl:call-template name="map:growSimple2">
        <xsl:with-param name="simpleTestIn" select="."/>
      </xsl:call-template>
    </io:simpleTestIn>
  </xsl:template>

  <!-- This rule represents a type mapping: "io:simpleTestIn" to "io:simpleTestIn".  -->
  <xsl:template name="map:growSimple2">
    <xsl:param name="simpleTestIn"/>
    <io:simpleArray>
      <!-- a simple data mapping: "arrayOne"(string) to "arrayOne"(string) -->
      <xsl:for-each select="$simpleTestIn/io:simpleArray/arrayOne">
        <arrayOne>
          <xsl:value-of select="."/>
        </arrayOne>
      </xsl:for-each>
    </io:simpleArray>
    <!-- a simple data mapping: "$simpleTestIn/algorithm"(string) to "algorithm"(string) -->
    <algorithm>
      <xsl:value-of select="$simpleTestIn/algorithm"/>
    </algorithm>
    <!-- a simple data mapping: "$simpleTestIn/stringTwo"(string) to "stringTwo"(string) -->
    <stringTwo>
      <!-- variables for custom code -->
      <xsl:variable name="stringTwo1" select="$simpleTestIn/stringTwo"/>
      <xsl:variable name="stringThree1" select="$simpleTestIn/stringThree"/>
      <xsl:value-of select="dp:concat-base64($stringTwo1, $stringThree1)"/>
    </stringTwo>
    <!-- a simple data mapping: "$simpleTestIn/stringTwo"(string) to "stringThree"(string) -->
    <stringThree>
      <!-- variables for custom code -->
      <xsl:variable name="stringTwo2" select="$simpleTestIn/stringTwo"/>
      <xsl:variable name="stringThree2" select="$simpleTestIn/stringThree"/>
      <xsl:value-of select="dp:concat-base64($stringTwo2, $stringThree2)"/>
    </stringThree>
    <!-- a simple data mapping: "$simpleTestIn/stringFour"(string) to "stringFour"(string) -->
    <stringFour>
      <xsl:value-of select="$simpleTestIn/stringFour"/>
    </stringFour>
  </xsl:template>

  <!-- *****************    Utility Templates    ******************  -->
  <!-- copy the namespace declarations from the source to the target -->
  <xsl:template name="copyNamespaceDeclarations">
    <xsl:param name="root"/>
    <xsl:for-each select="$root/namespace::*[not(name() = '')]">
      <xsl:copy/>
    </xsl:for-each>
  </xsl:template>
</xsl:stylesheet>
