<?xml version="1.0" encoding="UTF-8"?>
<!--                                     -->
<!-- remidial.xsl                        -->
<!-- REmove MIDI Attributes for Lilypond -->
<!-- v0.1.0                              -->
<!-- programmed by Klaus Rettinghaus     -->
<!--                                     -->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:mei="http://www.music-encoding.org/ns/mei">
  <xsl:output omit-xml-declaration="yes" indent="yes"/>
  <xsl:strip-space elements="*"/>
  <xsl:template match="node()|@*" name="identity">
    <xsl:copy>
      <xsl:apply-templates select="node()|@*"/>
    </xsl:copy>
  </xsl:template>
  <!-- remove midi attributes -->
  <xsl:template match="@*[contains(name(),'midi')]"/>
</xsl:stylesheet>
