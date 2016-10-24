<?xml version="1.0" encoding="UTF-8"?>
<!-- data.ARTICULATION -->
<xsl:variable name="headShape">
  <valList type= "closed">
    <valItem ident= "acc">
      <desc>Accent (Unicode 1D17B). </desc>
    </valItem>
    <valItem ident= "stacc">
      <desc>Staccato (Unicode 1D17C). </desc>
    </valItem>
    <valItem ident= "ten">
      <desc>Tenuto (Unicode 1D17D). </desc>
    </valItem>
    <valItem ident= "stacciss">
      <desc>Staccatissimo (Unicode 1D17E). </desc>
    </valItem>
    <valItem ident= "marc">
      <desc>Marcato (Unicode 1D17F). </desc>
    </valItem>
    <valItem ident= "marc-stacc">
      <desc>Marcato + staccato (Unicode 1D180). </desc>
    </valItem>
    <valItem ident= "spicc">
      <desc>Spiccato. </desc>
    </valItem>
    <valItem ident= "doit">
      <desc>Main note followed by short slide to higher, indeterminatepitch (Unicode 1D185). </desc>
    </valItem>
    <valItem ident= "scoop">
      <desc>Main note preceded by short slide from lower, indeterminate    pitch (Unicode 1D186). </desc>
    </valItem>
    <valItem ident= "rip">
      <desc>Main note preceded by long slide from lower, often    indeterminate pitch; also known as "squeeze". </desc>
    </valItem>
    <valItem ident= "plop">
      <desc>Main note preceded by "slide" from higher, indeterminate    pitch. </desc>
    </valItem>
    <valItem ident= "fall">
      <desc>Main note followed by short "slide" to lower, indeterminate    pitch. </desc>
    </valItem>
    <valItem ident= "longfall">
      <desc>Main note followed by long "slide" to lower, indeterminate    pitch. </desc>
    </valItem>
    <valItem ident= "bend">
      <desc>"lip slur" to lower pitch, then return to written pitch.    </desc>
    </valItem>
    <valItem ident= "flip">
      <desc>Main note followed by quick upward rise, then descent in    pitch (Unicode 1D187). </desc>
    </valItem>
    <valItem ident= "smear">
      <desc>(Unicode 1D188). </desc>
    </valItem>
    <valItem ident= "shake">
      <desc>Alternation between written pitch and next highest overtone    (brass instruments) or note minor third higher (woodwinds). </desc>
    </valItem>
    <valItem ident= "dnbow">
      <desc>Down bow (Unicode 1D1AA). </desc>
    </valItem>
    <valItem ident= "upbow">
      <desc>Up bow (Unicode 1D1AB). </desc>
    </valItem>
    <valItem ident= "harm">
      <desc>Harmonic (Unicode 1D1AC). </desc>
    </valItem>
    <valItem ident= "snap">
      <desc>Snap pizzicato (Unicode 1D1AD). </desc>
    </valItem>
    <valItem ident= "fingernail">
      <desc>Fingernail (Unicode 1D1B3). </desc>
    </valItem>
    <valItem ident= "ten-stacc">
      <desc>Tenuto + staccato (Unicode 1D182). </desc>
    </valItem>
    <valItem ident= "damp">
      <desc>Stop harp string from sounding (Unicode 1D1B4). </desc>
    </valItem>
    <valItem ident= "dampall">
      <desc>Stop all harp strings from sounding (Unicode 1D1B5). </desc>
    </valItem>
    <valItem ident= "open">
      <desc>Full (as opposed to stopped) tone. </desc>
    </valItem>
    <valItem ident= "stop">
      <desc>"muffled" tone. </desc>
    </valItem>
    <valItem ident= "dbltongue">
      <desc>Double tongue (Unicode 1D18A). </desc>
    </valItem>
    <valItem ident= "trpltongue">
      <desc>Triple tongue (Unicode 1D18B). </desc>
    </valItem>
    <valItem ident= "heel">
      <desc>Use heel (organ pedal). </desc>
    </valItem>
    <valItem ident= "toe">
      <desc>Use toe (organ pedal). </desc>
    </valItem>
    <valItem ident= "tap">
      <desc>Percussive effect on guitar string(s). </desc>
    </valItem>
    <valItem ident= "lhpizz">
      <desc>Left-hand pizzicato. </desc>
    </valItem>
    <valItem ident= "dot">
      <desc>Uninterpreted dot. </desc>
    </valItem>
    <valItem ident= "stroke">
      <desc>Uninterpreted stroke. </desc>
    </valItem>
  </valList>
</xsl:variable>
<!-- data.HEADSHAPE.list -->
<xsl:variable name="headShape">
  <valList type= "semi">
    <valItem ident= "quarter">
      <desc>Filled, rotated oval (Unicode 1D158). </desc>
    </valItem>
    <valItem ident= "half">
      <desc>Unfilled, rotated oval (Unicode 1D157). </desc>
    </valItem>
    <valItem ident= "whole">
      <desc>Unfilled, rotated oval (Unicode 1D15D). </desc>
    </valItem>
    <valItem ident= "backslash">
      <desc>Unfilled backslash (~ reflection of Unicode 1D10D). </desc>
    </valItem>
    <valItem ident= "circle">
      <desc>Unfilled circle (Unicode 25CB). </desc>
    </valItem>
    <valItem ident= "+">
      <desc>Plus sign (Unicode 1D144). </desc>
    </valItem>
    <valItem ident= "diamond">
      <desc>Unfilled diamond (Unicode 1D1B9). </desc>
    </valItem>
    <valItem ident= "isotriangle">
      <desc>Unfilled isosceles triangle (Unicode 1D148). </desc>
    </valItem>
    <valItem ident= "oval">
      <desc>Unfilled, unrotated oval (Unicode 2B2D). </desc>
    </valItem>
    <valItem ident= "piewedge">
      <desc>Unfilled downward-pointing wedge (Unicode 1D154). </desc>
    </valItem>
    <valItem ident= "rectangle">
      <desc>Unfilled rectangle (Unicode 25AD). </desc>
    </valItem>
    <valItem ident= "rtriangle">
      <desc>Unfilled right triangle (Unicode 1D14A). </desc>
    </valItem>
    <valItem ident= "semicircle">
      <desc>Unfilled semi-circle (Unicode 1D152). </desc>
    </valItem>
    <valItem ident= "slash">
      <desc>Unfilled slash (~ Unicode 1D10D). </desc>
    </valItem>
    <valItem ident= "square">
      <desc>Unfilled square (Unicode 1D146). </desc>
    </valItem>
    <valItem ident= "x">
      <desc>X (Unicode 1D143). </desc>
    </valItem>
  </valList>
</xsl:variable>
