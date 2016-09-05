<?xml version="1.0" encoding="UTF-8"?>
<!--                                             -->
<!-- grandstaff.xsl                              -->
<!-- produces a two staff layout of choral music -->
<!-- v0.1.0                                      -->
<!-- programmed by Klaus Rettinghaus             -->
<!--                                             -->
<xsl:stylesheet version="1.0" xmlns="http://www.music-encoding.org/ns/mei" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:mei="http://www.music-encoding.org/ns/mei" exclude-result-prefixes="mei">
  <xsl:output omit-xml-declaration="no" indent="yes"/>
  <xsl:strip-space elements="*"/>
  <xsl:template match="node()|@*" name="identity">
    <xsl:copy>
      <xsl:apply-templates select="node()|@*"/>
    </xsl:copy>
  </xsl:template>
  <!-- add change to revisionDesc -->
  <xsl:template match="mei:revisionDesc">
    <xsl:copy>
      <xsl:apply-templates select="node()|@*"/>
      <change>
        <xsl:attribute name="n">
          <xsl:value-of select="mei:change[position() = last()]/@n + 1"/>
        </xsl:attribute>
        <respStmt/>
        <changeDesc>
          <p>Compressed with grandstaff.xsl.</p>
        </changeDesc>
      </change>
    </xsl:copy>
  </xsl:template>
  <!-- replace original staves with grand staff -->
  <xsl:template match="mei:scoreDef">
    <xsl:copy>
      <xsl:apply-templates select="@*"/>
      <staffGrp symbol="brace" barthru="false">
        <staffDef n="1" lines="5" clef.line="2" clef.shape="G"/>
        <staffDef n="2" lines="5" clef.line="4" clef.shape="F"/>
      </staffGrp>
    </xsl:copy>
  </xsl:template>
  <!-- transfer music to new staves -->
  <xsl:template match="mei:staff">
    <xsl:choose>
      <xsl:when test="@n = '1'">
        <xsl:copy>
          <xsl:apply-templates select="node()|@*"/>
          <layer n="2">
            <xsl:apply-templates select="following-sibling::mei:staff[@n = '2']/mei:layer/*"/>
          </layer>
        </xsl:copy>
      </xsl:when>
      <xsl:when test="@n = '2'">
        <staff n="2">
          <layer n="1">
            <xsl:apply-templates select="following-sibling::mei:staff[@n = '3']/mei:layer/*"/>
          </layer>
          <layer n="2">
            <xsl:apply-templates select="following-sibling::mei:staff[@n = '4']/mei:layer/*"/>
          </layer>
        </staff>
      </xsl:when>
      <xsl:otherwise/>
    </xsl:choose>
  </xsl:template>
  <!-- clean up fermatas -->
  <xsl:template match="mei:fermata">
    <xsl:if test="@staff='1' or @staff='4'">
      <xsl:copy>
        <xsl:apply-templates select="@*"/>
        <xsl:if test="@staff='4'">
          <xsl:attribute name="place">
            <xsl:value-of select="'below'"/>
          </xsl:attribute>
          <xsl:attribute name="form">
            <xsl:value-of select="'inv'"/>
          </xsl:attribute>
        </xsl:if>
      </xsl:copy>
    </xsl:if>
  </xsl:template>
  <xsl:template match="@fermata[ancestor::mei:staff/@n='4']">
    <xsl:attribute name="fermata">
      <xsl:value-of select="'below'"/>
    </xsl:attribute>
  </xsl:template>
  <xsl:template match="@fermata">
    <xsl:if test="ancestor::mei:staff/@n='1'">
      <xsl:copy/>
    </xsl:if>
  </xsl:template>
</xsl:stylesheet>
