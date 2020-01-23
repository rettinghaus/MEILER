\version "2.19.80"
% automatically converted from MEI by mei2ly.xsl

\header {
  place = \markup { Leipzig }
  date = \markup { 2020 }
  copyright = \markup { © Klaus Rettinghaus, Leipzig 2020 }
  tagline = "automatically converted from MEI with mei2ly.xsl and engraved with Lilypond"
  title = "Golliwog´s Cakewalk"
  composer = "Claude Debussy"
  dedicatee = "Claude-Emma Debussy"

  % Revision Description
  % 1. Perry Rolandtranscoded MusicXML to MEI
  % 2. Maja Hartwigmodified for new Schema
  % 3. Kristina Richtsadded metadata
  % 4. Converted to MEI 2013 using mei2012To2013.xsl, version 1.0 beta
  % 5. Converted to version 3.0.0 using mei21To30.xsl, version 1.0 beta
  % 6. Klaus RettinghausCorrected several encoding errors
  % 7. Klaus RettinghausAdded more articulations
  % 8. Klaus RettinghausAdded tempo directions an page breaks
  % 9. Klaus RettinghausFixed slurs
  % 10. Klaus RettinghausCorrected system breaks and page formatting
  % 11. Klaus RettinghausFixed layering, ties and slurs; added refs to dynamics
  % 12. Klaus RettinghausManual update to MEI 4.0
}

\paper {
  top-margin = 7.5\staff-space
  right-margin = 10\staff-space
  left-margin = 10\staff-space
  bottom-margin = 7.5\staff-space
  indent = 0\staff-space
}

