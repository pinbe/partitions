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
  fis8 \barre 7 6 eis-4\3 fis gis-2 |
  <d d'>2 |

  %2
  b8 a-4 gis a |
  <d f'-3>2 |

  %3
  cis8 \barre 9 6 e, a cis |
  <e, ~ e'' a>2 |

  %4
  e8-4 dis d cis |
  e2 |

  %5
  b8 \barre 7 6 a-4 gis fis |
  <e ~ d'' gis>2 |

  %6
  e8-0 d cis b |
  e2 |

  %7
  a2 \barre 2 6 |
  <a cis e>2 |

  %8
  e'4 \fermata r16 e,-2 \RH 2 dis \RH 3 e \RH 2 |
  <e b' d gis b>4 r |

  \key a \minor

  \repeat volta 2 {

    %9
    f16-3 \RH 3 e 8 \RH 2 <a c e \RH 2 \RH 3 \RH 4 >16 ~ <a c e> e \RH 2 dis e |
    a4 a |

    %10
    f16 e8 <gis d' e>16 ~ <gis d' e>16 e dis e |
    e4 e |

    %11
    f16 e d'-4 _( b ) gis e _( d ) cis-4 |
    r4 a|

    %12
    c16-3 \RH 1 <e a \RH 2 \RH 3 >8 <e a>16 r16 a _( gis ) g |
    r4 a |

    %13
    f16 \RH 2 \barre 1 6 a8 \RH 3 <f a d-4>16 ~ <f a d> c' \RH 4 a \RH 3 f \RH 2 |
    f4 f |

    %14
    e16-2 a8-3 <e a c>16 ~ <e a c> c' _( b ) ais |
    a4 a |

    \alternative {
      \volta 1{

        %15
        b16 b,-2 \RH 1 dis \RH 1 _( fis-4 ) a c _( b ) a |
        s2 |

        %16
        gis16 <d' e \RH 3 \RH 4 >8 <d e>16 ~ <d e> e, dis e |
        e4 e |
      }

      \volta 2{
        %17
        b'16 e, \RH 1 gis \RH 2 b e \RH 4 d c _( b ) |
        s2 |

        %18
        a8 r r16 a \RH 2 cis \RH 3 e \RH 4 |
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