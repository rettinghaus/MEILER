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

* `<bTrem>`
  * __`@num`__

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
  * `@startid`

* `<ending>`
  * `@n`

* `<f>`

* `<fb>`

* `<fermata>`
  * `@place`
  * `@startid`

* `<fing>`
  * `@place`

* `<gliss>`
  * `@color`
  * `@lform`
  * `@startid`

* `<hairpin>`
  * `@color`
  * `@endid`
  * `@form`
  * `@lform`
  * `@place`
  * `@startid`

* `<harm>`
  * `@place`
  * `@staff`
  * `@tstamp`

* `<label>` (within `<staffGrp>` and `<staffDef>`)

* `<layer>`
  * `@n`

* `<lem>`

* `<measure>`
  * `@metcon`
  * `@n`
  * `@right`

* `<meterSig>`
  * `@count`
  * `@fontfam`
  * `@fontname`
  * `@fontstyle`
  * `@fontweight`
  * `@form`
  * `@sym`
  * `@unit`

* `<mordent>`
  * `@color`
  * `@form`
  * `@long`
  * `@place`
  * `@startid`

* `<mRest>`
  * `@color`
  * `@dur`
  * `@fermata`
  * `@visible`

* `<mSpace>`
  * `@dur`

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
  * `@endid`
  * `@lform`
  * `@startid`

* `<pb>`
  * `@n`

* `<pedal>`
  * `@color`
  * `@dir`
  * `@form` (for values 'line' and 'pedstar')
  * `@lform`
  * `@startid`

* `<rdg>`
  *`@source`

* `<rend>`

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
    * `@page.botmar`
    * `@page.height`
    * `@page.leftmar`
    * `@page.rightmar`
    * `@page.topmar`
    * `@page.width`
    * `@n`
    * `@pedal.style` (for values 'line' and 'pedstar')

* `<section>`

* `<slur>`
  * `@color`
  * `@curvedir` (for values 'above' and 'below')
  * `@endid`
  * `@lform`
  * `@startid`

* `<space>`
  * `@dur`

* `<staff>`
  * `@copyof`
  * __`@n`__

* `<staffDef>`
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
  * `@color`
  * `@place`
  * `@staff`
  * `@startid`
  * `@tstamp` (for value '1')

* `<tie>`
  * `@curvedir` (for values 'above' and 'below')
  * `@startid`

* `<tuplet>`
  * `@bracket.place`
  * `@bracket.visible`
  * `@copyof`
  * __`@num`__
  * __`@num.base`__
  * `@num.format`
  * `@num.visible`
  * `@startid`

`att.color` supports HTML 4.01 color names
