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

  %
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
  e8 r8 e8 r8 s4 |
  bes8 s8 a8 s8 s4 |
  \shiftOn g8. f16 g8. bes16 a8. [ g16 ] |
  d'4 cis2 |

  % 15
  e8 r8  d8. [ f16 ] e8. [ cis16-4 ] |
  a8 s8 s2 |
  f8. [ e16 ] f8. [ a16 ] g8. [ e16-3 ] |
  d4 bes4.. bes16-1 |

  % 16
  d8.-4 [ e16-4 ] d4-4 ( cis8.)\trill  [ d16 ] |
  f8.\tweak extra-offset #'(2 . -1.5)-3 [ g16-3 ] e2-1 |
  s2. |
  a8. [ g16-2 ] a2 |

  % 17
  d8.-4 [ e16\2-3 ] f8.-4 [ g32-1 a-3 ] bes8.-4 [ f16-2 ] |
  d4 s4.. d'16\tweak extra-offset #'(0 . -3)-3 |
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
  d,16-1 [ bes,32-1 _( c-3) d16-0 f-3 ] d [ bes d f\5-4 ] g32\4-1 [ _( a-3) bes-1 _( c-3) d-2 _( e-4) f-1 _( g-3) ] |
  s2. |
  s2. |
  s2. |

  % 72
  cis,32\3-2 [ bes'-3 _( a-1) g-4 f-2 _( e-1) d\3-3 _( c-1) ] bes\3-2 [ _( a-1) g-4 _( f-2) e-1 _( d-0) cis-3 _( b-1) ] a-0 [ _( b-1) cis-3 _( d-4) e-1 _( f-2) g-4 _( e-1) ] |
  s2. |
  s2. |
  d4 s2 |

  % 73
  f32-2 _( d-0) e-1 _( f-2) g-0 _( a-1) b-0 cis-1 d-1 b-\3-2 _( cis-4) d-1 e-3 _( f-4) g-1 _( a-3)  bes16-4 d,,-3 c-1 \trill bes-1 |
  s2. |
  s2. |
  d4 s2 |

  % 74
  c32-2 _( d-4) e-1 _( fis-3) g-0 _( a-1) bes-2 _( c-4) d-2 a-1 _( bes-2) c-4 d-2 _( e-4) fis-1 g-2 a16-4 c,,-3 bes-1 \trill a-0 |
  s2. |
  s2. |
  s2. |

  % 75
  bes32-1 _( d-4) e-1 _( fis-3) g-0 _( a-2) bes-3 c-1 d-3 g,-0 _( a-2) bes-3 c-1 _( d-3) e-0 fis-1 g-1 _( a-3) bes-4 _( a-3) g-1 f-4 _( e-3) d-1 |
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
  c32\3-3 e-0 fis\2-4 gis-1 a-2 _( gis-1) fis-4 e-0 c'-2 _( b-1) a\2-4 gis-3 a b c-2 d-1 e-3 _( d-1) c-4 b-3 f'-4 _( e-3) d-1 cis-4 |
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
  f8 [ f] f [ f] f [ f] |
  d,4 \rightHandFinger #1 s2 |

  % 90
  e32 d-0 g'-4 d, e32 d g' d,
  e32 d-0 g'-4 d, e32 d g' d,
  e32 cis'-2 g'-4 cis, e32 cis g' cis, |
  s2. |
  s2. |
  e'8-2 [ e]
  e8-3  [ e]
  e8-3  [ e]|

  % 91
  d,32 d-0 f'-2 d, d d f' d, 
  d32 d f' d, d d f' d,
  d32 d f' d, d d f' d, | 
  s2. |
  s2. |
  d8-1 [ d] d [ d] d [ d] |

  % 92
  \override TextSpanner.bound-details.left.text = "V"
  g,32 \startTextSpan bes'-4 e bes g,32 a'-3 f'-2 a,
  g,32 g' e' g, \stopTextSpan  g, ^\markup{"III"} f' d' f,
  \override TextSpanner.bound-details.left.text = "II"
  a,32 \startTextSpan f' e'-2 f, a,32 f' cis' f, \stopTextSpan |
  s2. |
  s2. |
  g,8 [ g] g [ g-3] a [ a] |

  % 93
  d2. |
  f2. |
  s2. |
  d4 a bes |

  % 94
  es2. |
  fis2. |
  s2. |
  c4 bes a |

  % 95
  d2. |
  g4 f e |
  s2. |
  bes4 a g |

  % 96
  d2 cis4 |
  f4 e g |
  s2. |
  a2. |

  % 97
  d4 a4 bes4 |
  f2. |
  s2. |
  d2. |

  % 98
  c4 bes4 a4 |
  fis2. |
  s2. |
  d2. |

  % 99
  bes4 bes'4 a4 |
  g4 cis d |
  s2. |
  d4 e f |

  % 100
  g8 [ f8 ] e2 |
  d4 d cis |
  s2. |
  g4 a2 |

  % 101
  f2.  |
  d4 a bes |
  s2. |
  d,2. |

  % 102
  fis2. |
  c4 bes a |
  s2. |
  d2. |

  % 103
  g4 f e |
  bes4 a a |
  s2 g4 |
  d2 cis4 |

  % 104
  f4 cis2 |
  a4 e2 |
  f4 s2 |
  d4 a2 |

  % 105
  d4 f f |
  f4 a c |
  s4 d a' |
  d4 d d |

  % 106
  f4 e es |
  bes2 s4 |
  g2 f4 |
  g,2 a4 |

  % 107
  es4 bes' e, |
  s4 d4 d |
  f2 g4 |
  bes2 bes4 |

  % 108
  e4 a g |
  d4 cis2 |
  a4 e2 |
  a4 a2 |

  % 109
  f4 fis2 |
  a4 d c  |
  d4 a'4 s4 |
  d4 d2 |

  % 110
  g4 gis2 |
  bes4 b d |
  s2. |
  d4 d e |

  % 111
  a4 c b |
  c4 es d |
  s2. |
  f4 fis g |

  % 112
  d4 d cis |
  f4 e2 |
  s2. |
  gis4 a2  |

  % 113
  d2. |
  f2. |
  s2. |
  d,4 bes' a |

  % 114
  d4 cis2 |
  e2. |
  s2. |
  gis4 a g |

  % 115
  c4 b2 |
  d2. |
  s2. |
  fis4 g f |

  % 116
  bes4 a g |
  cis4 d cis |
  s2. |
  e4 f e |

  % 117
  fis4 f f |
  d4 c d  |
  s4 a4 g |
  d a b |

  % 118
  e4 es es |
  c4 s2 |
  g4 g f |
  c4 g a |

  % 119
  d4 d d |
  f,4 g f |
  s2. |
  bes4 bes a |

  % 120
  d4 d cis  |
  e4 e2 |
  s2. |
  gis4 a2 |

  % 121
  d,8 [ f'32 ( e d e ] d [ c d c bes c bes a ] bes [ c d e f16 ) d, ] |
  s2. |
  s2. |
  s2. |

  % 122
  c8 [ e'32 ( d c d ] c [ bes c bes a bes a g ] a [ bes c d es16 ) c, ] |
  s2. |
  s2. |
  s2. |

  % 123
  bes8 [ d'32 (c bes c ] bes [ a bes a g a g f ] g [ a bes c d16 ) bes, ] |
  s2. |
  s2. |
  s2. |

  % 124
  a32 [ ( a' b cis d16 ) a, ] g32 [( a' b cis d16 ) g,, ] a32 [ ( d' cis b cis16 ) g ] |
  s2. |
  s2. |
  s2. |

  % 125
  f16 [ ( e d cis) ] d [( f g a ) ] bes [ a bes g ] |
  s2. |
  s2. |
  s2. |

  % 126
  e'4 e4. e8 |
  bes'4 a2 |
  g4 g2 |
  d4 cis2  |

  % 127
  f4 d4. d8 |
  a4 f2 |
  f4 s2 |
  d4 bes2 |

  % 128
  bes'4 a g |
  d'4 d cis |
  g4 f e |
  g4 a a |

  % 129
  g4 fis4 s4 |
  d4 d s4 |
  a4 a s4 |
  d4 d c8 [ f' ]  |

  % 130
  f4 e s4|
  d4 c s4 |
  g4 g s4 |
  b,,4 c bes8 [ es' ] |

  % 131
  es4 d s4  |
  f,4 f s4 |
  s2. |
  a,,4 bes a8 [ d' ] |

  % 132
  s4 cis4. d8 |
  s4  e2 |
  s2. |
  gis,,8 [ d'' ] a,2 |

  % 133
  d4 fis,4. g8 |
  s2.|
  s2. |
  \key d \major d4 d2 |

  % 134
  e4 fis4. ( g16 [ a ] ) |
  s4 cis4 s4 |
  s2. |
  cis4 a2 |

  % 135
  d,4 e4. ( fis16 [ g ] ) |
  s2. |
  s2. |
  b4 g2|

  % 136
  fis8 [ e ] e4. a8 |
  s2. |
  s2. |
  a4 cis 2 |

  % 137
  fis4 b8 [ a g fis ] |
  s4 fis4 s4 |
  s2. |
  d4 d4. d8 |

  % 138
  e4 fis16 ( [ g a g ] fis 8 ) [ e ] |
  s2. |
  s2. |
  cis8 [ b ] a4. a8 |

  % 139
  d4 e8 [ g16 fis ] e8 [ d ] |
  s2. |
  s2. |
  b8 [ a ] g4. g8 |

  % 140
  cis'8 [ d ] e,4. a8 |
  g8 [ fis ] s2|
  s2. |
  a4 a2 |

  % 141
  fis8 [ e d e fis gis ] |
  s2. |
  s2. |
  d4 d4. d8|

  % 142
  a8 [ b cis d b cis ] |
  e4 e4. g8 |
  s2. |
  cis4 a4. a8 |

  % 143
  d8 [ fis e d cis b ] |
  fis4 b4. g8 |
  s4 g4. s8 |
  b4 g4. g8 |

  % 144
  a8 [ b cis d e cis8 ] |
  fis8 [ d ] e [ fis ] g [ e ] |
  s2. |
  a4 a4. a8 |

  % 145
  d4 fis4. fis8 |
  fis8 [ d ] d'4. d8 |
  s2. |
  d8 s8 d8 [ e fis g ] |

  % 146
  e4 a4. g8 |
  cis8 s8 s2 |
  s2. |
  a8 [ b cis a b cis ] |

  % 147
  fis8 [ e ] g [ fis ] b [ a ]  |
  s2 d8 [ b ] |
  s2. |
  d8 [ cis ] b [a ] g [ fis ] |

  % 148
  g8 [ fis ] e2 |
  cis8 [ d ] d4 cis |
  s2. |
  e8 [ d ] a'2 |

  % 149
  d16 [ cis b a ] gis ( [ b d fis ] ) e8 [ e ] |
  s2 s8 b8 |
  s2 s8 gis8  |
  d,8 r8 r4 r8 d8 |

  % 150
  e8 r8 r4 fis,8 [ e' ] |
  cis8 s2 cis8 |
  a8 s2 fis8 |
  cis16 [ d cis b ] a [ ( cis e g ) ] r8 ais,8 |

  % 151
  d8 r8 r4 e,8 [ d' ]  |
  fis,8 s2 e8 |
  s2. |
  b16 [ cis d b ] g [ ( b d fis ) ] r8 gis,8  |

  % 152
  cis16 [ b a b ] cis [ ( e g b )] a [ g fis e ] |
  e16 s16 s8 s2 |
  s2. |
  a16 s16 s8 s2 ] |

  % 153
  fis16 [ a fis d ] a [ ( d a fis )] d [ fis e d ] |
  s2. |
  s2. |
  s2. |

  % 154
  cis16 [ a'' e cis ] a [ cis a e] cis [ e d cis ] |
  s2. |
  s2. |
  s2. |

  % 155
  b16 [ gis'' d b ] gis [ b gis e ] b [ d cis b ] |
  s2. |
  s2. |
  s2. |

  % 156
  a16 [ b cis d ] e [ cis a cis ] e [ g fis e ] |
  s2. |
  s2. |
  s2. |

  % 157
  d' [ a fis' d ] |
  s2. |
  s2. |
  s2. |

  % 158
  a'16 [ e cis e ] a [ e cis' a ] e' [ cis fis cis ] |
  s2. |
  s2. |
  s2. |

  % 159
  d16 [ fis d b ] fis [ b d, fis ] b, [ d cis b ] |
  s2. |
  s2. |
  s2. |

  % 160
  e [ a cis, e ] a, [ cis e g ] |
  s2. |
  s2. |
  s2. |

  % 161
  fis16 [ d a'' a ] a [ fis d a ] fis [ d a d ] |
  s2. |
  s2. |
  s2. |

  % 162
  e16 [ cis a'' a ] a [ e cis a ] e [ cis a cis ] |
  s2. |
  s2. |
  s2. |

  % 163
  d16 [ b a'' a ] a [ fis d b ] d [ gis b gis ] |
  s2. |
  s2. |
  s2. |

  % 164
  a16 [ e a a ] a [ cis, e e ] e [ a, cis g ] |
  s2. |
  s2. |
  s2. |

  % 165
  fis16 [ d a' a ] a [ fis d fis ] a [ d fis b,, ] |
  s2. |
  s2. |
  s8 a'16 [ a ] a s16 s8 s4 |

  % 166
  cis16 [ d a' a ] a [ e cis e ] a [ cis e a,, ] |
  s2. |
  s2. |
  s8 a16 [ a ] a s16 s8 s4  |

  % 167
  b16 [ d a' a ] a [ d, b d ] gis [ b d e, ] |
  s2. |
  s2. |
  s8 a16 [ a ] a s16 s8 s4  |

  % 168
  a,16 [ e' a a ] a [ e a cis ] e [ cis a g ] |
  s2. |
  s2. |
  s8 a16 [ a ] a s16 s8 s4 |

  % 169
  fis16 [ a, a a ] a16 a''16 [ a fis ] fis [ d d fis ]  |
  s2. |
  s2. |
  s4 s16 r16 r16 d16 d [ a a d ] |

  % 170
  e16 a,,16 [ a a ] a a''16 [a e ] e [ cis cis e ]  |
  s2. |
  s2. |
  cis16  s4 r16 r16 cis16 cis [ a a cis ]  |

  % 171
  d16 a,16 [ a a ] a b''16 [ b gis ] gis [ e e gis ] |
  s2. |
  s2. |
  gis16 s4 r16 r16 b16 b [ d d d ]|

  % 172
  a16 a,, [ a a ] a  a''16 [ a a ] a [ g g g ] |
  s2. |
  s2. |
  cis16 s4 a16 [ a a ] b [ b cis cis ]  |

  % 173
  fis16 r16 r8 s2 |
  d'16  d, [ d d ] d [ a' a a ] b  [ b cis cis ]  |
  s2. |
  r16  d, [ d d ] d [ a' a a ] a  [ g g g ] |

  % 174
  d16 r16 r8 r16 d'16 [ d d ] d [ c c c ] |
  fis,16 d [ d d ] d s16 s8 s4 |
  s2. |
  r16  d16 [ d d ] d  d' [ d d ] e [ e fis fis ] |

  % 175
  b16 r16 r8 r16 b16 [ b b ] cis16 [ d d d ]  |
  g'16 d,16 [ d d ] d s16 s8 s4 |
  s2. |
  s16 d,16 [ d d ] d g'  [ g g ] g [ fis fis fis ] |

  % 176
  g,16 [ g g g ]   fis16 [ fis fis fis ] e [ e e e ] |
  s4 e'16 [ d d d ] d [ cis cis cis ] |
  s2. |
  fis [ e e e ] s16 fis,16 [ fis fis ] g [ a a a ] |

  % 177
  fis4 fis4. fis8 |
  d4 d4. d8 |
  s2. |
  d,4 s2 |

  % 178
  fis8 ( [ e8 ])  e4. e8 |
  s2. |
  s2. |
  d'4 d8 [ ( cis b ) ais ] |

  % 179
  e8 ([ d8 ]) c4. c8 |
  s2. |
  s2. |
  b4 b8 [ a g fis ] |

  % 180
  c8 [ ( b8 )] r8 b'8 [ a g ] |
  s4 cis8 [ a b cis ] |
  s2. |
  g4 r8 g8 fis e |

  % 181
  fis4 fis4. fis8 |
  d4 d4. d8 |
  s2. |
  d8 [ fis ] b [ a g fis ] |

  % 182
  e4 e4. e8 |
  d4 cis4. cis8 |
  s2. |
  g8 [ e ] a [ g fis e ] |

  % 183
  a8 [fis ] b [ a g fis ] |
  c8 [ d ] d [ c b a ] |
  s4 g8 s8 s4 |
  fis8 d g,4 r4 |

  % 184
  e8 [ d ] cis4. d8 |
  g8 [ fis ] e2 |
  s2. |
  r4 a2 |

  % 185
  d4 a4. a8 |
  fis4 fis4. fis8 |
  s2. |
  a4 d4.d8 |

  % 186
  a4 a4. a8 |
  fis4 fis4. fis8 |
  s2. |
  c4 c2 |

  % 187
  b4 b4. b8 |
  g4 g4. g8 |
  s2. |
  b4 e2 |

  % 188
  cis8 [ d  ] d4. cis8 |
  g8 [ fis ] e [ d ] e4  |
  s2. |
  a,4 s2 |

  % 189
  d4  fis4. fis8 |
  s4 d'4. d8 |
  s4 a4. a8  |
  d4 d4. d8 |

  % 190
  fis4 fis4. fis8 |
  a4 a4. a8 |
  d,4 d4. d8  |
  c4 c4. c8 |

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
  \midi { }
}
