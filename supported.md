#MEILER
List of supported MEI elements and attributes

* `<abbr>`
  * `@source`

* `<accid>`
  * `@color`
  * `@edit` (for value 'paren')
  * `@func`
  * `@ho`
  * `@place` (for value 'above')
  * `@vo`

* `<app>`

* `<arpeg>`
  * `@color`
  * `@order`
  * `@plist`
  * `@startid`

* `<artic>`
  * `@artic`
  * `@color`
  * `@ho`
  * `@place`
  * `@vo`

* `<beam>`
  * `@color`

* `<beamSpan>`
  * `@color`

* `<bTrem>`
  * __`@measperf`__

* `<change>`

* `<changeDesc>`

* `<choice>`

* `<chord>`
  * `@artic`
  * `@beam`
  * `@copyof`
  * `@dur`
  * `@fermata`
  * `@grace`
  * `@lv`
  * `@oct`
  * `@ornam`
  * `@slur`
  * `@stem.dir`
  * `@stem.mod`
  * `@tie`
  * `@visible`

* `<corr>`

* `<dir>`
  * `@ho`
  * `@place`
  * __`@startid`__
  * `@vo`

* `<dynam>`
  * `@endid`
  * `@ho`
  * `@place`
  * __`@startid`__
  * `@vo`

* `<editionStmt>`

* `<ending>`
  * `@n`

* `<expan>`

* `<f>`

* `<fb>`

* `<fermata>`
  * `@color`
  * `@glyphnum`
  * `@ho`
  * `@place`
  * `@shape`
  * __`@startid`__
  * `@vo`

* `<fileDesc>`

* `<fing>`
  * `@place`
  * __`@startid`__

* `<fTrem>`
  * __`@measperf`__

* `<gliss>`
  * `@color`
  * `@lform`
  * `@lwidth`
  * __`@startid`__

* `<group>`

* `<hairpin>`
  * `@color`
  * __`@endid`__
  * `@form`
  * `@lform`
  * `@lwidth`
  * `@place`
  * __`@startid`__

* `<harm>`
  * `@place`
  * `@staff`
  * __`@tstamp`__

* `<instrDef>`
  * `@midi.instrnum`
  * `@midi.instrname`

* `<l>`

* `<label>` (within `<staffGrp>` and `<staffDef>`)

* `<layer>`
  * `@beam.group`
  * `@n`

* `<lem>`

* `<lg>`

* `<ligature>`

* `<mdiv>`
  * `@label`
  * `@n`

* `<measure>`
  * `@metcon`
  * `@left`
  * `@n`
  * `@right`

* `<meterSig>`
  * `@copyof`
  * `@count`
  * `@fontfam`
  * `@fontname`
  * `@fontstyle`
  * `@fontweight`
  * `@form`
  * `@sym`
  * `@unit`

* `<meterSigGrp>`
  * `@copyof`
  * `@func` (for value 'mixed')

* `<mordent>`
  * `@accidlower`
  * `@accidupper`
  * `@color`
  * `@form`
  * `@glyphnum`
  * `@ho`
  * `@long`
  * `@place`
  * __`@startid`__
  * `@vo`

* `<mRest>`
  * `@color`
  * `@copyof`
  * `@dur`
  * `@fermata`
  * `@ho`
  * `@loc`
  * `@visible`
  * `@vo`

* `<mSpace>`
  * `@dur`

* `<multiRest>`
  * `@loc`
  * __`@num`__

* `<music>`

* `<note>`
  * `@accid`
  * `@accid.ges`
  * `@artic`
  * `@beam`
  * `@dur`
  * `@fermata`
  * `@gliss`
  * `@grace`
  * `@head.color`
  * `@head.shape`
  * `@lv`
  * `@oct`
  * `@ornam`
  * `@pname`
  * `@slur`
  * `@staff`
  * `@stem.dir`
  * `@stem.mod`
  * `@tie`
  * `@visible`

* `<octave>`
  * `@color`
  * `@dis`
  * `@dis.place`
  * __`@endid`__
  * `@ho`
  * `@lform`
  * `@lwidth`
  * __`@startid`__
  * `@vo`

* `<orig>`
  * `@source`

* `<p>`

* `<pb>`
  * `@n`

* `<pedal>`
  * `@color`
  * `@dir`
  * __`@endid`__
  * `@form` (for values 'line' and 'pedstar')
  * `@lform`
  * `@lwidth`
  * __`@startid`__

* `<phrase>`
  * `@bezier`
  * `@color`
  * `@curvedir` (for values 'above' and 'below')
  * __`@endid`__
  * `@endho`
  * `@endvo`
  * `@ho`
  * `@lform`
  * `@lwidth`
  * __`@startid`__
  * `@startho`
  * `@startvo`
  * `@vo`

* `<publisher>`

* `<pubStmt>`

* `<rdg>`
  * `@resp`
  * `@source`

* `<ref>`

* `<reg>`

* `<reh>`

* `<revisionDesc>`

* `<rend>`
  * `@color`
  * `@fontfam`
  * `@fontname`
  * `@fontsize`
  * `@fontstyle`
  * `@fontweight`
  * `@halign`
  * `@rend`
  * `@rotation`

