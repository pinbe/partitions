\version "2.22.1"

\header {
        title = "Partita II BWV 1004"
        subtitle = "Sechs Sonaten für Violine"
        piece = "5. Chaconne"
        mutopiatitle = "BWV 1004 Chaconne"
        composer = "Johann Sebastian Bach (1685-1750)"
        mutopiacomposer = "BachJS"
        opus = "BWV 1004"
        date = "1720"
        mutopiainstrument = "Guitar"
        style = "Baroque"
        %source = "Bach-Gesellschaft Edition 1879 Band 27.1"
        %maintainer = "Hajo Dezelski"
        %maintainerEmail = "dl1sdz (at) gmail.com"

        license = "Creative Commons Attribution-ShareAlike 3.0"
        %footer = "Mutopia-2019/05/30-1426"
        %copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url #"http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white "ǀ" \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {"ǀ" "ǀ"}}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " ©" 2019 ""by " \maintainer " — " \footer}\concat {\concat {\abs-fontsize #8 { \with-url #"http://creativecommons.org/licenses/by-sa/3.0/" "Creative Commons Attribution ShareAlike 3.0 (Unported) License" " — free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white "ǀ" }}}
        tagline = ##f
}


fingeringGlobal = {
  \override Fingering.staff-padding = #'()
  \override Fingering.avoid-slur = ##t
  \override Fingering.font-size = #-5

  \override StringNumber.add-stem-support = ##f
  \override StringNumber.staff-padding = #'()
  \override StringNumber.script-priority = 110 %
}

fingeringVoiceA = {
  \fingeringGlobal
  \override Fingering.add-stem-support = #only-if-beamed
  \set fingeringOrientations = #'(left)
}

fingeringVoiceB = {
  \fingeringGlobal
  %\override Fingering.color = red
  \override Fingering.extra-offset = #'(-1.5 . -1.5)
  \override Fingering.add-stem-support = ##f
}

fingeringVoiceC = {
  \fingeringGlobal
  %\override Fingering.color = green
}

fingeringVoiceD = {
  \fingeringGlobal
  \override Fingering.add-stem-support = #only-if-beamed
  \set fingeringOrientations = #'(left)  
}

