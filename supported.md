# MEILER
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
  * `@xml:id`

* `<app>`

* `<arpeg>`
  * `@arrow`
  * `@color`
  * `@ho`
  * `@order`
  * `@plist`
  * `@vo`
  * `@startid`
  * `@xml:id`

* `<artic>`
  * `@artic`
  * `@color`
  * `@ho`
  * `@place`
  * `@vo`
  * `@xml:id`

* `<barLine>`
  * `@color`
  * `@form`
  * `@xml:id`

* `<beam>`
  * `@color`
  * `@form` (for values 'acc' and 'rit')
  * `@xml:id`

* `<beamSpan>`
  * `@color`
  * `@form` (for values 'acc' and 'rit')
  * `@xml:id`

* `<bTrem>`
  * `@num`
  * `@num.place`
  * `@num.visible`
  * `@unitdur`
  * `@xml:id`

* `<change>`

* `<changeDesc>`

* `<choice>`

* `<chord>`
  * `@artic`
  * `@beam`
  * `@copyof`
  * `@dots`
  * `@dur`
  * `@fermata`
  * `@grace`
  * `@lv`
  * `@oct`
  * `@ornam`
  * `@slur`
  * `@staff`
  * `@stem.dir`
  * `@stem.mod`
  * `@stem.pos`
  * `@tie`
  * `@visible`

* `<clef>`
  * `@color`
  * `@dis`
  * `@dis.place`
  * `@line`
  * `@shape`

* `<corr>`

* `<dir>`
  * `@ho`
  * `@place`
  * __`@startid`__
  * `@vo`

* `<dot>` (as child of `<note>` and `<rest>`)
  * `@color`
  * `@ho`
  * `@vo`

* `<dynam>`
  * `@endid`
  * `@ho`
  * `@place`
  * __`@startid`__
  * `@vo`
  * `@xml:id`

* `<editionStmt>`

* `<ending>`
  * `@n`

* `<expan>`

* `<f>`

* `<fb>`

* `<fermata>`
  * `@color`
  * `@glyph.name`
  * `@glyph.num`
  * `@ho`
  * `@place`
  * `@shape`
  * __`@startid`__
  * `@vo`
  * `@xml:id`

* `<fileDesc>`

* `<fing>`
  * `@place`
  * __`@startid`__
  * `@xml:id`

* `<fingGrp>`

* `<fTrem>`
  * `@beams`
  * `@beams.float`
  * `@float.gap`
  * __`@unitdur`__
  * `@xml:id`

* `<gliss>`
  * `@color`
  * `@ho`
  * `@lform`
  * `@lwidth`
  * __`@startid`__
  * `@vo`
  * `@xml:id`

* `<group>`

* `<hairpin>`
  * `@color`
  * __`@endid`__
  * `@form`
  * `@lform`
  * `@lwidth`
  * `@place`
  * __`@startid`__
  * `@xml:id`

* `<harm>`
  * `@place`
  * `@staff`
  * __`@tstamp`__

* `<instrDef>`
  * `@midi.instrnum`
  * `@midi.instrname`

* `<keySig>`
  * `@accid`
  * `@mode`
  * `@pname`
  * `@sig`
  * `@xml:id`

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

* `<mensur>`
  * `@dot`
  * `@sign`
  * `@slash`

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
  * `@glyph.name`
  * `@glyph.num`
  * `@ho`
  * `@long`
  * `@place`
  * __`@startid`__
  * `@vo`
  * `@xml:id`

* `<mRest>`
  * `@color`
  * `@copyof`
  * `@dur`
  * `@fermata`
  * `@ho`
  * `@loc`
  * `@visible`
  * `@vo`
  * `@xml:id`

* `<mSpace>`
  * `@dots`
  * `@dur`

* `<multiRest>`
  * `@block`
  * `@loc`
  * __`@num`__
  * `@xml:id`

* `<music>`

* `<note>`
  * `@accid`
  * `@accid.ges`
  * `@artic`
  * `@beam`
  * `@color`
  * `@copyof`
  * `@dots`
  * `@dur`
  * `@enclose`
  * `@fermata`
  * `@gliss`
  * `@grace`
  * `@head.color`
  * `@head.mod`
  * `@head.shape`
  * `@head.visible`
  * `@ho`
  * `@lv`
  * `@num`
  * `@numbase`
  * `@oct`
  * `@ornam`
  * `@pname`
  * `@slur`
  * `@staff` (unsupported for chorded notes)
  * `@stem.dir`
  * `@stem.len`
  * `@stem.mod`
  * `@stem.pos`
  * `@tie`
  * `@visible`
  * `@xml:id`

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
  * `@xml:id`

