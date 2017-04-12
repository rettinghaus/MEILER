<?xml version="1.0" encoding="UTF-8"?>
<!--                                               -->
<!-- layer2measure.xsl                             -->
<!-- moves ControlElements from layers to measures -->
<!-- v0.0.1                                        -->
<!-- programmed by Klaus Rettinghaus               -->
<!--                                               -->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:mei="http://www.music-encoding.org/ns/mei">
  <xsl:output omit-xml-declaration="yes" indent="yes"/>
  <xsl:strip-space elements="*"/>
  <xsl:template match="node()|@*" name="identity">
    <xsl:copy>
      <xsl:apply-templates select="node()|@*"/>
    </xsl:copy>
  </xsl:template>
  <!-- copying ControlElements -->
  <xsl:template match="mei:measure">
    <xsl:copy>
      <xsl:apply-templates select="node()|@*"/>
      <xsl:copy-of select=".//mei:layer/(mei:arpeg|mei:beamSpan|mei:breath|mei:dir|mei:fermata|mei:gliss|mei:dynam|mei:hairpin|mei:mordent|mei:octave|mei:ornament|mei:pedal|mei:phrase|mei:reh|mei:slur|mei:tempo|mei:tie|mei:trill|mei:tupletSpan|mei:turn)"/>
    </xsl:copy>
  </xsl:template>
  <!-- removing ControlElements -->
  <xsl:template match="mei:arpeg|mei:beamSpan|mei:breath|mei:dir|mei:fermata|mei:gliss|mei:dynam|mei:hairpin|mei:mordent|mei:octave|mei:ornament|mei:pedal|mei:phrase|mei:reh|mei:slur|mei:tempo|mei:tie|mei:trill|mei:tupletSpan|mei:turn">
  </xsl:template>
</xsl:stylesheet>
