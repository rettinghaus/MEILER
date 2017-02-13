# MEILER
MEI Lilypond Engraving Refinement

### MEI2LY
**mei2ly.xsl** transforms MEI to LilyPond and supports already many music elements from MEI and works for checking encoding errors.
Basic layout features are implemented for global staff size and page layout.

Check the list of [supported elements and attributes](supported.md).

For now it uses XSLT 2.0. A possible goal for a later branch is to have an pure XSLT 1.0 version to put on a website, where you can generate a lilypond engraved rendering of a MEI edition on the fly.

And of course you'll need [LilyPond](http://lilypond.org) for engraving your output.

### SILLY.xsl
Along comes **silly.xsl** which *Strips Individual Layout for LilyPond*. It basically removes layout instructions from your MEI (e.g. stem directions) so LilyPond can do it's job. Using this will give you a fine clean LilyPond code with **mei2ly.xsl**.

### ReMIDIAL.xsl
If you want to prevent a MIDI output by LilyPond (which gets triggered by the presence of MIDI attributes) use **remidial.xsl** to *REmove MIDI Attributes for Lilypond*. It is called *ReMIDIAL* because it performs a remedial action. (Yes, it's a bad pun.)

## Example ouput
for [Debussy_Golliwogg'sCakewalk.mei](/examples/Debussy_Golliwogg'sCakewalk.mei):
![Example page](/examples/Debussy_Golliwogg'sCakewalk.png)


(See more tests [here](https://github.com/rettinghaus/mei-test-set/).)
