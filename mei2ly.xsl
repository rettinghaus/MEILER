<?xml version="1.0" encoding="UTF-8"?>
<!--        -->
<!-- MEILER -->
<!-- mei2ly -->
<!-- v0.7.0 -->
<!--        -->
<!-- programmed by Klaus Rettinghaus -->
<!--        -->
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:mei="http://www.music-encoding.org/ns/mei" xmlns:m="http://www.bach-digital.de/m" xmlns:saxon="http://saxon.sf.net/" exclude-result-prefixes="saxon">
  <xsl:strip-space elements="*"/>
  <xsl:output method="text" indent="no" encoding="UTF-8"/>
  <xsl:template match="/">
    <xsl:text>\version "2.18.2"&#10;</xsl:text>
    <xsl:text>% automatically converted by mei2ly.xsl&#10;&#10;</xsl:text>
    <xsl:apply-templates/>
  </xsl:template>
  <!-- MEI header -->
  <xsl:template match="mei:meiHead">
    <xsl:text>\header {&#10;</xsl:text>
    <xsl:apply-templates/>
    <xsl:text>}&#10;&#10;</xsl:text>
  </xsl:template>
  <!-- MEI fileDesc -->
  <xsl:template match="mei:fileDesc">
    <xsl:value-of select="concat('  copyright = &quot;',normalize-space(descendant::mei:pubStmt[1]/mei:respStmt[1]),'&quot;&#10;')"/>
  </xsl:template>
  <!-- MEI workDesc -->
  <xsl:template match="mei:workDesc">
    <xsl:value-of select="concat('  title = &quot;',normalize-space(descendant::mei:title[not(@type) or @type='main'][1]),'&quot;&#10;')"/>
    <xsl:if test="descendant::mei:title[@type='subordinate']">
      <xsl:value-of select="concat('  subtitle = &quot;',normalize-space(descendant::mei:title[@type='subordinate'][1]),'&quot;&#10;')"/>
      <xsl:value-of select="concat('  subsubtitle = &quot;',normalize-space(descendant::mei:title[@type='subordinate'][2]),'&quot;&#10;')"/>
    </xsl:if>
    <xsl:for-each select="descendant::mei:persName[@role]">
      <xsl:value-of select="concat('  ',@role,' = &quot;',normalize-space(.),'&quot;&#10;')"/>
    </xsl:for-each>
  </xsl:template>
  <!-- MEI music element -->
  <xsl:template match="mei:musc">
    <xsl:apply-templates/>
  </xsl:template>
  <!-- MEI body element -->
  <xsl:template match="mei:body">
    <xsl:if test="descendant::mei:scoreDef[1]/@*[starts-with(name(),'page')]">
      <xsl:apply-templates select="descendant::mei:scoreDef[1]" mode="makePageLayout"/>
    </xsl:if>
    <xsl:apply-templates/>
  </xsl:template>
  <!-- MEI musical division -->
  <xsl:template match="mei:mdiv">
    <xsl:apply-templates/>
  </xsl:template>
  <!-- MEI score element -->
  <xsl:template match="mei:score">
    <xsl:for-each select="descendant::mei:scoreDef[1]/descendant::mei:staffDef">
      <xsl:variable name="staffNumber" select="@n"/>
      <xsl:value-of select="concat('Staff',codepoints-to-string(xs:integer(64 + $staffNumber)),' = {&#10;')"/>
      <xsl:for-each select="/mei:mei/mei:music//mei:staff[@n=$staffNumber]">
        <xsl:text>&#32;&#32;</xsl:text>
        <!-- add volta brackets -->
        <xsl:if test="ancestor::mei:ending and not(ancestor::mei:measure/preceding-sibling::mei:measure)">
          <xsl:text>\set Score.repeatCommands = #'((volta "</xsl:text>
          <xsl:value-of select="concat(ancestor::mei:ending/@n[1],'.')"/>
          <xsl:text>"))&#10;&#32;&#32;</xsl:text>
        </xsl:if>
        <xsl:if test="ancestor::mei:measure/preceding-sibling::mei:scoreDef/preceding::mei:measure[1]/@n = ancestor::mei:measure/preceding::mei:measure[1]/@n">
          <xsl:if test="preceding::mei:scoreDef[1]/@meter.showchange">
            <xsl:variable name="showchangeVal" select="substring(preceding::mei:scoreDef[1]/@meter.showchange,1,1)"/>
            <xsl:text>\override Staff.TimeSignature.break-visibility = #'#</xsl:text>
            <xsl:value-of select="concat('(#',$showchangeVal,' #',$showchangeVal,' #',$showchangeVal,')&#10;&#32;&#32;')"/>
          </xsl:if>
        </xsl:if>
        <xsl:if test="ancestor::mei:measure/preceding-sibling::mei:staffDef[@n = $staffNumber][@clef.shape]/preceding::mei:measure[1]/@n = ancestor::mei:measure/preceding::mei:measure[1]/@n">
          <xsl:call-template name="setClef">
            <xsl:with-param name="clefColor" select="preceding::mei:staffDef[@n = $staffNumber][@clef.shape][1]/@clef.color"/>
            <xsl:with-param name="clefDis" select="preceding::mei:staffDef[@n = $staffNumber][@clef.shape][1]/@clef.dis"/>
            <xsl:with-param name="clefDisPlace" select="preceding::mei:staffDef[@n = $staffNumber][@clef.shape][1]/@clef.dis.place"/>
            <xsl:with-param name="clefLine" select="preceding::mei:staffDef[@n = $staffNumber][@clef.shape][1]/@clef.line"/>
            <xsl:with-param name="clefShape" select="preceding::mei:staffDef[@n = $staffNumber][@clef.shape][1]/@clef.shape"/>
          </xsl:call-template>
          <xsl:text>&#10;&#32;&#32;</xsl:text>
        </xsl:if>
        <xsl:if test="ancestor::mei:measure/preceding-sibling::*[name()='meterSig' or @*[starts-with(name(),'meter')]][1]">
          <xsl:call-template name="meterSig">
            <xsl:with-param name="meterSymbol" select="ancestor::mei:measure/preceding-sibling::*[1]/@meter.sym"/>
            <xsl:with-param name="meterCount" select="ancestor::mei:measure/preceding-sibling::*[1]/@meter.count"/>
            <xsl:with-param name="meterUnit" select="ancestor::mei:measure/preceding-sibling::*[1]/@meter.unit"/>
            <xsl:with-param name="meterRend" select="ancestor::mei:measure/preceding-sibling::*[1]/@meter.rend"/>
          </xsl:call-template>
          <xsl:text>&#10;&#32;&#32;</xsl:text>
        </xsl:if>
        <xsl:if test="ancestor::mei:measure/preceding-sibling::*[name()='keySig' or @*[starts-with(name(),'key')]][1]">
          <xsl:call-template name="setKey">
            <xsl:with-param name="keyTonic" select="ancestor::mei:measure/preceding-sibling::*[1]/@key.pname"/>
            <xsl:with-param name="keyAccid" select="ancestor::mei:measure/preceding-sibling::*[1]/@key.accid"/>
            <xsl:with-param name="keyMode" select="ancestor::mei:measure/preceding-sibling::*[1]/@key.mode"/>
            <xsl:with-param name="keySig" select="ancestor::mei:measure/preceding-sibling::*[1]/@key.sig"/>
            <xsl:with-param name="keySigMixed" select="ancestor::mei:measure/preceding-sibling::*[1]/@key.sig.mixed"/>
          </xsl:call-template>
          <xsl:text>&#32;&#32;</xsl:text>
        </xsl:if>
        <xsl:apply-templates select="ancestor::mei:measure/mei:tempo[@staff = $staffNumber][@tstamp = 1]" mode="pre"/>
        <xsl:if test="ancestor::mei:measure/@metcon='false'">
          <xsl:value-of select="concat('\partial ',min(ancestor::mei:measure/descendant::*/@dur),'&#32;')"/>
        </xsl:if>
        <xsl:text>&lt;&lt;&#32;</xsl:text>
        <xsl:choose>
          <xsl:when test="@copyof">
            <xsl:apply-templates select="/mei:mei/mei:music//mei:staff[@xml:id = substring-after(current()/@copyof,'#')]"/>
          </xsl:when>
          <xsl:otherwise>
            <xsl:apply-templates/>
          </xsl:otherwise>
        </xsl:choose>
        <xsl:text>&gt;&gt;&#32;</xsl:text>
        <!-- print bar line -->
        <xsl:if test="ancestor::mei:measure/@right">
          <xsl:call-template name="setBarLine">
            <xsl:with-param name="barLineStyle" select="ancestor::mei:measure/@right"/>
          </xsl:call-template>
        </xsl:if>
        <!-- print bar number -->
        <xsl:value-of select="concat('%',ancestor::mei:measure/@n,'&#10;')"/>
        <!-- close volta brackets -->
        <xsl:if test="ancestor::mei:ending and not(ancestor::mei:ending/following-sibling::*[1][self::mei:ending])">
          <xsl:text>&#32;&#32;\set Score.repeatCommands = #'((volta #f))&#10;</xsl:text>
        </xsl:if>
        <!-- add breaks -->
        <xsl:apply-templates select="following::mei:sb[following::mei:measure[1]/@n = current()/ancestor::mei:measure/@n + 1]"/>
        <xsl:apply-templates select="following::mei:pb[following::mei:measure[1]/@n = current()/ancestor::mei:measure/@n + 1]"/>
      </xsl:for-each>
      <xsl:text>}&#10;&#10;</xsl:text>
      <!-- lilypond figured bass -->
      <xsl:if test="/mei:mei/mei:music//mei:harm[descendant-or-self::*/@staff=$staffNumber]">
        <xsl:value-of select="concat('Staff',codepoints-to-string(xs:integer(64 + $staffNumber)),'_fb = \figuremode {&#10;')"/>
        <xsl:for-each select="/mei:mei/mei:music//mei:measure">
          <xsl:text>&#32;&#32;</xsl:text>
          <xsl:variable name="meterCount" select="preceding::*[@meter.count][1]/@meter.count"/>
          <xsl:variable name="meterUnit" select="preceding::*[@meter.unit][1]/@meter.unit"/>
          <xsl:if test="not(descendant::mei:harm[@staff=$staffNumber])">
            <xsl:call-template name="setMeasureSpace"/>
          </xsl:if>
          <xsl:apply-templates select="mei:harm[@staff=$staffNumber]"/>
          <xsl:value-of select="concat('%',@n,'&#10;')"/>
        </xsl:for-each>
        <xsl:text>}&#10;&#10;</xsl:text>
      </xsl:if>
    </xsl:for-each>
    <!-- lilypond lyrics -->
    <xsl:for-each select="descendant::mei:scoreDef[1]/descendant::mei:staffDef">
      <xsl:variable name="staffNumber" select="@n"/>
      <xsl:if test="/mei:mei/mei:music//mei:staff[@n=$staffNumber]//mei:syl">
        <xsl:value-of select="concat('Lyrics',codepoints-to-string(xs:integer(64 + $staffNumber)),' = \lyricmode {&#10;')"/>
        <xsl:if test="ancestor-or-self::*/@lyric.name">
          <xsl:value-of select="concat('\override Lyrics.LyricText.font-name = #&quot;',ancestor-or-self::*/@lyric.name[1],'&quot; ')"/>
        </xsl:if>
        <xsl:if test="ancestor-or-self::*/@lyric.fam">
          <xsl:text>\override Lyrics.LyricText.font-family = #&apos;</xsl:text>
          <xsl:value-of select="concat(ancestor-or-self::*/@lyric.fam[1],' ')"/>
        </xsl:if>
        <xsl:if test="ancestor-or-self::*/@lyric.size">
        </xsl:if>
        <xsl:if test="ancestor-or-self::*/@lyric.style">
          <xsl:text>\override Lyrics.LyricText.font-shape = #&apos;</xsl:text>
          <xsl:value-of select="concat(ancestor-or-self::*/@lyric.style[1],' ')"/>
        </xsl:if>
        <xsl:if test="ancestor-or-self::*/@lyric.weight">
          <xsl:text>\override Lyrics.LyricText.font-series = #&apos;</xsl:text>
          <xsl:value-of select="concat(ancestor-or-self::*/@lyric.weight[1],' ')"/>
        </xsl:if>
        <xsl:for-each select="/mei:mei/mei:music//mei:staff[@n=$staffNumber]/mei:layer[1]">
          <xsl:for-each select="descendant::*[name()='note' or name()='rest' or name()='mRest']">
            <xsl:if test="not(@grace)">
              <xsl:choose>
                <xsl:when test="descendant::mei:syl">
                  <xsl:value-of select="descendant::mei:syl[1]"/>
                  <xsl:call-template name="setDuration"/>
                  <xsl:choose>
                    <xsl:when test="descendant::mei:syl[1]/@con='d'">
                      <xsl:value-of select="' -- '"/>
                    </xsl:when>
                    <xsl:when test="descendant::mei:syl[1]/@con='u'">
                      <xsl:value-of select="' __ '"/>
                    </xsl:when>
                    <xsl:otherwise>
                      <xsl:value-of select="' '"/>
                    </xsl:otherwise>
                  </xsl:choose>
                </xsl:when>
                <xsl:when test="@syl">
                  <xsl:value-of select="concat(' ',@syl)"/>
                  <xsl:call-template name="setDuration"/>
                  <xsl:value-of select="' '"/>
                </xsl:when>
                <xsl:otherwise>
                  <xsl:if test="name()='note' or max(/mei:mei/mei:music//mei:staff[@n=$staffNumber]/mei:layer/@n) &gt; 1">
                    <xsl:value-of select="'_'"/>
                    <xsl:call-template name="setDuration"/>
                    <xsl:if test="not(@dur)">
                      <xsl:value-of select="concat(preceding::mei:scoreDef[@meter.unit][1]//@meter.unit[1],'*',preceding::mei:scoreDef[@meter.count][1]//@meter.count)"/>
                    </xsl:if>
                    <xsl:value-of select="' '"/>
                  </xsl:if>
                </xsl:otherwise>
              </xsl:choose>
            </xsl:if>
          </xsl:for-each>
        </xsl:for-each>
        <xsl:text>&#10;}&#10;&#10;</xsl:text>
      </xsl:if>
    </xsl:for-each>
    <xsl:text>&#10;</xsl:text>
    <xsl:apply-templates select="descendant::mei:scoreDef[1]"/>
  </xsl:template>
  <!-- MEI score definition -->
  <xsl:template match="mei:scoreDef">
    <!-- lilypond score block -->
    <xsl:text>\score { &lt;&lt;&#10;</xsl:text>
    <xsl:if test="/mei:mei/mei:music//@source">
      <xsl:text>\removeWithTag #'( </xsl:text>
      <xsl:for-each select="distinct-values(/mei:mei/mei:music//@source)">
        <xsl:value-of select="concat(substring-after(.,'#'),' ')"/>
      </xsl:for-each>
      <xsl:text>)&#10;</xsl:text>
    </xsl:if>
    <xsl:apply-templates/>
    <xsl:text>&gt;&gt;&#10;</xsl:text>
    <xsl:text>\layout {&#10;</xsl:text>
    <xsl:if test="@clef.color or @mnum.visible">
      <xsl:text>  \context { \Score </xsl:text>
      <xsl:if test="@mnum.visible = 'false'">
        <xsl:text>\remove "Bar_number_engraver" </xsl:text>
      </xsl:if>
      <xsl:if test="@clef.color">
        <xsl:text>\override Clef.color = #</xsl:text>
        <xsl:call-template name="setColor">
          <xsl:with-param name="color" select="@clef.color"/>
        </xsl:call-template>
      </xsl:if>
      <xsl:text>}&#10;</xsl:text>
    </xsl:if>
    <xsl:text>}&#10;</xsl:text>
    <xsl:if test="@*[contains(name(),'midi')]">
      <xsl:text>\midi { </xsl:text>
      <xsl:if test="@midi.bpm">
        <xsl:value-of select="concat('\tempo 4 = ',@midi.bpm,' ')"/>
      </xsl:if>
      <xsl:text>}&#10;</xsl:text>
    </xsl:if>
    <xsl:text>}&#10;</xsl:text>
  </xsl:template>
  <!-- MEI staff group -->
  <xsl:template match="mei:staffGrp">
    <xsl:text>\new StaffGroup </xsl:text>
    <xsl:if test="@label or @label.abbr or child::mei:label">
      <xsl:text>\with { </xsl:text>
      <xsl:call-template name="setInstrumentName"/>
      <xsl:text>} </xsl:text>
    </xsl:if>
    <xsl:text>&lt;&lt;&#10;</xsl:text>
    <xsl:call-template name="setStaffGrpStyle"/>
    <xsl:apply-templates select="mei:staffGrp|mei:staffDef"/>
    <xsl:text>&gt;&gt;&#10;</xsl:text>
  </xsl:template>
  <!-- MEI staff definitons -->
  <xsl:template match="mei:staffDef">
    <xsl:variable name="staffNumber" select="@n"/>
    <xsl:value-of select="concat('  \new Staff = &quot;Staff ',$staffNumber,'&quot;&#32;')"/>
    <xsl:if test="@label or @label.abbr or child::mei:label or ((position() = 1) and (count(ancestor::mei:staffGrp) &gt; 1) and ancestor::mei:scoreDef/@ending.rend = 'grouped')">
      <xsl:text>\with { </xsl:text>
      <xsl:call-template name="setInstrumentName"/>
      <xsl:if test="(position() = 1) and (count(ancestor::mei:staffGrp) &gt; 1) and ancestor::mei:scoreDef/@ending.rend = 'grouped'">
        <xsl:text>\consists "Volta_engraver" </xsl:text>
      </xsl:if>
      <xsl:text>} </xsl:text>
    </xsl:if>
    <!-- add figured bass context -->
    <xsl:if test="/mei:mei/mei:music//mei:harm[descendant::mei:fb]/@staff = $staffNumber">
      <xsl:value-of select="concat('&#10;  \Staff',codepoints-to-string(xs:integer(64 + $staffNumber)),'_fb')"/>
      <xsl:value-of select="concat('&#10;  \context Staff = &quot;Staff ',$staffNumber,'&quot;&#32;')"/>
    </xsl:if>
    <xsl:text>{&#10;    </xsl:text>
    <xsl:apply-templates select="mei:instrDef"/>
    <xsl:if test="@lines and @lines != '5'">
      <xsl:value-of select="concat('\override Staff.StaffSymbol.line-count = #',@lines,'&#10;    ')"/>
    </xsl:if>
    <xsl:choose>
      <xsl:when test="@lines.visible = 'true'">
        <xsl:value-of select="'\override Staff.StaffSymbol.transparent = ##f&#10;    '"/>
      </xsl:when>
      <xsl:when test="@lines.visible = 'false'">
        <xsl:value-of select="'\override Staff.StaffSymbol.transparent = ##t&#10;    '"/>
      </xsl:when>
    </xsl:choose>
    <xsl:if test="ancestor-or-self::*/@pedal.style">
      <xsl:choose>
        <xsl:when test="ancestor-or-self::*/@pedal.style = 'line'">
          <xsl:text>\set Staff.pedalSustainStyle = #'bracket&#10;    </xsl:text>
        </xsl:when>
        <xsl:when test="ancestor-or-self::*/@pedal.style = 'pedstar'">
          <xsl:text>\set Staff.pedalSustainStyle = #'text&#10;    </xsl:text>
        </xsl:when>
      </xsl:choose>
    </xsl:if>
    <xsl:if test="@slur.lform">
      <xsl:value-of select="concat('\slur',translate(substring(@lform,1,1),'ds','DS'),substring(@lform,2),' ')"/>
    </xsl:if>
    <xsl:text>\autoBeamOff \set tieWaitForNote = ##t&#10;    </xsl:text>
    <xsl:call-template name="setClef">
      <xsl:with-param name="clefColor" select="@clef.color"/>
      <xsl:with-param name="clefDis" select="@clef.dis"/>
      <xsl:with-param name="clefDisPlace" select="@clef.dis.place"/>
      <xsl:with-param name="clefLine" select="@clef.line"/>
      <xsl:with-param name="clefShape" select="@clef.shape"/>
    </xsl:call-template>
    <xsl:call-template name="meterSig">
      <xsl:with-param name="meterSymbol" select="ancestor-or-self::*[@meter.sym][1]/@meter.sym[1]"/>
      <xsl:with-param name="meterCount" select="ancestor-or-self::*[@meter.count][1]/@meter.count"/>
      <xsl:with-param name="meterUnit" select="ancestor-or-self::*[@meter.unit][1]/@meter.unit"/>
      <xsl:with-param name="meterRend" select="ancestor-or-self::*[@meter.rend][1]/@meter.rend"/>
    </xsl:call-template>
    <xsl:call-template name="setKey">
      <xsl:with-param name="keyTonic" select="ancestor-or-self::*/@key.pname"/>
      <xsl:with-param name="keyAccid" select="ancestor-or-self::*/@key.accid"/>
      <xsl:with-param name="keyMode" select="ancestor-or-self::*/@key.mode"/>
      <xsl:with-param name="keySig" select="ancestor-or-self::*/@key.sig"/>
      <xsl:with-param name="keySigMixed" select="ancestor-or-self::*/@key.sig.mixed"/>
    </xsl:call-template>
    <xsl:if test="ancestor::mei:scoreDef/@meter.showchange = 'false'">
      <xsl:text>    \override Staff.TimeSignature.break-visibility = #'#(#f #f #f)&#10;</xsl:text>
    </xsl:if>
    <xsl:value-of select="concat('    \Staff',codepoints-to-string(xs:integer(64 + $staffNumber)))"/>
    <xsl:text>&#32;}&#10;</xsl:text>
    <xsl:if test="/mei:mei/mei:music//mei:syl[ancestor::mei:staff/@n = $staffNumber]">
      <xsl:choose>
        <xsl:when test="max(/mei:mei/mei:music//mei:staff[@n=$staffNumber]/mei:layer/@n) = 1">
          <xsl:value-of select="'  \addlyrics { '"/>
          <xsl:text>\set ignoreMelismata = ##t </xsl:text>
        </xsl:when>
        <xsl:otherwise>
          <xsl:value-of select="'  \new Lyrics { '"/>
        </xsl:otherwise>
      </xsl:choose>
      <xsl:value-of select="concat('\Lyrics',codepoints-to-string(xs:integer(64 + $staffNumber)),' }&#10;  ')"/>
    </xsl:if>
  </xsl:template>
  <!-- MEI instrument definition -->
  <xsl:template match="mei:instrDef">
    <xsl:if test="@midi.instrname">
      <xsl:choose>
        <xsl:when test="parent::mei:staffDef">
          <xsl:value-of select="concat('\set Staff.midiInstrument = #&quot;',@midi.instrname,'&quot;&#10;    ')"/>
        </xsl:when>
        <xsl:when test="parent::mei:staffGrp">
          <xsl:value-of select="concat('  \set StaffGroup.midiInstrument = #&quot;',@midi.instrname,'&quot;&#10;')"/>
        </xsl:when>
      </xsl:choose>
    </xsl:if>
  </xsl:template>
  <!-- MEI section -->
  <xsl:template match="mei:section">
    <xsl:text>{&#32;</xsl:text>
    <xsl:apply-templates/>
    <xsl:text>}&#32;</xsl:text>
  </xsl:template>
  <!-- MEI measures -->
  <xsl:template name="measures" match="mei:measure">
    <xsl:value-of select="'  '"/>
    <xsl:if test="@left">
      <xsl:call-template name="setBarLine">
        <xsl:with-param name="barLineStyle" select="@left"/>
      </xsl:call-template>
    </xsl:if>
    <xsl:apply-templates/>
    <xsl:if test="@right">
      <xsl:call-template name="setBarLine">
        <xsl:with-param name="barLineStyle" select="@right"/>
      </xsl:call-template>
    </xsl:if>
    <xsl:if test="@n">
      <xsl:value-of select="concat('%',@n)"/>
    </xsl:if>
    <xsl:text>&#10;</xsl:text>
  </xsl:template>
  <!-- MEI layers -->
  <xsl:template match="mei:layer">
    <xml:text>{ </xml:text>
    <xsl:apply-templates/>
    <xml:text>} </xml:text>
    <xsl:if test="following-sibling::mei:layer">
      <xml:text>\\ </xml:text>
    </xsl:if>
  </xsl:template>
  <!-- MEI clefs -->
  <xsl:template name="setClef" match="mei:clef">
    <xsl:param name="clefColor" select="@color"/>
    <xsl:param name="clefDis" select="@dis"/>
    <xsl:param name="clefDisPlace" select="@dis.place"/>
    <xsl:param name="clefLine" select="@line"/>
    <xsl:param name="clefShape" select="@shape"/>
    <xsl:variable name="clefTrans">
      <xsl:choose>
        <xsl:when test="$clefDisPlace='above'">
          <xsl:value-of select="number($clefDis) - 1"/>
        </xsl:when>
        <xsl:when test="$clefDisPlace='below'">
          <xsl:value-of select="-1 * number($clefDis) + 1"/>
        </xsl:when>
        <xsl:otherwise>
          <xsl:value-of select="0"/>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <xsl:variable name="clefPos" select="2 * number($clefLine) - 6"/>
    <xsl:variable name="cOffset">
      <xsl:choose>
        <xsl:when test="$clefShape='F'">
          <xsl:value-of select="4"/>
        </xsl:when>
        <xsl:when test="contains($clefShape,'G')">
          <xsl:value-of select="-4"/>
        </xsl:when>
        <xsl:otherwise>
          <xsl:value-of select="0"/>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <xsl:if test="$clefColor">
      <xsl:if test="name()='clef'">
        <xsl:value-of select="'\once '"/>
      </xsl:if>
      <xsl:value-of select="'\override Staff.Clef.color = #'"/>
      <xsl:call-template name="setColor">
        <xsl:with-param name="color" select="$clefColor"/>
      </xsl:call-template>
    </xsl:if>
    <xsl:value-of select="concat('\set Staff.clefGlyph = #','&quot;clefs.',$clefShape,'&quot; ')"/>
    <xsl:value-of select="concat('\set Staff.clefPosition = #',$clefPos,' ')"/>
    <xsl:value-of select="concat('\set Staff.clefTransposition = #',$clefTrans,' ')"/>
    <xsl:value-of select="concat('\set Staff.middleCPosition = #',$clefPos + $cOffset - $clefTrans,' ')"/>
    <xsl:value-of select="concat('\set Staff.middleCClefPosition = #',$clefPos + $cOffset - $clefTrans,' ')"/>
  </xsl:template>
  <!-- MEI notes -->
  <xsl:template match="mei:note[@pname]">
    <xsl:variable name="noteKey" select="concat('#',./@xml:id)"/>
    <xsl:apply-templates select="ancestor::mei:measure/descendant::*[@startid = $noteKey]" mode="pre"/>
    <xsl:if test="@staff and @staff != ancestor::mei:staff/@n">
      <xsl:value-of select="concat('\change Staff = &quot;Staff ',@staff,'&quot;&#32;')"/>
    </xsl:if>
    <xsl:if test="@visible='false'">
      <xml:text>\once \hideNotes </xml:text>
    </xsl:if>
    <xsl:if test="@head.color">
      <xsl:value-of select="'\once \override NoteHead.color = #'"/>
      <xsl:call-template name="setColor">
        <xsl:with-param name="color" select="@head.color"/>
      </xsl:call-template>
    </xsl:if>
    <xsl:call-template name="setStemDir"/>
    <xsl:if test="@grace and not(preceding::mei:note[1]/@grace)">
      <xsl:call-template name="setGraceNote"/>
      <xsl:if test="parent::mei:beam and position()=1">
        <xml:text>{</xml:text>
      </xsl:if>
    </xsl:if>
    <xsl:if test="(starts-with(@tuplet,'i') or (ancestor::mei:measure/mei:tupletSpan/@startid = $noteKey)) and not(ancestor::mei:tuplet)">
      <xsl:value-of select="concat('\tuplet ',ancestor::mei:measure/mei:tupletSpan[@startid = $noteKey]/@num,'/',ancestor::mei:measure/mei:tupletSpan[@startid = $noteKey]/@numbase,' { ')"/>
    </xsl:if>
    <xsl:if test="@head.shape = 'x'">
      <xml:text>\xNote </xml:text>
    </xsl:if>
    <xsl:if test="child::mei:accid/@place='above'">
      <xml:text>\once \set suggestAccidentals = ##t </xml:text>
    </xsl:if>
    <xsl:value-of select="@pname"/>
    <xsl:if test="@accid or @accid.ges or child::mei:accid">
      <xsl:choose>
        <xsl:when test="not(@accid.ges)">
          <xsl:call-template name="setAccidental">
            <xsl:with-param name="accidental" select="descendant-or-self::*/@accid"/>
          </xsl:call-template>
        </xsl:when>
        <xsl:otherwise>
          <xsl:call-template name="setAccidental">
            <xsl:with-param name="accidental" select="descendant-or-self::*/@accid.ges"/>
          </xsl:call-template>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:if>
    <xsl:call-template name="setOctave"/>
    <xsl:if test="descendant-or-self::*/@accid or child::mei:accid/@func='caution'">
      <xml:text>!</xml:text>
    </xsl:if>
    <xsl:if test="not(parent::mei:chord) and not(parent::mei:fTrem[@measperf])">
      <xsl:call-template name="setDuration"/>
    </xsl:if>
    <xsl:if test="parent::mei:fTrem/@measperf">
      <xsl:value-of select="parent::mei:fTrem/@measperf"/>
    </xsl:if>
    <xsl:if test="parent::mei:bTrem and not(@grace) and contains(@stem.mod,'slash')">
      <xsl:choose>
        <xsl:when test="parent::mei:bTrem[@measperf]">
          <xsl:value-of select="concat(':',parent::mei:bTrem/@measperf)"/>
        </xsl:when>
        <xsl:otherwise>
          <xsl:value-of select="concat(':',8 * number(substring(@stem.mod,1,1)))"/>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:if>
    <xsl:if test="contains(@tie,'i') or contains(@tie,'m') or (ancestor::mei:measure/mei:tie/@startid = $noteKey)">
      <xsl:if test="ancestor::mei:measure/mei:tie/@startid = $noteKey">
        <xsl:call-template name="setMarkupDirection">
          <xsl:with-param name="direction" select="ancestor::mei:measure/mei:tie[@startid = $noteKey]/@curvedir"/>
        </xsl:call-template>
      </xsl:if>
      <xml:text>~</xml:text>
    </xsl:if>
    <xsl:if test="contains(@beam,'i') or (parent::mei:beam and position()=1) or (ancestor::mei:measure/mei:beamSpan[not(@beam.with)]/@startid = $noteKey)">
      <xml:text>[</xml:text>
    </xsl:if>
    <xsl:if test="contains(@beam,'t') or (parent::mei:beam and position()=last()) or (/mei:mei/mei:music//mei:beamSpan[not(@beam.with)]/@endid = $noteKey)">
      <xml:text>]</xml:text>
    </xsl:if>
    <xsl:if test="contains(@slur,'t') or (/mei:mei/mei:music//mei:slur/@endid = $noteKey)">
      <xml:text>)</xml:text>
    </xsl:if>
    <xsl:if test="contains(@slur,'i') or (ancestor::mei:measure/mei:slur/@startid = $noteKey)">
      <xsl:if test="ancestor::mei:measure/mei:slur/@startid = $noteKey">
        <xsl:call-template name="setMarkupDirection">
          <xsl:with-param name="direction" select="ancestor::mei:measure/mei:slur[@startid = $noteKey]/@curvedir"/>
        </xsl:call-template>
      </xsl:if>
      <xml:text>(</xml:text>
    </xsl:if>
    <xsl:if test="@grace and parent::mei:beam and position()=last()">
      <xml:text>}</xml:text>
    </xsl:if>
    <xsl:apply-templates select="ancestor::mei:measure/mei:fing[@startid = $noteKey]"/>
    <xsl:if test="/mei:mei/mei:music//mei:hairpin/@endid = $noteKey or /mei:mei/mei:music//mei:dynam/@endid = $noteKey">
      <xml:text>\!</xml:text>
    </xsl:if>
    <xsl:if test="@artic">
      <xsl:call-template name="artic"/>
    </xsl:if>
    <xsl:apply-templates select="ancestor::mei:measure/mei:dynam[@startid = $noteKey]"/>
    <xsl:apply-templates select="ancestor::mei:measure/mei:hairpin[@startid = $noteKey]"/>
    <xsl:apply-templates/>
    <xsl:if test="/mei:mei/mei:music//mei:trill/@endid = $noteKey">
      <xml:text>\stopTrillSpan</xml:text>
    </xsl:if>
    <xsl:apply-templates select="ancestor::mei:measure/mei:mordent[@startid = $noteKey]"/>
    <xsl:apply-templates select="ancestor::mei:measure/mei:trill[@startid = $noteKey]"/>
    <xsl:apply-templates select="ancestor::mei:measure/mei:turn[@startid = $noteKey]"/>
    <xsl:if test="@ornam">
      <xsl:call-template name="setOrnament"/>
    </xsl:if>
    <xsl:if test="@fermata and not(ancestor::mei:measure/mei:fermata/@startid = $noteKey)">
      <xsl:call-template name="fermata"/>
    </xsl:if>
    <xsl:if test="contains(@gliss,'i') or (ancestor::mei:measure/mei:gliss/@startid = $noteKey)">
      <xsl:text>\glissando</xsl:text>
    </xsl:if>
    <xsl:apply-templates select="ancestor::mei:measure/mei:fermata[@startid = $noteKey]"/>
    <xsl:apply-templates select="ancestor::mei:measure/mei:pedal[@startid = $noteKey]"/>
    <xsl:if test="(starts-with(@tuplet,'t') or (/mei:mei/mei:music//mei:tupletSpan/@endid = $noteKey)) and not(ancestor::mei:tuplet)">
      <xsl:value-of select="' }'"/>
    </xsl:if>
    <xsl:if test="/mei:mei/mei:music//mei:octave/@endid = $noteKey">
      <xsl:value-of select="'\ottava #0 '"/>
    </xsl:if>
    <xsl:value-of select="' '"/>
    <xsl:if test="@staff and @staff != ancestor::mei:staff/@n">
      <xsl:value-of select="concat('\change Staff = &quot;Staff ',ancestor::mei:staff/@n,'&quot;&#32;')"/>
    </xsl:if>
  </xsl:template>
  <!-- MEI chords -->
  <xsl:template match="mei:chord[@copyof]">
    <xsl:apply-templates select="/mei:mei/mei:music//mei:chord[@xml:id = substring-after(current()/@copyof,'#')]"/>
  </xsl:template>
  <xsl:template match="mei:chord">
    <xsl:variable name="chordKey" select="concat('#',./@xml:id)"/>
    <xsl:variable name="subChordKeys" select="descendant::*/@xml:id"/>
    <xsl:apply-templates select="ancestor::mei:measure/descendant::*[@startid = $chordKey or contains(@plist,concat('#',$subChordKeys))]" mode="pre"/>
    <xsl:if test="@visible='false'">
      <xml:text>\once \hideNotes </xml:text>
    </xsl:if>
    <xsl:call-template name="setStemDir"/>
    <xsl:if test="(starts-with(@tuplet,'i') or (ancestor::mei:measure/mei:tupletSpan/@startid = $chordKey)) and not(ancestor::mei:tuplet)">
      <xsl:value-of select="concat('\tuplet ',ancestor::mei:measure/mei:tupletSpan[@startid = $chordKey]/@num,'/',ancestor::mei:measure/mei:tupletSpan[@startid = $chordKey]/@numbase,' { ')"/>
    </xsl:if>
    <xml:text>&lt; </xml:text>
    <xsl:apply-templates select="mei:note"/>
    <xml:text>&gt;</xml:text>
    <xsl:call-template name="setDuration"/>
    <xsl:if test="contains(@stem.mod,'slash')">
      <xsl:value-of select="concat(':',8 * number(substring(@stem.mod,1,1)))"/>
    </xsl:if>
    <xsl:if test="contains(@tie,'i') or contains(@tie,'m') or (ancestor::mei:measure/mei:tie/@startid = $chordKey)">
      <xsl:if test="ancestor::mei:measure/mei:tie/@startid = $chordKey">
        <xsl:call-template name="setMarkupDirection">
          <xsl:with-param name="direction" select="ancestor::mei:measure/mei:tie[@startid = $chordKey]/@curvedir"/>
        </xsl:call-template>
      </xsl:if>
      <xml:text>~</xml:text>
    </xsl:if>
    <xsl:if test="contains(@beam,'i') or (parent::mei:beam and position()=1) or (ancestor::mei:measure/mei:beamSpan[not(@beam.with)]/@startid = $chordKey)">
      <xml:text>[</xml:text>
    </xsl:if>
    <xsl:if test="contains(@beam,'t') or (parent::mei:beam and position()=last()) or (/mei:mei/mei:music//mei:beamSpan[not(@beam.with)]/@endid = $chordKey)">
      <xml:text>]</xml:text>
    </xsl:if>
    <xsl:if test="contains(@slur,'t') or (/mei:mei/mei:music//mei:slur/@endid = $chordKey)">
      <xml:text>)</xml:text>
    </xsl:if>
    <xsl:if test="contains(@slur,'i') or (//mei:slur/@startid = $chordKey)">
      <xsl:if test="ancestor::mei:measure/mei:slur/@startid = $chordKey">
        <xsl:call-template name="setMarkupDirection">
          <xsl:with-param name="direction" select="ancestor::mei:measure/mei:slur[@startid = $chordKey]/@curvedir"/>
        </xsl:call-template>
      </xsl:if>
      <xml:text>(</xml:text>
    </xsl:if>
    <xsl:if test="ancestor::mei:measure/mei:arpeg[@startid = $chordKey or contains(@plist,concat('#',$subChordKeys))]">
      <xml:text>\arpeggio</xml:text>
    </xsl:if>
    <xsl:if test="/mei:mei/mei:music//mei:hairpin/@endid = $chordKey or /mei:mei/mei:music//mei:dynam/@endid = $chordKey">
      <xml:text>\!</xml:text>
    </xsl:if>
    <xsl:if test="@artic">
      <xsl:call-template name="artic"/>
    </xsl:if>
    <xsl:apply-templates select="mei:artic"/>
    <xsl:apply-templates select="ancestor::mei:measure/mei:dynam[@startid = $chordKey]"/>
    <xsl:apply-templates select="ancestor::mei:measure/mei:hairpin[@startid = $chordKey]"/>
    <xsl:if test="/mei:mei/mei:music//mei:trill/@endid = $chordKey">
      <xml:text>\stopTrillSpan</xml:text>
    </xsl:if>
    <xsl:apply-templates select="ancestor::mei:measure/mei:mordent[@startid = $chordKey]"/>
    <xsl:apply-templates select="ancestor::mei:measure/mei:trill[@startid = $chordKey]"/>
    <xsl:apply-templates select="ancestor::mei:measure/mei:turn[@startid = $chordKey]"/>
    <xsl:if test="@ornam">
      <xsl:call-template name="setOrnament"/>
    </xsl:if>
    <xsl:if test="ancestor::mei:measure/mei:gliss/@startid = $chordKey">
      <xsl:text>\glissando</xsl:text>
    </xsl:if>
    <xsl:if test="@fermata and not(ancestor::mei:measure/mei:fermata/@startid = $chordKey)">
      <xsl:call-template name="fermata"/>
    </xsl:if>
    <xsl:apply-templates select="ancestor::mei:measure/mei:fermata[@startid = $chordKey]"/>
    <xsl:apply-templates select="ancestor::mei:measure/mei:pedal[@startid = $chordKey]"/>
    <xsl:if test="(starts-with(@tuplet,'t') or (/mei:mei/mei:music//mei:tupletSpan/@endid = $chordKey)) and not(ancestor::mei:tuplet)">
      <xsl:value-of select="' }'"/>
    </xsl:if>
    <xsl:if test="/mei:mei/mei:music//mei:octave/@endid = $chordKey">
      <xsl:value-of select="'\ottava #0'"/>
    </xsl:if>
    <xsl:value-of select="' '"/>
  </xsl:template>
  <!-- MEI rests -->
  <xsl:template match="mei:rest">
    <xsl:variable name="restKey" select="concat('#',./@xml:id)"/>
    <xsl:if test="@staff and @staff != ancestor::mei:staff/@n">
      <xsl:value-of select="concat('\change Staff = &quot;Staff ',@staff,'&quot;&#32;')"/>
    </xsl:if>
    <xsl:if test="@visible='false'">
      <xml:text>\once \hideNotes </xml:text>
    </xsl:if>
    <xsl:if test="@color">
      <xsl:value-of select="'\once \override Rest.color = #'"/>
      <xsl:call-template name="setColor"/>
    </xsl:if>
    <xsl:if test="(starts-with(@tuplet,'i') or (ancestor::mei:measure/mei:tupletSpan/@startid = $restKey)) and not(ancestor::mei:tuplet)">
      <xsl:value-of select="concat('\tuplet ',ancestor::mei:measure/mei:tupletSpan[@startid = $restKey]/@num,'/',ancestor::mei:measure/mei:tupletSpan[@startid = $restKey]/@numbase,' { ')"/>
    </xsl:if>
    <xsl:choose>
      <xsl:when test="@ploc and @oloc">
        <xsl:value-of select="@ploc"/>
        <xsl:call-template name="setOctave">
          <xsl:with-param name="oct" select="@oloc"/>
        </xsl:call-template>
        <xsl:call-template name="setDuration"/>
        <xsl:value-of select="'\rest'"/>
      </xsl:when>
      <xsl:otherwise>
        <xml:text>r</xml:text>
        <xsl:call-template name="setDuration"/>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:if test="contains(@beam,'i') or (parent::mei:beam and position()=1)">
      <xml:text>[</xml:text>
    </xsl:if>
    <xsl:if test="contains(@beam,'t') or (parent::mei:beam and position()=last())">
      <xml:text>]</xml:text>
    </xsl:if>
    <xsl:if test="/mei:mei/mei:music//mei:hairpin/@endid = $restKey or /mei:mei/mei:music//mei:dynam/@endid = $restKey">
      <xml:text>\!</xml:text>
    </xsl:if>
    <xsl:apply-templates select="ancestor::mei:measure/mei:dynam[@startid = $restKey]"/>
    <xsl:apply-templates select="ancestor::mei:measure/mei:hairpin[@startid = $restKey]"/>
    <xsl:apply-templates select="ancestor::mei:measure/mei:fermata[@startid = $restKey]"/>
    <xsl:if test="@fermata and not(ancestor::mei:measure/mei:fermata/@startid = $restKey)">
      <xsl:call-template name="fermata"/>
    </xsl:if>
    <xsl:if test="starts-with(@tuplet,'t') or (/mei:mei/mei:music//mei:tupletSpan/@endid = $restKey)">
      <xsl:value-of select="' }'"/>
    </xsl:if>
    <xsl:value-of select="' '"/>
    <xsl:if test="@staff and @staff != ancestor::mei:staff/@n">
      <xsl:value-of select="concat('\change Staff = &quot;Staff ',ancestor::mei:staff/@n,'&quot;&#32;')"/>
    </xsl:if>
  </xsl:template>
  <!-- MEI measure rest -->
  <xsl:template name="setMeasureRest" match="mei:mRest">
    <xsl:if test="@visible='false'">
      <xml:text>\once \omit MultiMeasureRest </xml:text>
    </xsl:if>
    <xsl:if test="@color">
      <xsl:value-of select="'\once \override MultiMeasureRest.color = #'"/>
      <xsl:call-template name="setColor"/>
    </xsl:if>
    <xml:text>R</xml:text>
    <xsl:choose>
      <xsl:when test="@dur">
        <xsl:call-template name="setDuration"/>
      </xsl:when>
      <xsl:when test="preceding::*/@meter.unit">
        <xsl:value-of select="concat(preceding::*[@meter.unit][1]/@meter.unit,'*',preceding::*[@meter.count][1]/@meter.count)"/>
      </xsl:when>
      <xsl:otherwise>
        <xsl:text>1</xsl:text>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:if test="@fermata or (ancestor::mei:measure/mei:fermata/@startid = concat('#',@xml:id))">
      <xsl:call-template name="fermata"/>
      <xsl:value-of select="'Markup'"/>
    </xsl:if>
    <xsl:value-of select="' '"/>
  </xsl:template>
  <!-- MEI spaces -->
  <xsl:template match="mei:space">
    <xml:text>s</xml:text>
    <xsl:call-template name="setDuration"/>
    <xsl:value-of select="' '"/>
  </xsl:template>
  <!-- MEI measure space -->
  <xsl:template name="setMeasureSpace" match="mei:mSpace">
    <xml:text>s</xml:text>
    <xsl:choose>
      <xsl:when test="@dur">
        <xsl:call-template name="setDuration"/>
      </xsl:when>
      <xsl:when test="preceding::*/@meter.unit">
        <xsl:value-of select="concat(preceding::mei:scoreDef[@meter.unit][1]//@meter.unit,'*',preceding::mei:scoreDef[@meter.count][1]//@meter.count)"/>
      </xsl:when>
      <xsl:otherwise>
        <xsl:text>1</xsl:text>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:value-of select="' '"/>
  </xsl:template>
  <!-- MEI accidental (handled on note level) -->
  <xsl:template match="mei:accid"/>
  <!-- MEI beam -->
  <xsl:template match="mei:beam">
    <xsl:if test="@color">
      <xsl:value-of select="'\once \override Beam.color = #'"/>
      <xsl:call-template name="setColor"/>
    </xsl:if>
    <xsl:apply-templates/>
  </xsl:template>
  <!-- MEI beam -->
  <xsl:template match="mei:beamSpan" mode="pre">
    <xsl:if test="@color">
      <xsl:value-of select="'\once \override Beam.color = #'"/>
      <xsl:call-template name="setColor"/>
    </xsl:if>
  </xsl:template>
  <!-- MEI bowed tremolo -->
  <xsl:template match="mei:bTrem">
    <xsl:apply-templates/>
  </xsl:template>
  <!-- MEI fingered tremolo -->
  <xsl:template match="mei:fTrem[@measperf]">
    <xsl:value-of select="concat('\repeat tremolo ',@measperf div child::*[1]/@dur,' {')"/>
    <xsl:apply-templates/>
    <xsl:value-of select="'} '"/>
  </xsl:template>
  <!-- MEI tuplet elements -->
  <xsl:template match="mei:tuplet[@copyof]">
    <xsl:apply-templates select="/mei:mei/mei:music//mei:tuplet[@xml:id = substring-after(current()/@copyof,'#')]"/>
  </xsl:template>
  <xsl:template match="mei:tuplet">
    <xsl:if test="@bracket.visible">
      <xsl:value-of select="concat('\once \override TupletBracket.bracket-visibility = ##',substring(@bracket.visible,1,1),' ')"/>
    </xsl:if>
    <xsl:if test="@num.visible='false'">
      <xsl:value-of select="'\once \omit TupletNumber '"/>
    </xsl:if>
    <xsl:if test="@num.format='ratio'">
      <xsl:value-of select="'\once \override TupletNumber.text = #tuplet-number::calc-fraction-text '"/>
    </xsl:if>
    <xsl:choose>
      <xsl:when test="@bracket.place='above' or @num.place='above'">
        <xsl:value-of select="'\once \tupletDown '"/>
      </xsl:when>
      <xsl:when test="@bracket.place='below' or @num.place='below'">
        <xsl:value-of select="'\once \tupletUp '"/>
      </xsl:when>
    </xsl:choose>
    <xsl:value-of select="concat('\tuplet ',@num,'/',@numbase,' { ')"/>
    <xsl:apply-templates/>
    <xsl:text>} </xsl:text>
  </xsl:template>
  <!-- MEI articulation -->
  <xsl:template name="artic" match="mei:artic">
    <xsl:param name="articList" select="@artic"/>
    <xsl:if test="self::mei:artic">
      <xsl:if test="@color">
        <xsl:value-of select="'-\tweak Script.color #'"/>
        <xsl:call-template name="setColor"/>
      </xsl:if>
      <xsl:call-template name="setMarkupDirection">
        <xsl:with-param name="direction" select="@place"/>
      </xsl:call-template>
    </xsl:if>
    <xsl:choose>
      <xsl:when test="contains($articList,' ')">
        <xsl:call-template name="setArticulation">
          <xsl:with-param name="articulation" select="substring-before($articList,' ')"/>
        </xsl:call-template>
        <xsl:call-template name="artic">
          <xsl:with-param name="articList" select="substring-after($articList,' ')"/>
        </xsl:call-template>
      </xsl:when>
      <xsl:otherwise>
        <xsl:call-template name="setArticulation">
          <xsl:with-param name="articulation" select="$articList"/>
        </xsl:call-template>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>
  <!-- MEI fermata -->
  <xsl:template name="fermata" match="mei:fermata">
    <xsl:choose>
      <xsl:when test="self::mei:fermata">
        <xsl:if test="@color">
          <xsl:value-of select="'-\tweak Script.color #'"/>
          <xsl:call-template name="setColor"/>
        </xsl:if>
        <xsl:call-template name="setMarkupDirection">
          <xsl:with-param name="direction" select="@place"/>
        </xsl:call-template>
      </xsl:when>
      <xsl:otherwise>
        <xsl:if test="@fermata='above'">
          <xsl:text>^</xsl:text>
        </xsl:if>
        <xsl:if test="@fermata='below'">
          <xsl:text>_</xsl:text>
        </xsl:if>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:choose>
      <xsl:when test="@shape = 'square'">
        <xsl:text>\longfermata</xsl:text>
      </xsl:when>
      <xsl:when test="@shape = 'angular'">
        <xsl:text>\shortfermata</xsl:text>
      </xsl:when>
      <xsl:otherwise>
        <xsl:text>\fermata</xsl:text>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>
  <!-- MEI mordent -->
  <xsl:template name="mordent" match="mei:mordent">
    <xsl:if test="@color">
      <xsl:value-of select="'-\tweak Script.color #'"/>
      <xsl:call-template name="setColor"/>
    </xsl:if>
    <xsl:call-template name="setMarkupDirection">
      <xsl:with-param name="direction" select="@place"/>
    </xsl:call-template>
    <xsl:choose>
      <xsl:when test="@form = 'inv'">
        <xsl:text>\prall</xsl:text>
      </xsl:when>
      <xsl:when test="@long = 'yes'">
        <xsl:text>\prallprall</xsl:text>
      </xsl:when>
      <xsl:otherwise>
        <xsl:text>\mordent</xsl:text>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>
  <!-- MEI trill -->
  <xsl:template name="trill" match="mei:trill">
    <xsl:choose>
      <xsl:when test="@endid and @endid != @startid">
        <xsl:if test="@color">
          <xsl:value-of select="'-\tweak TrillSpanner.color #'"/>
          <xsl:call-template name="setColor"/>
        </xsl:if>
        <xsl:call-template name="setMarkupDirection">
          <xsl:with-param name="direction" select="@place"/>
        </xsl:call-template>
        <xml:text>\startTrillSpan</xml:text>
      </xsl:when>
      <xsl:otherwise>
        <xsl:if test="@color">
          <xsl:value-of select="'-\tweak Script.color #'"/>
          <xsl:call-template name="setColor"/>
        </xsl:if>
        <xsl:call-template name="setMarkupDirection">
          <xsl:with-param name="direction" select="@place"/>
        </xsl:call-template>
        <xml:text>\trill</xml:text>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>
  <!-- MEI turn -->
  <xsl:template name="turn" match="mei:turn">
    <xsl:if test="@color">
      <xsl:value-of select="'-\tweak Script.color #'"/>
      <xsl:call-template name="setColor"/>
    </xsl:if>
    <xsl:call-template name="setMarkupDirection">
      <xsl:with-param name="direction" select="@place"/>
    </xsl:call-template>
    <xsl:choose>
      <xsl:when test="@form = 'inv'">
        <xsl:text>\reverseturn</xsl:text>
      </xsl:when>
      <xsl:otherwise>
        <xsl:text>\turn</xsl:text>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>
  <!-- MEI breath -->
  <xsl:template match="mei:breath" mode="pre">
    <xsl:if test="@color">
      <xsl:value-of select="'\once \override BreathingSign.color = '"/>
      <xsl:call-template name="setColor"/>
    </xsl:if>
  </xsl:template>
  <xsl:template match="mei:breath">
    <xsl:text>\breathe</xsl:text>
  </xsl:template>
  <!-- MEI octave -->
  <xsl:template match="mei:octave" mode="pre">
    <xsl:if test="@color">
      <xsl:value-of select="'\once \override Staff.OttavaBracket.color = #'"/>
      <xsl:call-template name="setColor"/>
    </xsl:if>
    <xsl:if test="@lform">
      <xsl:choose>
        <xsl:when test="@lform = 'wavy'">
          <xsl:text>\once \override Staff.OttavaBracket.style = #'trill </xsl:text>
        </xsl:when>
        <xsl:otherwise>
          <xsl:text>\once \override Staff.OttavaBracket.style = #'</xsl:text>
          <xsl:value-of select="concat(@lform,'-line ')"/>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:if>
    <xsl:choose>
      <xsl:when test="@dis.place = 'above'">
        <xsl:value-of select="concat('\ottava #',round(number(@dis) div 8),' ')"/>
        <xml:text>\unset Staff.middleCPosition </xml:text>
      </xsl:when>
      <xsl:when test="@dis.place = 'below'">
        <xsl:value-of select="concat('\ottava #-',round(number(@dis) div 8),' ')"/>
      </xsl:when>
      <xsl:otherwise>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>
  <!-- MEI slur -->
  <xsl:template match="mei:slur" mode="pre">
    <xsl:if test="@color">
      <xsl:value-of select="'\once \override Slur.color = #'"/>
      <xsl:call-template name="setColor"/>
    </xsl:if>
    <xsl:if test="@lform">
      <xsl:value-of select="concat('\once \slur',translate(substring(@lform,1,1),'ds','DS'),substring(@lform,2),' ')"/>
    </xsl:if>
  </xsl:template>
  <!-- MEI arpeggio -->
  <xsl:template match="mei:arpeg" mode="pre">
    <xsl:if test="@color">
      <xsl:value-of select="'\once \override Arpeggio.color = #'"/>
      <xsl:call-template name="setColor"/>
    </xsl:if>
    <xsl:choose>
      <xsl:when test="@order = 'up'">
        <xml:text>\once \arpeggioArrowUp </xml:text>
      </xsl:when>
      <xsl:when test="@order = 'down'">
        <xml:text>\once \arpeggioArrowDown </xml:text>
      </xsl:when>
      <xsl:when test="@order = 'nonarp'">
        <xml:text>\once \arpeggioBracket </xml:text>
      </xsl:when>
    </xsl:choose>
  </xsl:template>
  <!-- MEI glissando -->
  <xsl:template match="mei:gliss" mode="pre">
    <xsl:if test="@color">
      <xsl:value-of select="'\once \override Glissando.color = #'"/>
      <xsl:call-template name="setColor"/>
    </xsl:if>
    <xsl:if test="@lform">
      <xsl:choose>
        <xsl:when test="@lform = 'wavy'">
          <xsl:text>\once \override Glissando.style = #'trill </xsl:text>
        </xsl:when>
        <xsl:otherwise>
          <xsl:text>\once \override Glissando.style = #'</xsl:text>
          <xsl:value-of select="concat(@lform,'-line ')"/>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:if>
  </xsl:template>
  <!-- MEI dynamic -->
  <xsl:template match="mei:dynam" mode="pre">
    <xsl:if test="@color">
      <xsl:value-of select="'\once \override DynamicText.color = #'"/>
      <xsl:call-template name="setColor"/>
    </xsl:if>
  </xsl:template>
  <xsl:template match="mei:dynam">
    <xsl:call-template name="setMarkupDirection">
      <xsl:with-param name="direction" select="@place"/>
    </xsl:call-template>
    <xsl:value-of select="concat('\',.)"/>
  </xsl:template>
  <!-- MEI hairpin -->
  <xsl:template match="mei:hairpin">
    <xsl:if test="@color">
      <xsl:value-of select="'-\tweak Hairpin.color #'"/>
      <xsl:call-template name="setColor"/>
    </xsl:if>
    <xsl:if test="@lform">
      <xsl:choose>
        <xsl:when test="@lform = 'wavy'">
          <xsl:text>-\tweak Hairpin.style #'trill </xsl:text>
        </xsl:when>
        <xsl:otherwise>
          <xsl:text>-\tweak Hairpin.style #'</xsl:text>
          <xsl:value-of select="concat(@lform,'-line ')"/>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:if>
    <xsl:call-template name="setMarkupDirection">
      <xsl:with-param name="direction" select="@place"/>
    </xsl:call-template>
    <xsl:choose>
      <xsl:when test="@form = 'cres'">
        <xml:text>\&lt;</xml:text>
      </xsl:when>
      <xsl:when test="@form = 'dim'">
        <xml:text>\&gt;</xml:text>
      </xsl:when>
    </xsl:choose>
  </xsl:template>
  <!-- MEI pedal -->
  <xsl:template match="mei:pedal" mode="pre">
    <xsl:if test="@color">
      <xsl:value-of select="'\once \override Staff.SustainPedal.color = #'"/>
      <xsl:call-template name="setColor"/>
      <xsl:value-of select="'\once \override Staff.PianoPedalBracket.color = #'"/>
      <xsl:call-template name="setColor"/>
    </xsl:if>
    <xsl:if test="@lform">
      <xsl:choose>
        <xsl:when test="@lform = 'wavy'">
          <xsl:text>\once \override Staff.PianoPedalBracket.style = #'trill </xsl:text>
        </xsl:when>
        <xsl:otherwise>
          <xsl:text>\once \override Staff.PianoPedalBracket.style = #'</xsl:text>
          <xsl:value-of select="concat(@lform,'-line ')"/>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:if>
    <xsl:choose>
      <xsl:when test="@form = 'line'">
        <xsl:text>\once \set Staff.pedalSustainStyle = #'bracket&#10;    </xsl:text>
      </xsl:when>
      <xsl:when test="@form = 'pedstar'">
        <xsl:text>\once \set Staff.pedalSustainStyle = #'text&#10;    </xsl:text>
      </xsl:when>
    </xsl:choose>
  </xsl:template>
  <xsl:template match="mei:pedal">
    <xsl:choose>
      <xsl:when test="@dir = 'down'">
        <xml:text>\sustainOn</xml:text>
      </xsl:when>
      <xsl:when test="@dir = 'up'">
        <xml:text>\sustainOff</xml:text>
      </xsl:when>
      <xsl:when test="@dir = 'half'">
      </xsl:when>
      <xsl:when test="@dir = 'bounce'">
        <xml:text>\sustainOff\sustainOn</xml:text>
      </xsl:when>
    </xsl:choose>
  </xsl:template>
  <!-- MEI harmony -->
  <xsl:template match="mei:harm[mei:fb]">
    <xsl:variable name="meterCount" select="preceding::*[@meter.count][1]/@meter.count"/>
    <xsl:variable name="meterUnit" select="preceding::*[@meter.unit][1]/@meter.unit"/>
    <xsl:if test="(descendant-or-self::*/@place = 'above') and not(preceding::mei:harm[ancestor::mei:music][@staff = current()/@staff][1]/descendant-or-self::*/@place = 'above')">
      <xsl:text>\bassFigureStaffAlignmentUp&#10;&#32;&#32;</xsl:text>
    </xsl:if>
    <xsl:if test="(descendant-or-self::*/@place = 'below') and not(preceding::mei:harm[ancestor::mei:music][@staff = current()/@staff][1]/descendant-or-self::*/@place = 'below')">
      <xsl:text>\bassFigureStaffAlignmentDown&#10;&#32;&#32;</xsl:text>
    </xsl:if>
    <xsl:if test="not(preceding-sibling::mei:harm[@staff = current()/@staff]) and @tstamp &gt; 1">
      <xsl:value-of select="concat('s',$meterUnit)"/>
      <xsl:if test="@tstamp != 2">
        <xsl:text>*</xsl:text>
        <xsl:call-template name="durationMultiplier">
          <xsl:with-param name="decimalnum" select="@tstamp - 1"/>
        </xsl:call-template>
      </xsl:if>
      <xsl:text>&#32;</xsl:text>
    </xsl:if>
    <xsl:apply-templates select="mei:fb"/>
    <xsl:value-of select="$meterUnit"/>
    <xsl:choose>
      <xsl:when test="not(following-sibling::mei:harm[@staff = current()/@staff][mei:fb]) and @tstamp != $meterCount">
        <xsl:variable name="meterFactor">
          <xsl:call-template name="durationMultiplier">
            <xsl:with-param name="decimalnum" select="$meterCount - @tstamp + 1"/>
          </xsl:call-template>
        </xsl:variable>
        <xsl:value-of select="concat('*',$meterFactor)"/>
      </xsl:when>
      <xsl:when test="following-sibling::mei:harm[@staff = current()/@staff]/mei:fb and (following-sibling::mei:harm[@staff = current()/@staff][mei:fb][1]/@tstamp - @tstamp != 1)">
        <xsl:variable name="meterFactor">
          <xsl:call-template name="durationMultiplier">
            <xsl:with-param name="decimalnum" select="following-sibling::mei:harm[@staff = current()/@staff][mei:fb][1]/@tstamp - @tstamp"/>
          </xsl:call-template>
        </xsl:variable>
        <xsl:value-of select="concat('*',$meterFactor)"/>
      </xsl:when>
    </xsl:choose>
    <xsl:text>&#32;</xsl:text>
  </xsl:template>
  <!-- MEI finger group -->
  <xsl:template match="mei:fingGrp">
    <xsl:apply-templates/>
  </xsl:template>
  <!-- MEI finger -->
  <xsl:template match="mei:fing" mode="pre"/>
  <xsl:template match="mei:fing">
    <xsl:call-template name="setMarkupDirection">
      <xsl:with-param name="direction" select="@place"/>
    </xsl:call-template>
    <xsl:apply-templates/>
  </xsl:template>
  <!-- MEI figured bass -->
  <xsl:template match="mei:fb">
    <xsl:text>&lt;</xsl:text>
    <xsl:apply-templates/>
    <xsl:text>&gt;</xsl:text>
  </xsl:template>
  <!-- MEI figure from figured bass -->
  <xsl:template match="mei:f">
    <xsl:if test="string-length() = string-length(translate(.,'123456789',''))">
      <xsl:text>_</xsl:text>
    </xsl:if>
    <xsl:value-of select="translate(.,'♭♮♯&lt;&gt;','-!+')"/>
    <xsl:if test="contains(.,'\')">
      <xsl:text>\</xsl:text>
    </xsl:if>
    <xsl:if test="following-sibling::mei:f">
      <xsl:text>&#32;</xsl:text>
    </xsl:if>
  </xsl:template>
  <!-- MEI lyrics -->
  <xsl:template match="mei:lyrics">
    <xsl:if test="@color">
      <xsl:value-of select="'\once \override Lyrics.LyricText.color = #'"/>
      <xsl:call-template name="setColor"/>
    </xsl:if>
    <xsl:if test="@fontweight">
      <xsl:value-of select="concat('\once \override Lyrics.LyricText.font-series = #',@fontweight,' ')"/>
    </xsl:if>
    <xsl:if test="@fontstyle">
      <xsl:value-of select="concat('\once \override Lyrics.LyricText.font-shape = #',@fontstyle,' ')"/>
    </xsl:if>
    <xsl:apply-templates/>
    <xsl:text>&#32;</xsl:text>
  </xsl:template>
  <!-- MEI ligature -->
  <xsl:template match="mei:ligature">
    <xsl:text>\[&#32;</xsl:text>
    <xsl:apply-templates/>
    <xsl:text>&#32;\]&#32;</xsl:text>
  </xsl:template>
  <!-- MEI tempo -->
  <xsl:template match="mei:tempo" mode="pre">
    <xsl:if test="@place = 'below'">
      <xsl:value-of select="'\once \override Score.MetronomeMark.direction = #DOWN '"/>
    </xsl:if>
    <xsl:value-of select="'\tempo \markup {'"/>
    <xsl:apply-templates/>
    <xsl:value-of select="'}&#10;  '"/>
  </xsl:template>
  <!-- MEI directive -->
  <xsl:template match="mei:dir" mode="pre"/>
  <xsl:template match="mei:dir">
    <xsl:call-template name="setMarkupDirection">
      <xsl:with-param name="direction" select="@place"/>
    </xsl:call-template>
    <xsl:text>\markup {</xsl:text>
    <xsl:apply-templates/>
    <xsl:text>}&#32;</xsl:text>
  </xsl:template>
  <!-- MEI label -->
  <xsl:template match="mei:label">
    <xsl:text>\markup {</xsl:text>
    <xsl:apply-templates/>
    <xsl:text>}&#32;</xsl:text>
  </xsl:template>
  <!-- MEI rend -->
  <xsl:template match="mei:rend">
    <xsl:if test="@color">
      <xsl:value-of select="'\with-color #'"/>
      <xsl:call-template name="setColor"/>
    </xsl:if>
    <xsl:if test="@fontname">
      <xsl:text>\override #'(font-name . </xsl:text>
      <xsl:value-of select="concat('&quot;',@fontname,'&quot;')"/>
      <xsl:text>) </xsl:text>
    </xsl:if>
    <xsl:if test="@fontweight='normal' or @fontstyle='normal'">
      <xsl:value-of select="'\normal-text '"/>
    </xsl:if>
    <xsl:if test="@fontweight != 'normal'">
      <xsl:value-of select="concat('\',@fontweight,' ')"/>
    </xsl:if>
    <xsl:if test="@fontstyle != 'normal'">
      <xsl:value-of select="concat('\',@fontstyle,' ')"/>
    </xsl:if>
    <xsl:if test="@fontfam">
      <xsl:value-of select="concat('\',@fontfam,' ')"/>
    </xsl:if>
    <xsl:if test="@halign">
      <xsl:value-of select="concat('\',@halign)"/>
      <xsl:if test="@halign != 'justify'">
        <xsl:value-of select="'-align'"/>
      </xsl:if>
      <xsl:value-of select="' '"/>
    </xsl:if>
    <xsl:if test="@rotation">
      <xsl:value-of select="concat('\rotate #',@rotation,' ')"/>
    </xsl:if>
    <xsl:if test="contains(@rend,'italic')">
      <xsl:value-of select="'\italic '"/>
    </xsl:if>
    <xsl:if test="contains(@rend,'box')">
      <xsl:value-of select="'\box '"/>
    </xsl:if>
    <xsl:if test="contains(@rend,'circle')">
      <xsl:value-of select="'\circle '"/>
    </xsl:if>
    <xsl:if test="contains(@rend,'sub')">
      <xsl:value-of select="'\sub '"/>
    </xsl:if>
    <xsl:if test="contains(@rend,'sup')">
      <xsl:value-of select="'\super '"/>
    </xsl:if>
    <xsl:if test="contains(@rend,'underline')">
      <xsl:value-of select="'\underline '"/>
    </xsl:if>
    <xsl:if test="contains(@rend,'smcaps')">
      <xsl:value-of select="'\smallCaps '"/>
    </xsl:if>
    <xsl:text>{</xsl:text>
    <xsl:apply-templates/>
    <xsl:text>}</xsl:text>
  </xsl:template>
  <!-- MEI key signature -->
  <xsl:template name="setKey" match="mei:keySig">
    <xsl:param name="keyTonic" select="@pname"/>
    <xsl:param name="keyAccid" select="@accid"/>
    <xsl:param name="keyMode" select="@mode"/>
    <xsl:param name="keySig" select="@sig"/>
    <xsl:param name="keySigMixed" select="@sig.mixed"/>
    <xsl:choose>
      <xsl:when test="$keyTonic and $keyMode">
        <xsl:value-of select="concat('\key ',$keyTonic)"/>
        <xsl:if test="$keyAccid">
          <xsl:call-template name="setAccidental">
            <xsl:with-param name="accidental" select="$keyAccid"/>
          </xsl:call-template>
        </xsl:if>
        <xsl:value-of select="concat(' \',$keyMode,' ')"/>
      </xsl:when>
      <xsl:when test="$keySig != 'mixed'">
        <xsl:call-template name="transformKey">
          <xsl:with-param name="accidentals" select="$keySig"/>
        </xsl:call-template>
      </xsl:when>
      <xsl:otherwise>
        <!-- Not yet implemented -->
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>
  <!-- MEI meter signature -->
  <xsl:template name="meterSig" match="mei:meterSig">
    <xsl:param name="meterSymbol" select="@sym"/>
    <xsl:param name="meterCount" select="@count"/>
    <xsl:param name="meterUnit" select="@unit"/>
    <xsl:param name="meterRend" select="@form"/>
    <xsl:if test="@fontfam">
      <xsl:text>\once \override Lyrics.LyricText.font-family = #&apos;</xsl:text>
      <xsl:value-of select="concat(@fontfam,' ')"/>
    </xsl:if>
    <xsl:if test="@fontname">
      <xsl:value-of select="concat('\once \override Staff.TimeSignature.font-name = #&quot;',@fontname,'&quot;) ')"/>
    </xsl:if>
    <xsl:if test="@fontstyle">
      <xsl:text>\once \override Lyrics.LyricText.font-shape = #&apos;</xsl:text>
      <xsl:value-of select="concat(@fontstyle,' ')"/>
    </xsl:if>
    <xsl:if test="@fontweight">
      <xsl:text>\once \override Lyrics.LyricText.font-series = #&apos;</xsl:text>
      <xsl:value-of select="concat(@fontweight,' ')"/>
    </xsl:if>
    <xsl:choose>
      <xsl:when test="$meterSymbol">
        <xsl:choose>
          <xsl:when test="$meterSymbol = 'common'">
            <xsl:value-of select="'\time 4/4 '"/>
          </xsl:when>
          <xsl:when test="$meterSymbol = 'cut'">
            <xsl:value-of select="'\time 2/2 '"/>
          </xsl:when>
        </xsl:choose>
      </xsl:when>
      <xsl:when test="$meterCount or $meterUnit">
        <xsl:if test="($meterCount = $meterUnit) and not($meterSymbol)">
          <xsl:text>\once \numericTimeSignature </xsl:text>
        </xsl:if>
        <xsl:choose>
          <xsl:when test="$meterRend = 'num'">
            <xsl:text>\once \override Staff.TimeSignature.style = #'single-digit </xsl:text>
          </xsl:when>
          <xsl:when test="$meterRend = 'invis'">
            <xsl:text>\once \override Staff.TimeSignature.transparent = ##t </xsl:text>
          </xsl:when>
        </xsl:choose>
        <xsl:value-of select="concat('\time ',$meterCount,'/',$meterUnit,' ')"/>
      </xsl:when>
    </xsl:choose>
  </xsl:template>
  <!-- MEI system break -->
  <xsl:template match="mei:sb">
    <xsl:text>&#32;&#32;\break</xsl:text>
    <xsl:if test="@n">
      <xsl:value-of select="concat(' %',@n)"/>
    </xsl:if>
    <xsl:text>&#10;</xsl:text>
  </xsl:template>
  <!-- MEI page break -->
  <xsl:template match="mei:pb">
    <xsl:text>&#32;&#32;\pageBreak</xsl:text>
    <xsl:if test="@n">
      <xsl:value-of select="concat(' %',@n)"/>
    </xsl:if>
    <xsl:text>&#10;</xsl:text>
  </xsl:template>
  <!-- MEI apparatus -->
  <xsl:template match="mei:app">
    <xsl:apply-templates/>
  </xsl:template>
  <!-- MEI lemma -->
  <xsl:template match="mei:lem">
    <xsl:apply-templates/>
  </xsl:template>
  <!-- MEI reading -->
  <xsl:template match="mei:rdg">
    <xsl:for-each select="tokenize(@source,' ')">
      <xsl:text>\tag #'</xsl:text>
      <xsl:value-of select="concat(substring-after(.,'#'),' ')"/>
    </xsl:for-each>
    <xsl:text>{&#32;</xsl:text>
    <xsl:apply-templates/>
    <xsl:text>}&#32;</xsl:text>
  </xsl:template>
  <!-- MEI verse -->
  <xsl:template match="mei:verse">
  </xsl:template>
  <!-- MEI syllable -->
  <xsl:template match="mei:syl">
  </xsl:template>
  <!-- MEI choose -->
  <xsl:template match="mei:choice">
    <xsl:apply-templates select="mei:reg"/>
  </xsl:template>
  <!-- MEI regularization -->
  <xsl:template match="mei:reg">
    <xsl:apply-templates/>
  </xsl:template>
  <!-- excluded elements -->
  <xsl:template match="mei:back"/>
  <xsl:template match="mei:encodingDesc"/>
  <xsl:template match="mei:expansion"/>
  <xsl:template match="mei:front"/>
  <xsl:template match="mei:multiRest"/>
  <xsl:template match="mei:orig"/>
  <xsl:template match="mei:ornam"/>
  <xsl:template match="mei:part"/>
  <xsl:template match="mei:parts"/>
  <xsl:template match="mei:pgHead"/>
  <xsl:template match="mei:pgFoot"/>
  <xsl:template match="mei:revisionDesc"/>
  <xsl:template match="mei:sourceDesc"/>
  <xsl:template match="mei:symbol"/>
  <!-- helper templates -->
  <!-- set octave -->
  <xsl:template name="setOctave">
    <xsl:param name="oct" select="@oct - 3"/>
    <xsl:choose>
      <xsl:when test="$oct &lt; 0">
        <xsl:text>,</xsl:text>
        <xsl:call-template name="setOctave">
          <xsl:with-param name="oct" select="$oct + 1"/>
        </xsl:call-template>
      </xsl:when>
      <xsl:when test="$oct &gt; 0">
        <xsl:text>'</xsl:text>
        <xsl:call-template name="setOctave">
          <xsl:with-param name="oct" select="$oct - 1"/>
        </xsl:call-template>
      </xsl:when>
    </xsl:choose>
  </xsl:template>
  <!-- set stem direction -->
  <xsl:template name="setStemDir">
    <xsl:variable name="staffPos" select="ancestor::mei:staff/@n"/>
    <xsl:variable name="measurePos" select="ancestor::mei:measure/@n"/>
    <xsl:variable name="layerPos" select="ancestor::mei:layer/@n"/>
    <xsl:if test="not(preceding::*[@stem.dir][1][ancestor::mei:music][ancestor::mei:layer/@n = $layerPos][ancestor::mei:staff/@n = $staffPos][ancestor::mei:measure/@n = $measurePos]) or (@stem.dir != preceding::*[@stem.dir][ancestor::mei:music][ancestor::mei:layer/@n = $layerPos][ancestor::mei:staff/@n = $staffPos][ancestor::mei:measure/@n = $measurePos][1]/@stem.dir)" >
      <xsl:choose>
        <xsl:when test="@stem.dir='up'">
          <xsl:text>\stemUp </xsl:text>
        </xsl:when>
        <xsl:when test="@stem.dir='down'">
          <xsl:text>\stemDown </xsl:text>
        </xsl:when>
      </xsl:choose>
    </xsl:if>
  </xsl:template>
  <!-- set duration -->
  <xsl:template name="setDuration">
    <xsl:choose>
      <xsl:when test="@dur='breve'">
        <xsl:text>\breve</xsl:text>
      </xsl:when>
      <xsl:when test="@dur='longa'">
        <xsl:text>\longa</xsl:text>
      </xsl:when>
      <xsl:when test="@dur='maxima'">
        <xsl:text>\maxima</xsl:text>
      </xsl:when>
      <xsl:otherwise>
        <xsl:value-of select="@dur"/>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:call-template name="setDots"/>
    <xsl:if test="@num and @numbase">
      <xsl:value-of select="concat('*',@num,'/',@numbase)"/>
    </xsl:if>
  </xsl:template>
  <!-- set dots -->
  <xsl:template name="setDots">
    <xsl:param name="dots" select="@dots"/>
    <xsl:if test="$dots &gt; 0">
      <xsl:text>.</xsl:text>
      <xsl:call-template name="setDots">
        <xsl:with-param name="dots" select="$dots - 1"/>
      </xsl:call-template>
    </xsl:if>
  </xsl:template>
  <!-- set accidental -->
  <xsl:template name="setAccidental">
    <xsl:param name="accidental" />
    <xsl:if test="$accidental = 's'">
      <xsl:text>is</xsl:text>
    </xsl:if>
    <xsl:if test="$accidental = 'f'">
      <xsl:text>es</xsl:text>
    </xsl:if>
    <xsl:if test="$accidental = 'ss'">
      <xsl:text>isis</xsl:text>
    </xsl:if>
    <xsl:if test="$accidental = 'x'">
      <xsl:text>isis</xsl:text>
    </xsl:if>
    <xsl:if test="$accidental = 'ff'">
      <xsl:text>eses</xsl:text>
    </xsl:if>
    <xsl:if test="$accidental = 'su'">
      <xsl:text>isih</xsl:text>
    </xsl:if>
    <xsl:if test="$accidental = 'sd'">
      <xsl:text>ih</xsl:text>
    </xsl:if>
    <xsl:if test="$accidental = 'fu'">
      <xsl:text>eh</xsl:text>
    </xsl:if>
    <xsl:if test="$accidental = 'fd'">
      <xsl:text>eseh</xsl:text>
    </xsl:if>
    <xsl:if test="$accidental = '1qf'">
      <xsl:text>eh</xsl:text>
    </xsl:if>
    <xsl:if test="$accidental = '3qf'">
      <xsl:text>eseh</xsl:text>
    </xsl:if>
    <xsl:if test="$accidental = '1qs'">
      <xsl:text>ih</xsl:text>
    </xsl:if>
    <xsl:if test="$accidental = '3qs'">
      <xsl:text>isih</xsl:text>
    </xsl:if>
  </xsl:template>
  <!-- set grace notes -->
  <xsl:template name="setGraceNote">
    <xsl:if test="@stem.mod = '1slash'">
      <xsl:text>\once \override Flag.stroke-style = #"grace" </xsl:text>
    </xsl:if>
    <xsl:choose>
      <xsl:when test="@grace = 'acc'">
        <xsl:text>\appoggiatura </xsl:text>
      </xsl:when>
      <xsl:when test="@grace = 'unacc'">
        <xsl:text>\acciaccatura </xsl:text>
      </xsl:when>
      <xsl:when test="@grace = 'unknown'">
        <xsl:text>\grace </xsl:text>
      </xsl:when>
    </xsl:choose>
  </xsl:template>
  <!-- set articulation -->
  <xsl:template name="setArticulation">
    <xsl:param name="articulation"/>
    <xsl:choose>
      <!-- ly:Articulation scripts -->
      <xsl:when test="$articulation = 'acc'">
        <xsl:text>\accent</xsl:text>
      </xsl:when>
      <xsl:when test="$articulation = 'stacc'">
        <xsl:text>\staccato</xsl:text>
      </xsl:when>
      <xsl:when test="$articulation = 'ten'">
        <xsl:text>\tenuto</xsl:text>
      </xsl:when>
      <xsl:when test="$articulation = 'stacciss'">
        <xsl:text>\staccatissimo</xsl:text>
      </xsl:when>
      <xsl:when test="$articulation = 'marc'">
        <xsl:text>\marcato</xsl:text>
      </xsl:when>
      <xsl:when test="$articulation = 'marc-stacc'">
        <xsl:text>\marcato</xsl:text>
        <xsl:call-template name="artic">
          <xsl:with-param name="articList" select="'stacc'"/>
        </xsl:call-template>
      </xsl:when>
      <xsl:when test="$articulation = 'spiccato'">
        <xsl:text>\staccato</xsl:text>
      </xsl:when>
      <xsl:when test="$articulation = 'ten-stacc'">
        <xsl:text>\portato</xsl:text>
      </xsl:when>
      <xsl:when test="$articulation = 'dot'">
        <xsl:text>\staccato</xsl:text>
      </xsl:when>
      <xsl:when test="$articulation = 'stroke'">
        <xsl:text>\staccatissimo</xsl:text>
      </xsl:when>
      <!-- ly:Instrument-specific scripts -->
      <xsl:when test="$articulation = 'dnbow'">
        <xsl:text>\downbow</xsl:text>
      </xsl:when>
      <xsl:when test="$articulation = 'upbow'">
        <xsl:text>\upbow</xsl:text>
      </xsl:when>
      <xsl:when test="$articulation = 'harm'">
        <xsl:text>\flageolet</xsl:text>
      </xsl:when>
      <xsl:when test="$articulation = 'snap'">
        <xsl:text>\snappizzicato</xsl:text>
      </xsl:when>
      <xsl:when test="$articulation = 'open'">
        <xsl:text>\open</xsl:text>
      </xsl:when>
      <xsl:when test="$articulation = 'stop'">
        <xsl:text>\stopped</xsl:text>
      </xsl:when>
      <xsl:when test="$articulation = 'heel'">
        <xsl:text>\lheel</xsl:text>
      </xsl:when>
      <xsl:when test="$articulation = 'toe'">
        <xsl:text>\rtoe</xsl:text>
      </xsl:when>
      <xsl:when test="$articulation = 'lhpizz'">
        <xsl:text>\stopped</xsl:text>
      </xsl:when>
      <!-- replace missing scripts -->
      <xsl:when test="$articulation = 'doit'">
        <xsl:text>\bendAfter #2 </xsl:text>
      </xsl:when>
      <xsl:when test="$articulation = 'fall'">
        <xsl:text>\bendAfter #-2 </xsl:text>
      </xsl:when>
      <xsl:when test="$articulation = 'longfall'">
        <xsl:text>\bendAfter #-4 </xsl:text>
      </xsl:when>
      <xsl:otherwise>
        <!-- unsupported values 'scoop' 'rip' 'plop' 'bend' 'flip' 'smear' 'shake' 'fingernail' 'damp' 'dampall' 'dbltongue' 'trpltongue' 'tap' -->
        <xsl:text>\stopped</xsl:text>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>
  <!-- set ornaments -->
  <xsl:template name="setOrnament">
    <!-- ly:Ornament scripts -->
    <xsl:if test="contains(@ornam,'M')">
      <xsl:text>\prall</xsl:text>
    </xsl:if>
    <xsl:if test="contains(@ornam,'m')">
      <xsl:text>\mordent</xsl:text>
    </xsl:if>
    <xsl:if test="contains(@ornam,'S')">
      <xsl:text>\turn</xsl:text>
    </xsl:if>
    <xsl:if test="contains(@ornam,'s')">
      <xsl:text>\reverseturn</xsl:text>
    </xsl:if>
    <xsl:if test="contains(@ornam,'T')">
      <xsl:text>\trill</xsl:text>
    </xsl:if>
    <xsl:if test="contains(@ornam,'t')">
      <xsl:text>\trill</xsl:text>
    </xsl:if>
  </xsl:template>
  <!-- set instrument names -->
  <xsl:template name="setInstrumentName">
    <xsl:if test="@label">
      <xsl:value-of select="concat('instrumentName = #&quot;',@label,'&quot; ')"/>
    </xsl:if>
    <xsl:if test="@label.abbr">
      <xsl:value-of select="concat('shortInstrumentName = #&quot;',@label.abbr,'&quot; ')"/>
    </xsl:if>
    <xsl:if test="child::mei:label">
      <xsl:value-of select="'instrumentName = '"/>
      <xsl:apply-templates select="mei:label"/>
    </xsl:if>
  </xsl:template>
  <!-- set key -->
  <xsl:template name="transformKey">
    <xsl:param name="accidentals"/>
    <xsl:text>\key </xsl:text>
    <xsl:choose>
      <xsl:when test="$accidentals='1s'">
        <xsl:text>g \major</xsl:text>
      </xsl:when>
      <xsl:when test="$accidentals='2s'">
        <xsl:text>d \major</xsl:text>
      </xsl:when>
      <xsl:when test="$accidentals='3s'">
        <xsl:text>a \major</xsl:text>
      </xsl:when>
      <xsl:when test="$accidentals='4s'">
        <xsl:text>e \major</xsl:text>
      </xsl:when>
      <xsl:when test="$accidentals='5s'">
        <xsl:text>b \major</xsl:text>
      </xsl:when>
      <xsl:when test="$accidentals='6s'">
        <xsl:text>fis \major</xsl:text>
      </xsl:when>
      <xsl:when test="$accidentals='7s'">
        <xsl:text>cis \major</xsl:text>
      </xsl:when>
      <xsl:when test="$accidentals='8s'">
        <xsl:text>gis \major</xsl:text>
      </xsl:when>
      <xsl:when test="$accidentals='1f'">
        <xsl:text>f \major</xsl:text>
      </xsl:when>
      <xsl:when test="$accidentals='2f'">
        <xsl:text>bes \major</xsl:text>
      </xsl:when>
      <xsl:when test="$accidentals='3f'">
        <xsl:text>ees \major</xsl:text>
      </xsl:when>
      <xsl:when test="$accidentals='4f'">
        <xsl:text>aes \major</xsl:text>
      </xsl:when>
      <xsl:when test="$accidentals='5f'">
        <xsl:text>des \major</xsl:text>
      </xsl:when>
      <xsl:when test="$accidentals='6f'">
        <xsl:text>ges \major</xsl:text>
      </xsl:when>
      <xsl:when test="$accidentals='7f'">
        <xsl:text>ces \major</xsl:text>
      </xsl:when>
      <xsl:when test="$accidentals='8f'">
        <xsl:text>fes \major</xsl:text>
      </xsl:when>
      <xsl:otherwise>
        <xsl:text>c \major</xsl:text>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:text>&#10;</xsl:text>
  </xsl:template>
  <!-- set staff group style -->
  <xsl:template name="setStaffGrpStyle">
    <xsl:text>  \set StaffGroup.systemStartDelimiter = </xsl:text>
    <xsl:choose>
      <xsl:when test="@symbol='brace'">
        <xsl:text>#'SystemStartBrace</xsl:text>
      </xsl:when>
      <xsl:when test="@symbol='bracket'">
        <xsl:text>#'SystemStartBracket</xsl:text>
      </xsl:when>
      <xsl:when test="@symbol='bracketsq'">
        <xsl:text>#'SystemStartSquare</xsl:text>
      </xsl:when>
      <xsl:when test="@symbol='line'">
        <xsl:text>#'SystemStartBar</xsl:text>
      </xsl:when>
      <xsl:otherwise>
        <xsl:text>#'SystemStartBar</xsl:text>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:text>&#10;</xsl:text>
    <xsl:if test="@barthru">
      <xsl:value-of select="concat('  \override StaffGroup.BarLine.allow-span-bar = ##',substring(@barthru,1,1),'&#10;')"/>
    </xsl:if>
  </xsl:template>
  <!-- set bar lines -->
  <xsl:template name="setBarLine">
    <xsl:param name="barLineStyle" />
    <xsl:text>\bar "</xsl:text>
    <xsl:choose>
      <xsl:when test="$barLineStyle='dashed'">
        <xsl:text>!</xsl:text>
      </xsl:when>
      <xsl:when test="$barLineStyle='dotted'">
        <xsl:text>;</xsl:text>
      </xsl:when>
      <xsl:when test="$barLineStyle='dbl'">
        <xsl:text>||</xsl:text>
      </xsl:when>
      <xsl:when test="$barLineStyle='dbldashed'">
        <xsl:text>!!</xsl:text>
      </xsl:when>
      <xsl:when test="$barLineStyle='dbldotted'">
        <xsl:text>;;</xsl:text>
      </xsl:when>
      <xsl:when test="$barLineStyle='end'">
        <xsl:text>|.</xsl:text>
      </xsl:when>
      <xsl:when test="$barLineStyle='invis'">
      </xsl:when>
      <xsl:when test="$barLineStyle='rptstart'">
        <xsl:text>.|:</xsl:text>
      </xsl:when>
      <xsl:when test="$barLineStyle='rptboth'">
        <xsl:text>:..:</xsl:text>
      </xsl:when>
      <xsl:when test="$barLineStyle='rptend'">
        <xsl:text>:|.</xsl:text>
      </xsl:when>
      <xsl:when test="$barLineStyle='single'">
        <xsl:text>|</xsl:text>
      </xsl:when>
      <xsl:otherwise>
        <xsl:text>|</xsl:text>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:text>" </xsl:text>
  </xsl:template>
  <!-- set simple markup diections -->
  <xsl:template name="setMarkupDirection">
    <xsl:param name="direction"/>
    <xsl:choose>
      <xsl:when test="$direction='above'">
        <xsl:text>^</xsl:text>
      </xsl:when>
      <xsl:when test="$direction='below'">
        <xsl:text>_</xsl:text>
      </xsl:when>
      <xsl:otherwise>
        <xsl:text>-</xsl:text>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>
  <!-- set color -->
  <xsl:template name="setColor">
    <xsl:param name="color" select="@color"/>
    <xsl:choose>
      <xsl:when test="starts-with($color,'rgb')">
        <xsl:variable name="redValue" select="substring-before(substring-after($color,'('),',')"/>
        <xsl:variable name="greenValue" select="substring-before(substring-after($color,','),',')"/>
        <xsl:variable name="blueValue" select="substring-after(substring-after(substring-before($color,')'),','),',')"/>
        <xsl:value-of select="concat('(rgb-color ',number($redValue) div 255,' ',number($greenValue) div 255,' ',number($blueValue) div 255,') ')"/>
      </xsl:when>
      <xsl:otherwise>
        <xsl:value-of select="concat('(x11-color &quot;',$color,'&quot;) ')"/>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>
  <!-- page layout -->
  <xsl:template match="mei:scoreDef" mode="makePageLayout">
    <xsl:text>\paper {&#10;</xsl:text>
    <xsl:if test="not(number(@page.height)) and not(contains(@page.height,'vu'))">
      <xsl:value-of select="concat('  paper-height = ',substring(@page.height,1,string-length(@page.height)-2),'\',substring(@page.height,string-length(@page.height)-1),'&#10;')"/>
    </xsl:if>
    <xsl:if test="not(number(@page.width)) and not(contains(@page.width,'vu'))">
      <xsl:value-of select="concat('  paper-width = ',substring(@page.width,1,string-length(@page.width)-2),'\',substring(@page.width,string-length(@page.width)-1),'&#10;')"/>
    </xsl:if>
    <xsl:if test="not(number(@page.topmar)) and not(contains(@page.topmar,'vu'))">
      <xsl:value-of select="concat('  top-margin = ',substring(@page.topmar,1,string-length(@page.topmar)-2),'\',substring(@page.topmar,string-length(@page.topmar)-1),'&#10;')"/>
    </xsl:if>
    <xsl:if test="not(number(@page.rightmar)) and not(contains(@page.rightmar,'vu'))">
      <xsl:value-of select="concat('  right-margin = ',substring(@page.rightmar,1,string-length(@page.rightmar)-2),'\',substring(@page.rightmar,string-length(@page.rightmar)-1),'&#10;')"/>
    </xsl:if>
    <xsl:if test="not(number(@page.leftmar)) and not(contains(@page.leftmar,'vu'))">
      <xsl:value-of select="concat('  left-margin = ',substring(@page.leftmar,1,string-length(@page.leftmar)-2),'\',substring(@page.leftmar,string-length(@page.leftmar)-1),'&#10;')"/>
    </xsl:if>
    <xsl:if test="not(number(@page.botmar)) and not(contains(@page.botmar,'vu'))">
      <xsl:value-of select="concat('  bottom-margin = ',substring(@page.botmar,1,string-length(@page.botmar)-2),'\',substring(@page.botmar,string-length(@page.botmar)-1),'&#10;')"/>
    </xsl:if>
    <!-- <xsl:value-of select="@page.panels"/>
    <xsl:value-of select="@page.scale"/> -->
    <xsl:text>}&#10;&#10;</xsl:text>
  </xsl:template>
  <!--               -->
  <!-- Make fraction -->
  <!--               -->
  <xsl:template name="durationMultiplier">
    <xsl:param name="decimalnum"/>
    <xsl:param name="num" select="round($decimalnum * 1000)"/>
    <!-- numerator -->
    <xsl:param name="dom" select="round(1000)"/>
    <!-- denominator -->
    <xsl:param name="gcd">
      <!-- greatest common divisor aka highest common factor -->
      <xsl:call-template name="greatest-common-divisor">
        <xsl:with-param name="num" select="$num"/>
        <xsl:with-param name="dom" select="$dom"/>
      </xsl:call-template>
    </xsl:param>
    <xsl:choose>
      <xsl:when test="$decimalnum = floor($decimalnum)">
        <xsl:value-of select="$decimalnum"/>
      </xsl:when>
      <xsl:otherwise>
        <xsl:value-of select="concat($num div $gcd,'/',$dom div $gcd)"/>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>
  <xsl:template name="greatest-common-divisor">
    <xsl:param name="num"/>
    <xsl:param name="dom"/>
    <xsl:choose>
      <xsl:when test="$num &lt; 0">
        <!-- Call GCD with positive num -->
        <xsl:call-template name="greatest-common-divisor">
          <xsl:with-param name="num" select="-$num"/>
          <xsl:with-param name="dom" select="$dom"/>
        </xsl:call-template>
      </xsl:when>
      <xsl:when test="$dom &lt; 0">
        <!-- Call GCD with positive dom -->
        <xsl:call-template name="greatest-common-divisor">
          <xsl:with-param name="num" select="$num"/>
          <xsl:with-param name="dom" select="-$dom"/>
        </xsl:call-template>
      </xsl:when>
      <xsl:when test="$num + $dom &gt; 0">
        <!-- Valid input, call GCD-helper -->
        <xsl:call-template name="greatest-common-divisor-helper">
          <xsl:with-param name="gcd" select="$dom"/>
          <xsl:with-param name="num" select="$num"/>
          <xsl:with-param name="dom" select="$dom"/>
        </xsl:call-template>
      </xsl:when>
      <xsl:otherwise>
        <xsl:text>1</xsl:text>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>
  <xsl:template name="greatest-common-divisor-helper">
    <!-- Recursive template. Call until $num = 0. -->
    <xsl:param name="gcd"/>
    <xsl:param name="num"/>
    <xsl:param name="dom"/>
    <xsl:choose>
      <xsl:when test="$num &gt; 0">
        <!-- Recursive call -->
        <xsl:call-template name="greatest-common-divisor-helper">
          <xsl:with-param name="gcd" select="$num"/>
          <xsl:with-param name="num" select="$dom mod $num"/>
          <xsl:with-param name="dom" select="$num"/>
        </xsl:call-template>
      </xsl:when>
      <xsl:otherwise>
        <xsl:value-of select="$gcd"/>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>
</xsl:stylesheet>
