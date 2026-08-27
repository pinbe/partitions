\version "2.25.81"

\header {
  title = "Tico-tico no Fubá"
  composer = "Zequinha de Abreu"
  tagline = \markup{ \italic \small "Édition du 27/08/2026 par Benoît Pin"}
  %{
  sources :
  Guitar dell’ arte
  https://www.youtube.com/watch?v=p87AMzjaK-M
  %}
}

\include "../../commons/guitar-helpers.ly"

\parallelMusic voiceA, voiceB {
  \key a \major
  \partial 8*3

  \set strokeFingerOrientations = #'(up)
  a'8-4\2 gis-3 g-2 |
  s4. |

  %1
  fis8 \startBarre 7 3 eis-4 fis gis-2 |
  <d d'>2 |

  %2
  b8 a-4 gis-2 a \stopBarre |
  <d f'-3>2 |

  %3
  cis8 \startBarre 9 3 e, a cis \stopBarre |
  <e, ~ e'' a-2>2 |

  %4
  e8-4 dis d cis |
  e2 |

  %5
  b8 \startBarre 7 3 a-4 gis-3 fis \stopBarre |
  <e ~ d'' gis>2 |

  %6
  e8-0 d-2 cis-1 b-0 |
  e2 |

  %7
  a2 \barre 2 6 |
  <a-4 cis-3 e>2 |

  %8
  e'4 \fermata r16 e,-2 \RH 2 dis-1 \RH 3 e \RH 2 |
  <e b'-2 d gis-1 b e>4 \arpeggio r |

  \key a \minor

  \repeat volta 2 {

    %9
    f16-3 \RH 3 e8-2 \RH 2 <a-3 c-1 e-0 \RH 2 \RH 3 \RH 4 >16 ~ <a c e> e-2 \RH 2 dis-1 e |
    a4 a |

    %10
    f16-3 e8-2 <gis-1 d'-4 e>16 ~ <gis d' e>16 e-2 dis-1 e |
    e4 e |

    %11
    f16-3 e-2 d'-4 _( b-0 ) gis-1 e-2 _( d-0 ) cis-4 |
    e4 r |

    %12
    c16-3 \RH 1 <e-1 a-2 \RH 2 \RH 3 >8 <e a>16 r16 a-2 _( gis-1 ) g-0 |
    r4 a |

    %13
    f16-3 \RH 2 \startBarre 1 6 a8-2 \RH 3 \once \set fingeringOrientations = #'(up) <f a d-4>16 ~ <f a d> c' \RH 4 a \RH 3 f \RH 2 \stopBarre |
    f4 f |

    %14
    e16-2 a8-3 \once \set fingeringOrientations = #'(up) <e a c-1>16 ~ <e a c> c' _( b-0 ) ais-3 |
    a4 a |

    \alternative {
      \volta 1{

        %15
        b16-0 b,-2 \RH 1 dis-1 \RH 1 _( fis-4 ) a-2 c-1 _( b-0 ) a |
        s2 |

        %16
        gis16-1 <d'-4 e \RH 3 \RH 4 >8 <d e>16 ~ <d e> e,-2 dis-1 e |
        e4 e |
      }

      \volta 2{
        %17
        b'16-0 \RH 3 e,-2 \RH 1 gis-1 \RH 2 b-0 \RH 3 e-0 \RH 4 d-3 c-1 _( b-0 ) |
        s2 |

        %18
        a8-2 r r16 a \RH 2 cis \RH 3 e \RH 4 |
        r8 e a r |
      }
    }
  }

}

zique = {
  \clef "treble_8"
  \time 2/4
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
    \tempo 4.= #66
  }
}