* `<rest>`
  * `@beam`
  * `@color`
  * `@copyof`
  * `@dur`
  * `@fermata`
  * `@loc`
  * `@oloc`
  * `@ploc`
  * `@staff`
  * `@visible`

* `<sb>`
  * `@n`

* `<score>`

* `<scoreDef>`
    * `@beam.group`
    * `@clef.color`
    * `@clef.dis`
    * `@clef.dis.place`
    * `@clef.line`
    * `@clef.shape`
    * `@ending.rend` (for values 'top' and 'grouped')
    * `@key.accid`
    * `@key.mode`
    * `@key.pname`
    * `@key.sig` (unsupported for value 'mixed')
    * `@lyric.fam`
    * `@lyric.name`
    * `@lyric.style`
    * `@lyric.weight`
    * `@mensur.color`
    * `@mensur.dot`
    * `@mensur.sign`
    * `@mensur.slash` (for value '1')
    * `@meter.count`
    * `@meter.rend`
    * `@meter.showchange`
    * `@meter.sym`
    * `@meter.unit`
    * `@midi.bpm`
    * `@mnum.visible`
    * `@music.size` (for values in 'pt')
    * `@optimize`
    * `@page.botmar`
    * `@page.height`
    * `@page.leftmar`
    * `@page.rightmar`
    * `@page.topmar`
    * `@page.width`
    * `@pedal.style` (for values 'line' and 'pedstar')

* `<section>`

* `<slur>`
  * `@bezier`
  * `@color`
  * `@curvedir` (for values 'above' and 'below')
  * __`@endid`__
  * `@endho`
  * `@endvo`
  * `@ho`
  * `@lform`
  * `@lwidth`
  * __`@startid`__
  * `@startho`
  * `@startvo`
  * `@vo`

* `<space>`
  * `@dur`

* `<staff>`
  * `@copyof`
  * __`@n`__

* `<staffDef>`
  * `@beam.group`
  * `@clef.dis`
  * `@clef.dis.place`
  * `@clef.line`
  * `@clef.shape`
  * `@key.accid`
  * `@key.mode`
  * `@key.pname`
  * `@key.sig` (unsupported for value 'mixed')
  * `@lines`
  * `@lines.visible`
  * `@lyric.fam`
  * `@lyric.name`
  * `@lyric.style`
  * `@lyric.weight`
  * `@mensur.color`
  * `@mensur.dot`
  * `@mensur.sign`
  * `@mensur.slash` (for value '1')
  * `@meter.count`
  * `@meter.rend`
  * `@meter.sym`
  * `@meter.unit`
  * `@n`
  * `@notationtype`
  * `@pedal.style` (for values 'line' and 'pedstar')
  * `@scale` (!! *lilypond 2.19 and up* !!)
  * `@slur.lform`
  * `@slur.lwidth`
  * `@tie.lwidth`
  * `@trans.diat`
  * `@trans.semi`

* `<staffGrp>`
  * `@barthru`
  * `@label`
  * `@label.abbr`
  * `@symbol`

* `<syl>`
  * `@con`
  * `@wordpos`

* `<tempo>`
  * `@ho`
  * `@midi.bpm`
  * `@mm`
  * `@mm.dots`
  * `@mm.unit`
  * `@place`
  * `@staff`
  * `@startid`
  * `@tstamp` (for value '1')
  * `@vo`

* `<tie>`
  * `@bezier`
  * `@color`
  * `@curvedir` (for values 'above' and 'below')
  * `@endho`
  * `@endvo`
  * `@ho`
  * `@lwidth`
  * __`@startid`__
  * `@startho`
  * `@startvo`
  * `@vo`

* `<trill>`
  * `@accidlower`
  * `@accidupper`
  * `@color`
  * `@endid`
  * `@glyphnum`
  * `@ho`
  * `@place`
  * __`@startid`__
  * `@vo`

* `<tuplet>`
  * `@bracket.place`
  * `@bracket.visible`
  * `@color`
  * `@copyof`
  * __`@num`__
  * __`@numbase`__
  * `@num.format`
  * `@num.visible`

* `<tupletSpan>`
  * `@bracket.place`
  * `@bracket.visible`
  * `@color`
  * `@endid`
  * __`@num`__
  * __`@numbase`__
  * `@num.format`
  * `@num.visible`
  * `@startid`

* `<turn>`
  * `@accidlower`
  * `@accidupper`
  * `@color`
  * `@form`
  * `@glyphnum`
  * `@ho`
  * `@place`
  * __`@startid`__
  * `@vo`

* `<verse>`
  * `@color`
  * `@lyric.style`
  * `@lyric.weight`
  * `@n`

* `<work>`

* `<workDesc>`


`att.color` supports hex/RGB/HSL values and color names

`att.pages` have to be defined in the first `<scoreDef>`

data.LINEWIDTH (`@lwidth`) works for values from data.LINEWIDTHTERM

data.FONTSIZE (`@fontsize`) works for values from data.FONTSIZENUMERIC and data.FONTSIZETERM
