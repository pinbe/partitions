\version "2.24.4"

\header {
  title = "Vals Venezolano no 3"
  subsubtitle = "Natalia"
  composer = "Antonio Lauro"
  tagline = \markup{ \italic \small "Révision des doigtés du 22/03/2026 par Benoît Pin"}
  %{
  sources:
  Benjamin French Guitar
  Challenge : 1h pour jouer la Valse n°3 de Antonio Lauro (Natalia)
  https://youtu.be/yFCVx2owfuQ

  https://pdfcoffee.com/vals-venezolano-no3-natalia-antonio-lauro-alirio-diaz-pdf-free.html
  %}
}

\include "../../commons/guitar-helpers.ly"

trois_quatre = {
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/8)
  \set Timing.beatStructure = 2,2,2
}

six_huit = {
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/8)
  \set Timing.beatStructure = 3,3
}



\parallelMusic voiceA, voiceB, voiceC {

  \time 3/4
  \partial 8*5
  \override Fingering.add-stem-support = ##t

  %1
  \trois_quatre
  c'16-1 _( b-0 ) ais8-3 b-0  c _( b ) |
  s8 s2 |
  s8 \mf s2 |

  %2
  \repeat volta 2 {
    \six_huit
    g'8-2\2 _( fis-1 ) e-0
    \once \override NoteHead.style = #'harmonic-mixed b'4.
    ^\markup {\italic \fontsize #-2 "har. 12"} |
    s4. \once \override NoteHead.style = #'harmonic-mixed b'8 g,-0 e'-0 |
    e,2.|

    %3
    r8 d,	-1 _( b ) f'-4\2 _( d-1 ) b-0 |
    s2. |
    gis4.-2 d'-0 |

    %4
    b8-3 _( a-1 ) e'-0 a-2\2 e'-4 gis,-3\3 |
    s2. |
    c4.-2 r |

    %5
    c8-1 c,-3\4 e-2\3 fis,-1\5 c' e |
    s2. |
    s2. |

    %6
    \trois_quatre
    b,8 \startBarre 7 6 dis'-2 b' \stopBarre r \startBarre 5 6 r a \stopBarre |
    b,4. c' |
    s2 a4 |

    %7
    ais,,8 \startBarre 6 6 ais'-3 g'-4 \stopBarre r \startBarre 7 6 r fis \stopBarre |
    ais,4. a' |
    s2 b4 |

    %8
    r4 e2-0 |
    r8  b-0 ~ b2 |
    e,4. c'16-3 b-2 ais8-1 b-2 |
    
    %9
    \alternative {
      \volta 1 {
        r8 c16-1 _( b-0 ) ais8-3 b-0 c-1 _( b-0 ) |
        s2.|
        e,2. |
      }

      \volta 2 {
        r8 f'16-1 _( e-0 ) dis8-4 e-0 f-1 _( e-0 )  |
        s2. |
        e2. |
      }
    }
  }

}

zique = {
  \clef "treble_8"
  \key e \minor

  <<

    \relative {
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
      \voiceTwo
      \merges
      \voiceC
    }
  >>
}

\score {
  \new Staff {
    \set Staff.midiInstrument = "acoustic guitar (nylon)"
    \zique
  }
  \layout {}
}

\score {
  \new Staff {
    \set Staff.midiInstrument = "acoustic guitar (nylon)"
    \unfoldRepeats
    \zique
  }
  
  \midi {
    \tempo 4.=120
  }
}