* `<orig>`
  * `@source`

* `<p>`

* `<pb>`
  * `@n`
  * `@source`

* `<pedal>`
  * `@color`
  * `@dir`
  * __`@endid`__
  * `@form` (for values 'line' and 'pedstar')
  * `@ho`
  * `@lform`
  * `@lwidth`
  * __`@startid`__
  * `@vo`
  * `@xml:id`

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
  * `@xml:id`

* `<publisher>`

* `<pubStmt>`

* `<rdg>`
  * `@resp`
  * `@source`

* `<ref>`

* `<reg>`

* `<reh>`
  * `@color`
  * `@ho`
  * `@vo`
  * `@xml:id`

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
  * `@dots`
  * `@dur`
  * `@fermata`
  * `@ho`
  * `@loc`
  * `@num`
  * `@numbase`
  * `@oloc`
  * `@ploc`
  * `@staff`
  * `@visible`
  * `@vo`
  * `@xml:id`

* `<sb>`
  * `@n`
  * `@source`

* `<score>`

* `<scoreDef>`
    * `@beam.group`
    * `@clef.color`
    * `@clef.dis`
    * `@clef.dis.place`
    * `@clef.line`
    * `@clef.shape`
    * `@dynam.dist`
    * `@ending.rend` (for values 'top' and 'grouped')
    * `@harm.dist`
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
    * `@optimize`
    * `@page.botmar`
    * `@page.height`
    * `@page.leftmar`
    * `@page.rightmar`
    * `@page.scale`
    * `@page.topmar`
    * `@page.width`
    * `@pedal.style` (for values 'line' and 'pedstar')
    * `@spacing.staff`
    * `@system.leftmar` (affects only first system)
    * `@text.dist`
    * `@vu.height` (for values in 'pt')

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
  * `@xml:id`

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
  * `@dynam.dist`
  * `@harm.dist`
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
  * `@text.dist`
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
  * `@xml:id`

* `<symbol>`
  * `@glyph.name`
  * `@glyph.num`

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
  * `@xml:id`

* `<tie>`
  * `@bezier`
  * `@color`
  * `@curvedir` (for values 'above' and 'below')
  * `@endho`
  * `@endvo`
  * `@ho`
  * `@lform`
  * `@lwidth`
  * __`@startid`__
  * `@startho`
  * `@startvo`
  * `@vo`
  * `@xml:id`

* `<trill>`
  * `@accidlower`
  * `@accidupper`
  * `@color`
  * `@endid`
  * `@glyph.name`
  * `@glyph.num`
  * `@ho`
  * `@place`
  * __`@startid`__
  * `@vo`
  * `@xml:id`

* `<tuplet>`
  * `@bracket.place`
  * `@bracket.visible`
  * `@color`
  * `@copyof`
  * __`@num`__
  * `@num.format`
  * `@num.place`
  * `@num.visible`
  * __`@numbase`__
  * `@xml:id` (assigned to LilyPond's TupletNumber grob)

* `<tupletSpan>`
  * `@bracket.place`
  * `@bracket.visible`
  * `@color`
  * `@copyof`
  * `@endid`
  * __`@num`__
  * `@num.format`
  * `@num.place`
  * `@num.visible`
  * __`@numbase`__
  * `@startid`
  * `@xml:id` (assigned to LilyPond's TupletNumber grob)

* `<turn>`
  * `@accidlower`
  * `@accidupper`
  * `@color`
  * `@form`
  * `@glyph.name`
  * `@glyph.num`
  * `@ho`
  * `@place`
  * __`@startid`__
  * `@vo`
  * `@xml:id`

* `<verse>`
  * `@color`
  * `@lyric.style`
  * `@lyric.weight`
  * `@n`

* `<work>`

* `<workDesc>`

`att.color` supports hex/RGB/HSL values and color names

`att.pages` have to be defined in the first `<scoreDef>`

`@xml:id` gets converted to `@id` in SVG

data.LINEWIDTH (`@lwidth`) works for values from data.LINEWIDTHTERM
data.STEMDIRECTION (`@stem.dir`) works for values from data.STEMDIRECTION.basic
data.STEMPOSITION (`@stem.pos`) will only affect stem direction