mdivA_staffA = {
  \set Score.currentBarNumber = #1
  \set Staff.clefGlyph = #"clefs.G" \set Staff.clefPosition = #-2 \set Staff.clefTransposition = #0 \set Staff.middleCPosition = #-6 \set Staff.middleCClefPosition = #-6 \key ees\major
  \time 2/4 
  \once \override Score.MetronomeMark.direction = #UP \tempo \markup {Allegro giusto} << { \tweak Stem.direction #DOWN bes''16[\accent^\=#'d1e586( \tweak Stem.direction #DOWN aes''8\=#'d1e586)\staccato \tweak Stem.direction #DOWN bes''16] \tweak Stem.direction #DOWN f''8[\staccato \tweak Stem.direction #DOWN bes''8]\staccato } >> %1
  << { \tweak Stem.direction #DOWN aes''16[\accent^\=#'d1e638(^4 \tweak Stem.direction #DOWN f''8\=#'d1e638)^3 \tweak Stem.direction #DOWN ees''16] \tweak Stem.direction #DOWN ces''!4^\marcato } >> %2
  << { r16 \tweak Stem.direction #UP aes'16[^4 \tweak Stem.direction #UP f'16 \tweak Stem.direction #UP ees'16] \tweak Stem.direction #UP ces'!4^\marcato } >> %3
  \set Staff.clefGlyph = #"clefs.F" \set Staff.clefPosition = #2 \set Staff.clefTransposition = #0 \set Staff.middleCPosition = #6 \set Staff.middleCClefPosition = #6 << { r16 \tweak Stem.direction #DOWN aes16[ \tweak Stem.direction #DOWN f16 \tweak Stem.direction #DOWN ees16] \tweak Stem.direction #DOWN ces!8[\accent < \tweak Stem.direction #DOWN d g >8]\staccato^\marcato_\sff } >> %4
  \tag #'firstEdition { \break }
  << { R2 } >> %5
  << { r8 < \tweak Stem.direction #DOWN ees bes >8[\staccato r8 < \tweak Stem.direction #DOWN ees bes >16\staccato^\f < \tweak Stem.direction #DOWN ees bes >16]\staccato } >> %6
  << { r8 < \tweak Stem.direction #DOWN ees bes >8[\staccato^\p r8 < \tweak Stem.direction #DOWN ees bes >8]\staccato } >> %7
  << { r8 < \tweak Stem.direction #DOWN ees bes >16[\staccato^\f < \tweak Stem.direction #DOWN ees bes >16\staccato r8 < \tweak Stem.direction #DOWN ees bes >8]\staccato^\p } >> %8
  << { r8 < \tweak Stem.direction #DOWN ees bes >8[\staccato r8 < \tweak Stem.direction #DOWN ees bes >8]\staccato } >> %9
  \tag #'firstEdition { \break }
  \set Staff.clefGlyph = #"clefs.G" \set Staff.clefPosition = #-2 \set Staff.clefTransposition = #0 \set Staff.middleCPosition = #-6 \set Staff.middleCClefPosition = #-6 << { \tweak Stem.direction #UP bes'16[\accent-\tweak extra-offset #'(0 . -1) ^\markup {\italic {très net et très sec}} _\mf^\=#'d1e1244(-\tweak extra-offset #'(-0.5 . -3) ^5 \tweak Stem.direction #UP aes'8\=#'d1e1244)^4 \tweak Stem.direction #UP bes'16] \tweak Stem.direction #UP f'8[\staccato^3 \tweak Stem.direction #UP bes'8] } \\ { r8 < \tweak Stem.direction #DOWN ces'! ees' >8\staccato r8 < \tweak Stem.direction #DOWN ces' ees' >8\staccato } >> %10
  << { \tweak Stem.direction #UP aes'16[\accent^\=#'d1e1334(^4 \tweak Stem.direction #UP f'8\=#'d1e1334)^3 \tweak Stem.direction #UP ees'16]^3 \tweak Stem.direction #UP ces'8[ \tweak Stem.direction #UP ees'8]\staccato-\tweak extra-offset #'(0 . 1.5) ^4 } \\ { r8 \tweak Stem.direction #DOWN ces'!8\staccato-\tweak extra-offset #'(0 . 0.5) ^1 r8 \tweak Stem.direction #DOWN ces'8\staccato^2 } >> %11
  << { \tweak Stem.direction #UP bes16[\accent_\=#'d1e1430(^1 \tweak Stem.direction #UP bes8\=#'d1e1430)\staccato^2 \tweak Stem.direction #UP c'!16]^3 \tweak Stem.direction #UP bes8[_\=#'d1e1432(^1 < \tweak Stem.direction #UP ees' bes' >8]\=#'d1e1432)\staccato\arpeggio_\sff } >> %12
  << { \tweak Stem.direction #UP bes2^\marcato } >> %13
  \set Staff.clefGlyph = #"clefs.F" \set Staff.clefPosition = #2 \set Staff.clefTransposition = #0 \set Staff.middleCPosition = #6 \set Staff.middleCClefPosition = #6 << { \tweak Stem.direction #DOWN bes16[\tenuto\accent^\=#'d1e1581(^4 \tweak Stem.direction #DOWN aes8\=#'d1e1581) \tweak Stem.direction #DOWN bes16] \tweak Stem.direction #DOWN c'8[\staccato \tweak Stem.direction #DOWN aes8]\staccato } >> %14
  \tag #'firstEdition { \break }
  << { \tweak Stem.direction #DOWN bes16[\tenuto\accent^\=#'d1e1659( \tweak Stem.direction #DOWN aes8\=#'d1e1659) \tweak Stem.direction #DOWN bes16] \tweak Stem.direction #DOWN ces'!8[\staccato \tweak Stem.direction #DOWN aes8]\staccato } >> %15
  << { \tweak Stem.direction #DOWN bes16[^\=#'d1e1713(^4 \tweak Stem.direction #DOWN g8\=#'d1e1713)^2 \tweak Stem.direction #DOWN f16]\staccato \tweak Stem.direction #DOWN ees8[\staccato^3 \tweak Stem.direction #DOWN d8]\staccato^1 } >> %16
  << { \tweak Stem.direction #UP c8[\staccato^2 \tweak Stem.direction #UP g,8\staccato\accent \tweak Stem.direction #UP c8\staccato\accent \tweak Stem.direction #UP d8]\staccato\accent } >> %17
  \set Staff.clefGlyph = #"clefs.G" \set Staff.clefPosition = #-2 \set Staff.clefTransposition = #0 \set Staff.middleCPosition = #-6 \set Staff.middleCClefPosition = #-6 << { \tweak Stem.direction #UP bes'16[\accent^\=#'d1e1877( \tweak Stem.direction #UP aes'8\=#'d1e1877) \tweak Stem.direction #UP bes'16] \tweak Stem.direction #UP f'8[\staccato \tweak Stem.direction #UP bes'8]\staccato } \\ { r8 < \tweak Stem.direction #DOWN ces'! ees' >8 r8 < \tweak Stem.direction #DOWN ces' ees' >8 } >> %18
  << { \tweak Stem.direction #UP aes'16[\accent^\=#'d1e1958( \tweak Stem.direction #UP f'8\=#'d1e1958) \tweak Stem.direction #UP ees'16] \tweak Stem.direction #UP ces'8[\staccato \tweak Stem.direction #UP ees'8]\staccato } \\ { r8 \tweak Stem.direction #DOWN ces'!8 r8 \tweak Stem.direction #DOWN ces'8 } >> %19
  \tag #'firstEdition { \break }
  << { \tweak Stem.direction #UP bes16[\accent_\=#'d1e2037( \tweak Stem.direction #UP bes8\=#'d1e2037)\staccato \tweak Stem.direction #UP c'!16] \tweak Stem.direction #UP bes8[_\=#'d1e2039( < \tweak Stem.direction #UP ees' bes' >8]\=#'d1e2039)\staccato\arpeggio_\sff } >> %20
  << { \tweak Stem.direction #UP bes2^\marcato_\> } >> %21
  << { \tweak Stem.direction #UP bes16[_\p \tweak Stem.direction #UP bes8\staccato \tweak Stem.direction #UP c'16] \tweak Stem.direction #UP bes8[\staccato \tweak Stem.direction #UP des'!8]\staccato } >> %22
  << { \tweak Stem.direction #UP ees'8[\staccato \tweak Stem.direction #UP f'8\staccato \tweak Stem.direction #UP ees'8\staccato \tweak Stem.direction #UP ges'!8]\staccato } >> %23
  << { \tweak Stem.direction #UP f'16[\accent \tweak Stem.direction #UP f'8\staccato \tweak Stem.direction #UP g'!16]\accent \tweak Stem.direction #UP f'8[\accent < \tweak Stem.direction #UP g' d'' >8]\staccato^\marcato\arpeggio } >> %24
  << { < \tweak Stem.direction #UP d'_\=#'d1e2427( bes'^\=#'d1e2425( >4\staccato^\marcato < \tweak Stem.direction #DOWN bes''\=#'d1e2427) bes'''\=#'d1e2425) >8\staccato^\marcato r8 } >> %25
  \tag #'firstEdition { \break }
  \tag #'firstEdition { \pageBreak } %25
  << { < \tweak Stem.direction #UP c' ees' >16[_\=#'d1e2539( < \tweak Stem.direction #UP d' f' >8\=#'d1e2539) < \tweak Stem.direction #UP ees' g' >16] < \tweak Stem.direction #UP d' f' >8[\staccato_\=#'d1e2544( < \tweak Stem.direction #UP c' ees' >8]\=#'d1e2544)\staccato } >> %26
  << { r4 < \tweak Stem.direction #DOWN bes'' bes''' >8\staccato r8 } \\ { < \tweak Stem.direction #DOWN d' f' >2\tenuto } >> %27
  << { < \tweak Stem.direction #UP c'_\=#'d1e2711( ees' >16[ < \tweak Stem.direction #UP d'\=#'d1e2711) f' >8 < \tweak Stem.direction #UP ees' g' >16] < \tweak Stem.direction #UP d'_\=#'d1e2716( f' >8[\staccato < \tweak Stem.direction #UP c'\=#'d1e2716) ees' >8]\staccato } >> %28
  << { < \tweak Stem.direction #UP d' f' >8\staccato < \tweak Stem.direction #UP c'_\=#'d1e2797( ees' >8[ < \tweak Stem.direction #UP d' f' >8 < \tweak Stem.direction #UP g'\=#'d1e2797) bes' c'' >8]\staccato } >> %29
  << { < \tweak Stem.direction #UP aes_~ c'_~ ees'_~ >2 } >> %30
  \tag #'firstEdition { \break }
  << { < \tweak Stem.direction #UP aes c' ees' >2 } >> %31
  << { < \tweak Stem.direction #UP g c' ees' >2 } >> %32
  \set Staff.clefGlyph = #"clefs.F" \set Staff.clefPosition = #2 \set Staff.clefTransposition = #0 \set Staff.middleCPosition = #6 \set Staff.middleCClefPosition = #6 << { r16 \tweak Stem.direction #UP bes,16[_\=#'d1e3008( \tweak Stem.direction #UP c16 \tweak Stem.direction #UP d16] \tweak Stem.direction #UP c8[\=#'d1e3008) \tweak Stem.direction #UP bes,8]\staccato } >> %33
  \set Staff.clefGlyph = #"clefs.G" \set Staff.clefPosition = #-2 \set Staff.clefTransposition = #0 \set Staff.middleCPosition = #-6 \set Staff.middleCClefPosition = #-6 << { < \tweak Stem.direction #UP c'_\=#'d1e3116( ees' >16[ < \tweak Stem.direction #UP d'\=#'d1e3116) f' >8 < \tweak Stem.direction #UP ees' g' >16] < \tweak Stem.direction #UP d'_\=#'d1e3121( f' >8[\staccato < \tweak Stem.direction #UP c'\=#'d1e3121) ees' >8]\staccato } >> %34
  << { r4 < \tweak Stem.direction #DOWN bes'' bes''' >8 r8 } \\ { < \tweak Stem.direction #DOWN d' f' >2_\tenuto } >> %35
  \tag #'firstEdition { \break }
  << { < \tweak Stem.direction #UP c'_\=#'d1e3292( ees' >16[ < \tweak Stem.direction #UP d'\=#'d1e3292) f' >8 < \tweak Stem.direction #UP ees' g' >16] < \tweak Stem.direction #UP d'_\=#'d1e3297( f' >8[\staccato < \tweak Stem.direction #UP c' ees' >8]\staccato } >> %36
  << { < \tweak Stem.direction #UP d'\=#'d1e3297) f' >8\staccato < \tweak Stem.direction #UP c'_\=#'d1e3378( ees' >8[ < \tweak Stem.direction #UP d' f' >8 < \tweak Stem.direction #UP g'\=#'d1e3378) bes' c'' >8]\staccato\accent } >> %37
  << { \tweak Stem.direction #UP bes''16[^\=#'d1e3459( \tweak Stem.direction #UP aes''8\=#'d1e3459) \tweak Stem.direction #UP bes''16] \tweak Stem.direction #UP f''8[ \tweak Stem.direction #UP bes''8]\accent } \\ { < \tweak Stem.direction #DOWN ces''!_~ ees''_~ >2 } >> %38
  << { \tweak Stem.direction #UP aes''16[ \tweak Stem.direction #UP f''8 \tweak Stem.direction #UP ees''16] \tweak Stem.direction #UP ces''4\marcato } \\ { < \tweak Stem.direction #DOWN ces''! ees'' >4 r4 } >> %39
  << { r16 \tweak Stem.direction #UP aes'16[_\=#'d1e3612( \tweak Stem.direction #UP f'16 \tweak Stem.direction #UP ees'16]\=#'d1e3612) \tweak Stem.direction #UP ces'!8[\staccato \set Staff.clefGlyph = #"clefs.F" \set Staff.clefPosition = #2 \set Staff.clefTransposition = #0 \set Staff.middleCPosition = #6 \set Staff.middleCClefPosition = #6 < \tweak Stem.direction #UP d g >8]\staccato^\marcato } >> %40
  \tag #'firstEdition { \break }
  << { r8 < \tweak Stem.direction #DOWN ees bes >8[\staccato\tenuto r8 < \tweak Stem.direction #DOWN ees bes >8]\staccato\tenuto } >> %41
  << { \tweak extra-offset #'(0 . 1) R2 } >> %42
  << { r8 < \tweak Stem.direction #DOWN ees bes >8[\staccato\tenuto r8 < \tweak Stem.direction #DOWN ees bes >8]\staccato\tenuto } >> %43
  << { \tweak extra-offset #'(0 . 1) R2 } >> %44
  << { r8 < \tweak Stem.direction #DOWN ees bes >8[\staccato\tenuto r8 < \tweak Stem.direction #DOWN ees bes >8]\staccato\tenuto } >> %45
  << { \tweak extra-offset #'(0 . 1) R2 } >> \bar "||" %46
  \tag #'firstEdition { \break }
  \key ges\major
  \once \override Score.MetronomeMark.direction = #UP \tempo \markup {Un peu moins vite} << { r8_\pp \grace \tweak Flag.stroke-style #"grace" \tweak Stem.direction #UP a!8_\=#'d1e3966( < \tweak Stem.direction #DOWN bes des' >8\=#'d1e3966)\staccato r8 \grace \tweak Flag.stroke-style #"grace" \tweak Stem.direction #UP a8_\=#'d1e3968( < \tweak Stem.direction #DOWN bes des' >8\=#'d1e3968)\staccato } >> %47
  << { r8 \grace \tweak Flag.stroke-style #"grace" \tweak Stem.direction #UP g!8_\=#'d1e4035( < \tweak Stem.direction #DOWN aes!\=#'d1e4035) ces' >8\staccato r8 \grace \tweak Flag.stroke-style #"grace" \tweak Stem.direction #UP aes8_\=#'d1e4040( < \tweak Stem.direction #DOWN a! c'! f' >8\=#'d1e4040)\staccato } >> %48
  << { r8 \grace \tweak Flag.stroke-style #"grace" \tweak Stem.direction #UP a!8_\=#'d1e4102( < \tweak Stem.direction #DOWN bes des' >8\=#'d1e4102)\staccato r8 \grace \tweak Flag.stroke-style #"grace" \tweak Stem.direction #UP a8_\=#'d1e4105( < \tweak Stem.direction #DOWN bes des' >8\=#'d1e4105)\staccato } >> %49
  << { r8 \grace \tweak Flag.stroke-style #"grace" \tweak Stem.direction #UP g!8_\=#'d1e4172( < \tweak Stem.direction #DOWN aes!\=#'d1e4172) ces' >8\staccato r8 \grace \tweak Flag.stroke-style #"grace" \tweak Stem.direction #UP aes8_\=#'d1e4174( < \tweak Stem.direction #DOWN a!\=#'d1e4174) c'! f' >8\staccato } >> %50
  << { r8 \grace \tweak Flag.stroke-style #"grace" \tweak Stem.direction #UP a!8_\=#'d1e4226( < \tweak Stem.direction #DOWN bes\=#'d1e4226) des' >8\staccato r4 } >> %51
  << { r4 \grace \tweak Flag.stroke-style #"grace" \tweak Stem.direction #UP a!8_\=#'d1e4268( < \tweak Stem.direction #DOWN bes\=#'d1e4268) des' >8\staccato r8 } >> %52
  \tag #'firstEdition { \break }
  \tag #'firstEdition { \pageBreak } %26
  << { R2 } >> %53
  << { r4 \grace \tweak Flag.stroke-style #"grace" \tweak Stem.direction #UP c!8_\=#'d1e4349( < \tweak Stem.direction #UP ces!\=#'d1e4349) des >8\staccato r8 } >> %54
  << { r8 \grace \tweak Flag.stroke-style #"grace" \tweak Stem.direction #UP a!8_\=#'d1e4411( < \tweak Stem.direction #DOWN bes\=#'d1e4411) des' >8\staccato r8 \grace \tweak Flag.stroke-style #"grace" \tweak Stem.direction #UP a8_\=#'d1e4414( < \tweak Stem.direction #DOWN bes\=#'d1e4414) des' >8\staccato } >> %55
  << { r8 \grace \tweak Flag.stroke-style #"grace" \tweak Stem.direction #UP g!8_\=#'d1e4481( < \tweak Stem.direction #DOWN aes!\=#'d1e4481) ces' >8\staccato r8 \grace \tweak Flag.stroke-style #"grace" \tweak Stem.direction #UP aes8_\=#'d1e4483( < \tweak Stem.direction #DOWN a!\=#'d1e4483) c'! f' >8\staccato } >> %56
  << { r8 \grace \tweak Flag.stroke-style #"grace" \tweak Stem.direction #UP a!8_\=#'d1e4549( < \tweak Stem.direction #DOWN bes\=#'d1e4549) des' >8\staccato r8 \grace \tweak Flag.stroke-style #"grace" \tweak Stem.direction #UP a8 < \tweak Stem.direction #DOWN bes des' >8\staccato } >> %57
  \tag #'firstEdition { \break }
  << { r8 \grace \tweak Flag.stroke-style #"grace" \tweak Stem.direction #UP g!8._\=#'d1e4618( < \tweak Stem.direction #DOWN aes!\=#'d1e4618) ces' >8\staccato r8 \grace \tweak Flag.stroke-style #"grace" \tweak Stem.direction #UP aes8_\=#'d1e4620( < \tweak Stem.direction #DOWN a!\=#'d1e4620) c'! f' >8\staccato } >> %58
  << { r8 \grace \tweak Flag.stroke-style #"grace" \tweak Stem.direction #UP a!8_\=#'d1e4671( < \tweak Stem.direction #DOWN bes\=#'d1e4671) des' >8\staccato r4 } >> %59
  << { \tweak extra-offset #'(0 . 1) R2 } >> %60
  \set Staff.clefGlyph = #"clefs.G" \set Staff.clefPosition = #-2 \set Staff.clefTransposition = #0 \set Staff.middleCPosition = #-6 \set Staff.middleCClefPosition = #-6 << { \tweak staff-position #0 r4 \tweak Stem.direction #DOWN a!4^\=#'d1e4769(_\=#'d1e4771(_~ } \\ { \tweak staff-position #0 r4 \tweak Stem.direction #UP a!4 } >> %61
  << { \tweak Stem.direction #UP f'4. \tweak Stem.direction #UP e'!8 } \\ { \tweak Stem.direction #DOWN a!4. \tweak Stem.direction #DOWN bes8 } >> %62
  \tag #'firstEdition { \break }
  \once \override Score.MetronomeMark.direction = #UP \tempo \markup {a Tempo} << { < \tweak Stem.direction #UP ces'\=#'d1e4769)\=#'d1e4771) ees'! >2 } \\ { r8 \grace \tweak Flag.stroke-style #"grace" \tweak Stem.direction #UP d''!8^\=#'d1e4958( < \tweak Stem.direction #DOWN ces''\=#'d1e4958)^\=#'d1e4960( ees'' >8[\staccato \grace \tweak Flag.stroke-style #"grace" \tweak Stem.direction #UP c''!8 < \tweak Stem.direction #DOWN ces''!\=#'d1e4960) des''! >8\staccato \grace \tweak Flag.stroke-style #"grace" \tweak Stem.direction #UP d''!8^\=#'d1e4962( < \tweak Stem.direction #DOWN ces''\=#'d1e4962) ees'' >8]\staccato } >> %63
  << { r8 \grace \tweak Flag.stroke-style #"grace" \tweak Stem.direction #UP d''!8^\=#'d1e5059( < \tweak Stem.direction #DOWN ces''\=#'d1e5059)^\=#'d1e5061( ees'' >8[\staccato \grace \tweak Flag.stroke-style #"grace" \tweak Stem.direction #UP c''!8 < \tweak Stem.direction #DOWN ces''!\=#'d1e5061) des''! >8\staccato \grace \tweak Flag.stroke-style #"grace" \tweak Stem.direction #UP d''!8^\=#'d1e5067( < \tweak Stem.direction #DOWN ces''\=#'d1e5067) ees'' >8]\staccato } >> %64
  << { \tweak staff-position #0 r4 \tweak Stem.direction #UP a!4^\=#'d1e5108( } \\ { \tweak staff-position #0 r4 \tweak Stem.direction #DOWN a!4_~ } >> %65
  << { \tweak Stem.direction #UP f'4. \tweak Stem.direction #UP e'!8 } \\ { \tweak Stem.direction #DOWN a2 } >> %66
  \once \override Score.MetronomeMark.direction = #UP \tempo \markup {a Tempo} << { < \tweak Stem.direction #UP bes ees'!\=#'d1e5108) >2 } \\ { r8 \grace \tweak Flag.stroke-style #"grace" \tweak Stem.direction #UP d''!8^\=#'d1e5271( < \tweak Stem.direction #DOWN bes'\=#'d1e5271) ees'' >8[\staccato \grace \tweak Flag.stroke-style #"grace" \tweak Stem.direction #UP c''!8^\=#'d1e5274( < \tweak Stem.direction #DOWN bes'\=#'d1e5274) des''! >8\staccato \grace \tweak Flag.stroke-style #"grace" \tweak Stem.direction #UP d''!8^\=#'d1e5276( < \tweak Stem.direction #DOWN bes'\=#'d1e5276) ees'' >8]\staccato } >> %67
  \tag #'firstEdition { \break }
  << { r8 \grace \tweak Flag.stroke-style #"grace" \tweak Stem.direction #UP d''!8^\=#'d1e5371( < \tweak Stem.direction #DOWN bes'\=#'d1e5371) ees'' >8[\staccato \grace \tweak Flag.stroke-style #"grace" \tweak Stem.direction #UP c''!8^\=#'d1e5373( < \tweak Stem.direction #DOWN bes'\=#'d1e5373) des''! >8\staccato \grace \tweak Flag.stroke-style #"grace" \tweak Stem.direction #UP d''!8^\=#'d1e5375( < \tweak Stem.direction #DOWN bes'\=#'d1e5375) ees'' >8]\staccato } >> %68
  \once \override Score.MetronomeMark.direction = #UP \tempo \markup {Cédez} << { r4 \tweak Stem.direction #UP a'!4\tenuto^\=#'d1e5416( } >> %69
  << { \tweak Stem.direction #DOWN f''8 \tweak Stem.direction #DOWN aes''!4\accent \tweak Stem.direction #DOWN ges''8\=#'d1e5416) } >> %70
  \once \override Score.MetronomeMark.direction = #UP \tempo \markup {a Tempo} << { \tweak Stem.direction #UP ees''16[ \tweak Stem.direction #UP ges''8 \tweak Stem.direction #UP f''16] \tweak Stem.direction #UP des''4 } \\ { \tweak Stem.direction #DOWN bes'8[ \tweak Stem.direction #DOWN aes'8 \tweak Stem.direction #DOWN ges'8 \tweak Stem.direction #DOWN f'8] } >> %71
  << { \tweak Stem.direction #UP aes'16[^\=#'d1e5587( \tweak Stem.direction #UP ces''8\=#'d1e5587) \tweak Stem.direction #UP bes'16] \tweak Stem.direction #UP des'4^~ } \\ { \tweak Stem.direction #DOWN ees'8[ \tweak Stem.direction #DOWN des'8 \tweak Stem.direction #DOWN ces'8 \tweak Stem.direction #DOWN bes8] } >> %72
  \tag #'firstEdition { \break }
  \once \override Score.MetronomeMark.direction = #UP \tempo \markup {Cédez} << { \tweak Stem.direction #UP des'4 \tweak Stem.direction #UP a!4^\=#'d1e5653( } \\ { \tweak Stem.direction #DOWN bes8 r8 \tweak Stem.direction #DOWN a!4_\=#'d1e5655(_~ } >> %73
  << { \tweak Stem.direction #UP f'4. \tweak Stem.direction #UP e'!8 } \\ { \tweak Stem.direction #DOWN a4 \tweak Stem.direction #DOWN bes4 } >> %74
  \once \override Score.MetronomeMark.direction = #UP \tempo \markup {a Tempo} << { < \tweak Stem.direction #UP ees'!\=#'d1e5653) ces'\=#'d1e5655) >2 } \\ { r8 \grace \tweak Flag.stroke-style #"grace" \tweak Stem.direction #UP d''!8^\=#'d1e5828( < \tweak Stem.direction #DOWN ces''\=#'d1e5828) ees'' >8[\staccato \grace \tweak Flag.stroke-style #"grace" \tweak Stem.direction #UP c''!8^\=#'d1e5831( < \tweak Stem.direction #DOWN c''\=#'d1e5831) des''! >8\staccato \grace \tweak Flag.stroke-style #"grace" \tweak Stem.direction #UP d''!8^\=#'d1e5833( < \tweak Stem.direction #DOWN c''\=#'d1e5833) ees'' >8]\staccato } >> %75
  << { \tweak staff-position #0 r4 \tweak Stem.direction #UP a!4^\=#'d1e5889( } \\ { \tweak staff-position #0 r4 \tweak Stem.direction #DOWN a!4_\=#'d1e5891(^~ } >> %76
  << { \tweak Stem.direction #UP f'4. \tweak Stem.direction #UP e'!8 } \\ { \tweak Stem.direction #DOWN a!2 } >> %77
  \tag #'firstEdition { \break }
  \tag #'firstEdition { \pageBreak } %27
  \once \override Score.MetronomeMark.direction = #UP \tempo \markup {a Tempo} << { < \tweak Stem.direction #UP ees'!\=#'d1e5889) bes\=#'d1e5891) >2 } \\ { r8 \grace \tweak Flag.stroke-style #"grace" \tweak Stem.direction #UP d''!8^\=#'d1e6065( < \tweak Stem.direction #DOWN bes'\=#'d1e6065) ees'' >8[\staccato \grace \tweak Flag.stroke-style #"grace" \tweak Stem.direction #UP c''!8^\=#'d1e6067( < \tweak Stem.direction #DOWN bes'\=#'d1e6067) des''! >8\staccato \grace \tweak Flag.stroke-style #"grace" \tweak Stem.direction #UP d''!8^\=#'d1e6069( < \tweak Stem.direction #DOWN bes'\=#'d1e6069) ees'' >8]\staccato } >> %78
  << { r4 \tweak Stem.direction #DOWN des''4\tenuto^\=#'d1e6101( } >> %79
  << { \tweak Stem.direction #DOWN a''!8\staccato \tweak Stem.direction #DOWN ces'''4\accent \tweak Stem.direction #DOWN bes''8\=#'d1e6101) } >> %80
  << { \tweak Stem.direction #UP f''16[^\=#'d1e6211( \tweak Stem.direction #UP aes''!8\=#'d1e6211) \tweak Stem.direction #UP ges''16] \tweak Stem.direction #UP ees''4 } \\ { \tweak Stem.direction #DOWN bes'8[ \tweak Stem.direction #DOWN aes'8 \tweak Stem.direction #DOWN ges'8 \tweak Stem.direction #DOWN f'8] } >> %81
  << { \tweak Stem.direction #UP bes'16[ \tweak Stem.direction #UP des''8 \tweak Stem.direction #UP ces''16] \tweak Stem.direction #UP f'8.[ \tweak Stem.direction #UP ges'16] } >> %82
  \tag #'firstEdition { \break }
  << { s4*2 } \\ { < \tweak Stem.direction #UP ges_~ ces'_~ ees'^~ >2 } >> %83
  << { s4*2 } \\ { < \tweak Stem.direction #UP ges_~ ces'_~ ees'^~ >2 } >> %84
  << { r8. \tweak Stem.direction #UP bes'16^\p^\=#'d1e6426( \tweak Stem.direction #UP aes'8[\=#'d1e6426)\staccato \tweak Stem.direction #UP bes'8]\staccato } \\ { < \tweak Stem.direction #DOWN ges_~ ces'_~ ees'_~ >2 } >> %85
  << { r8. \tweak Stem.direction #UP bes'16^\p^\=#'d1e6477( \tweak Stem.direction #UP aes'8[\=#'d1e6477)\staccato \tweak Stem.direction #UP bes'8]\staccato } \\ { < \tweak Stem.direction #DOWN ges ces' ees' >2 } >> %86
  \once \override Score.MetronomeMark.direction = #UP \tempo \markup {Retenez} << { s4*2 } \\ { < \tweak Stem.direction #UP ces'_~ des'^~ >2 } \\ { \tweak Stem.direction #DOWN ges2_\=#'d1e6532( } >> %87
  \tag #'firstEdition { \break }
  << { r8. \tweak Stem.direction #UP bes'16^\pp^\=#'d1e6610( \tweak Stem.direction #UP aes'8[\=#'d1e6610)\staccato \tweak Stem.direction #UP bes'8]\staccato } \\ { < \tweak Stem.direction #UP des'_~ ces'_~ >2 } \\ { \tweak Stem.direction #DOWN f2\=#'d1e6532)_~ } >> %88
  << { r8. \tweak Stem.direction #UP bes'16^\pp^\=#'d1e6660( \tweak Stem.direction #UP aes'8[\=#'d1e6660)\staccato \tweak Stem.direction #UP bes'8]\staccato } \\ { < \tweak Stem.direction #UP ces' des' >2 } \\ { \tweak Stem.direction #DOWN f2 } >> \bar "||" %89
  \key ees\major
  << { \tweak Stem.direction #UP bes'16[_\pp_\=#'d1e6705( \tweak Stem.direction #UP aes'8\=#'d1e6705) \tweak Stem.direction #UP bes'16] \tweak Stem.direction #UP f'8[\staccato \tweak Stem.direction #UP bes'8]\staccato } >> %90
  << { \tweak Stem.direction #UP aes'16[_\=#'d1e6751( \tweak Stem.direction #UP f'8\=#'d1e6751) \tweak Stem.direction #UP ees'16] \tweak Stem.direction #UP ces'!8[\staccato \tweak Stem.direction #UP ees'8]\staccato } >> %91
  \tag #'firstEdition { \break }
  \once \override Score.MetronomeMark.direction = #UP \tempo \markup {1° Tempo} << { \tweak Stem.direction #UP bes16[\accent \tweak Stem.direction #UP bes8 \tweak Stem.direction #UP c'!16] \tweak Stem.direction #UP bes8[_\=#'d1e6831( < \tweak Stem.direction #UP ees' bes' >8]\=#'d1e6831)\staccato\arpeggio } >> %92
  << { \tweak Stem.direction #UP bes2^\marcato } >> %93
  \set Staff.clefGlyph = #"clefs.F" \set Staff.clefPosition = #2 \set Staff.clefTransposition = #0 \set Staff.middleCPosition = #6 \set Staff.middleCClefPosition = #6 << { \tweak Stem.direction #DOWN bes16[\tenuto\accent^\=#'d1e6962( \tweak Stem.direction #DOWN aes8\=#'d1e6962) \tweak Stem.direction #DOWN bes16] \tweak Stem.direction #DOWN c'8[\staccato \tweak Stem.direction #DOWN aes8]\staccato } >> %94
  << { \tweak Stem.direction #DOWN bes16[\tenuto\accent^\=#'d1e7037( \tweak Stem.direction #DOWN aes8\=#'d1e7037) \tweak Stem.direction #DOWN bes16] \tweak Stem.direction #DOWN ces'!8[\staccato \tweak Stem.direction #DOWN aes8]\staccato } >> %95
  << { \tweak Stem.direction #DOWN bes16[^\=#'d1e7090( \tweak Stem.direction #DOWN g8\=#'d1e7090) \tweak Stem.direction #DOWN f16]\staccato \tweak Stem.direction #DOWN ees8[\staccato \tweak Stem.direction #DOWN d8]\staccato } >> %96
  \tag #'firstEdition { \break }
  << { \tweak Stem.direction #UP c8[\staccato \tweak Stem.direction #UP g,8\staccato\accent \tweak Stem.direction #UP c8\staccato\accent \tweak Stem.direction #UP d8]\staccato\accent } >> %97
  \set Staff.clefGlyph = #"clefs.G" \set Staff.clefPosition = #-2 \set Staff.clefTransposition = #0 \set Staff.middleCPosition = #-6 \set Staff.middleCClefPosition = #-6 << { \tweak Stem.direction #UP bes'16[ \tweak Stem.direction #UP aes'8 \tweak Stem.direction #UP bes'16] \tweak Stem.direction #UP f'8[\staccato \tweak Stem.direction #UP bes'8] } \\ { r8 < \tweak Stem.direction #DOWN ces'! ees' >8 r8 < \tweak Stem.direction #DOWN ces' ees' >8 } >> %98
  << { \tweak Stem.direction #UP aes'16[\accent \tweak Stem.direction #UP f'8 \tweak Stem.direction #UP ees'16] \tweak Stem.direction #UP ces'8[ \tweak Stem.direction #UP ees'8]\staccato } \\ { r8 \tweak Stem.direction #DOWN ces'!8 r8 \tweak Stem.direction #DOWN ces'8 } >> %99
  << { \tweak Stem.direction #UP bes16[\accent \tweak Stem.direction #UP bes8\staccato \tweak Stem.direction #UP c'!16] \tweak Stem.direction #UP bes8[_\=#'d1e7382( < \tweak Stem.direction #UP ees'\=#'d1e7382) bes' >8]\staccato-\tweak extra-offset #'(-0.5 . 0) \arpeggio } >> %100
  << { \tweak Stem.direction #UP bes2\marcato } >> %101
  \tag #'firstEdition { \break }
  \tag #'firstEdition { \pageBreak } %28
  << { \tweak Stem.direction #UP bes16[\accent \tweak Stem.direction #UP bes8\staccato \tweak Stem.direction #UP c'16] \tweak Stem.direction #UP bes8[\staccato \tweak Stem.direction #UP des'!8]\staccato } >> %102
  << { \tweak Stem.direction #UP ees'8[\staccato \tweak Stem.direction #UP f'8\staccato \tweak Stem.direction #UP ees'8\staccato \tweak Stem.direction #UP ges'!8]\staccato } >> %103
  << { \tweak Stem.direction #UP f'16[\accent \tweak Stem.direction #UP f'8\staccato \tweak Stem.direction #UP g'!16]\accent \tweak Stem.direction #UP f'8[\accent < \tweak Stem.direction #UP g' d'' >8]\staccato } >> %104
  << { < \tweak Stem.direction #UP d'_\=#'d1e7756( bes'^\=#'d1e7754( >4\marcato\staccato < \tweak Stem.direction #DOWN bes''\=#'d1e7756) bes'''\=#'d1e7754) >8\marcato\staccato r8 } >> %105
  << { < \tweak Stem.direction #UP c'_\=#'d1e7862( ees' >16[ < \tweak Stem.direction #UP d'\=#'d1e7862) f' >8 < \tweak Stem.direction #UP ees' g' >16] < \tweak Stem.direction #UP d'_\=#'d1e7867( f' >8[\staccato < \tweak Stem.direction #UP c'\=#'d1e7867) ees' >8]\staccato } >> %106
  << { r4 < \tweak Stem.direction #DOWN bes'' bes''' >8\staccato r8 } \\ { < \tweak Stem.direction #DOWN d' f' >2\tenuto } >> %107
  \tag #'firstEdition { \break }
  << { < \tweak Stem.direction #UP c'_\=#'d1e8036( ees' >16[ < \tweak Stem.direction #UP d'\=#'d1e8036) f' >8 < \tweak Stem.direction #UP ees' g' >16] < \tweak Stem.direction #UP d'_\=#'d1e8041( f' >8[\staccato < \tweak Stem.direction #UP c'\=#'d1e8041) ees' >8]\staccato } >> %108
  << { < \tweak Stem.direction #UP d' f' >8\staccato < \tweak Stem.direction #UP c' ees' >8[_\=#'d1e8127( < \tweak Stem.direction #UP d' f' >8 < \tweak Stem.direction #UP g' bes' c'' >8]\=#'d1e8127)\staccato^\accent } >> %109
  \set Staff.clefGlyph = #"clefs.F" \set Staff.clefPosition = #2 \set Staff.clefTransposition = #0 \set Staff.middleCPosition = #6 \set Staff.middleCClefPosition = #6 << { \tweak Stem.direction #UP e'!2^\=#'d1e8202( } \\ { < \tweak Stem.direction #DOWN a!_\=#'d1e8205( cis'! >2 } >> %110
  << { \tweak Stem.direction #UP f'2\=#'d1e8202) } \\ { < \tweak Stem.direction #DOWN aes!\=#'d1e8205) c'! >2 } >> %111
  << { \tweak Stem.direction #UP bes2^~ } \\ { < \tweak Stem.direction #DOWN f_\=#'d1e8320( g^~ >2 } >> %112
  \tag #'firstEdition { \break }
  << { \tweak Stem.direction #UP bes2 } \\ { < \tweak Stem.direction #DOWN g ees\=#'d1e8320) >2 } \\ { r8 \tweak Stem.direction #DOWN c16[_\=#'d1e8407( \tweak Stem.direction #DOWN d16] \tweak Stem.direction #DOWN c8\=#'d1e8407)\staccato r8 } >> %113
  \set Staff.clefGlyph = #"clefs.G" \set Staff.clefPosition = #-2 \set Staff.clefTransposition = #0 \set Staff.middleCPosition = #-6 \set Staff.middleCClefPosition = #-6 << { < \tweak Stem.direction #UP c' ees' >16[_\=#'d1e8513( < \tweak Stem.direction #UP d' f' >8\=#'d1e8513) < \tweak Stem.direction #UP ees' g' >16] < \tweak Stem.direction #UP d' f' >8[\staccato_\=#'d1e8518( < \tweak Stem.direction #UP c' ees' >8]\=#'d1e8518)\staccato } >> %114
  << { r4 < \tweak Stem.direction #UP bes'' bes''' >8\staccato r8 } \\ { < \tweak Stem.direction #DOWN d' f' >2\tenuto } >> %115
  << { < \tweak Stem.direction #UP c' ees' >16[_\=#'d1e8685( < \tweak Stem.direction #UP d' f' >8\=#'d1e8685) < \tweak Stem.direction #UP ees' g' >16] < \tweak Stem.direction #UP d' f' >8[\staccato_\=#'d1e8690( < \tweak Stem.direction #UP c' ees' >8]\staccato } >> %116
  << { < \tweak Stem.direction #UP d' f' >8\=#'d1e8690)\staccato < \tweak Stem.direction #UP c' ees' >8[_\=#'d1e8777( < \tweak Stem.direction #UP d' f' >8 < \tweak Stem.direction #UP g' bes' c'' >8]\=#'d1e8777)\staccato^\accent } >> %117
  \tag #'firstEdition { \break }
  << { \tweak Stem.direction #UP bes''16[\accent^\=#'d1e8859( \tweak Stem.direction #UP aes''8\=#'d1e8859) \tweak Stem.direction #UP bes''16]\staccato \tweak Stem.direction #UP f''8[\accent \tweak Stem.direction #UP bes''8]\accent } \\ { < \tweak Stem.direction #DOWN ces''!_~ ees''_~ >2_\f } >> %118
  << { \tweak Stem.direction #UP aes''16[\accent^\=#'d1e8937( \tweak Stem.direction #UP f''8\=#'d1e8937) \tweak Stem.direction #UP ees''16] \tweak Stem.direction #UP ces''4\marcato } \\ { < \tweak Stem.direction #DOWN ces''! ees'' >4 r4 } >> %119
  << { r16 \tweak Stem.direction #UP aes'16[_\f_\<_\=#'d1e9027( \tweak Stem.direction #UP f'16 \tweak Stem.direction #UP ees'16]\=#'d1e9027) \tweak Stem.direction #UP ces'!8[\staccato \set Staff.clefGlyph = #"clefs.F" \set Staff.clefPosition = #2 \set Staff.clefTransposition = #0 \set Staff.middleCPosition = #6 \set Staff.middleCClefPosition = #6 < \tweak Stem.direction #UP d g >8]\!\staccato_\marcato_\ff } >> %120
  << { r8 < \tweak Stem.direction #DOWN ees bes >8[\staccato\tenuto_\p r8 < \tweak Stem.direction #DOWN ees bes >8]\staccato\tenuto } >> %121
  << { \tweak extra-offset #'(0 . 1) R2 } >> %122
  << { r8 < \tweak Stem.direction #DOWN ees bes >8[\staccato\tenuto_\p r8 < \tweak Stem.direction #DOWN ees bes >8]\staccato\tenuto } >> %123
  \tag #'firstEdition { \break }
  << { \tweak extra-offset #'(0 . 1) R2 } >> %124
  << { r8 < \tweak Stem.direction #DOWN ees bes >8[\staccato\tenuto_\p r8 < \tweak Stem.direction #DOWN ees bes >8]\staccato\tenuto } >> %125
  << { r4 \tweak Stem.direction #UP ces!8[_\marcato_\f_\<_\=#'d1e9346( \tweak Stem.direction #UP bes,32 \tweak Stem.direction #UP aes,32 \tweak Stem.direction #UP g,32 \tweak Stem.direction #UP f,32] } >> %126
  << { \tweak Stem.direction #DOWN ees8\=#'d1e9346)\marcato\staccato_\ff r8 r4 } >> %127
  << { \tweak Stem.direction #DOWN ees8\marcato\staccato_\ff r8 r4 } >> \bar "|." %128
}

mdivA_staffB = {
  \set Score.currentBarNumber = #1
  \set Staff.clefGlyph = #"clefs.G" \set Staff.clefPosition = #-2 \set Staff.clefTransposition = #0 \set Staff.middleCPosition = #-6 \set Staff.middleCClefPosition = #-6 \key ees\major
  \time 2/4 
  << { \tweak Stem.direction #UP bes'16[\accent_\=#'d1e589( \tweak Stem.direction #UP aes'8\=#'d1e589)\staccato \tweak Stem.direction #UP bes'16] \tweak Stem.direction #UP f'8[\staccato \tweak Stem.direction #UP bes'8]\staccato } >> %1
  << { \tweak Stem.direction #UP aes'16[\accent_\=#'d1e640(_1 \tweak Stem.direction #UP f'8\=#'d1e640)_2 \tweak Stem.direction #UP ees'16] \tweak Stem.direction #UP ces'!4^\marcato } >> %2
  \set Staff.clefGlyph = #"clefs.F" \set Staff.clefPosition = #2 \set Staff.clefTransposition = #0 \set Staff.middleCPosition = #6 \set Staff.middleCClefPosition = #6 << { r16 \tweak Stem.direction #DOWN aes16[_1 \tweak Stem.direction #DOWN f16 \tweak Stem.direction #DOWN ees16] \tweak Stem.direction #UP ces!4^\marcato } >> %3
  << { r16 \tweak Stem.direction #UP aes,16[ \tweak Stem.direction #UP f,16 \tweak Stem.direction #UP ees,16] \tweak Stem.direction #UP ces,!8[\accent < \tweak Stem.direction #UP bes,, bes, >8]\staccato^\marcato } >> %4
  \tag #'firstEdition { \break }
  << { R2 } >> %5
  << { < \tweak Stem.direction #UP ees, bes, >8[\staccato < \tweak Stem.direction #UP f g >8]\staccato < \tweak Stem.direction #UP ees, bes, >8[\staccato < \tweak Stem.direction #UP f g >8]\staccato } >> %6
  << { < \tweak Stem.direction #UP ees, bes, >8[\staccato < \tweak Stem.direction #UP f g >8]\staccato < \tweak Stem.direction #UP ees, bes, >8[\staccato < \tweak Stem.direction #UP f g >8]\staccato } >> %7
  << { < \tweak Stem.direction #UP ees, bes, >8[\staccato < \tweak Stem.direction #UP f g >8]\staccato < \tweak Stem.direction #UP ees, bes, >8[\staccato < \tweak Stem.direction #UP f g >8]\staccato } >> %8
  << { < \tweak Stem.direction #UP ees, bes, >8[\staccato < \tweak Stem.direction #UP f g >8]\staccato < \tweak Stem.direction #UP ees, bes, >8[\staccato < \tweak Stem.direction #UP f g >8]\staccato } >> %9
  \tag #'firstEdition { \break }
  << { < \tweak Stem.direction #UP ees, bes, >8[\staccato^\p < \tweak Stem.direction #UP f aes >8]\staccato < \tweak Stem.direction #UP ees, bes, >8[\staccato < \tweak Stem.direction #UP f aes >8]\staccato } >> %10
  << { < \tweak Stem.direction #UP ees, bes, >8[\staccato < \tweak Stem.direction #UP f aes >8]\staccato < \tweak Stem.direction #UP ees, bes, >8[\staccato < \tweak Stem.direction #UP f aes >8]\staccato } >> %11
  << { < \tweak Stem.direction #UP ees, bes, >8[\staccato < \tweak Stem.direction #UP f g >8]\staccato < \tweak Stem.direction #UP ees, bes, >8[\staccato < \tweak Stem.direction #UP f g >8]\staccato } >> %12
  << { < \tweak Stem.direction #UP ees, bes, >8[\staccato < \tweak Stem.direction #UP f g >8]\staccato < \tweak Stem.direction #UP ees, bes, >8[\staccato < \tweak Stem.direction #UP f g >8]\staccato } >> %13
  << { < \tweak Stem.direction #UP ees, bes, >8[\staccato < \tweak Stem.direction #UP ees f >8]\staccato < \tweak Stem.direction #UP ees, bes, >8[\staccato < \tweak Stem.direction #UP ees f >8]\staccato } >> %14
  \tag #'firstEdition { \break }
  << { < \tweak Stem.direction #UP ees, bes, >8[\staccato < \tweak Stem.direction #UP f g >8]\staccato < \tweak Stem.direction #UP ees, bes, >8[\staccato < \tweak Stem.direction #UP ees f >8]\staccato } >> %15
  << { \tweak Stem.direction #UP bes,16[_\=#'d1e1715(_1 \tweak Stem.direction #UP g,8\=#'d1e1715)\staccato_2 \tweak Stem.direction #UP f,16]\staccato \tweak Stem.direction #UP ees,8[\staccato \tweak Stem.direction #UP d,8]\staccato_1 } >> %16
  << { \tweak Stem.direction #UP c,8[\staccato \tweak Stem.direction #UP g,,8\staccato\accent \tweak Stem.direction #UP c,8\staccato\accent \tweak Stem.direction #UP d,8]\staccato\accent } >> %17
  << { < \tweak Stem.direction #UP ees, bes, >8[\staccato-\tweak extra-offset #'(0 . 2) ^\f < \tweak Stem.direction #UP f aes >8]\staccato < \tweak Stem.direction #UP ees, bes, >8[\staccato < \tweak Stem.direction #UP f aes >8]\staccato } >> %18
  << { < \tweak Stem.direction #UP ees, bes, >8[\staccato < \tweak Stem.direction #UP f aes >8]\staccato < \tweak Stem.direction #UP ees, bes, >8[\staccato < \tweak Stem.direction #UP f aes >8]\staccato } >> %19
  \tag #'firstEdition { \break }
  << { < \tweak Stem.direction #UP ees, bes, >8[\staccato < \tweak Stem.direction #UP f g >8]\staccato < \tweak Stem.direction #UP ees, bes, >8[\staccato < \tweak Stem.direction #UP f g >8]\staccato } >> %20
  << { < \tweak Stem.direction #UP ees, bes, >8[\staccato < \tweak Stem.direction #UP f g >8]\staccato < \tweak Stem.direction #UP ees, bes, >8[\staccato < \tweak Stem.direction #UP f g >8]\staccato } >> %21
  << { < \tweak Stem.direction #DOWN ges,! des! >8[\staccato < \tweak Stem.direction #DOWN des ges! aes >8]\staccato < \tweak Stem.direction #DOWN ges, des >8[\staccato < \tweak Stem.direction #DOWN des ges a! >8]\staccato } >> %22
  << { < \tweak Stem.direction #DOWN ges,! des! >8[\staccato < \tweak Stem.direction #DOWN des ges! bes >8]\staccato < \tweak Stem.direction #DOWN ges, des >8[\staccato < \tweak Stem.direction #DOWN des ges ces'! >8]\staccato } >> %23
  << { r8 < \tweak Stem.direction #DOWN des'! e'! >8\accent < \tweak Stem.direction #DOWN c' ees'! >8[\accent < \tweak Stem.direction #DOWN f a! ees' >8]\staccato^\marcato } >> %24
  << { < \tweak Stem.direction #DOWN bes,_\=#'d1e2432( f bes\=#'d1e2430)^\=#'d1e2430( >4\staccato^\marcato < \tweak Stem.direction #UP bes,,\=#'d1e2432) bes, >8\staccato_\marcato r8 } >> %25
  \tag #'firstEdition { \break }
  \tag #'firstEdition { \pageBreak } %25
  \set Staff.clefGlyph = #"clefs.G" \set Staff.clefPosition = #-2 \set Staff.clefTransposition = #0 \set Staff.middleCPosition = #-6 \set Staff.middleCClefPosition = #-6 << { < \tweak Stem.direction #UP aes! bes >8[\staccato < \tweak Stem.direction #UP aes' bes' >8]\staccato < \tweak Stem.direction #UP aes bes >8[\staccato < \tweak Stem.direction #UP aes' bes' >8]\staccato } >> %26
  << { < \tweak Stem.direction #UP aes bes >8[\staccato < \tweak Stem.direction #UP aes' bes' >8]\staccato < \tweak Stem.direction #UP aes bes >8[\staccato < \tweak Stem.direction #UP aes' bes' >8]\staccato } >> %27
  << { < \tweak Stem.direction #UP g bes >8[\staccato < \tweak Stem.direction #UP g' bes' >8]\staccato < \tweak Stem.direction #UP g bes >8[\staccato < \tweak Stem.direction #UP g' bes' >8]\staccato } >> %28
  << { < \tweak Stem.direction #UP g bes >8[\staccato < \tweak Stem.direction #UP g' bes' >8]\staccato < \tweak Stem.direction #UP g_\=#'d1e2799( bes >8[ \tweak Stem.direction #UP ees'8]\=#'d1e2799)\staccato\accent } >> %29
  \set Staff.clefGlyph = #"clefs.F" \set Staff.clefPosition = #2 \set Staff.clefTransposition = #0 \set Staff.middleCPosition = #6 \set Staff.middleCClefPosition = #6 << { \tweak Stem.direction #UP bes,16[_\=#'d1e2846( \tweak Stem.direction #UP c8\=#'d1e2846) \tweak Stem.direction #UP d16] \tweak Stem.direction #UP c8[\staccato \tweak Stem.direction #UP bes,8]\staccato } >> %30
  \tag #'firstEdition { \break }
  << { \tweak Stem.direction #UP bes,16[_\=#'d1e2898( \tweak Stem.direction #UP c8\=#'d1e2898) \tweak Stem.direction #UP d16] \tweak Stem.direction #UP c8[\staccato \tweak Stem.direction #UP bes,8]\staccato } >> %31
  << { \tweak Stem.direction #UP bes,16[_\=#'d1e2943( \tweak Stem.direction #UP c8\=#'d1e2943) \tweak Stem.direction #UP d16] \tweak Stem.direction #UP c8[\staccato \tweak Stem.direction #UP bes,8]\staccato } >> %32
  << { r16 \tweak Stem.direction #UP bes,,16[_\=#'d1e3011( \tweak Stem.direction #UP c,16 \tweak Stem.direction #UP d,16] \tweak Stem.direction #UP c,8[\=#'d1e3011) < \tweak Stem.direction #UP bes,,, bes,, >8]\staccato } >> %33
  \set Staff.clefGlyph = #"clefs.G" \set Staff.clefPosition = #-2 \set Staff.clefTransposition = #0 \set Staff.middleCPosition = #-6 \set Staff.middleCClefPosition = #-6 << { < \tweak Stem.direction #UP aes bes >8[\staccato < \tweak Stem.direction #UP aes' bes' >8]\staccato < \tweak Stem.direction #UP aes bes >8[\staccato < \tweak Stem.direction #UP aes' bes' >8]\staccato } >> %34
  << { < \tweak Stem.direction #UP aes bes >8[\staccato < \tweak Stem.direction #UP aes' bes' >8]\staccato < \tweak Stem.direction #UP aes bes >8[\staccato < \tweak Stem.direction #UP aes' bes' >8]\staccato } >> %35
  \tag #'firstEdition { \break }
  << { < \tweak Stem.direction #UP g bes >8[\staccato < \tweak Stem.direction #UP g' bes' >8]\staccato < \tweak Stem.direction #UP g bes >8[\staccato < \tweak Stem.direction #UP g' bes' >8]\staccato } >> %36
  << { < \tweak Stem.direction #UP g bes >8[\staccato < \tweak Stem.direction #UP g' bes' >8]\staccato < \tweak Stem.direction #UP g_\=#'d1e3380( bes >8[\staccato \tweak Stem.direction #UP ees'8]\=#'d1e3380)\staccato\accent } >> %37
  << { \tweak Stem.direction #UP bes'16[ \tweak Stem.direction #UP aes'8 \tweak Stem.direction #UP bes'16] \tweak Stem.direction #UP f'8[ \tweak Stem.direction #UP bes'8] } \\ { < \tweak Stem.direction #DOWN ces'!_~ ees'_~ >2 } >> %38
  << { \tweak Stem.direction #UP aes'16[ \tweak Stem.direction #UP f'8 \tweak Stem.direction #UP ees'16] \tweak Stem.direction #UP ces'4\marcato } \\ { < \tweak Stem.direction #DOWN ces'! ees' >4 r4 } >> %39
  \set Staff.clefGlyph = #"clefs.F" \set Staff.clefPosition = #2 \set Staff.clefTransposition = #0 \set Staff.middleCPosition = #6 \set Staff.middleCClefPosition = #6 << { r16 \tweak Stem.direction #DOWN aes16[^\=#'d1e3614( \tweak Stem.direction #DOWN f16 \tweak Stem.direction #DOWN ees16]\=#'d1e3614) \tweak Stem.direction #UP ces!8[\staccato < \tweak Stem.direction #UP bes,, bes, >8]\staccato^\marcato } >> %40
  \tag #'firstEdition { \break }
  << { r8 < \tweak Stem.direction #UP f g >8[\staccato\tenuto < \tweak Stem.direction #UP ees, bes, >8\staccato < \tweak Stem.direction #UP f g >8]\staccato\tenuto } >> %41
  << { < \tweak Stem.direction #UP ees, bes, >4\staccato r4 } >> %42
  << { r8 < \tweak Stem.direction #UP f g >8[\staccato\tenuto < \tweak Stem.direction #UP ees, bes, >8\staccato < \tweak Stem.direction #UP f g >8]\staccato\tenuto } >> %43
  << { < \tweak Stem.direction #UP ees, bes, >4\staccato r4 } >> %44
  << { r8 < \tweak Stem.direction #UP f g >8[\staccato\tenuto < \tweak Stem.direction #UP ees, bes, >8\staccato < \tweak Stem.direction #UP f g >8]\staccato\tenuto } >> %45
  << { \tweak Stem.direction #UP ees,4_\=#'d1e3894( \tweak Stem.direction #UP f,4\=#'d1e3894) } >> \bar "||" %46
  \tag #'firstEdition { \break }
  \key ges\major
  << { \tweak Stem.direction #UP des2^~ } \\ { \tweak Stem.direction #DOWN ges,8\staccato r8 \tweak Stem.direction #DOWN ges,8\staccato r8 } >> %47
  << { \tweak Stem.direction #UP des2 } \\ { \tweak Stem.direction #DOWN ges,8\staccato r8 \tweak Stem.direction #DOWN ges,8\staccato r8 } >> %48
  << { \grace \tweak Flag.stroke-style #"grace" \tweak Stem.direction #UP ees8_\=#'d1e4098( \tweak Stem.direction #UP des2\=#'d1e4098)^~ } \\ { \tweak Stem.direction #DOWN ges,8\staccato r8 \tweak Stem.direction #DOWN ges,8\staccato r8 } >> %49
  << { \tweak Stem.direction #UP des2 } \\ { \tweak Stem.direction #DOWN ges,8\staccato r8 \tweak Stem.direction #DOWN ges,8\staccato r8 } >> %50
  << { \tweak Stem.direction #UP des2^~ } \\ { r8 \tweak Stem.direction #DOWN ges,8[\staccato \tweak Stem.direction #DOWN f,8\staccato \tweak Stem.direction #DOWN ees,8]\staccato } >> %51
  << { \tweak Stem.direction #UP des2 } \\ { \tweak Stem.direction #DOWN des,4\staccato r4 } >> %52
  \tag #'firstEdition { \break }
  \tag #'firstEdition { \pageBreak } %26
  << { r8 \tweak Stem.direction #UP ges,8[\staccato \tweak Stem.direction #UP f,8\staccato \tweak Stem.direction #UP ees,8]\staccato } >> %53
  << { \tweak Stem.direction #UP des,8[\staccato \tweak Stem.direction #UP ces,8\staccato \tweak Stem.direction #UP bes,,8\staccato \tweak Stem.direction #UP aes,,8]\staccato } >> %54
  << { \tweak Stem.direction #UP des2^~ } \\ { \tweak Stem.direction #DOWN ges,8\staccato r8 \tweak Stem.direction #DOWN ges,8\staccato r8 } >> %55
  << { \tweak Stem.direction #UP des2 } \\ { \tweak Stem.direction #DOWN ges,8\staccato r8 \tweak Stem.direction #DOWN ges,8\staccato r8 } >> %56
  << { \grace \tweak Flag.stroke-style #"grace" \tweak Stem.direction #UP ees8_\=#'d1e4541( \tweak Stem.direction #UP des2\=#'d1e4541)^~ } \\ { \tweak Stem.direction #DOWN ges,8\staccato r8 \tweak Stem.direction #DOWN ges,8\staccato r8 } >> %57
  \tag #'firstEdition { \break }
  << { \tweak Stem.direction #UP des2 } \\ { \tweak Stem.direction #DOWN ges,8\staccato r8 \tweak Stem.direction #DOWN ges,8\staccato r8 } >> %58
  << { \tweak Stem.direction #UP des2^~ } \\ { r8 \tweak Stem.direction #DOWN ges,8[\staccato \tweak Stem.direction #DOWN f,8\staccato \tweak Stem.direction #DOWN ees,8]\staccato } >> %59
  << { \tweak Stem.direction #UP des2^~ } \\ { \tweak Stem.direction #DOWN des,8\staccato r8 r4 } >> %60
  << { \tweak Stem.direction #UP des8 r8 r4 } \\ { r8 \tweak Stem.direction #DOWN ees,8[_\=#'d1e4761( \tweak Stem.direction #DOWN f,8 \tweak Stem.direction #DOWN ges,8] } >> %61
  << { s2 } \\ { \tweak Stem.direction #DOWN a,!8[ \tweak Stem.direction #DOWN bes,8 \tweak Stem.direction #DOWN ces8 \tweak Stem.direction #DOWN c!8] } >> %62
  \tag #'firstEdition { \break }
  << { \tweak staff-position #-6 r8 < \tweak Stem.direction #DOWN aes ces'! f' >8[\staccato < \tweak Stem.direction #DOWN aes ces' f' >8\staccato < \tweak Stem.direction #DOWN aes ces' f' >8]\staccato } \\ { < \tweak Stem.direction #UP aes, des >2\=#'d1e4761) } >> %63
  << { r8 < \tweak Stem.direction #DOWN aes ces' f' >8[\staccato < \tweak Stem.direction #DOWN aes ces' f' >8\staccato < \tweak Stem.direction #DOWN aes ces' f' >8]\staccato } >> %64
  << { R4*2 } >> %65
  << { s2 } \\ { \tweak Stem.direction #DOWN des2\tenuto^~ } >> %66
  << { \tweak staff-position #-7 r8 < \tweak Stem.direction #DOWN bes des' ges' >8[\staccato < \tweak Stem.direction #DOWN bes des' ges' >8\staccato < \tweak Stem.direction #DOWN bes des' ges' >8]\staccato } \\ { < \tweak Stem.direction #UP ges, des >2 } >> %67
  \tag #'firstEdition { \break }
  << { r8 < \tweak Stem.direction #DOWN bes des' ges' >8[\staccato < \tweak Stem.direction #DOWN bes des' ges' >8\staccato < \tweak Stem.direction #DOWN bes des' ges' >8]\staccato } >> %68
  << { r4 \tweak Stem.direction #DOWN a!4\tenuto^\=#'d1e5418( } >> %69
  << { \tweak Stem.direction #DOWN f'8 \tweak Stem.direction #DOWN aes'!4\accent \tweak Stem.direction #DOWN ges'8\=#'d1e5418) } >> %70
  << { r8 \tweak Stem.direction #UP f'8[_\=#'d1e5527( \tweak Stem.direction #UP ees'8 \tweak Stem.direction #UP des'8] } \\ { r8 < \tweak Stem.direction #DOWN aes ces' >4. } \\ { \tweak Stem.direction #DOWN des2 } >> %71
  << { \tweak Stem.direction #UP ces'4 \tweak extra-offset #'(0 . 2.5) r4 } \\ { \tweak Stem.direction #DOWN ges8[ \tweak Stem.direction #DOWN f8 \tweak Stem.direction #DOWN ees8 \tweak Stem.direction #DOWN des8]\=#'d1e5527)_~ } >> %72
  \tag #'firstEdition { \break }
  << { \tweak Stem.direction #UP des8 \tweak Stem.direction #UP des4 \tweak Stem.direction #UP des8^~ } \\ { \tweak Stem.direction #DOWN ges,2_\=#'d1e5643(_\=#'d1e5645( } >> %73
  << { \tweak Stem.direction #UP des8 \tweak Stem.direction #UP des4. } \\ { \tweak Stem.direction #DOWN g,!2 } >> %74
  << { < \tweak Stem.direction #UP des aes,\=#'d1e5643)\=#'d1e5645) >2 } \\ { r8 < \tweak Stem.direction #DOWN aes ces' ges'! >8[\staccato < \tweak Stem.direction #DOWN aes ces' f' >8\staccato < \tweak Stem.direction #DOWN aes ces' ees' >8]\staccato } >> %75
  << { r8 \tweak Stem.direction #DOWN ges8[^\=#'d1e5881( \tweak Stem.direction #DOWN f8 \tweak Stem.direction #DOWN ees8]^~ } >> %76
  << { \tweak Stem.direction #DOWN ees4 \tweak Stem.direction #UP c!4 } >> %77
  \tag #'firstEdition { \break }
  \tag #'firstEdition { \pageBreak } %27
  << { < \tweak Stem.direction #UP des\=#'d1e5881) ges, >2 } \\ { r8 < \tweak Stem.direction #DOWN bes des' ges' >8[\staccato < \tweak Stem.direction #DOWN bes des' f' >8\staccato < \tweak Stem.direction #DOWN bes des' ees' >8]\staccato } >> %78
  << { r4 \set Staff.clefGlyph = #"clefs.G" \set Staff.clefPosition = #-2 \set Staff.clefTransposition = #0 \set Staff.middleCPosition = #-6 \set Staff.middleCClefPosition = #-6 \tweak Stem.direction #UP des'4\tenuto^\=#'d1e6104( } >> %79
  << { \tweak Stem.direction #UP a'!8\staccato \tweak Stem.direction #DOWN ces''4\accent \tweak Stem.direction #DOWN bes'8\=#'d1e6104) } >> %80
  \set Staff.clefGlyph = #"clefs.F" \set Staff.clefPosition = #2 \set Staff.clefTransposition = #0 \set Staff.middleCPosition = #6 \set Staff.middleCClefPosition = #6 << { r8 < \tweak Stem.direction #UP ges aes! ces' ees' >4. } \\ { \tweak Stem.direction #DOWN ces2 } >> %81
  << { \tweak Stem.direction #UP ees'8[ \tweak Stem.direction #UP des'8] \tweak TupletNumber.text #tuplet-number::calc-denominator-text \tweak TupletNumber.direction #UP \tuplet 3/2 { \tweak Stem.direction #UP ces'8[ \tweak Stem.direction #UP bes8 \tweak Stem.direction #UP aes8] } } >> %82
  \tag #'firstEdition { \break }
  << { \tweak Stem.direction #UP bes,16[_\=#'d1e6307(_\=#'d1e6309( \tweak Stem.direction #UP des8\=#'d1e6307) \tweak Stem.direction #UP ces16] \tweak Stem.direction #UP des,4_~ } >> %83
  << { \tweak Stem.direction #UP des,16[_\=#'d1e6365( \tweak Stem.direction #UP ees,8 \tweak Stem.direction #UP f,16] \tweak Stem.direction #UP ees,8[\=#'d1e6365) \tweak Stem.direction #UP des,8]\=#'d1e6309)_~ } >> %84
  << { \tweak Stem.direction #UP des,2_~ } >> %85
  << { \tweak Stem.direction #UP des,2 } >> %86
  << { \tweak Stem.direction #UP bes,16[_\=#'d1e6534( \tweak Stem.direction #UP des8 \tweak Stem.direction #UP bes,16] \tweak Stem.direction #UP des,16[ \tweak Stem.direction #UP ees,8 \tweak Stem.direction #UP f,16] } >> %87
  \tag #'firstEdition { \break }
  << { \tweak Stem.direction #UP ees,8[ \tweak Stem.direction #UP des,8]_~ \tweak Stem.direction #UP des,4_~ } >> %88
  << { \tweak Stem.direction #UP des,2\=#'d1e6534) } >> \bar "||" %89
  \key ees\major
  << { R4*2 } >> %90
  << { R4*2 } >> %91
  \tag #'firstEdition { \break }
  << { < \tweak Stem.direction #DOWN ees, bes, >8[\staccato < \tweak Stem.direction #DOWN f g >8]\staccato < \tweak Stem.direction #DOWN ees, bes, >8[\staccato < \tweak Stem.direction #DOWN f g >8]\staccato } >> %92
  << { < \tweak Stem.direction #DOWN ees, bes, >8[\staccato < \tweak Stem.direction #DOWN f g >8]\staccato < \tweak Stem.direction #DOWN ees, bes, >8[\staccato < \tweak Stem.direction #DOWN f g >8]\staccato } >> %93
  << { < \tweak Stem.direction #DOWN ees, bes, >8[\staccato < \tweak Stem.direction #DOWN ees f >8]\staccato < \tweak Stem.direction #DOWN ees, bes, >8[\staccato < \tweak Stem.direction #DOWN ees f >8]\staccato } >> %94
  << { < \tweak Stem.direction #DOWN ees, bes, >8[\staccato < \tweak Stem.direction #DOWN ees f >8]\staccato < \tweak Stem.direction #DOWN ees, bes, >8[\staccato < \tweak Stem.direction #DOWN ees f >8]\staccato } >> %95
  << { \tweak Stem.direction #UP bes,16[_\=#'d1e7092( \tweak Stem.direction #UP g,8\=#'d1e7092) \tweak Stem.direction #UP f,16]\staccato \tweak Stem.direction #UP ees,8[\staccato \tweak Stem.direction #UP d,8]\staccato } >> %96
  \tag #'firstEdition { \break }
  << { \tweak Stem.direction #UP c,8[\staccato \tweak Stem.direction #UP g,,8\staccato\accent \tweak Stem.direction #UP c,8\staccato\accent \tweak Stem.direction #UP d,8]\staccato\accent } >> %97
  << { < \tweak Stem.direction #DOWN ees, bes, >8[\staccato < \tweak Stem.direction #DOWN f aes >8]\staccato < \tweak Stem.direction #DOWN ees, bes, >8[\staccato < \tweak Stem.direction #DOWN f aes >8]\staccato } >> %98
  << { < \tweak Stem.direction #DOWN ees, bes, >8[\staccato < \tweak Stem.direction #DOWN f aes >8]\staccato < \tweak Stem.direction #DOWN ees, bes, >8[\staccato < \tweak Stem.direction #DOWN f aes >8]\staccato } >> %99
  << { < \tweak Stem.direction #UP ees, bes, >8[\staccato < \tweak Stem.direction #UP f g >8]\staccato < \tweak Stem.direction #UP ees, bes, >8[\staccato < \tweak Stem.direction #UP f g >8]\staccato } >> %100
  << { < \tweak Stem.direction #UP ees, bes, >8[\staccato < \tweak Stem.direction #UP f g >8]\staccato < \tweak Stem.direction #UP ees, bes, >8[ < \tweak Stem.direction #UP f g >8]\staccato } >> %101
  \tag #'firstEdition { \break }
  \tag #'firstEdition { \pageBreak } %28
  << { < \tweak Stem.direction #UP ges,! des! >8[\staccato < \tweak Stem.direction #UP des ges! aes >8]\staccato < \tweak Stem.direction #UP ges, des >8[\staccato < \tweak Stem.direction #UP des ges a! >8]\staccato } >> %102
  << { < \tweak Stem.direction #UP ges,! des! >8[\staccato < \tweak Stem.direction #UP des ges! bes >8]\staccato < \tweak Stem.direction #UP ges, des >8[\staccato < \tweak Stem.direction #UP des ges ces'! >8]\staccato } >> %103
  << { r8 < \tweak Stem.direction #UP des'! e'! >8 < \tweak Stem.direction #UP c' ees'! >8[\accent < \tweak Stem.direction #UP f a! ees' >8]\staccato } >> %104
  << { < \tweak Stem.direction #UP bes,_\=#'d1e7761( f bes^\=#'d1e7759( >4\marcato\staccato < \tweak Stem.direction #UP bes,,\=#'d1e7761) bes,\=#'d1e7759) >8\marcato\staccato r8 } >> %105
  \set Staff.clefGlyph = #"clefs.G" \set Staff.clefPosition = #-2 \set Staff.clefTransposition = #0 \set Staff.middleCPosition = #-6 \set Staff.middleCClefPosition = #-6 << { < \tweak Stem.direction #UP aes! bes >8[\staccato < \tweak Stem.direction #UP aes' bes' >8]\staccato < \tweak Stem.direction #UP aes bes >8[\staccato < \tweak Stem.direction #UP aes' bes' >8]\staccato } >> %106
  << { < \tweak Stem.direction #UP aes bes >8[\staccato < \tweak Stem.direction #UP aes' bes' >8]\staccato < \tweak Stem.direction #UP aes bes >8[\staccato < \tweak Stem.direction #UP aes' bes' >8]\staccato } >> %107
  \tag #'firstEdition { \break }
  << { < \tweak Stem.direction #UP g bes >8[\staccato < \tweak Stem.direction #UP g' bes' >8]\staccato < \tweak Stem.direction #UP g bes >8[\staccato < \tweak Stem.direction #UP g' bes' >8]\staccato } >> %108
  << { < \tweak Stem.direction #UP g bes >8[\staccato < \tweak Stem.direction #UP g' bes' >8]\staccato < \tweak Stem.direction #UP g bes >8[_\=#'d1e8129( \tweak Stem.direction #UP ees'8]\=#'d1e8129)\staccato^\accent } >> %109
  \set Staff.clefGlyph = #"clefs.F" \set Staff.clefPosition = #2 \set Staff.clefTransposition = #0 \set Staff.middleCPosition = #6 \set Staff.middleCClefPosition = #6 << { \tweak Stem.direction #UP b,!16[_\=#'d1e8207( \tweak Stem.direction #UP cis!8\=#'d1e8207) \tweak Stem.direction #UP dis!16]\staccato \tweak Stem.direction #UP cis8[\staccato \tweak Stem.direction #UP b,8]\staccato } >> %110
  << { \tweak Stem.direction #UP bes,!16[_\=#'d1e8270( \tweak Stem.direction #UP c!8\=#'d1e8270) \tweak Stem.direction #UP d!16]\staccato \tweak Stem.direction #UP c8[\staccato \tweak Stem.direction #UP bes,8]\staccato } >> %111
  << { \tweak Stem.direction #UP bes,16[_\=#'d1e8323( \tweak Stem.direction #UP c8\=#'d1e8323) \tweak Stem.direction #UP d16]\staccato \tweak Stem.direction #UP c8[\staccato \tweak Stem.direction #UP bes,8]\staccato } >> %112
  \tag #'firstEdition { \break }
  << { r16 < \tweak Stem.direction #UP bes,, bes, >16[_\=#'d1e8405( \tweak Stem.direction #UP c,16 \tweak Stem.direction #UP d,16] \tweak Stem.direction #UP c,8[\=#'d1e8405)\staccato < \tweak Stem.direction #UP bes,,, bes,, >8]\marcato\staccato^\sff } >> %113
  \set Staff.clefGlyph = #"clefs.G" \set Staff.clefPosition = #-2 \set Staff.clefTransposition = #0 \set Staff.middleCPosition = #-6 \set Staff.middleCClefPosition = #-6 << { < \tweak Stem.direction #UP aes bes >8[\staccato < \tweak Stem.direction #UP aes' bes' >8]\staccato < \tweak Stem.direction #UP aes bes >8[\staccato < \tweak Stem.direction #UP aes' bes' >8]\staccato } >> %114
  << { < \tweak Stem.direction #UP aes bes >8[\staccato < \tweak Stem.direction #UP aes' bes' >8] < \tweak Stem.direction #UP aes bes >8[\staccato < \tweak Stem.direction #UP aes' bes' >8]\staccato } >> %115
  << { < \tweak Stem.direction #UP g bes >8[\staccato < \tweak Stem.direction #UP g' bes' >8]\staccato < \tweak Stem.direction #UP g bes >8[\staccato < \tweak Stem.direction #UP g' bes' >8]\staccato } >> %116
  << { < \tweak Stem.direction #UP g bes >8[\staccato < \tweak Stem.direction #UP g' bes' >8]\staccato < \tweak Stem.direction #UP g bes >8[_\=#'d1e8779( \tweak Stem.direction #UP ees'8]\=#'d1e8779)\staccato^\accent } >> %117
  \tag #'firstEdition { \break }
  << { \tweak Stem.direction #UP bes'16[\accent \tweak Stem.direction #UP aes'8 \tweak Stem.direction #UP bes'16]\staccato \tweak Stem.direction #UP f'8[\accent \tweak Stem.direction #UP bes'8]\accent } \\ { < \tweak Stem.direction #DOWN ces'!_~ ees'_~ >2 } >> %118
  << { \tweak Stem.direction #UP aes'16[\accent^\=#'d1e8939(^\=#'d1e8941( \tweak Stem.direction #UP f'8\=#'d1e8939) \tweak Stem.direction #UP ees'16] \tweak Stem.direction #UP ces'4\=#'d1e8941)\marcato } \\ { < \tweak Stem.direction #DOWN ces'! ees' >4 r4 } >> %119
  \set Staff.clefGlyph = #"clefs.F" \set Staff.clefPosition = #2 \set Staff.clefTransposition = #0 \set Staff.middleCPosition = #6 \set Staff.middleCClefPosition = #6 << { r16 \tweak Stem.direction #DOWN aes16[^\=#'d1e9029( \tweak Stem.direction #DOWN f16 \tweak Stem.direction #DOWN ees16]\=#'d1e9029) \tweak Stem.direction #UP ces!8[\staccato < \tweak Stem.direction #UP bes,, bes, >8]\staccato_\marcato } >> %120
  << { r8 < \tweak Stem.direction #UP f g >8[\staccato\tenuto < \tweak Stem.direction #UP ees, bes, >8\staccato < \tweak Stem.direction #UP f g >8]\staccato\tenuto } >> %121
  << { < \tweak Stem.direction #UP ees, bes, >4\staccato r4 } >> %122
  << { r8 < \tweak Stem.direction #UP f g >8[\staccato\tenuto < \tweak Stem.direction #UP ees, bes, >8\staccato < \tweak Stem.direction #UP f g >8]\staccato\tenuto } >> %123
  \tag #'firstEdition { \break }
  << { < \tweak Stem.direction #UP ees, bes, >4\staccato r4 } >> %124
  << { r8 < \tweak Stem.direction #UP f g >8[\staccato\tenuto < \tweak Stem.direction #UP ees, bes, >8\staccato < \tweak Stem.direction #UP f g >8]\staccato\tenuto } >> %125
  << { r4 \tweak Stem.direction #UP ces,!8[_\marcato_\=#'d1e9349( \tweak Stem.direction #UP bes,,32 \tweak Stem.direction #UP aes,,32 \tweak Stem.direction #UP g,,32 \tweak Stem.direction #UP f,,32] } >> %126
  << { < \tweak Stem.direction #UP ees,, ees, >8\=#'d1e9349)\marcato\staccato r8 r4 } >> %127
  << { < \tweak Stem.direction #UP ees,, ees, >8\marcato\staccato r8 r4 } >> \bar "|." %128
}


\score { <<
\removeWithTag #'( firstEdition )
\new StaffGroup <<
 \set StaffGroup.systemStartDelimiter = #'SystemStartBrace
 \new Staff = "staff 1" {
 \override Staff.StaffSymbol.line-count = #5
    \set Staff.autoBeaming = ##f 
    \set tieWaitForNote = ##t
 \key ees\major
\time 2/4 \override Staff.BarLine.allow-span-bar = ##f \mdivA_staffA }
 \new Staff = "staff 2" {
 \override Staff.StaffSymbol.line-count = #5
    \set Staff.autoBeaming = ##f 
    \set tieWaitForNote = ##t
 \key ees\major
\time 2/4 \override Staff.BarLine.allow-span-bar = ##f \mdivA_staffB }
>>
>>
\layout {
  #(layout-set-staff-size 16)
 \context { \Score \override StaffGrouper.staff-staff-spacing.minimum-distance = #10 }
}
\midi { }
}


#(set-global-staff-size 16)
