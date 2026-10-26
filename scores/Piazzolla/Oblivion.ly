\version "2.25.81"

\header {
  title = "Oblivion"
  composer = "Ástor Piazzolla"
  tagline = \markup{ \italic \small "Édition du 26/10/2026 par Benoît Pin"}
  %{
  sources :
  Guitar dell’ arte
  https://www.youtube.com/watch?v=XC18bl-ya4w
  %}
}

\include "../../commons/guitar-helpers.ly"

\parallelMusic voiceA, voiceB, voiceC {
  \key d \minor

  %1
  r1 |
  \override Voice.Rest.staff-position = #-4
  r8 a, bes-1 d e-2 f g4 |
  d,1 |

  %2
  r1 |
  r8 a, bes-1 d e-2 f g4 |
  d1 |

  %3
  a'1-4 ~ |
  r8 a, bes-1 d e-1 f g4 |
  d1 |

  %4
  a4. g16-4 _( f-2 ) e4-0 ~ e8. d16-4 |
  r8 a, bes d e-3 f-4 g4 |
  d1 |

  %5
  f1-1 ~ |
  r8 a, bes-2 d e f g4 |
  d1 |

  %6
  f4. e16 d c4 ~ c8. bes16 \startBarre 3 6 |
  r8 a, bes-2 d e f g4 |
  d1 |

  %7
  d2. ~ d8 \stopBarre c16-1 bes-4 |
  r8 f e-4 f bes f e r |
  g2-3 \once \shiftOn c4 r |

  %8
  c4.-1 d4-4 c-2 bes16-4 _( a-2 ) |
  r8 e-2 d e ~ \once \stemUp e e8\rest b'4\rest |
  f,2-3 bes4-1 d |

  %9
  bes4.-4 a16-1 _( g ) f4.-1 \RH 2 e16-1 \RH 2 a-2 ~ \RH 3 |
  r8 e,-2 d4 c8\rest b'4.-0 \RH 4 |
  e,4.-1 r8 gis4.-4 r8 |

  %10
  a2. r8 a8 \barre 2 6 |
  s1 |
  a8 d e-1 cis-3 a g-4 f-2 e |

  %11
  a'1-4 ~ |
  r8 a, bes-1 d e-1 f-2 g4 |
  d1 |

  %12
  a4 ~ a16 e g-4 _( f-1 ) e4 ~ e8. d16-4 |
  r8 a, bes-1 d e-2 f-3 g4 |
  d1 |

  %13
  f1-1 ~ |
  r8 a, bes-2 d e-2 f-3 g4 |
  d1 |

  %14
  f4. e16-0 d-4 c4-1 ~ c8. bes16-3 |
  r8 a, bes d e-2 f-3 g4 |
  d1 |

  %14
  d1-4 ~ |
  <ees-1 g-0>4 a-2 fis-4 g |
  a'1 |

  %15
  d4. c16-1 bes-3 a4.-2 g8 |
  bes4-2 fis2-4 d4 |
  d,1 |

  %16
  bes1-1 ~ |
  r4. d8\glide-4_\5 ees4\glide-4 d-4 |
  g1-3 |

  %17 4:58
  bes4 r r8 d-3 _~ \tuplet 3/2 { d g-4 a\glide-1 } |
  r8 d-2 g\glide-3 a-3 bes4-4 r |
  f2-1 r |

  %18
  bes4.-1 a16-1 g bes2 ~ |
  \override Voice.Rest.staff-position = #2
  r8 d8-3 g-4 r r d g4 |
  e'2-2_\5 ~ e4. e8 |

  %19
  bes4. a16 g-4 f4-2 e8 a ~ |
  r8 \startBarre 5 4 g, cis2.-2 |
  a,1 |

  %20
  a1 |
  r8 e g4-4 g \stopBarre f-2 |
  d,4. a'8 a4 d-0 |

  %21
  r4. d,16-4 a d e-0 g8-4 ~ g16 f-1 _( e ) d-3 |
  g,8\rest f-4 a2.-2 |
  c1-3 |

  %22
  gis,2.-1 ~ gis8 e-4 |
  b,4.\rest b8-3 c4-4 b |
  e,1-2 |

  %23
  a2.-4\4 _~ a8. a16-2\3 |
  g''8\rest cis,-2 \startBarre 6 3 bes'-3 \stopBarre e, \startBarre 5 3 a2 \stopBarre  |
  a1 |

  %24
  d1-3 |
  s1 |
  d,8 f'-1 a-2 d,, f' bes-4 d,, <f' a> |

  %25
  r2 r8 a d-3 e-0 |
  s1 |
  d,8 f' c'-4\3 d,, f' ~ f r4 |

  %26
  f2.-4 \startBarre 3 6 d8 e-4 |
  \override Voice.Rest.staff-position = #-2
  r4. f,8 bes2 |
  g,1-3 |

  %27
  \tuplet 3/2 { f4-4 e g } c,4-4 bes \stopBarre |
  r4 <g-3 bes>2. |
  c1 |

  %28
  a4-2 <a c e-0 ~>2. |
  s1 |
  f,2 ~ f8 e' ~ \tuplet 3/2 {e8 d c} |

  %29
  \tuplet 3/2 {e'4 \startBarre 1 6 d-4 f} bes,4-4 a \stopBarre |
  r4 <f a>2. |
  bes1 |

  %30
  g4 d'2.-4 ~ |
  b,4\rest g'8 d bes'2-3 |
  e,2.-1 f8-2 e |

  %31
  \tuplet 3/2 {d4 cis e} a,4 g |
  e,4\rest <e g>2. |
  a1 |

  %32
  r1 |
  \stemUp \override Fingering.direction = #UP  f4. g a4-2 |
  d,4. e-1 f4-3 |


}


zique = {
  \clef "treble_8"
  \time 4/4
  <<
    \relative c' {
      \tweaks
      \voiceOne
      \merges
      \voiceA
    } \\
    \relative {
      \tweaks
      \voiceTwo
      \merges
      \voiceB
    } \\
    \relative {
      \tweaks
      \voiceFour % bass
      \merges
      \voiceC
    }
  >>
}

\score {
  \new Staff {
    %\removeWithTag #'midi
    \zique
  }

  \layout { }
}

\score {
  \new Staff {
    \set Staff.midiInstrument = "acoustic guitar (nylon)"
    \unfoldRepeats
    %\removeWithTag #'layout
    %\keepWithTag #'midi
    \zique
  }

  \midi {
    \tempo 4.= #39
  }
}