\version "2.24.1"

\header {
  title = "Vals Venezolano no 2"
  subsubtitle = "Andreina"
  composer = "Antonio Lauro"
  tagline = \markup{ \italic \small "Révision des doigtés du 11/04/2026 par Benoît Pin"}
}

\paper {
  top-margin = #12
  bottom-margin = #12
  ragged-last-bottom = ##f
}

\include "../../commons/guitar-helpers.ly"




\parallelMusic voiceA, voiceB, voiceC {
  \key g \major
  \time 3/4
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = 1,1,1


  % anacrouse
  r8 b8 cis-1 dis-3 e-0 fis-1 |
  s2. |
  s2. |

  \repeat volta 2 {
    %1
    a4.-4 g8-2 _( fis-1 ) g |
    s4 <g b>2 |
    e,2. |

    %2
    fis8-1 _( e ) dis-4 e b-0 e-0 |
    s4 e2-1 |
    gis2.-3 |

    %3
    d4.-4 c8-1 _( b ) a-3 |
    s4 e2-2 |
    a2. |

    %4
    gis8-1 _( a-2 ) c-1 _( b-0 ) ais-2 _( b-3 ) |
    s2. |
    a2. |

    %5
    e8-4 \startBarre 2 6 _( dis-3 ) cisis-2  dis-3 g-2 _( fis ) \stopBarre |
    s4 a2 |
    b2. |

    %6
    f8-4 \startBarre 7 6 fis c'4.-2 b8 \stopBarre |
    s2. |
    b2 b4 |

    %7
    a4.-4 \startBarre 2 6 g8-2 _( fis ) e-4 \stopBarre |
    s4 b2-3 |
    e2. |

    %8
    dis8-3 \startBarre 2 6 c-4 \stopBarre b-0 a-1 g-0 fis-3 |
    s2. |
    b4 s2 |

    %9
    a'4.-4 g8-2 _( fis-1 ) g |
    s4 <g b>2 |
    e,2. |

    %10
    fis8-1 _( e ) dis-4 e b-0 e-0 |
    s4 e2-1 |
    gis2.-3 |

    %11
    d4.-4 c8-1 _( b ) a-3 |
    s4 e2-2 |
    a2. |

    %12
    gis8-1 _( a-2 ) c-1 _( b-0 ) d-4 _( c-1 ) |
    s2. |
    a2. |

    %13
    b8-0 ais-3 b cis-2 dis-4 e-0 |
    s2. |
    b2-1 s4 |

    %14
    fis8 \startBarre 7  6 g-3 a-4 b cis-3 dis-4 \stopBarre |
    \set fingeringOrientations = #'(left) <a dis-2>2 s4 |
    b2 b4 |

    %15
    e8 ais,8-1 _( b-2 ) c-3 _( b-2 ) g-3\2 |
    s2. |
    e,2. ~ |

    %16
    \alternative {
      {
        e8 b cis-1 dis-3 e-0 fis-1 |
        <g b>4 s2 |
        e2. |
      }
      {
        e8 \override NoteHead.style = #'harmonic-mixed e' b g \revert NoteHead.style e b |
        <g b>4 s2 |
        e2. |
      }
    }
  }

  % deuxième partie

  \repeat volta 2 {
    %17
    d4.-2 \rightHandFinger #3 e \rightHandFinger #4 |
    \override Fingering.direction = 1
    s4 c4.-4 \rightHandFinger #2 c8 \rightHandFinger #2 _~ |
    fis4-1 \rightHandFinger #1 d'\rightHandFinger #1 a \rightHandFinger #1 |

    %18
    d4. e |
    c8 c8 c4. c8 |
    fis4-1 d' a |

    %19
    d4. e-0 |
    s4 b4.-2 \override Fingering.direction = -1 b8-0 |
    g4 \startBarre 3 6 d'-3 \stopBarre d-0 |

    %21
    \override NoteHead.style = #'harmonic-mixed
    d8 b' g \revert NoteHead.style e b g |
    s2. |
    s2. |

    %22
    a4.-3 c |
    \override TextSpanner.bound-details.left.text = "I"
    \override Arpeggio.positions = #'(-2.5 . 1)
    \arpeggioBracket
    s4 \stemUp dis,4.\arpeggio^\markup{"I"}  dis8-1  |
    b4-2 dis b-2 |

    %23
    b4.-0 a-3 |
    s8 dis2\tweak extra-offset #'(0 . 0)-1 dis8 \stemDown |
    b'4 b, b |

    %23
    g2. |
    s2. |
    g'8 g,-3 \rightHandFinger #1 b-1 \rightHandFinger #1 e-2 \rightHandFinger #1 g \rightHandFinger #2 b \rightHandFinger #3 |

    %24
    e'8 \rightHandFinger #4 b-0 cis-1 dis-3 e-0 fis-1 |
    s2. |
    s2. |

    %1
    a4.-4 g8-2 _( fis-1 ) g |
    s4 <g b>2 |
    e,,2. |

    %2
    fis8-1 _( e ) dis-4 e b-0 e-0 |
    s4 e2-1 |
    gis2.-3 |

    %27
    d4.-4 c8-1 _( b ) a-3 |
    s4 e2-2 |
    a2. |

    %28
    gis8-1 _( a-2 ) c-1 _( b-0 ) d-4 _( c-1 ) |
    s2. |
    a2. |

    %29
    b8-0 ais-3 b cis-2 dis-4 e-0 |
    s2. |
    b2-1 s4 |

    %30
    fis8 \startBarre 7 6 g-3 a-4 b cis-3 dis-4 \stopBarre |
    <a dis-2>2 s4 |
    b2 b4 |

    %31
    e8 ais,8-1 _( b-2 ) c-3 _( b-2 ) g-3\2 |
    s2. |
    e,2. ~ |

    \alternative {
      {
        e8 \override NoteHead.style = #'harmonic-mixed e' b g \revert NoteHead.style e b |
        <g b>4 s2 |
        e2. |
      }
      {
        e2 s4 \bar "|." |
        <g b>2 r4|
        e2 s4|
      }
    }
  }
}

zique = {
  \clef "treble_8"

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
    \tempo 4=120
  }
}