\parallelMusic voiceA, voiceB, voiceC, voiceD {
  % 1
  \fingeringVoiceA
  a4.-1 a8 |

  \fingeringVoiceB s2 |
  \fingeringVoiceC s2 |

  \fingeringVoiceD
  <d-4 f-2>2 |

  % 2
  e'4-0 e4. e8 |
  s2. |
  s2. |
  <d-3 g-4 bes-1>4 \once \set fingeringOrientations = #'(right) <cis-3 g'-4 a-1>2 |

  % 3
  f4-1 d4.-4 c8\2-4 |
  s2. |
  s2. |
  <d a'-2 d-4>4 <bes-1 f'-3>2 |

  % 4
  bes4-1 a-1 g16-0 f-2_( e-1) f  |
  s2. |
  s2. |
  <g-3 g'-4>4 <a f'-2> cis-3 |

  % 5
  g16-4 [ _( e-1 )  f-2 _( d ) ] a'4. a8 |
  s2. |
  s2. |
  <d, a'>4 <d' f>2 |

  % 6
  e'4 e4. e8 |
  s2. |
  s2. |
  <d g bes>4 <cis g' a>2 |

  % 7
  f4 d4. d8\3-4 |
  s2. |
  s2. |
  <d a' d>4 <bes f'>2 |

  % 8
  bes'4-2 a8.-4 ^\markup {"II"}  [ g32-4 _( f-1) ] g8. [ e16-0 ] |
  s2. |
  s2. |
  <g e'-3 d'-4>4-1 <a e' cis'>2 |

  % 9
  <d-4 f-1>8. s16 s2 |
  s2. |
  \set fingeringOrientations = #'(left)
  <d-0>8. ^[ e16-2 ] f8.-3 ^[ g32-0 _( a-2) ] bes8.-3 ^[ a16 ] |
  d,8. s16 s2|

  % 10
  <b-0 e-0>4 <a-1 e'-0>2 |
  s2. |
  \stemUp \shiftOn <g-4>8. f16-2
  \override Fingering.extra-offset = #'()
  g8.\tweak extra-offset #'(0.5 . 0)-4 bes16-2 a8.-1 g16-0
  \override Fingering.extra-offset = #'(-1.25 . 1.5) |
  d'4-3 cis2-3 |

  % 11
  e'4 <d-4 f,-3>8. <f-1 a,-2>16  <e-0 g,-0>8. <d-2 f,-1>16 |
  s2. |
  f8.\tweak extra-offset #'(0.9 . 0.8)-2 e16-2 s2 |
  <d-4 a'-1>4 bes4..-1 g16-4 |

  % 12
  \override TextSpanner.bound-details.left.text = "II"
  d4-2 cis4.. \startTextSpan s16 \stopTextSpan |
  e8.-1 ^[ d16-0 ]
  %\override Fingering.side-axis = #X
  %\override Fingering.direction = #LEFT
  %\override Fingering.extra-offset = #'()
  %\override Fingering.self-alignment-X = -1
  %\override Fingering.self-alignment-Y = 0
  \shiftOn
  e8. ^[ g16-4 ] f8.-2 <e cis' a'-4>16 |
  s2.|
  a4 a4.. a16 |

  % 13
  <f-1 d-4>8 s8  s2 |
  s2. |
  \shiftOn d8.\tweak Fingering.extra-offset #'(-2 . 1.5)-0 [ e16 ] f8. [g32 a ]( bes8.) [ a16 ] |
  d,8. s16 s2 |

  % 14
  e4 e2 |
  \shiftOff bes'4 a2 |
  \shiftOn g8. f16 g8. bes16 a8. g16 |
  d'4 cis2 |

  % 15
  e4  <d f,>8. <f a,>16 <e g,>8. <cis-4 e,-3>16 ] |
  a4 s2 |
  f8. [ e16 ] s2 | % f8. [ a16 ] g8. [ e16-3 ] |
  d4 bes4.. bes16-1 |

  % 16
  <d-4 f,-3>8. <e-4 g,-3>16 d4-4 ( cis8.)\trill  d16 |
  s4 e2-1 |
  s2. |
  a8. [ g16-2 ] a2 |

  % 17
  d8.-4 [ e16\2-3 ] f8.-4 [ g32-1 a-3 ] bes8.-4 [ f16-2 ] |
  d4 s4 s8. \once \stemDown d'16-3 |
  s2. |
  d,4 s2 |

  % 18
  e8.-2 [ bes'16-4 ] a8.-4 [ g16-1 ] a8. [ fis16-2 ]  |
  s2. |
  s2. |
  cis''4-3 c-3 r8. c16-1 |

  % 19
  g8.-4 [ f16-1 ] e8.-0 [ d32-4_( cis-2) ] d8. [ e16 ] |
  s2. |
  s2. |
  b4 bes4-3 r8. bes16-3 |

  % 20
  f8.-1 [ g16-4 ] e8.-0 [ f16-1 ] g8.-1 [ e16-0 ] |
  s2. |
  s2. |
  a8.-2 [ b16-0 ] cis8.-2 [ d16-3 ] e8.-3 [ cis16-2 ] |

  % 21
  f8.-1 [ d32\2-1_( e-3) ] f8.-4 [ g32 a  ] bes8. [ f16 ] |
  \stemDown d4-3 s4 s8. d16-3 |
  s2. |
  d,4 s2 |

  % 22
  e8. [ bes'16 ] a8. [ g16 ] a8. [ fis16 ] |
  s2. |
  s2. |
  cis'4 c r8. c16 |

  % 23
  g8. f16 e8. d32 _( cis) d8. <e-0 d-4 gis,-2>16 |
  s2. |
  b'4 bes s4  |
  s2 s8. bes,16-1 |

  % 24
  f8.-1 [ g16-4 ] d8. [ cis32-2_( b-0) ] cis8. [ g16-0 ] |
  s4 e2 |
  s2. |
  <a a'-2 d-4>4 a s8. a16 |

  % 25
  f8-1 [ f'\2-4 e-3 d-1 cis-1 d-2 ] |
  s2. |
  s2. |
  d,4 s2 |

  % 26
  g,8-0 [ a16-1 _( bes-2 ) ] cis,8-3 [ bes'-2 a-1 g-0 ] |
  s2. |
  s2. |
  d'4 cis2 |

  % 27
  f8-2 [ g16-0 _( a ) ] bes,8-1 [ d g d'16-4 _( cis-2 ) ] |
  s2. |
  s2. |
  d4-4 bes2-1 |

  % 28
  d8 [ f,8-1 ] e16-1 _( [ f-2) g-0 bes-3 _( ] a-1) [ g f e ] |
  s2. |
  s2. |
  s8 g8-3 a2 |

  % 29
  f16-3 a-2 d-4 f-1 f _( e-0) g-4 _( f) e-0 d-2 cis\glide-1  d-1 |
  s2. |
  s2. |
  d,4 d'2 |

  % 30
  g,16-4 bes-1 fis-2 g-0  cis,-3  e-1 g-0 bes-2 _( a-1) g-0 e'-0 g,-0 |
  s2. |
  s2. |
  d4-3 cis2 |

  % 31
  f16-2 cis-3 d-0 a-0 bes-1 d-0 g-0 a-2 bes-3 ees-4 cis-2 _( d-4) |
  s2. |
  s2. |
  r4 bes2 |

  % 32
  gis,16-1 b-0 d-4 f-1 e g-4 cis,-2 d-4 a, e'-1 d'-3 _( cis-2) |
  s2. |
  s2. |
  b4-2 bes-1 a |

  % 33
  d8\glide-3  f-\2-3 bes-4 a-2 gis-1 d, |
  s2. |
  s2. |
  d,4 r r8 d'\glide-2 |

  % 34
  cis8 e'\2-3 a-4 g\glide-1 fis-1 c, |
  s2. |
  s2. |
  cis4-2 r r8 c\glide-2 |

  % 35
  b8 d'-3 g-4 f-1 e-0 bes, |
  s2. |
  s2. |
  b4-2 r r8 bes-2 |

  % 36
  a16 f''-1 _( e-0) d-3 cis8-2 a-1 e'-0 g,-0 |
  s2. |
  s2. |
  a4 a2 |

  % 37
  f16-2 d-0 _( f) a-1 d\3-3 f\2-2 bes\glide-1 a-1 gis\2-3 b-1 gis e-0 |
  s2. |
  s2. |
  d,4 d'2 |

  % 38
  cis,16 e'-3 a-4 g\glide-1 fis-1 a-4 fis-1 d-3 a-1 fis-3 d-4 c\glide-2 |
  s2. |
  s2. |
  cis4\glide-2 c2-2 |

  % 39
  b16-2 d-0 g-0 fis-4 g-0 ees'-4 _( d-3) cis-2 bes'-3 _( a-2) gis-1 _( a) |
  s2. |
  s2. |
  b4 bes4-1 r4 |

  % 40
  f16-1 _( e-0) d-4 _( c-1) bes-4 _( a-2) gis-1 _( a-2) cis,-3 g'-4 _( f-2) e-1 |
  s2. |
  s2. |
  a4 a cis-3 |

  % 41
  f16-2 _( d-0) e-1 _( f-2) g-0 _( a-1) b-0 _( cis-1) d-3 f,-2 _( e-1) d-0 |
  s2. |
  s2. |
  d,2 r4 |

  % 42
  \override TextSpanner.bound-details.left.text = "II"
  a16 e' \startTextSpan d'-2 cis \stopTextSpan d,-3 fis-2 a-1 c-4 c bes-1 _( c-4) a\glide-1 |
  s2. |
  s2. |
  a'4 d2 |

  % 43
  bes16-1 g-4 _( f-1)  ees\5-4 d-3 _( c\glide-1) bes-1 a-0 g-3 g'-0 ees'-2 d\glide-1 |
  s2. |
  s2. |
  g,2-3 g4 |

  % 44
  cis16-1 e-0 a,-2 g-0 f-3 d'-4 e,-1 d-0 a e'-1 d'-4 cis-2 |
  s2. |
  s2. |
  a4 a a |

  % 45
  g'16-4 _( e-0) f-1 cis-2 d-4 _( c-1) bes-4 _( a-2) g-0 f-2 _( e-1) d-0 |
  s2. |
  s2. |
  d,4 d'4 r4 |

  % 46
  cis16-3  bes'-2 _( a-1) g-0 fis-3 ( d-0) a'-1 d,-0 c-3 bes-1 _( c) a |
  s2. |
  s2. |
  cis4 d4-4 r4 |

  % 47
  bes16-1 g-4 a-0 _( bes-1) c-2 _( d-4) e-1 _( fis-3) g-0 _( a-1) bes-2 _( a) |
  s2. |
  s2. |
  s2. |

  % 48
  gis16-1 _( a-2) e-1 _( f-2) g-0  cis,-1 _( d-2) gis,-3 a-0 f'-2 _( e-1) cis-3 |
  s2. |
  s2. |
  s2. |

  % 49
  d16-0 d'-4 a-2 g-0 f-3 e-2 d-0 c-3 bes-1 d'-4 g,-0 f-4 |
  s2. |
  s2. |
  d,2 bes'4 |

  % 50
  e16-2 c'-1 g-0 f-4 e-2 d-0 c-3 bes-1 a c'-2 f,-4 es-2 |
  s2. |
  s2. |
  c2-3 a4-0 |

  % 51
  d16-0 bes'-4 f-3 ees-1 d-0 c-3 bes-1 a-0 g bes'-2 e,-1 d-0 |
  s2. |
  s2. |
  bes2-1 g4-4 |

  % 52
  \override TextSpanner.bound-details.left.text = "II"
  cis16-3 a-0 _( cis) e \startTextSpan a e a cis \stopTextSpan e-0 g,-0 _( a-2) e-1 |
  s2. |
  s2. |
  r2 a4 |

  % 53
  f16-3 d-0 _( f) a-2 d-4 a d f-1 bes,^\markup{"III"} g' _( a-3) bes-4 |
  s2. |
  s2. |
  d,2 r4 |

  % 54
  e,16-0 c,-3 e-2 g-0 c-1 g c e a,-2 f'-1 _( g-3) a\glide-4 |
  s2. |
  s2. |
  s2. |

  % 55
  d,16-4 bes,-1 d-0 f-2 bes-3 f bes d-4 g,-0 e'-0 _( f-1) g-4 |
  s2. |
  s2. |
  s2. |

  % 56
  cis,16\glide-2 a-1 cis e-0 a\2-2 e\3-1 a cis-1 e-4 g,\3-3 f-1 e-0 |
  s2. |
  s2. |
  a'2 a4 |

  % 57
  f4-1 r8 f8 g4-4 |
  \override Fingering.direction = -1
  \override Fingering.extra-offset = #'()
  d8-4 [ a8-2]
  \override Stem.details.beamed-lengths = #'(4.5)
  d,8-0 [ d'8] bes16-3 a-2 ^( bes) g-0 |
  s2. |
  d,4 \shiftOn s2 |

  % 58
  e4-0 s8 e8 f4 |
  c8-1 g8-0 c,8-3 c'8 a16-2 g-0 ^( a) f-3 |
  s2. |
  s2. |

  % 59
  d4-4 r8 d8 e4-0 |
  bes8-3 [ f8-2] bes,8-1 [ bes'8 ] g16-4 f-2 ^( g-4) e-1
  \revert Stem.details.beamed-legths
  |
  s2. |
  s2. |

  % 60
  \override TextSpanner.bound-details.left.text = "II"
  r4. a8-4 a16-4 _( \startTextSpan g-2 ) a-4 \stopTextSpan e-0 |
  \stemUp a8
  \override Fingering.direction = 1
  d-3 \stemNeutral
  \override Fingering.direction = -1
  \override Fingering.add-stem-support = ##f
  \override TextSpanner.bound-details.left.text = "II"
  d16-2 \startTextSpan ^( cis) \stopTextSpan d-2 ^( b) cis4 |
  \override TextSpanner.bound-details.left.text = "II"
  \override Fingering.extra-offset = #'()
  \override Fingering.add-stem-support = ##f
  \stemDown \set fingeringOrientations = #'(left) <f-2>16 \startTextSpan ^( e) \stopTextSpan f-2 ^( d-0) e4 e |
  a'4  a a |

  % 61
  f8 s8 d8 s8 s4 |
  \stemUp \shiftOn
  \override Fingering.direction = -1
  d16-4 cis-2 _( d) a-2
  \shiftOn f-3 e-2 _( f) d-0 bes_\6-3 g'-0 d'_\3-2 bes'-1 \stemNeutral |
  d8 s8 s2 |
  d,8 r8 s2 |

  % 62
  e8 s8 c8-1 s8 s4 |
  \stemDown c,16-1 b-0 ^( c) g-0 e-2 d-0 ^( e) c-3
  \override Stem.details.beamed-lengths = #'(6.0) a-0 f'-1 c'-3 a'-4 |
  s2. |
  s2. |

  % 63
  d8-4 s8 bes8 s8 g,16-4 e'-1 b'-0 g'-2 |
  \override TextSpanner.bound-details.left.text = "III"
  \override Stem.details.beamed-lengths = #'(4.5)
  f,16-3 ees-1 ^( f-3) d-0 d-4 \startTextSpan c ^( d-4) \stopTextSpan bes-1
  \revert Stem.details.beamed-lengths
  s4 |
  s2. |
  s2. |

  % 64
  a,,16 e'-1 cis'-2 g'-4 a,, f'-3 d'-4 f-1 a,, g'-0 cis-2 e-0 |
  s2. |
  s2. |
  s2. |

  % 65
  d16-4 a32-2 _( g-0) f16-3 e-2 d-0 c-3 _( bes-1) a-0 bes-1 d'32\3-4 _( c\glide-2) bes-2 _( a -1) g\4-4 _( f-2) ] |
  s2. |
  s2. |
  d4 s2 |

  % 66
  e16-1 [ g32-4 _(f-2) e16-1 d-0 ] c-3 [ bes-1 _( a-0) g-4 ] a [ c'32\3-4 _( bes-2) a-1 _( g-0) f-3 _( ees-1)] |
  s2. |
  s2. |
  s2.  |

  % 67
  d16-0 [ f32-3 _( ees-1) d16 c ] bes-1 [ d32-4 _( c-2) bes16 a ] g-4 [ bes'32-2 _( a-1) g-4 _( f-2) e-1 _( d) ] |
  s2. |
  s2. |
  s2. |

  % 68
  cis32-3 [ _( b-1) a-0 _( b-1) cis-3 _( d-4) e-1 _( f-2)] g [ _( a) bes-2 _( a-1) g-4 _( f-2) e-1 _( d-0)] cis16-3 [ e'32-\2-4 _( d-2) cis-1 _( b-0) a-1 _( g-0)] |
  s2. |
  s2. |
  s2. |

  % 69
  f16-2 [ d32-0 _( e-1) f16 a\glide-1 ] f-2 [ d-4 f a ] bes32-1 [ _(c-3) d-1 _( e-3) f-2 _( g-4) a-1 _( bes-2) ] |
  s2. |
  s2. |
  d4 s2 |

  % 70
  e,16-0 [ c,32-2 _( d-4) e16-1 g-0 ] e [ c e g ] a32-2 [ _( bes-3) c-1 _( d\glide-3) e-3 _( f-4) g-1 _( a-3) ] |
  s2. |
  s2. |
  s2. |

  % 71
  d,16-1 [ bes,32-1 _( c-3) d16-0 f-3 ] d [ bes d f\5-4 ] g32\4-1 [ _( a-3) bes-4 c\3-1 d-3 e\2-1 _( f-2) g-4 ] |
  s2. |
  s2. |
  s2. |

  % 72
  cis,32\3-2 [ bes'-3 _( a-1) g-4 f-2 _( e-1) d\3-3 _( c-1) ] bes\3-2 [ _( a-1) g-4 _( f-2) e-1 _( d-0) cis-3 _( b-1) ] a-0 [ _( b-1) cis-3 _( d-4) e-1 _( f-2) g-4 _( e-1) ] |
  s2. |
  s2. |
  a'4 s2 |

  % 73
  f32-2 _( d-0) e-1 _( f-2) g-0 _( a-1) b-0 cis\glide-1 d-1 b-\3-2 _( cis-4) d-1 e-3 _( f-4) g-1 _( a-3)  bes16-4 d,,-3 c\glide-1 \trill bes-1 |
  s2. |
  s2. |
  d,4 s2 |

  % 74
  c32-2 _( d-4) e-1 _( fis-3) g-0 _( a-1) bes-2 _( c-4) d-2 a-1 _( bes-2) c-4 d-2 _( e-4) fis-1 _( g-2)  a16-4 c,,-3 bes-1 \trill a-0 |
  s2. |
  s2. |
  s2. |

  % 75
  bes32-1 d-0 e-2 _( fis-4) g-0 _( a-2) bes-3 c-1 d-3 g,-0 _( a-2) bes-3 c-1 _( d-3) e-0 fis\glide-1 g-1 _( a-3) bes-4 _( a-3) g-1 f-4 e-3 _( d-1) |
  s2. |
  s2. |
  s2. |

  % 76
  cis32\3-4 a'-3 _( g-1) f-4 e-3 _( d\glide-1) cis-1 _( b-0) a-1 _( b-3) cis-1 \glissando d-1 e-3 _( f-4) g-1 a-3 bes-4 _( g-1) e-0 cis-2 a-1 _( g-0) f-3 _( e-1) |
  s2. |
  s2. |
  s2. |

  % 77
  d16-0  a'-2 d-4 e-0 f-1 d bes-3 a-2 gis-1 b d-4 f-1 |
  s2. |
  s2. |
  d4 r d'-0 |

  % 78
  c,16 e-2 a-3 c-1 e-0 c a g-0 fis-3 a-1 c\glide-4\3 ees-4\2 |
  s2. |
  s2. |
  c4-4 r c-2 |

  % 79
  bes,16 d-0 g-0 bes-3 d-4 bes g-0 f-4 e-2 g-0 bes-4 cis-3 |
  s2. |
  s2. |
  bes4-1 r bes |

  % 80
  a,16 d-0 f-3 a-2 d-4 a f d a e'-1 g-0 cis-2 |
  s2. |
  s2. |
  a4 r a |

  % 81
  d,,16 bes'''-1 bes gis\2-4 gis f-1 f d\3-2 d b\4-4 gis\4-1 e\5-2 |
  s2. |
  s2. |
  d,2 r4 |

  % 82
  cis16 a''-2 a fis\2-4 fis ees-1 ees c\3-2 c a-4 fis-1 d-2 |
  s2. |
  s2. |
  cis'2-1 r4 |

  % 83
  b16 g''-2 g ees\2-3 ees cis-1 cis bes\3-2 bes g-4 e-1 cis-3 |
  s2. |
  s2. |
  b2-1 r4 |

  % 84
  a16-0 _(cis) cis e-1 e g32-4 _( f-2) g16 bes32 _( a-1) bes16 cis32 _( d) e16-0  g, |
  s2. |
  s2. |
  s2. |

  % 85
  f32-3 a-2 b-0 cis-2 d-4 _( cis) b a f'-1 _( e) d-3 cis-2 d e f-1 g\glide-3 a-3 _( g-1) f\2-4 e-0 bes'-4 _( a-3) g-1 f-4 |
  s2. |
  s2. |
  s2. |

  % 86
  c32\3-3 e-0 fis\2-4 gis-1 a-2 _( gis-1) fis-4 e-0 c'-2 _( b-1) a\2-4 gis-3 a-4 b\glide-1 c-2 d-1 e-3 _( d-1) c-4 b-3 f'-4 _( e-3) d-1 cis-4 |
  s2. |
  s2. |
  s2. |

  % 87
  d32-1 _( e-3) f-4 e d f e d f e d f e d f e d-1 g-4 f-2 e\glide-1 d-1 c-4\2 bes-2 a\glide-1 |
  s2. |
  s2. |
  s2. |

  % 88
  g32-1 a-3 bes-4 a g bes a g bes a g bes a g bes-4 a-3 g-1 f\3-3 e-2 d-1 cis\4-4 b-2 a-1 g-4 |
  s2. |
  s2. |
  s2. |

  % 89
  f32\5-2 d-0 \rightHandFinger #2 a''\2-4 \rightHandFinger #4 d,, \rightHandFinger #2 f32 \rightHandFinger #1 d \rightHandFinger #2 a'' \rightHandFinger #4 d,, \rightHandFinger #2
  f32 d a'' d,, f32 d a'' d,,
  f32 d a'' d,, f32 d a'' d,, |
  s2. |
  \once \override Arpeggio.positions = #'(-6 . -1.5)
  \arpeggioParenthesis
  \set strokeFingerOrientations = #'(left)
  d,4 \arpeggio \rightHandFinger #1 s2 |
  f'8 [ f] f [ f] f [ f] |

  % 90
  e32 d-0 g'-4 d, e32 d g' d,
  e32 d-0 g'-4 d, e32 d g' d,
  e32 cis'-2 g'-4 cis, e,32 cis' g' cis, |
  s2. |
  s2. |
  \override Fingering.add-stem-support = ##f
  \override Stem.details.beamed-lengths = #'(4.2)
  e8-2 [ e] e-3  [ e] e-3 [ e]|

  % 91
  d,32 d-0 f'-2 d, d d f' d, 
  d32 d f' d, d d f' d,
  d32 a'-3 f'-2 a, d a f' a, | 
  s2. |
  s2. |
  d8-1 [ d] d [ d] d-1 [ d] |

  % 92
  \override TextSpanner.bound-details.left.text = "V"
  g,32 \startTextSpan bes'-4 e bes g,32 a'-3 f'-2 a,
  \override TextSpanner.bound-details.left.text = "III"
  g,32 g' e' g, \stopTextSpan  g, \startTextSpan f' d' f, \stopTextSpan
  \override TextSpanner.bound-details.left.text = "II"
  a,32 \startTextSpan e' d'-2 e, a,32 e' cis' e, \stopTextSpan |
  s2. |
  s2. |
  g,8 [ g] g [ g-3] a [ a] |

  % 93
  \override TextSpanner.bound-details.left.text = "III"
  d,32 \startTextSpan f' d' f, d f d' f, \stopTextSpan \breathe
  a, f'-3 d'-4 f, a, f' d' f,
  bes, f'-3 d'-4 f, bes, f' d' f, |
  s2. |
  s2. |
  d,8 [ d'-4] a [ a] bes-1 [ bes] |

  % 94
  c32-2 fis-3 ees'-4 fis, c32 fis ees' fis,
  bes,32 fis' ees' fis, bes,32 fis' ees' fis,
  a,32 fis' ees' fis, a,32 fis' ees' fis, |
  s2. |
  \once \override Arpeggio.positions = #'(-6 . -3)
  \arpeggioParenthesis
  d4 \arpeggio \rightHandFinger #1 s2 |
  c8 [ c] bes-1 [ bes] a [ a] |

  % 95
  bes,32-1 g'-0 d'-4 g, bes, g' d' g,
  a,32 f'-1 d'-2 f, a, f' d' f,
  g,32-4 e'-1 d'-2 e, g, e' d' e, |
  s2. |
  \once \override Arpeggio.positions = #'(-6 . -3.5)
  \arpeggioParenthesis
  d4 \arpeggio \rightHandFinger #1 s2 |
  bes8 [ bes] a [ a] g [ g] |

  % 96
  a,32 f'-1 d'-2 f, a,32 f' d' f,
  \override TextSpanner.bound-details.left.text = "II"
  a,32 \startTextSpan e' d'-2 e, a,32 e' d' e,
  a,32 g'-4 cis g a,32 g' cis g \stopTextSpan |
  s2. |
  s2. |
  a8 [ a] a [ a] a [ a] |

  % 97
  \override TextSpanner.bound-details.left.text = "III"
  d,32 \startTextSpan f' d' f, d f d' f, \stopTextSpan \breathe
  d32 f-2 a-1 f d f a f
  \override TextSpanner.bound-details.left.text = "III"
  d32 \startTextSpan f bes f d f bes f \stopTextSpan |
  s2. |
  s2. |
  d,8 [ d'-4] d-4 [ d] d-3 [ d] |

  % 98
  d32 fis-2 c'-4 fis, d fis c' fis,
  d32 fis bes-1 fis d fis bes fis
  d32 fis-2 a-1 fis d fis a fis |
  s2. |
  s2. |
  d8-3 [ d] d [ d] d-3 [ d] |

  % 99
  d32 g-4 bes-1 g d g bes g
  \override TextSpanner.bound-details.left.text = "VI"
  e32 \startTextSpan cis' bes' cis, e, cis' bes' cis, \stopTextSpan
  f,32 d'\3-1 a'\2-4 d, f,32 d' a' d, |
  s2. |
  s2. |
  d8-3 [ d] e-2 [ e] f_\5-2 [ f] |

  % 100
  \override TextSpanner.bound-details.left.text = "V"
  g,32 \startTextSpan d'-3 g-4 d g, d' f-2 d
  a32 d-3 e d a d e d
  a,32 cis'-2 e cis a, cis' e cis \stopTextSpan |
  s2. |
  s2. |
  g8 [ g] a-4 [ a] a, [ a] |

  % 101
  d,32 d'\3-4 f\2-3 d d, d' f d \breathe
  d,32 a'\3-2 f'\1-1 a, d, a' f' a,
  d,32 bes'-4 f'-1 bes, d, bes' f' bes,  |
  s2. |
  s2. |
  d8 [ d] d [ d] d [ d] |

  % 102
  d,,32 c''\3-4 fis-1 c d, c' fis c
  d,32 bes'-2 fis'-1 bes, d,32 bes' fis' bes,
  d,32 a'-3 fis'-4 a, d,32 a' fis' a, |
  s2. |
  s2. |
  d,8 [ d'] d [ d] d [ d] |

  % 103
  d,,32 bes''-3 g'-4 bes, d, bes' g' bes,
  d,32 a'-2 f'-1 a, d, a' f' a,
  cis,32 g'-4 <a-1 e'-0> g cis, g' <a e'> g |
  s2. |
  s2. |
  d,8 [ d'] d [ d] cis-3 [ cis] |

  % 104
  \override TextSpanner.bound-details.left.text = "III"
  d,32 f' \startTextSpan f'-4 f, d-3 f f' f, \stopTextSpan
  \override TextSpanner.bound-details.left.text = "II"
  a,32 \startTextSpan e' cis' e, a, e' cis' e,
  a,32 e' cis' e, a, e' cis' e, \stopTextSpan |
  s2. |
  s2. |
  d,8 [ d'] a [ a] a [ a] |

  % 105
  \override TextSpanner.bound-details.left.text = "III"
  d,32 \startTextSpan f' d' f, d f d' f, \stopTextSpan \breathe
  d32\5-1 a'-3 f'\2-2 a, d, a' f' a,
  d,,32 c''\3-3 f\2-4 c d,, c'' f c |
  s2. |
  s2. |
  d,8 [ d'-4] d [ d] d, [ d]|

  % 106
  g,32 g'-3 <bes-1 f'-4> g g, g' <bes f'> g
  g,32 g' <bes-1 e-4> g g, g' <bes e> g 
  a,32 f'-3 ees'-4 f, a, f' ees' f, |
  s2. |
  s2. |
  g8-2 [ g] g [ g] a [ a] |

  % 107
  bes,32 f'-3 ees'-4 f, bes, f' ees' f,
  \override TextSpanner.bound-details.left.text = "I"
  bes,32 \startTextSpan f'-3 <d'-4 f> f, bes,32 f' <d' f> f, \stopTextSpan
  bes,32 g'-0 <d'-4 e> g, bes,32 g' <d' e> g, |
  s2. |
  s2. |
  bes8-1 [ bes] bes [ bes] bes  [bes] |

  % 108
  a,32 a'-2 <d-4 e-0> a a, a' <d e> a
  \override TextSpanner.bound-details.left.text = "II"
  a,32 \startTextSpan e' <cis' a'-4> e, a,32 e' <cis' a'> e,
  a,32 e' <cis' g'-2> e, a,32 e' <cis' g'> e, \stopTextSpan |
  s2. |
  s2. |
  a8 [ a] a [ a] a [ a] |

  % 109
  d,32 a''-2 <d-4 f-1>  a d, a' <d f> a \breathe
  d,32-0 d'-3 fis-2 d d, d' fis d
  d,32 c'-1 fis-2 c d, c' fis c |
  s2.  |
  s2. |
  d,8 [ d'] d [ d] d [ d] |

  % 110
  d,32 bes'-3 g'-4 bes, d,32 bes' g' bes, 
  d,32 b'-3 gis'-4 b, d,32 b' gis' b, 
  e,32 d'-2 gis-4 d e, d' gis d |
  s2. |
  s2. |
  d8 [ d] d [ d] e-1 [ e] |

  % 111
  f,32 c'-3 a'-4 c, f, c' a' c,
  \override TextSpanner.bound-details.left.text = "IV"
  fis,32 \startTextSpan ees' c'-4 ees, fis,32 ees' c' ees, \stopTextSpan
  \override TextSpanner.bound-details.left.text = "V"
  g,32 \startTextSpan d'-3 b'-4 d, g, d' b' d, \stopTextSpan |
  s2. |
  s2. |
  f8-1 [ f] fis-1 [ fis] g-1 [ g] |

  % 112
  \override TextSpanner.bound-details.left.text = "VI"
  gis,32 \startTextSpan f' d'-4 f, gis,32 f' d'-4 f, \stopTextSpan
  \override TextSpanner.bound-details.left.text = "VII"
  a,32 \startTextSpan e'-3 d'-4 e, a,32 e' d' e, \stopTextSpan
  a,, e''-3 cis'-4 e, a,, e'' cis' e, |
  s2. |
  s2. |
  gis8 [ gis] a [ a] a, [ a] |

  % 113
  d,32 f'-3 d'-4 f, d,32 f' d' f, \breathe
  bes,32 f' d' f, bes,32 f' d' f,
  a,32 f' d' f, a,32 f' d' f, |
  s2. |
  s2. |
  d8 [ d] bes'-1 [ bes] a-1 [ a] |

  % 114
  gis,32 e'-1 d'-2 e, gis,32 e' d' e,
  a,32-1 e'-3 cis'-4 e, a,32 e' cis' e,
  g,32 e'-1 cis'-2 e, g,32 e' cis' e, |
  s2. |
  s2. |
  gis8_\5-3 [ gis] a [ a] g_\5-3 [ g] |

  % 115
  fis,32 d'-1 c'-2 d, fis,32 d' c' d,
  \override TextSpanner.bound-details.left.text = "VII"
  g, \startTextSpan d' b' d, g, d' b' d,
  f,32 d' b' d, f,32 d' b' d, \stopTextSpan |
  s2. |
  s2. |
  fis8_\5-3 [ fis] g-4 [ g] f-2 [ f] |

  % 116
  \override TextSpanner.bound-details.left.text = "VI"
  e,32 \startTextSpan cis' bes' cis, e, cis' bes' cis, \stopTextSpan
  \override TextSpanner.bound-details.left.text = "III"
  f,32 \startTextSpan d' a'-4 d, f, d' a' d, \stopTextSpan
  e,32 cis'-2 g'-4 cis, e, cis' g' cis, |
  s2. |
  s2. |
  e8-2 [ e] f [ f ] e-1 [ e] |

  % 117
  d,32 d'-4 fis-3 d d, d' fis d \breathe
  \override TextSpanner.bound-details.left.text = "I"
  a,32 a'-3 <c f> \startTextSpan a a, a' <c f> a \stopTextSpan
  b,32 g'-0 <d'-4 f-1> g, b, g' <d' f> g, |
  s2. |
  s2. |
  d8-0 [ d] a [ a] b-2 [ b] |

  % 118
  c,32 g'-0 <c-1 e-0> g c, g' <c e> g
  g,32 g'-0 ees'-1 g, g, g' ees' g,
  a,32 f'-3 ees'-4 f, a, f' ees' f, |
  s2. |
  s2. |
  c8-3 [ c] g-2 [ g] a [ a] |

  % 119
  bes,32 f'-3 d'-4 f, bes, f' d' f,
  bes,32 g'-0 d'-4 g, bes, g' d' g,
  a,32 f'-3 d'-4 f, a, f' d' f, |
  s2. |
  s2. |
  bes8-1 [ bes] bes-1 [ bes] a [ a] |

  % 120
  gis,32 e'-3 d'-4 e, gis, e' d' e,
  a,32 e'-3 d'-4 e, a, e' d' e,
  a,32 e'-3 cis'-1 e, a, e' cis' e, |
  s2. |
  s2. |
  gis8-1 [ gis] a-2 [ a] a-2 [ a] \revert Stem.details.beamed-lengths |

  % 121
  d8 [ f'32\3-2 _( e-1) d-1 e-3 ] _( d-1) \glissando [ c-1 d-3 _( c-1) \glissando bes-1 c-3 _( bes-1) a-1 ] bes-1 _( [ c-3) d-1 e-3 f16-4 d,\5-3 ] |
  s2. |
  a'8 s8 s2 |
  d,8 r8 r2 |

  % 122
  c8-1 [ e'32\3-3 _( d-1) c-1 d-3 _( ] c-1) [ bes-1 c-3 _( bes-1) a-1 bes-2 _( a-1) g-0 ] a-2 _( [ bes-3) c-1 _( d-3) es16-4 c,\5-3 ] |
  s2. |
  s2. |
  s2. |

  % 123
  bes8-1 [ d'32\3-3 _( c-1) bes-1 c-3 _( ] bes-1) [ a-1 bes-2 _( a-1) g-0 a-2 _( g-0) f-3 ] g _( [ a-2) bes-3 c-1 d16-3 bes,-1 ] |
  s2. |
  s2. |
  s2. |

  % 124
  a32-0 [ a'-1 _( b-3) cis-1 d16-2 a, ] g32-4 [ a'-1 _( b-3) cis-1 d16-2 g,, ] a32 [ d'-2 _( cis-1) b-3 cis16 g-0 ] |
  s2. |
  s2. |
  a'8. [ a16 ] g8. [ g16 ] a4 |

  % 125
  f16-2 _( [ e-1) d cis-3 ] d\4 [ f-1 _( g-3) a-3 ] bes-4 [ a _( bes) g-0 ] |
  s2. |
  s2. |
  d,2 r4 |

  % 126
  e'4-0   e4. e8 |
  s2. |
  s2. |
  <d'-3 g-4 bes-1>4 \once \set fingeringOrientations = #'(right) <cis-3 g'-4 a-1>2  |

  % 127
  f4-1 d4.-4 d8\3-4 |
  s2. |
  s2. |
  <d a'-2 d-4>4 <bes-1 f'-2 bes-3>2 |

  % 128
  bes'4-2 a-4^\markup{"III"} g-4 |
  s2. |
  s2. |
  <g-1 e'-3 d'-4>4 <a f' d'> <a e'-1 cis'-2> |

  % 129
  <a,-1 d-3 g-4>4 <a d-2 fis>^\markup{"II"} s4|
  s2. |
  s2. |
  d2 c8-3 ^[ f'-1 ] |

  % 130
  <g-0 d'-4 f-1>4   <g-0 c-1 e-0> s4 |
  s2. |
  s2. |
  b,,4-2 c-3 bes8-1 ^[ ees'-4 ] |

  % 131
  <f-1 c'-3 ees-2>4  <f-2 bes-3 d-4> s4 |
  s2. |
  s2. |
  a,,4  bes-1 a8-0 ^[ d'-1 ] |

  % 132
  s4 cis'4. ^\markup{"II"} \trill d8-4 \bar "||" |
  s2. |
  s2. |
  gis,,8-4 ^[ d'' ] <a, e'>2 |

  % 133
  \key d \major
  d4-4 fis,4.-2 g8-4 |
  s2.|
  d4 d2-3 |
  d,4 s2 |

  % 134
  e4-1 fis4.-1 g16-2 a-4 |
  s2. |
  s2. |
  cis'4-3 a2 |

  % 135
  d,4-0 e4.^\markup{"II"} fis16-2 g-4 |
  s2. |
  s2. |
  b4-1 <g-3 b>2|

  % 136
  fis8-2 e-1 e4. a8-1 |
  s2. |
  s2. |
  a4 cis-3 a |

  % 137
  fis4-3 b8-0 [ a-1] g-0 [ fis-3] |
  s2. |
  s2. |
  d,4 <d'-4 fis-3>4. d8 |

  % 138
  e4 fis16-3 g-0 a-1 g fis8 e-1 |
  s2. |
  s2. |
  \override TextSpanner.bound-details.left.text = "II"
  cis8-3 \startTextSpan b \stopTextSpan a4. a8 |

  % 139
  \override TextSpanner.bound-details.left.text = "II"
  d4-0 e8 \startTextSpan g16-4 fis-2 e8 \stopTextSpan d |
  s2. |
  s4 b4. s8 |
  b8-1 a g4.-3 g8 |

  % 140
  \set strokeFingerOrientations = #'(up)
  cis'8-1 \rightHandFinger #3 d-2 \rightHandFinger #4 \set strokeFingerOrientations = #'(right) e,4.-1 \rightHandFinger #2 a8-1 |
  s2. |
  \set strokeFingerOrientations = #'(down)
  g'8-0 \rightHandFinger #2 [ fis-3 \rightHandFinger #2 ] s2 |
  \set strokeFingerOrientations = #'(down)
  \shiftOnn a4 \rightHandFinger #1 \shiftOff a \rightHandFinger #1 a \rightHandFinger #1 |

  % 141
  fis8-3 [ e-1] d-0 [ e-1] fis-3 [ gis-1] |
  s2. |
  s2. |
  d,4 \once \mergeDifferentlyDottedOff d'4.-4 d8-4|

  % 142
  \override TextSpanner.bound-details.left.text = "II"
  a8 \startTextSpan [ b-4 ] cis [ d-2 ] \stopTextSpan b-4 [ cis-2 ] |
  s2. |
  s2. |
  <cis-3 e>4 <a e'>4. <a g'>8 |

  % 143
  \override TextSpanner.bound-details.left.text = "II"
  d8-2 \startTextSpan [ fis \stopTextSpan ] e-0 [ d-2] cis-1 [ b-0] |
  s2. |
  s2. |
  <b-1 fis'-3 b-4>4   <g-4 g'-0 b-0>4. <g g'>8 |

  % 144
  <a-1 fis-3>8 [ <b-0 d,-0>] <cis e,> ^\markup{"II"} [ <d-2 fis,-3>] <e-0 g,-0> [ <cis e,> ^\markup{"II"} ] |
  s2. |
  s2. |
  a4 a4. a8 |

  % 145
  \shiftOff d4-2 <d-3 fis-2>4. <d fis>8 |
  s2. |
  \shiftOff <fis-3>8 [ e-1] \override Stem.details.beamed-lengths = #'(4.2) d-0 [ e-1] fis-4 [ g] |
  \shiftOff d,4 s2 |

  % 146
  \override TextSpanner.bound-details.left.text = "II"
  <e-0 cis-2>4 a4.-4 \startTextSpan g8-2 \stopTextSpan |
  s2. |
  s2. |
  \override Stem.details.beamed-lengths = #'(4.2)
  a''8-1 [ b-0] cis [ a] b-3 [ cis ] |

  % 147
  fis8-1 [ e-0] <g d> ^\markup{"III"} [ <fis d-2> ^\markup{"II"} ] <b-4 d,-3> [ <a-4 d,-1>]  |
  s2. |
  s2. |
  d8-3 [ cis-2] b-3 [ a ] <g-1 b-0> [ <fis-2 b-3>] |

  % 148
  <g-4 cis,>8 ^\markup{"II"} [ <fis d-3> ] ^\markup{"II"} e2-0 |
  \override Fingering.direction = 1
  s2 cis'4-2 |
  s2. |
  <e a>8 [ <d a'> ] \once \set fingeringOrientations = #'(right) <a'-1 d-3>4 a, |

  % 149
  d16-4 _( cis-2) b-0 a-2 gis-1 b-0 d-4 fis-2 e8-0 <e b-0 gis-1> |
  s2. |
  s2.  |
  d,8 r8 r4 r8 d'8 |

  % 150
  <e a,-1>8 r8 r4 fis,8-4 <e'-0 cis-2 fis,-4> |
  s2. |
  s2. |
  cis16-3 ^( d-4) cis ^( b-1)
  \override Stem.details.beamed-lengths = #'(5.0)
  a-0 ^( cis-3) e-1 g-0 r8 ais,8-1 |

  % 151
  <d-2 fis,-4>8 r8 r4 e,8-1 d'\3-4  |
  s2. |
  s2. |
  \override Stem.details.beamed-lengths = #'(4.5)
  b16-1 ^( cis-3) d-0 b
  \override Stem.details.beamed-lengths = #'(5.0)
  g-4 b-1 d-0 fis-3 r8 <gis,-1 e'-3>8  |

  % 152
  cis16\2-2 _( b-0) a-2 b cis-1 e-0 g\2-4 b-3 a-1 g-4 _( fis-3) e-1 |
  s2. |
  s2. |
  <a e'-1>4 a2 ] |

  % 153
  fis16-3 a-1 fis d-2  a\3-1 d-2 a fis-3 d-0 fis-3 _( e-1) d |
  s2. |
  s2. |
  d4 r2 |

  % 154
  \override TextSpanner.bound-details.left.text = "II"
  cis16-1 a''-3 e-2 cis-4  a \startTextSpan cis a e \stopTextSpan cis-3 e-1 _( d-0) cis |
  s2. |
  s2. |
  cis4 r2 |

  % 155
  b16-1 gis''-4 d-2 b-3 gis-1 b-0 gis e-2 b-1 d-4 _( cis-3) b |
  s2. |
  s2. |
  b4 r2 |

  % 156
  a16-0 _( b-1) cis-3 _( d-4) e-1 cis a _( cis) e-1 g-4 _( fis-3) e |
  s2. |
  s2. |
  s2. |

  % 157
  \override TextSpanner.bound-details.left.text = "II"
  fis16-3 d-0 a-0 d fis-3 d-4 a' \startTextSpan fis-3 d'-2 a fis \stopTextSpan d-0 |
  s2. |
  s2. |
  d,4 r2 |

  % 158
  a''16-4 e-0 cis-1 e a\2-2 e-0 cis'-1 a-2 e'-1 cis-3 fis-4 cis |
  s2. |
  s2. |
  a'4 r2 |

  % 159
  \override TextSpanner.bound-details.left.text = "VII"
  d16-1 fis-4 _( d) b\2-3 fis \startTextSpan b d, fis \stopTextSpan b,-0 d\2-2 cis-1 b |
  s2. |
  s2. |
  a4 r2 |

  % 160
  \override TextSpanner.bound-details.left.text = "II"
  cis16-2 e-0 cis \startTextSpan a e a cis,-3 e \stopTextSpan a, cis-1 _( e\5-4) g-0  |
  s2. |
  s2. |
  a4 r2 |

  % 161
  \override TextSpanner.bound-details.left.text = "II"
  fis16\4-2 d-3 a''-4 a a fis \startTextSpan d-2 a fis-3 d-4 \stopTextSpan a d-0 |
  s2. |
  s2. |
  d,4 r2 |

  % 162
  \override TextSpanner.bound-details.left.text = "II"
  e16-1 cis-3 a''-4 a a e-0 cis \startTextSpan a e cis-3 \stopTextSpan a-0 cis |
  s2. |
  s2. |
  s2. |

  % 163
  \override TextSpanner.bound-details.left.text = "VII"
  d16-0 b-1 a''-4 a a fis-1 d-2 b-3 d \startTextSpan gis-3 b gis \stopTextSpan |
  s2. |
  s2. |
  s2. |

  % 164
  a16\2-4 e-0 a\1-4 a a cis,-1 e-0 e e a,-1 cis-2 g-0 |
  s2. |
  s2. |
  a'4 r2 |

  % 165
  \override TextSpanner.bound-details.left.text = "II"
  fis16-3 d-4 a' \startTextSpan a a fis d fis a d-2 fis b,, |
  s2. |
  s2. |
  d,4 r2 |

  % 166
  cis16-3 e a a a e cis e a cis \stopTextSpan e-0 a,, |
  s2. |
  s2. |
  s2.  |

  % 167
  b16-2 d-0 a'-3 a a d, b d gis-1 b-0 d-4 e,-2 |
  s2. |
  s2. |
  s2.  |

  % 168
  a,16  e'-2 a-3 a a e a cis-4 e-0 cis a g-0 |
  s2. |
  s2. |
  s2. |

  % 169
  s4 r16 a'-4 a fis-2 fis d d fis  |
  \once \stemUp fis,4-3 s8.
  \override Fingering.direction = -1
  \override Stem.details.beamed-lengths = #'(4.0)
  d'16-3 d a-1 a d |
  s2. |
  \revert Stem.details.beamed-lengths
  r16 a' a a a2 |

  % 170
  e4-0 r16 a-4 a e-0 e cis cis e |
  \once \override Fingering.add-stem-support = ##f
  cis4-2 s8. cis16-2 cis a-1 a cis
  \revert Stem.details.beamed-lengths
  |
  s2. |
  r16 a a a a2 |

  % 171
  d4-4 r16 b'-4 b gis-4 gis e-0 e gis-4  |
  \once \override Fingering.add-stem-support = ##f
  gis4-1 s8. \set fingeringOrientations = #'(right) <d'-2 b-3>16 <d b> <d-2 gis,-1> <d gis,> <d gis,> |
  s2. |
  r16 a a a a2 |

  % 172
  \override TextSpanner.bound-details.left.text = "II"
  a4 \startTextSpan r16 a a a \stopTextSpan a-4 ^\markup{"III"} g g g |
  <cis a>4 s2 |
  \override Fingering.extra-offset = #'() \set fingeringOrientations = #'(left) s4 s16 <a cis> <a cis> <a cis> <b-2 d> <b d> <cis-4 e-3> <cis e> |
  r16 a a a a2 |

  % 173
  \override TextSpanner.bound-details.left.text = "II"
  fis4-1 r16 a,-1 a a b-0 b cis \startTextSpan cis |
  \once \override Fingering.add-stem-support = ##f
  d4-2 s16 a a a a-1 \set fingeringOrientations = #'(right) <a-1 g-4> <a g> <a g> |
  s2. |
  r16 d d d <d d,>2 |

  % 174
  \override TextSpanner.bound-details.left.text = "VII"
  <d-2 a>4 r16 \stopTextSpan d'16-4 \startTextSpan d d \stopTextSpan
  \override TextSpanner.bound-details.left.text = "VIII"
  d-4 \startTextSpan c c c \stopTextSpan |
  s2. |
  fis,4-3 s16 <d' fis> <d fis> <d fis> <e-2 g> <e g> <fis-4 a-3>  <fis a> |
  r16 <d d,> <d d,> <d d,> <d d,>2 |

  % 175
  \override TextSpanner.bound-details.left.text = "VII"
  b4-1 r16 b16 b b cis16-4 d-4 \startTextSpan d d \stopTextSpan |
  \override Fingering.add-stem-support = ##f
  g'4-2 s16 g \set fingeringOrientations = #'(left) <g fis-4> <g fis> <g-2 e-3> <fis d> <fis d> <fis d> |
  s2. |
  r16 <d d,> <d d,> <d d,> <d d,>2 |

  % 176
  \override TextSpanner.bound-details.left.text = "VIII"
  \offset Beam.positions #'(1 . 1) g,16 \startTextSpan g g g \stopTextSpan
  \override TextSpanner.bound-details.left.text = "II"
  \offset Beam.positions #'(1 . 1) \override Fingering.add-stem-support = ##f fis16-2 fis \startTextSpan fis fis \stopTextSpan
  \offset Beam.positions #'(1 . 1) e-0 e e e |
  s2. |
  \set fingeringOrientations = #'(up left) <b,-2 fis'-4>16 \set fingeringOrientations = #'(left) <cis-4 e-2> <cis e> <cis e>
  <d-1 e-0> <fis,-3 a d-2> <fis a d> <fis a d>
  \once \set fingeringOrientations = #'(up left) <g-4 a-1 d-2> <a, g'-1 cis-2> ^\markup{"VI"} <a g' cis> <a g' cis> |
  s2. |

  % 177
  \override Fingering.add-stem-support = #only-if-beamed
  fis4 ^\markup{"VII"} fis4.-2 fis8 |
  \set stringNumberOrientations = #'(down)
  s4 d4.\2-3 d8 |
  <fis'-3 a d>4 s2 |
  d,4 s2 |

  % 178
  fis8 e8-0  e4. e8 |
  s2. |
  s2. |
  d''4 d8-3 cis-2 b-4 ais-3 |

  % 179
  e8-0 d8-3 c4.-1 c8 |
  s2. |
  s2. |
  b4-4 b8-4 a-2 g fis-4 |

  % 180
  \override TextSpanner.bound-details.left.text = "II"
  c8-1 b8-0 s8 b'8-4 \rightHandFinger #4 \once \set strokeFingerOrientations = #'(up) <a-4 \rightHandFinger #3 > [ g-4] \startTextSpan |
  \override Fingering.direction = 1
  \override Fingering.add-stem-support = ##f
  s4 \stemUp cis8^\3-2 [ a\4\tweak Fingering.extra-offset $'(-1 . -0.5)-3 \rightHandFinger #1 ] \stemNeutral b-0 \rightHandFinger #2 ^[ cis] |
  s2. |
  g4 r8 \once \autoBeamOff \set strokeFingerOrientations = #'(down) <g-0\rightHandFinger #2 >8 fis-2 \rightHandFinger #1 [ e] |

  % 181
  <fis d-2>4 <fis d>4. <fis d>8 \stopTextSpan |
  s2. |
  s2. |
  \once \override Stem.details.beamed-lengths = #'(4.2)
  d8-0 [ fis-3] b-4 [ a] g-4 [ fis-3] |

  % 182
  <e-0 d-2>4 <e cis-2>4. <e cis>8 |
  s2. |
  s2. |
  g8-0 [ e-1] a-1 [ g-0] fis-4 [ e-1] |

  % 183
  <a-4 c,-3>8 [ fis-1 ] <b-4 d,-3>  [ <a-4 c,-3> ] <g-2 b,-3> [ <fis a,> ^\markup{"II"} ] |
  s2.|
  s2. |
  d4 g-1 r4 |

  % 184
  <e-0 g,-0>8 <d-2 fis,-3> cis4. ^\markup{"II"} \trill d8-2 |
  s4 e,2 |
  s2. |
  g,4-4 a2 |

  % 185
  d4-2 <a-1 fis-3>4. <a fis>8 |
  s2. |
  <fis-3 a-1>4 d4.-4 d8 |
  d,4 s2 |

  % 186
  <a-1 fis-3>4 <a fis>4. <a fis>8 |
  s2. |
  s2. |
  c'4-2 c4. c8 |

  % 187
  <b-0 g-0>4 <b g>4. <b g>8 |
  s2. |
  s2. |
  \set stringNumberOrientations = #'(down)
  b4-1 e2\5-4 |

  % 188
  <cis-1 g-0>8 <d-2 fis,-3> d4. cis8 ^\markup{"II"} |
  s4 e8-1 d-0 e4 |
  s2. |
  a,4-0 s2 |

  % 189
  \override TextSpanner.bound-details.left.text = "II"
  d4-2  <fis d-3 a>4. \startTextSpan <fis d a>8 |
  s2. |
  d4 s2 |
  d,4 d'4. d8 |

  % 190
  <fis d-3 a>4 <fis d a>4. <fis d a>8 \stopTextSpan |
  s2. |
  s2. |
  c4-2 c4. c8 |

  % 191
  <fis-2 d-3 g,-0>4 <e-0 a,-1 g-4>4. <e a, g>8 |
  s2. |
  s2. |
  b4-1 cis4.-3 cis8 |

  % 192
  e8-0 [ \set strokeFingerOrientations = #'(up) d-2 \rightHandFinger #3 ]  d4. cis8-1 \rightHandFinger #3 |
  <a-1 fis-3>4 s2 |
  s4 \override Fingering.extra-offset = #'(-1.25 . 1.5) \stemUp e8-1 [ \set strokeFingerOrientations = #'(down) fis-3 \rightHandFinger #3 ] \stemNeutral g4-4 \rightHandFinger #2 |
  d4-4 a2  |

  % 193
  d4-2 <fis-2 d-3 a-1>4. <fis d a>8 |
  s2. |
  \shiftOn fis8-3 e-1 \rightHandFinger #2 s2 |
  d,4 d'4. d8 |

  % 194
  <g-4 d-3 g,-0>4 <a-4 d,-1>4.   <a d,>8 |
  s2. |
  s2. |
  e4-1 fis4.-2 fis8 |

  % 195
  <b-4 d,-3 b-0>4 <b-4 e,-2 b-1>4.   <b e, b>8   |
  s2. |
  s2. |
  g4-1 gis4.-3 gis8 |

  % 196
  \override TextSpanner.bound-details.left.text = "VII"
  <cis-4 g-2 e-3>8 \startTextSpan <d-4 fis, d> <d-4 g,-2 e-3>4 \stopTextSpan <cis-4 g-2 e-3> |
  s2. |
  s2. |
  a4-1 a4 a, |

  % 197
  \override TextSpanner.bound-details.left.text = "VII"
  <d-4 fis, d>4 \startTextSpan <d fis, d>4. <d fis, d>8 \stopTextSpan |
  s2. |
  s2. |
  d4-0 d4. d8 |

  % 198
  \override TextSpanner.bound-details.left.text = "VII"
  <cis-4 g-2 e-3>4 <c-2 fis, d>4. \startTextSpan <c fis, d>8 \stopTextSpan |
  s2. |
  s2. |
  a'4-1 d,4.-0 d8 |

  % 199
  <b g-2 d>4 ^\markup{"VII"} <e,-0 d-3 b-0>4. <e d b>8 |
  s2. |
  s2. |
  g4-4 gis4.-1 gis8 |

  % 200
  \override TextSpanner.bound-details.left.text = "II"
  e8-0 [ fis ] \startTextSpan g-2 \stopTextSpan [ b-4 ] a-4 [ g-2 ^\markup{"II"} ] |
  <d-2 b-3>4 <cis a>4. <cis e,>8 |
  s2. |
  a,4 a4. a8 |

  % 201
  \override TextSpanner.bound-details.left.text = "II"
  \override Fingering.add-stem-support = ##f
  \override Fingering.staff-padding = #'()
  \override Arpeggio.positions = #'(-3.5 . -1.5)
  % \arpeggioParenthesis
  fis4 \startTextSpan d,16-0 \arpeggio <fis' \rightHandFinger #4 a, \rightHandFinger #2 > <fis a,> d,-0 d \arpeggio <fis' a,> <fis a,> d, \stopTextSpan |
  s2. |
  s2. |
  <d a' d-2>4 \once \mergeDifferentlyDottedOff d8.-4 \once \override NoteColumn.force-hshift = #1 d16-4 cis8.-3 cis16 |

  % 202
  \override Arpeggio.positions = #'(-3.5 . -2)
  d16-0 \arpeggio <fis'-2 \rightHandFinger #3 b,-0 \rightHandFinger #2 > <fis b,> d, d <fis' b,> <fis b,> d,
  \override Arpeggio.positions = #'(-4 . -2)
  d \arpeggio <fis' b,> <fis b,> d,  |
  s2. |
  s2. |
  b8.-1 b16 b8. b16 a8.-0 a16 |

  % 203
  \override TextSpanner.bound-details.left.text = "V"
  \override Arpeggio.positions = #'(-4.5 . -2)
  d16-2 \arpeggio <e'-0 b-0> <e b> d,
  \override Arpeggio.positions = #'(-4.5 . -2)
  e-3 \arpeggio \startTextSpan <a' \rightHandFinger #4 cis,-2 \rightHandFinger #2 > <a cis,> e, e <e' \rightHandFinger #3 cis-2  \rightHandFinger #2 > <e cis> e, \stopTextSpan |
  s2. |
  s2. |
  g8.-1 g16 g8. g16 g8. g16 |

  % 204
  \override Arpeggio.positions = #'(-4.5 . -2)
  e16-2 \arpeggio <b''-4 \rightHandFinger #4 d,-3 \rightHandFinger #2 > <b d,> e,, 
  \override Arpeggio.positions = #'(-4 . -2)
  e-1 \arpeggio <e'-0 d-3> <fis-2 d> e, e <g'-4 cis,-2> <g cis,> e, |
  s2. |
  s2. |	
  gis8.-1 gis16 a8. a16 a8. a16 |
  
  

  % 205
  \override TextSpanner.bound-details.left.text = "II"
  \override Arpeggio.positions = #'(-2.5 . -0.5)
  a16-1 \arpeggio <g'-3 d-2> <g d> a, a \startTextSpan <fis' d-2> b,-3 <fis' d>
  \override Arpeggio.positions = #'(-2.5 . 0.5)
  c-4 \arpeggio <fis d> <fis d> c \stopTextSpan |
  s2. |
  s2. |
  d8. d16 d8 d d8. d16 |

  % 206
  \override TextSpanner.bound-details.left.text = "V"
  \override Arpeggio.positions = #'(-4.5 . -2.5)
  d,16 \arpeggio \startTextSpan <fis'-4 d-3> <fis d> d, \stopTextSpan
  \override Arpeggio.positions = #'(-4.5 . -2)
  e-3 \arpeggio <e'-0 \rightHandFinger #3 b-0 \rightHandFinger #2 > e, <e' \rightHandFinger #4 cis-2 \rightHandFinger #2 > e,-3 \arpeggio <e' \rightHandFinger #4 d-4 \rightHandFinger #2 > <e d> e, |
  s2. |
  s2. |
  g,8. g16 g8-1 g gis8.-1 gis16  |

  % 207
  \override Arpeggio.positions = #'(-4 . -2)
  e16-1 \arpeggio <e'-0 d-3> <e d> e, e <e'-0 cis-2>
  \override Arpeggio.positions = #'(-4 . -1.5)
  fis,-4 \arpeggio <e' cis> g,-0 <e' cis> <e cis> g, |
  s2. |
  s2. |
  a8.-0 a16 a8 a ais8.-1 ais16 |

  % 208
  <b-4 d-2>8 <d-3 b'-4> cis4.-2 \trill d8 \bar "||" |
  s2. |
  s2. |
  <b-1 fis'-3>8 <g-1 e'-2> <a e'-1>2 |
  
  % 209
  \key d \minor d4 bes4. ^\markup{"III"} bes8-3 |
  \key d \minor s2. |
  \key d \minor s2. |
  \key d \minor <d d,>4 <d-3 f>2|

  % 210
  \override Fingering.add-stem-support = #only-if-beamed
  \override TextSpanner.bound-details.left.text = "II"
  bes8.-3 e16-4 bes-2 g-4 a \startTextSpan  e c8-2 a' \stopTextSpan |
  s2. |
  s2. |
  <c-2 e-1>8. r16 r4 s8 <c e>8 |

  % 211
  a8.-2 d16-4 a-2 fis-4 g-0 d-0 bes8-1 g'8 |
  s2. |
  s2. |
  <bes-1 d-0>8. r16 r4 s8 <bes d>8 |

  % 212
  \override TextSpanner.bound-details.left.text = "II"
  g8.-0 e'16-4 cis \startTextSpan a bes-2 g-4 cis,8-3 a'8 \stopTextSpan |
  s2. |
  s2. |
  <a e'-1>8. r16 r4 s8 <cis e>8 |

  % 213
  f8.-2 d16-4 f a-1 d-3 cis\glide-1 d-1 e-3 f-4 a,-1 |
  s2. |
  s2. |
  d,8. r16 r4 r |

  % 214
  \override TextSpanner.bound-details.left.text = "III"
  f'8.-4 d,16-3 g-4 bes \startTextSpan ees-2 d \stopTextSpan ees-2 c-4 f,-1 a,-0 |
  s2. |
  s2. |
  <g-2 d'-0 bes'-1>8. r16 r4 r |

  % 215
  ees''8.-4 cis16-2 d-4 a-1 bes-2 fis-3 g-4 d-0 ees-1 g |
  s2. |
  s2. |
  <bes-1 f'-3>8. r16 r4 r |

  % 216
  cis8-2 d8 ^\markup{"III"} d8.-4 b16-0 cis-2 e-0 g-4 a, |
  s2. |
  s2. |
  <a g'-0>8 <g-3 f'> <a~ e'-1>4 a8. a'16-2 |
  
  % 217
  d,16 a'-2 cis-3 g'-4 f-1 d-4 cis-2 d d, d' cis d |
  s2.|
  s2. |
  d,4 r d8-0 r |

  % 218
  \override TextSpanner.bound-details.left.text = "II"
  e,16-1 g-0 cis-2 a'-4 g-2 d-3 cis \startTextSpan d e, d'-3 cis d |
  s2.|
  s2. |
  e4 r e8 r |

  % 219
  f,16-2 a cis \stopTextSpan bes'-4 a-4 d,-2 \startTextSpan cis d f,-3 d'-2 cis d \stopTextSpan |
  s2.|
  s2. |
  f4 r f8 r |
  
  % 220
  \override TextSpanner.bound-details.left.text = "III"
  g,16-3 bes \startTextSpan d \stopTextSpan bes'-4 e,-0 d-4 cis-2 d a-1 d-4 cis-2 e-0 |
  s2.|
  s2. |
  g4 r a,8 r |

  % 221
  f16-1 d-4 a-2 g-0 f-2 a-1 d,\5-4 c-2 b-2 g'-0 d'-4 f-1 |
  s2.|
  s2. |
  d,4 r2 |

  % 222
  \override TextSpanner.bound-details.left.text = "III"
  e16-0 c-1 g-0 f-3 e-2 g c,-3 bes-1 a-0 f' \startTextSpan c'-3 es-2 |
  s2. |
  s2. |
  s2. |
  
  % 223
  d16 bes f es-4 d-3 f \stopTextSpan bes,-1 a-0
  g-4 cis-3 e-1 bes'-2 |
  s2. |
  s2. |
  s2. |

  % 224
  a16-1 f-2 d-4 bes'-2 g-0 e-1 cis-3 e a, g'-4 _( f-2 ) e-1 |
  s2. |
  s2. |
  s2. |

  % 225
  d16-0 a'-1 _( b-3 ) cis-1 d-2 f\2-2 _( g-4 ) a-1 bes16-2 g,32\4-4 _( f-2 ) e-1 _( f-2 ) g16 |
  s2. |
  s2. |
  s2. |
  
  % 226
  % c,16-1 g'-2 _( a-4 ) bes-1 c-2 e\2-3 _( f-4 ) g-1 a-3 [ f,32-3\4 _( e-2 ) d-0 _( e ) f16 ] |
  c,16-1 g'-2\4 _( a-4 ) bes-1\3 c\glide-2 e-2 _( f-3 ) g-1\2 a-3 [ f,32-4\5 _( e-3 ) d-1 _( e ) f16 ] |
  s2. |
  s2. |
  s2. |

  % 227
  bes,16 d''32-4 _( c-2 ) bes-1 _( c ) d16 g,\2-1 bes32-4 _( a-3 ) g-1 _( a ) bes16 e,16-0 g32-3 _( f-1 ) e _( f ) g16 |
  s2. |
  s2. |
  bes'4-1 s2 |

  % 228
  cis,16-1 e32-4 _( d-2 ) cis-1 _( d ) e _( cis ) g16-0 bes32-2 _( a-1 ) g-0 _( a ) bes _( g ) e-1 _( d-0 ) cis-3 _( d-4 ) e-1 _( f ) g-4 _( e ) |
  s2. |
  s2. |
  s2. |
 
  % 229
  s16 [ a-1 s a s a s a s a s a ] |
  s2. |
  \stemDown
  \override Fingering.extra-offset = #'()
  f16-2 [ s a s bes-2 s a s g-4 s f-3 s ] |
  \shiftOnn <d, a'>4 s2 |

   % 230
  \override TextSpanner.bound-details.left.text = "II"
  s16 \startTextSpan [ a s a s a s a s a \stopTextSpan s a-3 ] |
  s2. |
  e16 [ s bes'-3 s a s g-4 s f-2 s e-2 s ] |
  c'4-2 s2 |
  
  % 231
  s16 [ a-2 s a \startTextSpan s a s a s a s a ] |
  s2. |
  d16-0 [ s a' s g-4 s f-2 s e s d-4 s ] |
  <d, bes'-1>4 s2  |

  % 232
  s16 [ a s a s a s a s a s a \stopTextSpan ] |
  s2. |
  e16 [ s f-2 s g-4 s bes-2 s a s g-4 s ] |
  a'4 s2 |

  
  % 233
  s16 [ a-1 s a s a s a s a s a ] |
  s2. |
  f16-2 [ s a s gis-4 s g-4 s fis-3 s f-3 s ] |
  <d, a'>4 s2|

  % 234
  s16 \startTextSpan [ a s a s a s a \stopTextSpan s a-3 s a ] |
  s2. |
  e16 [ s g-4 s fis-3 s f-2 s e-2 s ees-1 s ] |
  c'4-2 s2 |

  % 235
  s16 [ a-3 s a s a-1 s a s a s a ] |
  s2. |
  d16-0 [ s e-2 s f-2 s fis-3 s g-4 s gis-4 s ] |
  <d, bes'-1>4 s2 |

  % 236
  s16 [ a'-4 s a s a s a s a s a ] |
  s2. |
  <a, a'-1>16 [ s <b a'> \startTextSpan s <c-2 a'> s <cis-3 a'> \stopTextSpan s <d-0 b'-0> s <e cis'>^\markup{"II"} s ] |
  s2. |
  

  % 237
  s16 [ a s a s a s a s a s a ]|
  s2. |
  \override TextSpanner.bound-details.left.text = "III"
  <f \rightHandFinger #2 d' \rightHandFinger #3 >16 ^\markup{"III"} [ s <d-0 c'-3> s <g-3 bes> \startTextSpan s <f bes> \stopTextSpan s <e-1 bes'-2>16 s <d-0 bes'-2> s ] |
  d4 \rightHandFinger #1 s2 |


  % 238
  s16 [ a s a s a s a s a s a ] |
  s2. |
  \override TextSpanner.bound-details.left.text = "II"
  <e-1 bes'-2>16 [ s <c bes'> ^\markup{"III"} s <f-2 a> \startTextSpan s <e a> \stopTextSpan s <d-0 a'-1> s <c-2 a'-1> s ] |
  s2. |

  % 239
  s16 [ a s a s a s a s a s a ] |
  s2. |
  <d-0 a'-1>16 [ s <b a'> ^\markup{"II"} s <e-1 g-0> s <d-0 g> s <cis-3 g'> s <b-1 g'> s ] |
  s2. |

  % 240
  s16 [ a s a s a s a s a s a ] |
  s2. |
  <cis g'>16 [ s <cis-3 e-1> s <cis-3 a'-1> s <a-0 g'-0> s <b-1 f'-2> s <cis-3 e-1> s ] |
  s2. |
  
  % 241
  \override Fingering.add-stem-support = ##f
  f,16-2 [ a' ]
  %\override TupletBracket.bracket-slur = ##t
  %\override TupletBracket.bracket-visibility = ##t
  \tuplet 3/2 8 {
    \override Stem.details.beamed-lengths = #'(5.0)
    d,,-4 [ f-2 a-1 ]
    %\override TupletBracket.bracket-slur = ##f
    %\override TupletBracket.bracket-visibility = ##f
    f-3 [  a-2 d-4 ]
    a-2 [ d-4 f-1 ]
    \override TextSpanner.bound-details.left.text = "III"
    bes, \startTextSpan [ d g \stopTextSpan ]
    \override TextSpanner.bound-details.left.text = "V"
    \override Stem.details.beamed-lengths = #'(6.0)
    g, \startTextSpan [ d'-3 bes'-2 ] } |
  s2. |
  s2. |
  d8 s s2 |

  % 242
  \tuplet 3/2 8 {
    \override Stem.details.beamed-lengths = #'(6.5)
    e,,16-3 [ c' bes'-2 \stopTextSpan ]
    \override Stem.details.beamed-lengths = #'(5.0)
    c,,-3 [ e-2  g-0 ]
    e-2 [ g-0 c-1 ]
    g-0 [ c-1 e-0 ]
    \override TextSpanner.bound-details.left.text = "I"
    a,-2 [ c \startTextSpan f \stopTextSpan ]
    \override Stem.details.beamed-lengths = #'(6.5)
    f,-1 [ c'-3 a'-4 ] } |
  s2. |
  s2. |
  s2. |

  % 243
  \tuplet 3/2 8 {
    d,,16-0 [ bes'-1 a'-4 ]
    \override Stem.details.beamed-lengths = #'(5.0)
    bes,,-1 [ d-0 f-1 ]
    \override TextSpanner.bound-details.left.text = "III"
    d-3 [ f \startTextSpan bes ]
    f [ bes d ]
    g,-3 [ bes ees-2 ]
    \set stringNumberOrientations = #'(down)
    ees,-4\5 [ bes' g' \stopTextSpan ]
  }
  |
  s2. |
  s2. |
  s2. |

  % 244
  \tuplet 3/2 8 {
    \override TextSpanner.bound-details.left.text = "VI"
    e,16-2 \startTextSpan [ cis' bes' \stopTextSpan ]
    \override TextSpanner.bound-details.left.text = "III"
    f, \startTextSpan [ d' a'-4 \stopTextSpan ]
    g,-0 [ e'-3 g-1 ]
    \override TextSpanner.bound-details.left.text = "I"
    gis, \startTextSpan [ d'-3 f \stopTextSpan ]
    a,-1 [ d-3 e-0 ]
    a,,-0 [ cis'-2 e ]
  }
  |
  s2. |
  s2. |
  s2. |
  
  % 245
  \tuplet 3/2 8 {
    \override Stem.details.beamed-lengths = #'(4.5)
    d,,16 [ a'''-3\1 _( g-1 ) ]
    f-4\2 [ f _( e-3 ) ]
    d-1 [ d-3 _( c-1 ) ]
    bes-3 [ bes-2 _( a-1 ) ]
    g-4\4 [ bes-1 _( c-3 ) ]
    d-1 _( [ e-3 ) f-4 ] }
  |
  s2. |
  s2. |
  s2. |

  % 246
  \tuplet 3/2 8 {
    c,16-2 [ g''-3\1 _( f-1 ) ]
    e-4\2 [ e _( d-2 ) ]
    c-4 [ c _( bes-2 ) ]
    a-1 [ a _( g-0 ) ]
    f-3 [ a-2 _( bes-3 ) ]
    c-1 _( [ d-3 ) ees-4 ] }
  |
  s2. |
  s2. |
  s2. |

  % 247
  \tuplet 3/2 8 {
    bes,16-1 [ f''-4\2 _( ees-2 ) ]
    d-1 [ d-3 _( c-1 ) ]
    bes-3 [ bes-2 _( a-1 ) ]
    g-4\4 [ g _( f-2 ) ]
    e-1 [ e _( d-0 ) ]
    cis-3 [ cis _( b-1 ) ]
    \revert Stem.details.beamed-lengths
  }
  |
  s2. |
  s2. |
  s2. |

  % 248
  \override Fingering.add-stem-support = ##t
  \override Fingering.direction = 1
  a16-0 b32-1 _( cis-3 ) d-0 _( e-1 ) f-2 _( g-4 ) a-1  b-3 cis-1 d-3 e-0 f-1 g-3 f-1 e-0 d-3 cis-2 b-0 a-2 g-0 f-3 e-2 |
  s2. |
  s2. |
  s2. |

  % 249
  \override Fingering.add-stem-support = ##f
  d8-0 s a'4.-1 a8 |
  \override Fingering.extra-offset = #'(1.25 . -1.5)
  s4 f,2-2 |
  s2. |
  d8 r d'2-4 |

  % 250
  e'4-0 e4. e8 |
  \override Fingering.extra-offset = #'()
  <g-4 bes-1>4 <g-4 a-1>2 |
  s2. |
  d4-3 cis2-3 |
  
  % 251
  f4-1 d4.-4 c8\3-4 |
  \stemUp<a-2 d-4>4 <f-2 bes-3>2 \stemNeutral |
  s2. |
  d4 bes2-1 |

  % 252
  \override Fingering.add-stem-support = #only-if-beamed
  <g-4 bes-1>4 <f-2 a-1> g16-0 f-2 _( e-1 ) f |
  s2. |
  s2. |
  g4-3 a cis-3 |
  
  % 253
  g16-4 _( e-1 ) f-2 _( d-0 ) <f bes>4 ^\markup{"III"} <fis-3 a-1> |
  s2. |
  s2. |
  <d, a'>4 d'8-3 [ d, ] c'-2 [ d, ] |

  % 254
  <e-2 g-0 d'-4>4 <fis-4 c'-1> <d-3 g-4 bes-1> |
  s2. |
  s2. |
  bes'8-1 d, a'4 g-2 |

  % 255
  cis16-3 e-1 g-0 bes-2 a-1 g-0 e'-4 g,-0 f4-1~ |
  s2. |
  s2. |
  s2 <d d'>4 |

  % 256
  f8 e8-1 e4. d8-0 |
  s2. |
  s2. |
  g4-3 a2 |

  % 257
  \once \override NoteColumn.force-hshift = #1 d2.-0 |
  s2. |
  s2. |
  <d, d'-4^\5>2. \bar "|."|
}

merges = {
  \mergeDifferentlyHeadedOn
  \mergeDifferentlyDottedOn
  \shiftOff

  \override TextSpanner.font-shape = #'upright
  \override TextSpanner.dash-fraction = #1
  \override TextSpanner.bound-details.right.text =
      \markup { \draw-line #'(0 . -1) }

}

\score {
  \new Staff {
    \clef "treble_8"
    \key d \minor \time 3/4
    \set Score.currentBarNumber = #2
    \partial 2

    \set Staff.connectArpeggios = ##t

    <<
      %\partCombine
      %\autoBeamOff
      %\partCombineChords
      
      \relative {
        \voiceOne
        \merges
        \voiceA
      } \\
      \relative {
        \voiceTwo
        \merges
        \voiceD
      } \\
      \relative {
        \voiceThree
        \merges
        \voiceB
      } \\
      \relative {
        \voiceFour
        \merges
        \voiceC
      }
    >>
  }
  \layout { }
  \midi {
    \tempo 4 = 45 
  }
}
