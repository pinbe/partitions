\version "2.24.4"

\header {
  title = "Vals Venezolano no 3"
  subsubtitle = "Natalia"
  composer = "Antonio Lauro"
  tagline = \markup{ \italic \small "Révision des doigtés du 26/03/2026 par Benoît Pin"}
  %{
  sources:
  Benjamin French Guitar
  Challenge : 1h pour jouer la Valse n°3 de Antonio Lauro (Natalia)
  https://youtu.be/yFCVx2owfuQ

  https://pdfcoffee.com/vals-venezolano-no3-natalia-antonio-lauro-alirio-diaz-pdf-free.html
  %}
}

\paper {
  top-margin = #12
  bottom-margin = #12
  systems-per-page = #6
  %annotate-spacing = ##t
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
  \tag #'anacrouse {
    \partial 8*5
    %1
    \trois_quatre
    c'16-1 _( b-0 ) ais8-3 b-0  c _( b ) |
    s8 s2 |
    s8 \mf s2 |
  }


  \repeat volta 2 {
    %2
    \segnoMark \default
    \six_huit
    g'8-2\2 _( fis-1 ) e-0
    \once \override NoteHead.style = #'harmonic-mixed b'4.
    ^\markup {\italic \fontsize #-2 "har. 12"} |
    \override Fingering.direction = #UP
    s4. \once \override NoteHead.style = #'harmonic-mixed b'8 g,-0 e'-0 |
    e,2.|

    %3
    r8 d,-1 _( b ) f'-4\2 _( d-1 ) b-0 |
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
    e,4. c'16-3 ^( b-2 ) ais8-1 ^( b-2 ) |

    %9
    \alternative {
      \volta 1 {
        \tag #'repeat1 {
          r8 c16-1 _( b-0 ) ais8-3 b-0 c-1 _( b-0 ) |
          s2.|
          e,2. |
        }
      }

      %10
      \volta 2 {
        r8 f'16-1 _( e-0 ) dis8-4 e-0 f-1 _( e-0 )  |
        s2. |
        e2. |
      }
    }
  }

  \repeat volta 2 {
    %11
    \six_huit
    \set fingeringOrientations = #'(up left)
    r8 f8-4\3 <gis-3 b\glide-1> r8 r <d-4 f-2 a-1> |
    s2. |
    d'4. d8 b4-3_\6 |

    %12
    \set fingeringOrientations = #'(left)
    r8 \startBarre 7 6 b-3
    \once \set fingeringOrientations = #'(up)
    <d gis-4> r \stopBarre r \startBarre 5 6
    \once \set fingeringOrientations = #'(up left)
    <a-3 c f-2> \stopBarre |
    s2. |
    e4. e8 d4 |

    %13
    r8 \startBarre 2 6 e
    \once \set fingeringOrientations = #'(up)
    <a e'-4> r \stopBarre r
    \once \set fingeringOrientations = #'(up right)
    <e-3 gis-1 d'-4> |
    s2. |
    c4.-2 c8\glide-2 b4-2 |

    %14
    \trois_quatre
    r8 e'16-3 \startStringSpan 3 _( d\glide-1 ) cis8-1 d-2 e-4 _( d-2 \stopStringSpan ) |
    s2. |
    a4 r r |

    %15
    \six_huit
    r8 c \startBarre 5 3 <e a> \stopBarre r r
    \once \set fingeringOrientations = #'(right)
    <bes e-4 g> \barre 3 3 |
    s2. |
    d4.-0 d8 cis4\glide-2 |

    %16
    r8 \startBarre 2 6 c <d-3 f> r \stopBarre r <g,-2 c-3 e-4> |
    s2. |
    c4.-2 b8 a4-0 |

    %17
    r8 d-0
    \once \set fingeringOrientations = #'(up)
    <g d'-2> r r <d a'-2 c-1> |
    s2. |
    b4.-1 gis8-3 a4-0 |

    %18
    \trois_quatre
    <g-0 b-0>8 c16-1 _( b-0 ) ais8-4 b c _( b ) |
    s2. |
    <g-3 d'>2. |

    %19
    \override Rest.staff-position = #6
    r8  c'4. ~ c4 |
    \override Rest.staff-position = #0
    r8 \startBarre 7 6 c'-3 a-4 dis,-2 a fis' \stopBarre |
    b2. |

    %20
    r8 \startBarre 10 4 fis4. ~ fis8 dis-3 \stopBarre |
    r8 fis'-4 a,8 fis-2 c4 |
    a2.-0 |

    %21
    r8 c4.-4 ~ c8 b-3 |
    r8 c' b,-0 g-0 r4 |
    g2-1 e'4-2_\5 |

    %22
    r8 g4.-4 ~ g8 fis-4 |
    r8 g'8 c,-1 a-3 \once \override Fingering.direction = #DOWN e4-2 |
    a,2.-0 |

    %23
    r8 fis4.-4 ~ fis8 e-0 |
    r8 fis' b,-0 g-0 \once \override Fingering.direction = #DOWN e4-3 |
    b2.-2  |

    %24
    r8 \startBarre 2 6 e4.-4 ~ e8 dis-4 \stopBarre |
    r8 e' a, fis-3  g4\rest |
    b2 b4 |

    %25
    r8 e-0 ~ e2 |
    \override Fingering.direction = #DOWN
    r8 e' b-0 g-0 e-2 b-1 |
    e,2. |

    \alternative {
      %26
      \volta 1 {
        \tag #'repeat1 {
          r8 f16-1 _( e-0 ) dis8-4 e-0 f-1 _( e-0 )  |
          s2. |
          e2. |
        }
      }

      %27
      \volta 2 {
        r8 cis16-1 _( b-0 ) ais8-2  b-0 cis-1 _( b-0 ) |
        s2. |
        e4 r r |
      }
    }
  }

  \repeat volta 2 {

    \key e \major
    %28
    gis'2.-4\2 |
    \override Rest.staff-position = #-3
    %\override Fingering.direction = #UP
    r4 r8 b'-3_\4 e,4-1_\5 |
    e2. |

    %29
    dis8 \startBarre 4 6 _( e-2 ) fis4.-4 e8-2 \stopBarre |
    r4 r8 b' gis4-3 |
    gis2. |

    %30
    a2.-4 |
    r4 \startBarre 2 6 r8 cis8 a4 \stopBarre |
    fis2. |

    %31
    eis8-1 _( fis-2 ) gis4.-4 fis8-3 |
    r4 r8 cis-1_\3 a4-2_\4 |
    a2. |

    %32
    cis'2-4 \startBarre 7 6 b4 \stopBarre |
    \override Rest.staff-position = #0
    r8 a dis fis b4 |
    b2. |

    %33
    \six_huit
    gis4.-4\2 fis |
    r8 ais,-1 e'-3 r \startBarre 7 6 a, dis \stopBarre |
    fis'4.-2_\5 b, |

    %34
    \trois_quatre
    fis8-4\2 _( e-2 ) dis-1 cis-3\3 b-0 ais-2 |
    s2. |
    e,2. ~ |

    %35
    cis8-1 _( b-0 ) ais-2 b-0 cis16-1 _( dis-3 e-0 fis-1 ) |
    s2. |
    e2. |

    %36
    gis2.-4 |
    \override Rest.staff-position = #-3
    r4 r8 b-0 \once \override Fingering.direction = #UP gis4-1 |
    e2 b'4-2 |

    %37
    dis8 \startBarre 4 6 _( e-2 ) fis4.-4 e8-2 \stopBarre |
    r4 r8 b8 gis4-3 |
    gis2. |

    %38
    a2.-4 |
    \override Rest.staff-position = #0
    r4 \startBarre 2 6 r8 cis8 a4 \stopBarre |
    fis2. |

    %39
    fisis8-4 \startBarre 4 6 gis a4.-3 gis8 \stopBarre |
    r4 r8 dis bis4-2 |
    gis2. |

    %40
    \six_huit
    dis'4.-4 cis |
    r8 \startBarre 9 6 e gis r e gis \stopBarre |
    cis2. |

    %41
    r4 b4.-3 cis8-4 |
    r8 d4-2_\3 f8-1_\2 d4-2_\3 |
    e,2. |

    %42
    \six_huit
    b4.-4 a |
    r8 \startBarre 5 3 cis-2 e r cis e  \stopBarre |
    a2.-0 |

    %43
    \trois_quatre
    r4 fis4.-3 gis8-4 |
    r8 a,4-2 c8-1 a4-2 |
    a2.-0 |

    %44
    \six_huit
    fis4.-4 e-0 |
    r8 gis-1 b-0 r gis b |
    b2.-2 |

    %45
    \trois_quatre
    r4 cis4.-3 dis8-4 |
    r8 e,4-2 g8-0 e4-2 |
    ais2.-1 |

    %46
    \six_huit
    cis4.-4 b4-0 b8-0 |
    \override Rest.staff-position = #-4
    r8 dis-1 a'-2 r dis, b' |
    b2.-2 |

    %47
    \trois_quatre
    ais8-2 b-0 gis'4.-4 fis8-3 |
    r8 b4 a4.-2 |
    b2-1 b4 |

    %48
    e8 gis,-1 b-0 e-0 gis-3 b-1 |
    s2. |
    e,2 b'4_\6
    \tag #'manurepeats {
      \codaMark \default
    }
    |

    \alternative {

      \volta 1 {
        \tag #'repeat1 {
          % 49
          e8-4 cis,16-1 [ _( b-0 ) ] ais8-2  b-0 cis-1 _( b-0 ) |
          s2. |
          e4 r r |
        }
      }


      \volta 2 {
        \tag #'repeat1 {
          %50
          e'8-4 c,16-1 [ _( b-0 ) ] ais8-3 b-0 c-1 _( b-0 ) |
          s2.|
          e,2.
          \jump \markup {
            \column {
              \line { D.S. \segno al \coda }
              \line { e poi la Coda }
            }

          }
          |
        }
      }
    }
    \section
  }
  \tag #'coda {
    \tag #'manurepeats {
      \sectionLabel "Coda"
    }
    <e gis e'-4>4 \fermata r r |
    s2. |
    e4 \fermata r r \fine |
  }
}

zique = {
  \clef "treble_8"
  \key e \minor
  \set Score.currentBarNumber = #2

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
    \removeWithTag #'coda
    \zique

    \removeWithTag #'(anacrouse repeat1 manurepeats)
    \zique
  }

  %\layout {}

  \midi {
    \tempo 4.=120
  }
}
