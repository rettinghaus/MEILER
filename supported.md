#MEILER
List of supported MEI elements and attributes

* `<app>`

* `<arpeg>`
  * `@color`
  * `@order`
  * `@plist`
  * `@startid`

* `<artic>`
  * `@artic`
  * `@color`
  * `@place`

* `<beam>`
  * `@color`

* `<beamSpan>`
  * `@color`

* `<bTrem>`
  * __`@measperf`__

* `<choice>`

* `<chord>`
  * `@artic`
  * `@beam`
  * `@copyof`
  * `@dur`
  * `@fermata`
  * `@grace`
  * `@oct`
  * `@ornam`
  * `@slur`
  * `@stem.dir`
  * `@stem.mod`
  * `@tie`
  * `@visible`

* `<dynam>`
  * `@color`
  * `@endid`
  * `@place`
  * __`@startid`__

* `<ending>`
  * `@n`

* `<f>`

* `<fb>`

* `<fermata>`
  * `@color`
  * `@place`
  * `@shape`
  * __`@startid`__

* `<fing>`
  * `@place`
  * __`@startid`__

* `<fTrem>`
  * __`@measperf`__

* `<gliss>`
  * `@color`
  * `@lform`
  * __`@startid`__

* `<hairpin>`
  * `@color`
  * __`@endid`__
  * `@form`
  * `@lform`
  * `@place`
  * __`@startid`__

* `<harm>`
  * `@place`
  * `@staff`
  * __`@tstamp`__

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
  * `@color`
  * `@form`
  * `@long`
  * `@place`
  * __`@startid`__

* `<mRest>`
  * `@color`
  * `@dur`
  * `@fermata`
  * `@visible`

* `<mSpace>`
  * `@dur`

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
  * `@head.shape` (for value 'x')
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
  * `@lform`
  * __`@startid`__

* `<pb>`
  * `@n`

* `<pedal>`
  * `@color`
  * `@dir`
  * __`@endid`__
  * `@form` (for values 'line' and 'pedstar')
  * `@lform`
  * __`@startid`__

* `<phrase>`
  * `@color`
  * `@curvedir` (for values 'above' and 'below')
  * __`@endid`__
  * `@lform`
  * __`@startid`__

* `<rdg>`
  * `@source`

* `<reg>`

* `<rend>`
  * `@color`
  * `@fontfam`
  * `@fontname`
  * `@fontstyle`
  * `@fontweight`
  * `@halign`
  * `@rend`
  * `@rotation`

* `<rest>`
  * `@beam`
  * `@color`
  * `@dur`
  * `@fermata`
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
    * `@meter.count`
    * `@meter.rend`
    * `@meter.showchange`
    * `@meter.sym`
    * `@meter.unit`
    * `@midi.bpm`
    * `@mnum.visible`
    * `@music.size` (for values in 'pt')
    * `@page.botmar`
    * `@page.height`
    * `@page.leftmar`
    * `@page.rightmar`
    * `@page.topmar`
    * `@page.width`
    * `@pedal.style` (for values 'line' and 'pedstar')

* `<section>`

* `<slur>`
  * `@color`
  * `@curvedir` (for values 'above' and 'below')
  * `@endid`
  * `@lform`
  * __`@startid`__

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
  * `@meter.count`
  * `@meter.rend`
  * `@meter.sym`
  * `@meter.unit`
  * `@n`
  * `@pedal.style` (for values 'line' and 'pedstar')

* `<staffGrp>`
  * `@barthru`
  * `@label`
  * `@label.abbr`
  * `@symbol`

* `<tempo>`
  * `@place`
  * `@staff`
  * `@startid`
  * `@tstamp` (for value '1')

* `<tie>`
  * `@curvedir` (for values 'above' and 'below')
  * __`@startid`__

* `<trill>`
  * `@color`
  * `@endid`
  * `@place`
  * __`@startid`__

* `<tuplet>`
  * `@bracket.place`
  * `@bracket.visible`
  * `@copyof`
  * __`@num`__
  * __`@num.base`__
  * `@num.format`
  * `@num.visible`
  * `@startid`

* `<turn>`
  * `@color`
  * `@form`
  * `@place`
  * __`@startid`__

* `<verse>`
  * `@color`
  * `@lyric.style`
  * `@lyric.weight`

`att.color` supports rgb values and color names
