# MEILER
List of options/parameters for `mei2ly.xsl`

* use `LilyPondVersion` to specify the used version of LilyPond
* set `useSvgBackend` to `true()` for for adding classes and IDs in the SVG output
* `generateHeader` may be used to control the conversion of the MEI header to LilyPond 
* `forceLayout` can be used to force LilyPond to use only given system breaks and page breaks
* `forceContinueVoices` keeps number of layers within a staff constant
* `checkReferences` gives a warning if references seem to point nowhere
