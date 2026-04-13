\version "2.25.81"

\header {
  title = "Vals Venezolano no 2"
  subsubtitle = "Andreína"
  composer = "Antonio Lauro"
  tagline = \markup{ \italic \small "Révision des doigtés du 13/04/2026 par Benoît Pin"}
}

\paper {
  ragged-last-bottom = ##f
}

\include "../../commons/guitar-helpers.ly"




\parallelMusic voiceA, voiceB, voiceC {
  \key g \major
  \time 3/4
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = 1,1,1


  %0 anacrouse
  \set strokeFingerOrientations = #'(up)
  r8 b8 \RH 3 cis-1 \RH 2 dis-3 \RH 3 e-0 \RH 2 fis-1 \RH 3 |
  \set strokeFingerOrientations = #'(up)
  s2. |
  \set strokeFingerOrientations = #'(down)
  s2. |

  \repeat volta 2 {
    %1
    \set Score.currentBarNumber = #1
    a4.-4 \RH 4 g8-2 \RH 3 _( fis-1 ) g \RH 2 |
    s4 <g \RH 2 b \RH 3 >2 |
    e,2. |

    %2
    fis8-1 \RH 3 _( e ) dis-4 \RH 2 e \RH 3 b-0 \RH 2 e-0 \RH 3 |
    s4 e2-1 |
    gis2.-3 |

    %3
    d4.-4 \RH 2 c8-1 \RH 3 _( b ) a-3 \RH 2 |
    s4 e2-2 |
    a2. |

    %4
    gis8-1 \RH 2 _( a-2 ) c-1 \RH 3 _( b-0 ) ais-2 \RH 2 _( b-3 ) |
    s2. |
    a2. |

    %5
    e8-4 \RH 3 \startBarre 2 6 _( dis-3 ) cisis-2 \RH 2 dis-3 g-2 \RH 3 _( fis ) \stopBarre |
    s4 a2 |
    b2. |

    %6
    f8-4 \RH 2 \startBarre 7 6 fis \RH 3 c'4.-2 \RH 4 b8 \RH 3 \stopBarre |
    s2. |
    b2 b4 |

    %7
    a4.-4 \RH 2 \startBarre 2 6 g8-2 \RH 3 _( fis ) e-4 \RH 2 \stopBarre |
    s4 b2-3 |
    e2. |

    %8
    dis8-3 \RH 3 \startBarre 2 6 c-4 \RH 2 \stopBarre b-0 \RH 3 a-1 \RH 2 g-0 \RH 3 fis-3 \RH 2 |
    s2. |
    b4 s2 |

    %9
    a'4.-4 \RH 4 g8-2 \RH 3 _( fis-1 ) g \RH 2 |
    s4 <g \RH 2 b \RH 3 >2 |
    e,2. |

    %10
    fis8-1 \RH 3 _( e ) dis-4 \RH 2 e \RH 3 b-0 \RH 2 e-0 \RH 3 |
    s4 e2-1 |
    gis2.-3 |

    %11
    d4.-4 \RH 2 c8-1 \RH 3 _( b ) a-3 \RH 2 |
    s4 e2-2 |
    a2. |

    %12
    gis8-1 \RH 2 _( a-2 ) c-1 \RH 3 _( b-0 ) d-4 \RH 2 _( c-1 ) |
    s2. |
    a2. |

    %13
    b8-0 \RH 3 ais-3 \RH 2 b \RH 3 cis-2 \RH 2 dis-4 \RH 3 e-0 \RH 2 |
    s2. |
    b2-1 s4 |

    %14
    fis8 \startBarre 7  6 g-3 \RH 3 a-4 \RH 2 b \RH 3 cis-3 \RH 2 dis-4 \RH 3 \stopBarre |
    \set fingeringOrientations = #'(left) <a dis-2>2 s4 |
    b2 b4 |

    %15
    e8 \RH 4 ais,8-1 \RH 2 _( b-2 ) c-3 \RH 3 _( b-2 ) g-3\2 \RH 2 |
    s2. |
    e,2. ~ |

    %16
    \alternative {
      {
        e8 b \RH 3 cis-1 \RH 2 dis-3 \RH 3 e-0 \RH 2 fis-1 \RH 3 |
        <g b>4 s2 |
        e2. |
      }
      {
        e8 \override NoteHead.style = #'harmonic-mixed e' \RH 4  b \RH 3 g \RH 2 \revert NoteHead.style e \RH 4 b \RH 3 |
        <g b>4 s2 |
        e2. \repeatTie |
      }
    }
  }

  % deuxième partie

  \repeat volta 2 {
    %17
    d4.-2 \RH 3 e \RH 4 |
    \override Fingering.direction = 1
    s4 c4.-4 \RH 2 c8 \RH 2 _~ |
    fis4-1 \RH 1 d' \RH 1 a \RH 1 |

    %18
    d4. \RH 3 e \RH 4 |
    c8 c8 \RH 2 c4. \RH 2 c8 \RH 2 |
    fis4-1 \RH 1 d' \RH 1 a \RH 1 |

    %19
    d4. \RH 3 e-0 \RH 4 |
    s4 b4.-2 \RH 2 \override Fingering.direction = -1 b8-0 \RH 3 |
    g4 \RH 1 \startBarre 3 6 d'-3 \RH 1 \stopBarre d-0 \RH 1 |

    %21
    \override NoteHead.style = #'harmonic-mixed
    d8 _\RH 1 b' \RH 3 g \RH 2 \revert NoteHead.style e \RH 4 b \RH 3 g \RH 2 |
    s2. |
    s2. |

    %22
    a4.-3 \RH 3 c \RH 4 |
    s4 \stemUp dis,4. \startBarre 1 4 dis8 \RH 2 \stopBarre  |
    b4-2 \RH 1 dis \RH 1 b-2 \RH 1 |

    %23
    b4.-0 \RH 4 a-3 \RH 3 |
    s8 \once \override Fingering.direction = #UP dis2-1 \RH 2 dis8 \RH 2 \stemDown |
    b'4 b, \RH 1 b \RH 1 |

    %23
    g2. \RH 3 |
    s2. |
    g'8 g,-3 \glide \RH 1 b-1 \glide \RH 1 e-2 \RH 1 g ^\RH 2 b ^\RH 3 |

    %24
    e'8 \RH 4 b-0 \RH 3 cis-1 \RH 2 dis-3 \RH 3 e-0 \RH 2 fis-1 \RH 3 |
    s2. |
    s2. |

    %1
    a4.-4 \RH 4 g8-2 \RH 3 _( fis-1 ) g \RH 2 |
    s4 <g \RH 2 b \RH 3 >2 |
    e,,2. |

    %2
    fis8-1 \RH 3 _( e ) dis-4 \RH 2 e \RH 3 b-0 \RH 2 e-0 \RH 3 |
    s4 e2-1 |
    gis2.-3 |

    %27
    d4.-4 \RH 2 c8-1 \RH 3 _( b ) a-3 \RH 2 |
    s4 e2-2 |
    a2. |

    %28
    gis8-1 \RH 2 _( a-2 ) c-1 \RH 3 _( b-0 ) d-4 \RH 2 _( c-1 ) |
    s2. |
    a2. |

    %29
    b8-0 \RH 3 ais-3 \RH 2 b \RH 3 cis-2 \RH 2 dis-4 \RH 3 e-0 \RH 2 |
    s2. |
    b2-1 s4 |

    %30
    fis8 \startBarre 7 6 g-3 \RH 3 a-4 \RH 2 b \RH 3 cis-3 \RH 2 dis-4 \RH 3 \stopBarre |
    <a dis-2>2 s4 |
    b2 b4 |

    %31
    e8 \RH 4 ais,8-1 \RH 2 _( b-2 ) c-3 \RH 3 _( b-2 ) g-3\2 \RH 2 |
    s2. |
    e,2. ~ |

    \alternative {
      {
        e8 \override NoteHead.style = #'harmonic-mixed e' \RH 4 b \RH 3 g \RH 2 \revert NoteHead.style e \RH 4 b \RH 3 |
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
