# MEILER
MEI Lilypond Engraving Refinement

### MEI2LY
**mei2ly.xsl** supports already many music elements from MEI and works for checking encoding errors.
Basic layout features are implemented for global staff size and page layout.

Check the list of [supported](supported.md) elements and attributes. 

For now it uses XSLT 2.0. Goal for a later branch is to have an pure XSLT 1.0 version to put on a website, where you can generate a lilypond engraved rendering of a MEI edition on the fly.

### SILLY.xsl
Along comes **silly.xsl** which *Strips Individual Layout for LilyPond*. It basically removes layout instructions from your MEI (e.g. stem directions) so LilyPond can do it's job. Using this will give you a fine clean LilyPond code with **mei2ly.xsl**.
