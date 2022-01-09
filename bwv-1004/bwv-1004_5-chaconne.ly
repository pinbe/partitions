\version "2.22.1"

fingeringMiddelVoices = {
  \override Fingering.staff-padding = #'() 
  \override Fingering.add-stem-support = ##f
  \override Fingering.avoid-slur = ##f
  \override Fingering.font-size = #-5
}

fingeringVoiceB = {
  \fingeringMiddelVoices
  \override Fingering.color = red
  \override Fingering.extra-offset = #'(1.25 . -1.5)
}

fingeringVoiceC = {
  \fingeringMiddelVoices
  \override Fingering.color = green
  \override Fingering.extra-offset = #'(-1.25 . 1.5)
}

\parallelMusic voiceA, voiceB, voiceC, voiceD {
  % 1
  a4.-1 a8 |
  \fingeringVoiceB s2 |
  \fingeringVoiceC f2_2 |
  d2-4 |

  % 2
  e'4-0 e4. e8 |
  bes4-1 a2-1 |
  g4-4 g2-4 |
  d4-3 cis2-3 |

  % 3
  f4-1 d4.-4 c8\2-4 |
  d4-4 s2 |
  a4-2 f2-3 |
  d4 bes2-1 |

  % 4
  bes4-1 a-1 g16-0 f-2_( e-1) f  |
  g,4-4 f4-2 s4 |
  s2. |
  g4-3 a cis-3 |

  % 5
  g16-4 [ _( e-1 )  f-2 _( d ) ] a'4. a8 |
  s4 f2 |
  a,4 s2 |
  d,4 d'2 |

  % 6
  e'4 e4. e8 |
  bes4 a2 |
  g'4 g2  |
  d4 cis2 |

  % 7
  f4 d4. d8\3-4 |
  d4 s2 |
  a4 f2 |
  d4 bes2 |

  % 8
  bes'4-2 a8.-4^\markup {"II"}  [ g32-4 _( f-1) ] g8. [ e16-0 ] |
  d4-4 cis2 |
  e4-3 e2 |
  g4-1 a2 |

  % 9
  f8.-1 s16 s2 |
  d8.-4 s16 s2 |
  d8.-0 ^[ e16-2 ] f8.-3 ^[ g32-0 _( a\tweak extra-offset #'(0 . -1)-2) ] bes8.\tweak extra-offset #'(0 . 0)-3 ^[ a16 ] |
  d,8. s16 s2|

  % 10
  e4-0 e2-0 |
  bes4-1 a2\tweak extra-offset #'(-1.25 . -1.5)-1 |
  \stemUp \shiftOn g8.-4 f16-2 g8.\tweak extra-offset #'(0.5 . 0.6)-4 bes16-2 a8.-1 g16-0 |
  d'4-3 cis2-3 |

  % 11
  e4 d8.-4 f16-1  e8.-0 d16-2 |
  a4\tweak extra-offset #'(-1 . -1.5)-1 s2 |
  \stemNeutral f8.\tweak extra-offset #'(0.9 . 0.8)-2 e16-2 \shiftOff f8.-3 a16-2 g8.-0 f16-1 |
  d4-4 bes4..-1 g16-4 |

  % 12
  \override TextSpanner.bound-details.left.text = "II"
  d4-2 cis4.. \startTextSpan a'16-4 \stopTextSpan |
  e8.\tweak extra-offset #'(2 . -1.5)-1 ^[ d16-0 ] e8. ^[ g16-4 ] f8.\tweak extra-offset #'(2 . -1.5)-2 e16 |
  s2 s8 s16 cis'16 |
  a4 a4.. a16 |

  % 13
  f8-1 s8  s2 |
  d'8\tweak extra-offset #'(2 . -1.5)-4 s8 s2 |
  d,8.-0 [ e16 ] f8. [g32 a ]( bes8.) [ a16 ] |
  d,8. s16 s2 |

  % 14
  e4 e2 |
  bes4 a2 |
  \shiftOn g8. f16 g8. bes16 a8. [ g16 ] |
  d'4 cis2 |

  % 15
  e4  d8. [ f16 ] e8. [ cis16-4 ] |
  a4 s2 |
  f8. [ e16 ] f8. [ a16 ] g8. [ e16-3 ] |
  d4 bes4.. bes16-1 |

  % 16
  d8.-4 [ e16-4 ] d4-4 ( cis8.)\trill  [ d16 ] |
  f8.\tweak extra-offset #'(2 . -1.5)-3 [ g16-3 ] e2-1 |
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
  \stemDown d4-3 r4 r8. d16-3 |
  s2. |
  d,4 s2 |

  % 22
  e8. [ bes'16 ] a8. [ g16 ] a8. [ fis16 ] |
  s2. |
  s2. |
  cis'4 c r8. c16 |

  % 23
  g8. [ f16 ] e8. [ d32_( cis) ] d8. [ e16-0 ] |
  s2 s8 s16 d16\tweak extra-offset #'(0 . 0)-4 |
  b'4 bes r8. gis16\tweak extra-offset #'(-1.25 . 0.8)-2  |
  s2 s8. bes,16-1 |

  % 24
  f8.-1 [ g16-4 ] d8. [ cis32-2_( b-0) ] cis8. [ g16-0 ] |
  d4-4 e2 |
  \once \override Fingering.staff-padding = #'() a4-2 s2 |
  a4 a r8 r16 a16 |

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
  d8 [ f,8-1 ] e16-1 _( [ f-3) g-0 bes-3 _( ] a-1) [ g f e ] |
  s2. |
  s2. |
  s8 g8-4 a2 |

  % 29
  f16-3 a-2 d-4 f-1 f _( e-0) g-4 _( f) e-0 d cis-1 \glissando d-1 |
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
  d8-3 \glissando f-\2-3 bes-4 a-2 gis-1 d, |
  s2. |
  s2. |
  d,4 r r8 d'-2 |

  % 34
  cis8 e'\2-3 a-4 g-1 fis-1 c, |
  s2. |
  s2. |
  cis4-2 r r8 c-2 |

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
  f16-2 d-0 _( f) a-1 d\3-3 f\2-2 bes-1 a-1 gis\2-3 b-1 gis e-0 |
  s2. |
  s2. |
  d,4 d'2 |

  % 38
  \override TextSpanner.bound-details.left.text = "II"
  cis,16 e'-3 a-4 g-1 fis \startTextSpan a-4 fis d-3 a fis-4 \stopTextSpan d-0 c-3 |
  s2. |
  s2. |
  cis4-2 c2-2 |

  % 39
  b16-2 d-0 g-0 fis-4 g-0 ees'-4 _( d-3) cis-2 bes'-4 _( a-3) gis-2 _( a) |
  s2. |
  s2. |
  b4 bes2-1 |

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
  a16 e' \startTextSpan d'-2 cis \stopTextSpan d,-3 fis-2 a-1 c-4 c bes-1 _( c-4) a-1 |
  s2. |
  s2. |
  a'4 d2 |

  % 43
  bes16-1 g-4 _( f-1)  ees\5-4 d-3 _( c-1) bes-1 a-0 g-3 g'-0 ees'-2 d-1 |
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
  e,16-0 c,-3 e-2 g-0 c-1 g c e a,-2 f'-1 _( g-3) a-4 |
  s2. |
  s2. |
  s2. |

  % 55
  d,16-2 bes,-1 d-0 f-2 bes-3 f bes d-4 g,-0 e'-0 _( f-1) g-4 |
  s2. |
  s2. |
  s2. |

  % 56
  cis,16-2 a-1 cis e-0 a\2-2 e\3-1 a cis-1 e-4 g,\3-3 f-1 e-0 |
  s2. |
  s2. |
  a'2 a4 |

  % 57
  f4-1 r8 f8 g4-4 |
  d8-4 [ a8-2] d,8-0 [ d'8] bes16-3 a ^( bes) g-0 |
  s2. |
  d,4 \shiftOn s2 |

  % 58
  e4-0 s8 e8 f4 |
  c8-1 g8-0 c,8-3 c'8 a16-2 g-0 ^( a) f-3 |
  s2. |
  s2. |

  % 59
  d4-4 r8 d8 e4-0 |
  bes8-3 [ f8-2] bes,8-1 [ bes'8 ] g16-4 f-2 ^( g-4) e-1  |
  s2. |
  s2. |

  % 60
  r4. a8-4 a16^\markup{"II"} g-2 _( a-4) e-0 |
  \stemUp a8^\markup{"II"} d-3 \stemNeutral d16-2^\markup{"II"} ^( cis) d-2 ^( b) cis4 |
  \stemDown f16-2 ^( e) f-2 ^( d-0) e4 e |
  a'4  a a |

  % 61
  f8 s8 d8 s8 s4 |
  \stemUp d16-4 cis-2 _( d) a-2 f-3 e-2 _( f) d-0 bes\6-3 g'-0 d'\3-2 bes'-1 |
  d8 r8 s2 |
  d,8 r8 s2 |

  % 62
  e8 s8 c8-1 s8 s4 |
  \stemDown c,16-1 b-0 ^( c) g-0 e-2 d-0 ^( e) c-3 a-0 f'-1 c'-3 a'-4 |
  s2. |
  s2. |

  % 63
  d8-4 s8 bes8 s8 g,16-4 e'-1 b'-0 g'-2 |
  \override TextSpanner.bound-details.left.text = "III"
  f,16-3 ees-1 ^( f-3) d-0 d-4 \startTextSpan c ^( d-4) \stopTextSpan bes-1 s4 |
  s2. |
  s2. |

  % 64
  a,,16 e'-1 cis'-2 g'-4 a,, f'-3 d'-4 f-1 a,, g'-0 cis-2 e-0 |
  s2. |
  s2. |
  s2. |

  % 65
  d16-3 a32-1 _( g-0) f16-3 e-1 d-0 c-3 _( bes-1) a-0 bes-1 d'32\3-4 _( c-2) bes-2 _( a -1) g\4-4 _( f-2) ] |
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
  f16-2 [ d32-0 _( e-1) f16 a-1 ] f-2 [ d-4 f a ] bes32-1 [ _(c-3) d-1 _( e-3) f-2 _( g-4) a-1 _( bes-2) ] |
  s2. |
  s2. |
  d4 s2 |

  % 70
  e,16-0 [ c,32-2 _( d-4) e16-1 g-0 ] e [ c e g ] a32-2 [ _( bes-3) c-1 _( d-3) e-3 _( f-4) g-1 _( a-3) ] |
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
  f32-2 _( d-0) e-1 _( f-2) g-0 _( a-1) b-0 cis-1 d-1 b-\3-2 _( cis-4) d-1 e-3 _( f-4) g-1 _( a-3)  bes16-4 d,,-3 c-1 \trill bes-1 |
  s2. |
  s2. |
  d,4 s2 |

  % 74
  c32-2 _( d-4) e-1 _( fis-3) g-0 _( a-1) bes-2 _( c-4) d-2 a-1 _( bes-2) c-4 d-2 _( e-4) fis-1 _( g-2)  a16-4 c,,-3 bes-1 \trill a-0 |
  s2. |
  s2. |
  s2. |

  % 75
  bes32-1 _( d-4) e-1 _( fis-3) g-0 _( a-2) bes-3 c-1 d-3 g,-0 _( a-2) bes-3 c-1 _( d-3) e-0 fis-1 g-1 _( a-3) bes-4 _( a-3) g-1 f-4 e-3 _( d-1) |
  s2. |
  s2. |
  s2. |

  % 76
  cis32\3-4 a'-3 _( g-1) f-4 e-3 _( d-1) cis-1 _( b-0) a-1 _( b-3) cis-1 \glissando d-1 e-3 _( f-4) g-1 a-3 bes-4 _( g-1) e-0 cis-2 a-1 _( g-0) f-3 _( e-1) |
  s2. |
  s2. |
  s2. |

  % 77
  d16-0  a'-2 d-4 e-0 f-1 d bes-3 a-2 gis-1 b d-4 f^\markup{"I"} |
  s2. |
  s2. |
  d4 r d'-0 |

  % 78
  c,16-4 e-2 a-3 c-1 e-0 c a g-0 fis-3 a-1 c-4 ees-3 |
  s2. |
  s2. |
  c4 r c-2 |

  % 79
  bes,16-1 d-0 g-0 bes-3 d-4 bes g-0 f-4 e-2 g-0 bes-4 cis-3 |
  s2. |
  s2. |
  bes4 r bes |

  % 80
  a,16 d-0 f-3 a-2 d-4 a f d a e'-1 g-0 cis-2 |
  s2. |
  s2. |
  a4 r a |

  % 81
  d,,16 bes'''-1 bes gis\2-4 gis f-1 f d\3-2 d b-0 gis\3-1 e-2 |
  s2. |
  s2. |
  d,2 r4 |

  % 82
  cis16-1 a''-2 a fis\2-4 fis ees-1 ees c\3-2 c a-4 fis-1 d-2 |
  s2. |
  s2. |
  cis'2 r4 |

  % 83
  b16-1 g''-2 g ees\2-3 ees cis-1 cis bes\3-2 bes g-4 e-1 cis-3 |
  s2. |
  s2. |
  b2 r4 |

  % 84
  a16-0 _(cis) cis e-1 e g32-4 _( f-2) g16 bes32 _( a-1) bes16 cis32 _( d) e16-0  g, |
  s2. |
  s2. |
  s2. |

  % 85
  f32-3 a-2 b-0 cis-2 d-4 _( cis) b a f'-1 _( e) d-3 cis-1 d e f-1 g-3 a-3 _( g-1) f\2-4 e-0 bes'-4 _( a-3) g-1 f-4 |
  s2. |
  s2. |
  s2. |

  % 86
  c32\3-3 e-0 fis\2-4 gis-1 a-2 _( gis-1) fis-4 e-0 c'-2 _( b-1) a\2-4 gis-3 a-4 b-1 c-2 d-1 e-3 _( d-1) c-4 b-3 f'-4 _( e-3) d-1 cis-4 |
  s2. |
  s2. |
  s2. |

  % 87
  d32-1 _( e-3) f-4 e d f e d f e d f e d f e d-1 g-4 f-2 e-1 d-1 c-4 bes-2 a-1 |
  s2. |
  s2. |
  s2. |

  % 88
  g32\2-1 a-3 bes-4 a g bes a g bes a g bes a g bes-4 a-3 g-1 f\3-3 e-2 d-1 cis\4-4 b-2 a-1 g-4 |
  s2. |
  s2. |
  s2. |

  % 89
  f32\5-2 d-0 \rightHandFinger #2 a''\2-4 \rightHandFinger #4 d,, \rightHandFinger #2 f32 \rightHandFinger #1 d \rightHandFinger #2 a'' \rightHandFinger #4 d,, \rightHandFinger #2
  f32 d a'' d,, f32 d a'' d,,
  f32 d a'' d,, f32 d a'' d,, |
  s2. |
  d,4 \rightHandFinger #1 s2 |
  f'8 [ f] f [ f] f [ f] |

  % 90
  e32 d-0 g'-4 d, e32 d g' d,
  e32 d-0 g'-4 d, e32 d g' d,
  e32 cis'-2 g'-4 cis, e,32 cis' g' cis, |
  s2. |
  s2. |
  e8-2 [ e] e-3  [ e] e-3 [ e]|

  % 91
  d,32-1 d-0 f'-2 d, d d f' d, 
  d32 d f' d, d d f' d,
  d32-1 a'-3 f'-2 a, d a f' a, | 
  s2. |
  s2. |
  d8 [ d] d [ d] d [ d] |

  % 92
  \override TextSpanner.bound-details.left.text = "V"
  g,32 \startTextSpan bes'-4 e bes g,32 a'-3 f'-2 a,
  g,32 g' e' g, \stopTextSpan  g, ^\markup{"III"} f' d' f,
  \override TextSpanner.bound-details.left.text = "II"
  a,32 \startTextSpan e' d'-2 e, a,32 e' cis' e, \stopTextSpan |
  s2. |
  s2. |
  g,8 [ g] g [ g-3] a [ a] |

  % 93
  d,32 ^\markup{"III"} f' d' f, d f d' f,
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
  d4 s2 |
  c8 [ c] bes-1 [ bes] a [ a] |

  % 95
  bes,32-1 g'-0 d'-4 g, bes, g' d' g,
  a,32 f'-1 d'-2 f, a, f' d' f,
  g,32-4 e'-1 d'-2 e, g, e' d' e, |
  s2. |
  d4 s2 |
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
  d,32 ^\markup{"III"} f' d' f, d f d' f,
  d32 f-2 a-1 f d f a f
  d32 ^\markup{"III"} f bes f d f bes f |
  s2. |
  s2. |
  d,8 [ d'-4] d-4 [ d] d-3 [ d] |

  % 98
  d32-3 fis-2 c'-4 fis, d fis c' fis,
  d32 fis bes-1 fis d fis bes fis
  d32-3 fis-2 a-1 fis d fis a fis |
  s2. |
  s2. |
  d8 [ d] d [ d] d [ d] |

  % 99
  d32-3 g-4 bes-1 g d g bes g
  e32-2 ^\markup{"VI"} cis' bes' cis, e, cis' bes' cis,
  f,32\5-2 d'\3-1 a'\2-4 d, f,32 d' a' d, |
  s2. |
  s2. |
  d8 [ d] e [ e] f [ f] |

  % 100
  \override TextSpanner.bound-details.left.text = "V"
  g,32 \startTextSpan d'-3 g-4 d g, d' e-2 d
  a32-4 d-3 e d a d e d
  a,32 cis'-2 e cis a, cis' e cis \stopTextSpan |
  s2. |
  s2. |
  g8 [ g] a [ a] a, [ a] |

  % 101
  d,32 d'\3-4 f\2-3 d d, d' f d
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
  cis,32-3 g'-4 <a-1 e'-0> g cis, g' <a e'> g |
  s2. |
  s2. |
  d,8 [ d'] d [ d] cis [ cis] |

  % 104
  d,32 f'-2 f'-1 f, d f f' f,
  \override TextSpanner.bound-details.left.text = "II"
  a,32 \startTextSpan e' cis' e, a, e' cis' e,
  a,32 e' cis' e, a, e' cis' e, \stopTextSpan |
  s2. |
  s2. |
  d,8 [ d'] a [ a] a [ a] |

  % 105
  d,32 ^\markup{"III"} f' d' f, d-4 f d' f,
  d32\5-1 a'-3 f'\2-2 a, d, a' f' a,
  d,,32 c''\3-3 f\2-4 c d,, c'' f c |
  s2. |
  s2. |
  d,8 [ d'] d [ d] d, [ d]|

  % 106
  g,32-2 g'-3 <bes-1 f'-4> g g, g' <bes f'> g
  g,32 g' <bes-1 e-4> g g, g' <bes e> g 
  a,32 f'-3 ees'-4 f, a, f' ees' f, |
  s2. |
  s2. |
  g8 [ g] g [ g] a [ a] |

  % 107
  bes,32-1 f'-3 ees'-4 f, bes, f' ees' f,
  \override TextSpanner.bound-details.left.text = "I"
  bes,32 \startTextSpan f'-3 <d'-4 f> f, bes,32 f' <d' f> f, \stopTextSpan
  bes,32 g'-0 <d'-4 e> g, bes,32 g' <d' e> g, |
  s2. |
  s2. |
  bes8 [ bes] bes [ bes] bes  [bes] |

  % 108
  a,32 a'-2 <d-4 e-0> a a, a' <d e> a
  \override TextSpanner.bound-details.left.text = "II"
  a,32 \startTextSpan e' <cis' a'-4> e, a,32 e' <cis' a'> e,
  a,32 e' <cis' g'-2> e, a,32 e' <cis' g'> e, \stopTextSpan |
  s2. |
  s2. |
  a8 [ a] a [ a] a [ a] |

  % 109
  d,32 a''-2 <d-4 f-1>  a d, a' <d f> a
  d,32-0 d'-3 fis-2 d d, d' fis d
  d,32 c'-1 fis-2 c d, c' fis c |
  s2.  |
  s2. |
  d,8 [ d'] d [ d] d [ d] |

  % 110
  d,32 bes'-3 g'-4 bes, d,32 bes' g' bes, 
  d,32 b'-3 gis'-4 b, d,32 b' gis' b, 
  e,32-1 d'-2 gis-4 d e, d' gis d |
  s2. |
  s2. |
  d8 [ d] d [ d] e [ e] |

  % 111
  f,32-1 c'-3 a'-4 c, f, c' a' c,
  fis,32-1 ^\markup{"IV"} ees' c'-4 ees, fis,32 ees' c' ees,
  g,32-1 d'-3 b'-4 d, g, d' b' d, |
  s2. |
  s2. |
  f8 [ f] fis [ fis] g [ g] |

  % 112
  \override TextSpanner.bound-details.left.text = "VI"
  gis,32 \startTextSpan f' d'-4 f, gis,32-1 f' d'-4 f, \stopTextSpan
  a,32-1 e'-3 d'-4 e, a,32 e' d' e,
  a,, e''-3 cis'-4 e, a,, e'' cis' e, |
  s2. |
  s2. |
  gis8 [ gis] a [ a] a, [ a] |

  % 113
  d,32 f'-3 d'-4 f, d,32 f' d' f,
  bes,32-1 f' d' f, bes,32 f' d' f,
  a,32-1 f' d' f, a,32 f' d' f, |
  s2. |
  s2. |
  d8 [ d] bes' [ bes] a [ a] |

  % 114
  gis,32-1 e'-3 d'-4 e, gis,32 e' d' e,
  a,32-1 e'-3 cis'-4 e, a,32 e' cis' e,
  g,32-1 e' cis' e, g,32 e' cis' e, |
  s2. |
  s2. |
  gis8 [ gis] a [ a] g [ g] |

  % 115
  fis,32-1 d'-3 c'-4 d, fis,32 d' c' d,
  g,-1 d'-3 b'-4 d, g, d' b' d,
  f,32-1 d'-3 b'-4 d, f,32 d' b' d, |
  s2. |
  s2. |
  fis8 [ fis] g [ g] f [ f] |

  % 116
  e,32-1 cis'-3 bes'-4 cis, e, cis' bes' cis,
  f,32 ^\markup{"III"} d' a'-4 d, f, d' a' d,
  e,32-1 cis'-2 g'-4 cis, e, cis' g' cis, |
  s2. |
  s2. |
  e8 [ e] f [ f ] e [ e] |

  % 117
  d,32-0 d'-4 f-3 d d, d' f d
  a,32 a'-3 <c f>^\markup{"I"} a a, a' <c f> a
  b,32-2 g'-0 <d'-4 f-1> g, b, g' <d' f> g, |
  s2. |
  s2. |
  d8 [ d] a [ a] b [ b] |

  % 118
  c,32-3 g'-0 <c-1 e-0> g c, g' <c e> g
  g,32-2 g'-0 ees'-1 g, g, g' ees' g,
  a,32 f'-3 ees'-4 f, a, f' ees' f, |
  s2. |
  s2. |
  c8 [ c] g [ g] a [ a] |

  % 119
  bes,32-1 f'-3 d'-4 f, bes, f' d' f,
  bes,32-1 g'-0 d'-4 g, bes, g' d' g,
  a,32 f'-3 d'-4 f, a, f' d' f, |
  s2. |
  s2. |
  bes8 [ bes] bes [ bes] a [ a] |

  % 120
  gis,32-1 e'-3 d'-4 e, gis, e' d' e,
  a,32-1 e'-3 d'-4 e, a, e' d' e,
  a,32-1 e'-3 cis'-1 e, a, e' cis' e, |
  s2. |
  s2. |
  gis8 [ gis] a [ a] a [ a] |

  % 121
  d8 [ f'32\3-4 _( e-3) d-1 e ] _( d) [ c\4-4 d-1 c bes-2 _( c-4) bes a-1 ] bes _( [ c) d e f16-4 d,\5-3 ] |
  s2. |
  a'8 s8 s2 |
  d,8 r8 r2 |

  % 122
  c8-1 [ e'32\3-4 _( d-2) c-1 d-3 _( ] c-1) [ bes\4-4 c bes a-3 _( bes-4) a g ] a _( [ bes) c d es16 c,\5-3 ] |
  s2. |
  s2. |
  s2. |

  % 123
  bes8-1 [ d'32\3-4 _( c-2) bes-1 c _( ] bes) [ a\4-4 bes-1 a g-2 _( a-4) g f-1 ] g _( [ a) bes c d16-4 bes,\5-1 ] |
  s2. |
  s2. |
  s2. |

  % 124
  a32-0^\markup{"II"} [ a' _( b-3) cis d16-2 a, ] g32-3 [ a'-1 _( b-2) cis-1 d16-1 g,, ] a32 [ d'-2 _( cis-1) b-3 cis16 g-0 ] |
  s2. |
  s2. |
  a'8. [ a16 ] g8. [ g16 ] a4 |

  % 125
  f16-2 _( [ e-1) d cis-4 ] d\4 [ f-1 _( g-3) a-3 ] bes-4 [ a _( bes) g-0 ] |
  s2. |
  s2. |
  d,2 r4 |

  % 126
  e'4-0   e4. e8 |
  bes'4-1 a2-1 |
  g'4-4   g2-4 |
  d'4-3  cis2-3  |

  % 127
  f4-1 d4.-4 d8\3-4 |
  d4-4 bes2-3 |
  a4-2 f2-2 |
  d4   bes2-1 |

  % 128
  bes'4-2 a-4^\markup{"III"} g-4 |
  d4-4   d cis-2 |
  e4-3    f e-1 |
  g4-1    a a |

  % 129
  g4-4 fis4-2 s4 |
  d4-3 d s4 |
  a4-1 a s4 |
  d2     c8-3 [ f'-1 ]  |

  % 130
  f4-1   e-0 s4|
  d4-4   c-1 s4 |
  g4-0   g-0 s4 |
  b,,4-2 c-3 bes8-1 [ ees'-4 ] |

  % 131
  ees4-2 d-4  s4  |
  c4-3  bes-3 s4 |
  f4-1  f-2   s4 |
  a,,4  bes-1 a8-0 [ d'-1 ] |

  % 132
  s4 cis4. \trill d8 |
  s4  e,2-1 |
  s2. |
  gis,,8-4 [ d'' ] a,2 |

  % 133
  \key d \major
  d4-4 fis,4.-2 g8-4 |
  s2.|
  d4 d2-3 |
  d,4 s2 |

  % 134
  e4-1 fis4.-1 g16-2 a-4 |
  s4 cis4 s4 |
  s2. |
  cis'4-3 a2 |

  % 135
  d,4-0 e4.^\markup{"II"} fis16-2 g-4 |
  s2. |
  s4 b2 |
  b4-1 g2-3|

  % 136
  fis8-2 e-1 e4. a8-1 |
  s2. |
  s2. |
  a4 cis-3 a |

  % 137
  fis4-3 b8-0 [ a-1] g-0 [ fis-3] |
  s4 fis4. s8 |
  s2. |
  d,4 d'4. d8 |

  % 138
  e4^\markup{"II"} fis16-3 g-0 a-1 g fis8 e-1 |
  s2. |
  s2. |
  cis8-3 b a4. a8 |

  % 139
  d4-0 e8^\markup{"II"} g16-4 fis-2 e8 d |
  s2. |
  s4 b4.-2 s8 |
  b8-2 a g4.-3 g8 |

  % 140
  cis'8-1 d-2 e,4.-1 a8-1 |
  s2. |
  g'8-0 fis-3 s2|
  a4 a a |

  % 141
  fis8-3 [ e-1] d-0 [ e-1] fis-3 [ gis-1] |
  s2. |
  s2. |
  d,4 \once \mergeDifferentlyDottedOff d'4.-4 d8-4|

  % 142
  a8^\markup{"II"} [ b-0 ] cis^\markup{"II"} [ d-2] b-4 [ cis-2] |
  e4 e4. g8 |
  s2. |
  cis4 a4. a8 |

  % 143
  d8-2 [   fis^\markup{"II"} ] e-0 [ d-2] cis-1 [ b-0] |
  b4-4   b4.-0 s8 |
  fis4-3 g4.-0 g8 |
  b4-1   g4.-4 g8 |

  % 144
  a8-1 [ b-0] cis^\markup{"II"} [ d-2] e-0 [ cis8^\markup{"II"} ] |
  fis8-1 [ d-0] e [ fis-3] g-0 [ e ] |
  s2. |
  a4 a4. a8 |

  % 145
  d4-2 fis4.-1^\markup{"II"} fis8 |
  s4 d'4. d8 |
  fis8-3 [ e-1] d-0 [ fis] e-3 [ g] |
  d,4 s2 |

  % 146
  e4-0 a4.-4^\markup{"II"} g8-2 |
  cis8-2 s8 s2 |
  s2. |
  a''8-1 [ b-0] cis [ a] b-3 [ cis ] |

  % 147
  fis8-1 [ e-0] g^\markup{"III"} [ fis^\markup{"II"} ] b-4 [ a-4]  |
  s4 d8 d-2  d-3 [ d-1] |
  s2 b8-0 b-3 |
  d8-3 [ cis-2] b [ a-1] g-1 [ fis-2] |

  % 148
  g8-4 [ fis-2] e2-0 |
  cis8-2 [ d-3] d4-3 cis-2 |
  a8-1 a-1 a4 s4 |
  e8 [ d ] s4 a4 |

  % 149
  d16-4 _( cis-2) b-0 a-2 gis-1 b-0 d-4 fis-2 e8-0 e |
  s2 s8 b8 |
  s2 s8 gis8-1  |
  d,8 r8 r4 r8 d'8 |

  % 150
  e8 r8 r4 fis,8-4 e'-0 |
  s2 s8 cis8-2 |
  a8-1 s2 fis8-4 |
  cis16-3 ^( d-4) cis ^( b-1) a-0 ^( cis-3) e-1 g-0 r8 ais,8-1 |

  % 151
  d8-2 r8 r4 e,8-1 d'\3-4  |
  fis,8-4 s2 e8 |
  s2. |
  b16-1 ^( cis-3) d-0 b g-4 b-1 d-0 fis-3 r8 gis,8-1  |

  % 152
  cis16\2-2 _( b-0) a-2 b cis-3 e-0 g\2-4 b-3 a-1 g-4 _( fis-3) e-1 |
  e4-1 s2 |
  s2. |
  a4 a2 ] |

  % 153
  fis16-3 a-1 fis d-2  a\3-1 d-2 a fis-3 d-0 fis-3 _( e-1) d |
  s2. |
  s2. |
  d4 r2 |

  % 154
  cis16-1 a''-3 e-2 cis-4  a\3^\markup{"II"} cis a e cis-3 e-1 _( d-0) cis |
  s2. |
  s2. |
  cis4 r2 |

  % 155
  b16-1 gis''-4 d-2 b-1 gis-1 b-0 gis e-2 b-1 d-4 _( cis-3) b |
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
  fis16-3 d-0 a-0 d fis-3 d-4 a' \startTextSpan fis d'-2 a f d \stopTextSpan |
  s2. |
  s2. |
  d,4 r2 |

  % 158
  a''16-4 e-0 cis-2 e a\2-2 e-0 cis'-1 a-2 e'-1 cis-2 fis-4 cis |
  s2. |
  s2. |
  a'4 r2 |

  % 159
  d16-1 fis-4 _( d) b\2-3 fis^\markup{"VII"} b d, fis b,-0 d\2-3 cis-1 b |
  s2. |
  s2. |
  a4 r2 |

  % 160
  cis16-2 e-0 cis a^\markup{"II"} e a cis,-4 e a, cis-1 _( e\5-4) g-0  |
  s2. |
  s2. |
  a4 r2 |

  % 161
  fis16\4-2 d-3 a''-4 a a fis^\markup{"II"} d-2 a fis-3 d-4 a d |
  s2. |
  s2. |
  d,4 r2 |

  % 162
  e16-1 cis-3 a''-4 a a e-0 cis-2 a^\markup{"II"} e cis-4 a-0 cis |
  s2. |
  s2. |
  s2. |

  % 163
  d16-0 b-1 a''-4 a a fis-1 d-2 b-3 d^\markup{"VII"} gis-3 b gis ] |
  s2. |
  s2. |
  s2. |

  % 164
  a16\2-4 e-0 a-4 a a cis,-1 e-0 e e a,-1 cis-2 g-0 |
  s2. |
  s2. |
  a'4 r2 |

  % 165
  fis16-3 d-4 a'-1 a a fis d fis a^\markup{"II"} d-2 fis b,, |
  s2. |
  s2. |
  d,4 r2 |

  % 166
  \override TextSpanner.bound-details.left.text = "II"
  cis16-4 e \startTextSpan a' a a e cis e a \stopTextSpan cis-2 e-0 a,, |
  s2. |
  s2. |
  s2.  |

  % 167
  b16-2 d-0 a'-3 a a d, b d gis-1 b-0 d-4 e,-2 |
  s2. |
  s2. |
  s2.  |

  % 168
  a,,16  e'-2 a-3 a a e a cis-4 e-0 cis a g-0 |
  s2. |
  s2. |
  s2. |

  % 169
  s4 r16 a'-4 a fis-2 fis d d fis  |
  \once \stemUp fis4-3 s8. d'16-3 d d d d |
  s2. |
  r16 a' a a a2 |

  % 170
  e4-0 r16 a-4 a e-0 e cis cis e |
  cis4-2 s8. cis16-2 cis a a cis |
  s2. |
  r16 a a a a2 |

  % 171
  d4-4 r16 b'-4 b gis-4 gis e-0 e gis-4  |
  gis4-1 s8. d'16-2 d d d d |
  s4 s8. b16-3 b gis-1 gis b |
  r16 a a a a2 |

  % 172
  \override TextSpanner.bound-details.left.text = "II"
  a4 \startTextSpan r16 a a a \stopTextSpan a-4 ^\markup{"III"} g g g |
  cis4 s16 cis cis cis d d e-3 e |
  a4 r16 a a a b-2 b cis-4 cis |
  r16 a a a a2 |

  % 173
  \override TextSpanner.bound-details.left.text = "II"
  fis4 r16 a,-1 a a b-0 b cis \startTextSpan cis |
  d4 s16 a a a a a a a|
  s2 s16 g-4 g g |
  r16 d d d <d d,>2 |

  % 174
  d4-2 r16 \stopTextSpan d'16-4 ^\markup{"VII"} d d d-4 ^\markup{"VIII"} c c c |
  a4 s16 fis' fis fis g g a a|
  fis4-3 s16 d' d d e e fis fis |
  r16 <d d,> <d d,> <d d,> <d d,>2 |

  % 175
  b4-1 r16 b16 b b cis16-4 ^\markup{"VIII"} d-4 ^\markup{"VII"} d d |
  g4-2 s16 g g g g fis fis fis |
  s4 s8 fis16-4 fis e-3 d d d |
  r16 <d d,> <d d,> <d d,> <d d,>2 |

  % 176
  g,16\2-1 g g g fis16\3-2 fis ^\markup{"II"} fis fis e-0 e e e |
  fis16-4 e-0 e e e d-2 d d d cis-1 cis cis|
  b16-2 cis-3 cis cis d-3 a a a a-2 g-4 g g |
  s4 s16 fis-3 fis fis g-4 a, a a |

  % 177
  fis4 ^\markup{"II"} fis4.-2 fis8 |
  d4-2 d4._\2\tweak extra-offset #'(1.25 . -2)-3 d8 |
  \set fingeringOrientations = #'(right) <fis \tweak extra-offset #(0.5 . 0)-3 a>4 s2 |
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
  b4-4 b8 a-2 g fis-4 |

  % 180
  \override TextSpanner.bound-details.left.text = "II"
  c8 b8-0 r8 b'8-4 a-4 [ g-4] \startTextSpan |
  s4 \stemUp cis8-1 ^\markup{"II"} [ a-1] \stemNeutral b-0 [ cis] |
  s2. |
  g4 r8 \once \autoBeamOff g8-2 fis-2 [ e] |

  % 181
  fis4 fis4. fis8 \stopTextSpan |
  d4-2 d4. d8 |
  s2. |
  d8-0 [ fis-3] b-4 [ a] g-3 [ fis-4] |

  % 182
  e4-0 e4. e8 |
  d4-2 cis4. cis8 |
  s2. |
  g8-4 [ e-1] a-1 [ g-0] fis-4 [ e] |

  % 183
  a8-4 [ fis-1] b-4 ^\markup{"V"} [ a] g-2 [ fis] ^\markup{"II"} |
  c8-3 [ d] d-3 [ c-3] b-3 [ \stemDown a ] \stemNeutral |
  s4 g4-0 s4 |
  fis8 d g,4 r4 |

  % 184
  e8-0 [ d-2] cis4. \trill d8-2 |
  g8-0 [ fis-3] e2-1 |
  s2. |
  d4 a'2 |

  % 185
  d4-2 a4.-1 a8 |
  a4-1 fis4. \tweak Fingering.extra-offset #'(2 . -1.5)-3 fis8 |
  fis4-3 d4.-4 d8 |
  d,4 s2 |

  % 186
  a4-1 a4. a8 |
  fis4-3 fis4. fis8 |
  s2. |
  c'4-2 c4. c8 |

  % 187
  b4-0 b4.-0 b8 |
  g4-0 g4.-0 g8 |
  s2. |
  b4-1 e2_\5-4 |

  % 188
  cis8-1 d-2 d4. cis8 ^\markup{"II"} |
  g8-0 [ fis-3 ] e-1 [ d-0 ] e4  |
  s2. |
  a,4-0 s2 |

  % 189
  \override TextSpanner.bound-details.left.text = "II"
  d4-2  fis4. \startTextSpan fis8 |
  s4 d'4. \tweak Fingering.extra-offset #'(2 . -1.5)-3 d8 |
  d4 a'4. a8  |
  d,4 d'4. d8 |

  % 190
  fis4 fis4. fis8 \stopTextSpan |
  d4-3 d4. d8  |
  a4 a4. a8 |
  c4-2 c4. c8 |

  % 191
  fis4 e4. e8 |
  d4 a4. a8 |
  g4 g4. g8  |
  b4 cis4. cis8 |

  % 192
  e8 [ d ]  d4. cis8 |
  a4 s2 |
  fis4 e8 [ fis ] g4  |
  d4 a s4  |

  % 193
  d4 fis4. fis8 |
  s4 d4. d8 |
  s2. |
  fis'8 e d4. d8 |

  % 194
  g4 a4. a8 |
  d4 d4. d8 |
  s2. |
  e4 fis4. fis8  |

  % 195
  b4 b4. b8 |
  d4 e4. e8 |
  s2. |
  g4 gis4. gis8 |

  % 196
  cis8 [ d ] d4 cis |
  e8  [ fis ] e2 |
  s2. |
  a4 a2 |

  % 197
  d4 d4. d8 |
  fis4 fis4. fis8 |
  s2. |
  d,4 d4. d8 |

  % 198
  cis4 c4. c8 |
  e4 fis4. fis8 |
  s2. |
  a'4 d,4. d8 |

  % 199
  b4 e,4. e8 |
  g8 [ d ] d4. d8 |
  s2. |
  g4 gis4. gis8 |

  % 200
  e8 [ fis ] g8 [ b a g ] |
  d4 cis4. cis8 |
  s4 e4. e8 |
  a4 a,4. a8 |

  % 201
  fis4^\markup { arpeggio } fis fis |
  s4 a4 a |
  r4 d4 d |
  d4 d cis |

  % 202
  fis4 fis fis  |
  b4 b b |
  d4 d d |
  b4 b a |

  % 203
  e4 a s4 |
  b4 cis cis |
  d4 e e |
  g4 g g |

  % 204
  b4 e,8 [ fis ] g4 |
  d4 d cis |
  e4 e e |
  gis4 a a |

  % 205
  g4 fis fis |
  d4 a8 [ b8 ] c4 |
  d4 d d |
  d4 d d |

  % 206
  fis4 e e |
  b4 b8 [ cis ] d4 |
  d4 e e |
  g,4 g gis  |

  % 207
  e4 e e |
  d4 cis cis |
  e4 e8 [ fis ] g4 |
  a4 a ais |

  % 208
  d8 [b' ] s2 |
  s8 d8 cis4. d8 |
  fis8 [ e ] e2 |
  b8 g a2 |

  % 209
  \key d \minor d,4 bes4. bes8 |
  \key d \minor s4 f,2 |
  \key d \minor s2. |
  d4 d2|

  % 210
  bes8. [ e16 ] bes [ ( g a e ) ] c8 [ a' ] |
  e8. s16 s4 s8 e8 |
  s2. |
  c4 s4 s8 c8 |

  % 211
  a8. [ d16 ] a [ ( fis g d ) ] bes8 [ g'8 ] |
  d8. s16 s4 s8 bes8 |
  s2. |
  bes8. s16 s4 s8 s8 |

  % 212
  g8. [ e'16 ] cis [ ( a bes g ) ] cis,8 [ a'8 ] |
  s4 s4 s8 e8 |
  s2. |
  a4 s4 s8 cis8 |

  % 213
  f8. [ d16 ] f [ a d cis ] d [ ( e f ) a, ] |
  s2. |
  s2. |
  d8. s16 s2 |

  % 214
  f'8. [ d,16 ] g [ bes es d ] es [ ( c f, a,) ] |
  bes'8. s16 s2 |
  d8. s16 s2 |
  g,8. s16 s2 |

  % 215
  es''8. [ cis16 ] d [ a bes fis ] g [ ( d es g ) ] |
  f8. s16 s2 |
  s2. |
  bes8. s16 s2 |

  % 216
  cis8 [ d8 ] d8. [ b16 ] cis [( e g ) a, ] |
  g8 [ f ] e8. s16 s4|
  s2. |
  a8 [ g ] a8. s16 s4 |

  % 217
  d,16 [ ( a' cis g' ) ] f [ d ( cis d ) ] d, [ d' ( cis d ) ] |
  s2.|
  s2. |
  s2. |

  % 218
  e,16 [ ( g cis a' ) ] g [ d ( cis d ) ] e, [ d' ( cis d ) ] |
  s2.|
  s2. |
  s2. |

  % 219
  f,16 [ ( a cis bes') ] a [ d, (cis d ) ] f, [ d' ( cis d ) ] |
  s2.|
  s2. |
  s2. |

  % 220
  g,16 [ ( bes d bes' ) ] e, [ d ( cis d ) ] a [ d cis e ] |
  s2.|
  s2. |
  s2. |

  % 221
  f16 [ d a ( g ] f  ) [ a d, ( c ] b ) [ g' d' f ] |
  s2.|
  s2. |
  s2. |

  % 222
  e16 [ c g ( f ] e ) [ g c, ( bes ] a ) [ f' c' es ] |
  s2. |
  s2. |
  s2. |

  % 223
  d16 [ bes f ( es ] d ) [ f bes, ( a ] g ) [ cis e bes' ] |
  s2. |
  s2. |
  s2. |

  % 224
  a16 [( f d ) bes' ] g [ e cis e ] a, [ g' f e ] |
  s2. |
  s2. |
  s2. |

  % 225
  d16 [ a' b cis ] d [ f g a ] bes16 [ g,32 ( f e f g16 ) ] |
  s2. |
  s2. |
  s2. |

  % 226
  c,16 [ g' a bes ] c [ e f g ] a [ f,32 ( e d e f16 ) ] |
  s2. |
  s2. |
  s2. |

  % 227
  bes,16 [ d''32 ( c bes c d16 ) ] g, [ bes32 ( a g a bes16 ) ] e,16 [ g32 ( f e f g16 ) ] |
  s2. |
  s2. |
  s2. |

  % 228
  cis,16 [ e32 ( d cis d e cis ) ] g16 [ bes32 ( a g a bes g ) ] e [ ( d cis d e f g e ) ] |
  s2. |
  s2. |
  s2. |

  % 229
  f16 [ a ] s16 a16  s16 a16 [ s16 a16 ] s16 a16 [ s16 a16 ] |
  s2. |
  s2. |
  d16 [ s16 a'16 ] s16 bes16 [ s16 a16 ] s16 g16 [ s16 f ] s16  |

  % 230
  e16 [ a ] s16 a16  s16 a16 [ s16 a16 ] s16 a16 [ s16 a16 ] |
  s2. |
  s2. |
  c16 [ s16 bes'16 ] s16 a16 [ s16 g16 ] s16 f16 [ s16 e ] s16 |

  % 231
  d,16 [ a' ] s16 a16  s16 a16 [ s16 a16 ] s16 a16 [ s16 a16 ] |
  s2. |
  s2. |
  bes16 [ s16 a'16 ] s16 g16 [ s16 f16 ] s16 e16 [ s16 d ] s16  |

  % 232
  e16 [ a ] s16 a16  s16 a16 [ s16 a16 ] s16 a16 [ s16 a16 ] |
  s2. |
  s2. |
  a16 [ s16 f'16 ] s16 g16 [ s16 bes16 ] s16 a16 [ s16 g ] s16  |

  % 233
  f16 [ a ] s16 a16  s16 a16 [ s16 a16 ] s16 a16 [ s16 a16 ] |
  s2. |
  s2. |
  d16 [ s16 a'16 ] s16 gis16 [ s16 g16 ] s16 fis16 [ s16 f ] s16  |

  % 234
  e16 [ a ] s16 a16  s16 a16 [ s16 a16 ] s16 a16 [ s16 a16 ] |
  s2. |
  s2. |
  c16 [ s16 g'16 ] s16 fis16 [ s16 f16 ] s16 e16 [ s16 es ] s16  |

  % 235
  d,16 [ a' ] s16 a16  s16 a16 [ s16 a16 ] s16 a16 [ s16 a16 ] |
  s2. |
  s2. |
  bes16 [ s16 e16 ] s16 f16 [ s16 fis16 ] s16 g16 [ s16 gis ] s16  |

  % 236
  s16 a [ s16 a16 ] s16 a16 [ s16 a16 ] s16 a16 [ s16 a16 ] |
  s2. |
  s2. |
  <a, a'>16 [ s16 <b a'>16 ] s16 <c a'>16 [ s16 <cis a'>16 ] s16 <d b'>16 [ s16 <e cis'>16 ] s16  |

  % 237
  s16 a [ s16 a16 ] s16 a16 [ s16 a16 ] s16 a16 [ s16 a16 ]  |
  s2. |
  s2. |
  <f d'>16 [ s16 <d c'>16 ] s16 <g bes>16 [ s16 <f bes>16 ] s16 <e bes'>16 [ s16 <d bes'>16 ] s16 |

  % 238
  s16 a [ s16 a16 ] s16 a16 [ s16 a16 ] s16 a16 [ s16 a16 ]  |
  s2. |
  s2. |
  <e bes'>16 [ s16 <c bes'>16 ] s16 <f a>16 [ s16 <e a>16 ] s16 <d a'>16 [ s16 <c a'>16 ] s16 |

  % 239
  s16 a [ s16 a16 ] s16 a16 [ s16 a16 ] s16 a16 [ s16 a16 ]  |
  s2. |
  s2. |
  <d a'>16 [ s16 <b a'>16 ] s16 <e g>16 [ s16 <d g>16 ] s16 <cis g'>16 [ s16 <b g'>16 ] s16 |

  % 240
  s16 a [ s16 a16 ] s16 a16 [ s16 a16 ] s16 a16 [ s16 a16 ]  |
  s2. |
  s2. |
  <cis g'>16 [ s16 <cis e>16 ] s16 <cis a'>16 [ s16 <a g'>16 ] s16 <b f'>16 [ s16 <cis e>16 ] s16 |

  % 241
  \tuplet 3/2 { g,16 [ ( d' bes' ) ] } |
  s2. |
  s2. |
  d16 s16 s8 s2 |

  % 242
  \tuplet 3/2 { f,16 [ ( c' a' ) ] }  |
  s2. |
  s2. |
  s2. |

  % 243
  \tuplet 3/2 { es,16 [ ( bes' g' ) ] } |
  s2. |
  s2. |
  s2. |

  % 244
  \tuplet 3/2 { a,16 [ ( cis e ) ] } |
  s2. |
  s2. |
  s2. |

  % 245
  \tuplet 3/2 { d16 [ e f ) ] }|
  s2. |
  s2. |
  s2. |

  % 246
  \tuplet 3/2 { c16 [  d es ) ] } |
  s2. |
  s2. |
  s2. |

  % 247
  \tuplet 3/2 { cis16 ) [  cis ( b  ] } |
  s2. |
  s2. |
  s2. |

  % 248
  a16 ) [ ( b32 cis d e f g ] a [ b cis d e f g f ] e [ d cis b a g f e ]  |
  s2. |
  s2. |
  s2. |

  % 249
  d8 ) r8 a'4. a8 |
  s4 f2 |
  s2. |
  s4 d2 |

  % 250
  e'4 e4. e8 |
  bes4 a2 |
  g4 g2 |
  d4 cis2 |

  % 251
  f4 d4. c8 |
  a4 f2 |
  f4 s2 |
  d4 bes2 |

  % 252
  bes4 a g16 [ ( f e f ) ] |
  g4 f s4 |
  s2. |
  g4 a cis |

  % 253
  g16 [ ( e ) f ( d ) ] bes'4 a |
  s4 f4 fis |
  s2. |
  d4 d c |

  % 254
  d4 c bes |
  g4 fis g |
  s2. |
  bes4 a g |

  % 255
  cis,16 [ ( e g bes ] a [ g e' g, ])  f4 |
  s2. |
  s2. |
  s2 d'4 |

  % 256
  s8 e8 e4. d8 |
  s2. |
  s2. |
  g,4 a2 |

  % 257
  d2.\fermata \bar "|."
  s2. |
  s2. |
  d2. |
}

merges = {
  \mergeDifferentlyHeadedOn
  \mergeDifferentlyDottedOn
  \shiftOff
}

\score {
  \new Staff {
    \clef "treble_8"
    \key d \minor \time 3/4
    \set Score.currentBarNumber = #2
    \partial 2
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
