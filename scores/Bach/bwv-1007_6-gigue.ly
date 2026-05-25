\version "2.25.81"

\header {
  title = "Suite nr.1 für violoncello BWV 1007"
  piece = "6. Gigue"
  composer = "Johann Sebastian Bach"
  opus = "BWV 1007"
  style = "Baroque"
  license = "Creative Commons Attribution-ShareAlike 3.0"
  tagline = \markup{ \italic \small "Édition du 25/05/2026 par Benoît Pin"}
  % fingering Maurice Rosset
}

\paper {
  %ragged-last-bottom = ##f
  % annotate-spacing = ##t
  markup-system-spacing.basic-distance = #20
}

\include "../../commons/guitar-helpers.ly"

\parallelMusic voiceA, voiceB, voiceC {
  \dropD
  %0 anacrouse
  \partial 8*1
  \override Fingering.add-stem-support = ##t
  \set strokeFingerOrientations = #'(up)
  a8-1 \RH 2|
  s8 |
  r8 |

  %1
  d8-2 \RH 3 a \RH 2 b-3 \RH 3 ~ b g-0 \RH 2 a-1 \RH 3 ~ |
  s4. s |
  d,4 r8 g4-4 r8 |

  %2
  a8 d-2-. \RH 4 a-. \RH 3 fis-3 \RH 2 d _\RH 1 d' \RH 3|
  s2. |
  fis4-3 s8 d4 s8 |

  %3
  d16-2 \RH 2 _( e-4 ) fis8-1 \RH 3 e-0 \RH 2 e16 \RH 3 _( fis-1 ) g8\glide-2 \RH 2 fis-2 \RH 3 |
  s2. |
  d4 a'8-0 cis4-3 d8 |

  %4
  fis4.-\finger \markup \tied-lyric "2~3" \trill e4-4 e8-0 |
  <a-1>4. a4 s8 |
  d4 d,8 a'4 r8 |

  %5
  fis8 \RH 3  \startBarre 2 2 cis \RH 2 \stopBarre d-2 \RH 3 ~ d b-0 \RH 2 d \RH 3 |
  s2. |
  d4-0 r8 b4-1 r8 |

  %6
  e8-4 \RH 2 b-0 \RH 3 cis \RH 2 \startBarre 2 6 ~ cis a \RH 2 cis \RH 3 |
  s2. |
  cis4-3 r8 fis,4-3 r8 |

  %7
  d8-.-2 \RH 2 fis-. \RH 4 d-. \RH 3 \stopBarre b-4 \RH 2 fis-3 _\RH 1 a\glide-1 \RH 3 |
  s2. |
  b4 r8 d,4 r8 |

  %8
  gis8-1 \RH 2 b-0 \RH 3 e-0 \RH 4 ~ e4 b8-1 \startStringSpan 3 \RH 2 |
  s2. |
  e4.-2 e'4-3 r8 |

  %9
  c8-2 \RH 3 b \RH 2 d-4 \RH 3 ~ d c-2 \stopStringSpan \RH 2 e-4 ~ \RH 3 \startStringSpan 2 |
  s2. |
  a,4-0 gis8-3 a4 c8\glide-1 |

  %10
  e8 d-2 \RH 2 f\glide-4 \RH 3 ~ f e-4 \RH 2 d-2 \RH 3 \stopStringSpan |
  s2.|
  \override Fingering.add-stem-support = ##t
  b4-1 d8-0 c4\glide-1 b8-1 |

  %11
  c8-4 \RH 2 \startStringSpan 3 b\glide-3 \RH 3 a-3 \RH 2 ~ a a \RH 3 gis-1 \RH 2 \stopStringSpan |
  s2. |
  \override Fingering.add-stem-support = ##f
  a4-0 d,8 e4.-2 |

  %12
  \partial 8*5
  a4. \RH 3 \startBarre 2 4 ~ a4 \stopBarre |
  s4. s4 |
  \set strokeFingerOrientations = #'(down)
  a'8 [ e8 \RH 2 cis-3 \RH 1 ] a4-0 \RH 1 |

  \break

  \repeat volta 2 {
    \set Score.barNumberVisibility = #all-bar-numbers-visible
    %12 bis (anacrouse)
    \partial 8*1
    e'8-4 ~ \RH 2 \startStringSpan 3 |
    s8 |
    r8 |

    %13
    \set Score.currentBarNumber = #13
    e8 cis-1 \RH 3 d-4 \RH 2 ~ d b-1 \RH 3 cis-4 \RH 2 \stopStringSpan |
    s2.|
    a4-0 r8 gis4-3 r8 |

    %14
    cis16 \RH 3 \startBarre 2 3 _( d-2 ) e8-4 \RH 2 cis \RH 3 a \RH 2 g'-2 \RH 4 \stopBarre fis \RH 3 ~ |
    s2. |
    a4 r8 cis4-3 r8 |

    %15
    fis8 d-2 \RH 2 e-0 \RH 3 ~ e cis\glide-2 \RH 2 d-2 \RH 3 |
    s2.|
    d4-0  r8 ais4-1 r8 |

    %16
    d16-2 \RH 2 _( \startBarre 2 6 e-4 ) fis8 \RH 4 d \RH 3 b-3 \RH 2 a'-4 \RH 4 \stopBarre g-1 \RH 3 ~ |
    s2. |
    b4. ~ b8 r r |

    %17
    g8 \RH 2 a-4 \RH 4 g\glide-2 \RH 3 \startBarre 2 6 ~ g \once \override StrokeFinger.extra-offset = #'(0 . 1.5) g \RH 4 \stopBarre fis-2 \RH 3 ~ |
    \override Rest.staff-position = #0
    <e'-3>4 r8 a,4 \RH 2 r8 |
    cis4-2 b8 cis4-3 d8-0 |

    %18
    fis8 g-4 \RH 4 fis \RH 3 ~ fis fis \RH 4 e-0 \RH 3 |
    <d-3 \RH 2 >4 r8  <g,-0 \RH 2 >4 r8 |
    b4-1 a8-0 b4-1 cis8-4 |

    %19
    d8-2 \RH 2 \startBarre 2 6 cis \RH 3 b-4 \RH 2  ~ b b \RH 3 ais-2 \RH 2 \stopBarre |
    s2. |
    b4 e,8 fis4.-3 |

    %20
    b4.-4 \RH 3 ~ b4  d8\glide-2 \RH 2 |
    s2. |
    b'8 fis-3 \RH 2 d-0 \RH 1 b4-1 \RH 1 r8 |

    %21
    e8-2 \RH 3 \startBarre 4 6 cis-3 \RH 2 \stopBarre d-2 \RH 3 \startBarre 2 6 gis16-3 \RH 4 [ _( a\glide-4 ) \stopBarre b8-4 \RH 3 ] cis,-3 \RH 2 |
    s2. |
    fis'4 b,8 e4 r8 |

    %22
    d8-2 \RH 2 b-3 \RH 3 c-4\3 \RH 2 fis16-1 \RH 4 [ _( g-2 ) a8-4 \RH 3 ]  b,\glide-2\3 \RH 2 |
    s2. |
    e4 a,8-0 d4 r8 |

    %23
    c8-2 \RH 3 \startBarre 4 6 a-4 \RH 2 b \RH 3 \stopBarre e16 \RH 4 \startBarre 5 6 _( fis-3 ) g8-4 \RH 2 e \RH 3 \stopBarre |
    s2. |
    fis,4 dis'8-3 g,4. |

    %24
    cis16-2\3 \RH 2 _( d-3 ) e8-1 \RH 3 cis \RH 2 a4-3\4 \RH 1 e'8 \RH 2 \startBarre 5 6 |
    s2. |
    a4. ~ a4 r8 |

    %25
    f8-2 \RH 3 e \RH 2 \stopBarre g-4 \startStringSpan 2 \RH 3 ~ g f-2 \RH 2 a-4 \RH 3 ~ |
    s2. |
    \override Fingering.add-stem-support = ##t
    d4 cis8\glide-1 d4\glide-1 f8-1 |

    %26
    a8 g-2 \RH 2 bes\glide-4 \RH 3 ~ bes a-4 \RH 2 g-2 \RH 3 \stopStringSpan |
    s2. |
    \revert Fingering.add-stem-support
    e4-1 g8-0 \once \override Fingering.add-stem-support = ##t f4\glide-1 e8-1 |

    %27
    f8-2 \startBarre 5 6 \RH 2 e \RH 3 d-4 \stopBarre \RH 2 ~ d d \RH 3 cis-3 \RH 2 |
    s2. |
    d4 g,8 a4.-0 |

    %28
    d4.-4 \RH 3 ~ d8 fis,8-3 \RH 2 a \RH 3 \startBarre 2 6  |
    \revert Rest.staff-position
    \override Fingering.direction = #UP
    \set strokeFingerOrientations = #'(down)
    g8\rest fis16\glide-1 \RH 1 ^( g-1 ) a8-3 \RH 1 \once \set strokeFingerOrientations = #'(left) d,-0 \RH 1 r r |
    d,4. ~ d8 s s |

    %29
    d8-2 \RH 4 b16-3 \RH 2 _( c\glide-4 ) \stopBarre d8-4 \RH 3 \startBarre 4 6 fis, \RH 2 g-3 \RH 2 \stopBarre b-0 \RH 4 |
    s2. |
    b'4 fis8 g4-2 d'8-0 |

    e8-2 \startBarre 4 6 \RH 3 cis16-3 \RH 2 _( d\glide-4 ) e8-4 \RH 3 \stopBarre gis,-1 \startStringSpan 4 \RH 2 a-3 \stopStringSpan \RH 2 cis-1\3 \RH 3 |
    s2. |
    cis4 gis8-1 a4-0 e'8-2 |

    %30
    fis8-4 \RH 4 \startStringSpan 2 d16-2 \RH 2 _( e-4 ) \stopStringSpan fis8-2\1 \RH 3 ais,-3 \RH 2 b-4 \RH 2 g'-2 \RH 4 |
    s2. |
    d4-0 ais8\glide-1 \once \override Fingering.add-stem-support = ##t b4-1 e,8-1 |

    %31
    b,8-0 \RH 2 cis-1 \RH 3 a'-4 \RH 4 cis, \RH 2 \startBarre 2 6 d-2 \RH 3 \stopBarre b'-4 \RH 4 ~ |
    s2. |
    a4-0 fis8-3 b4 g8-1 |

    %32
    b8 b,16 \startBarre 4 6 \RH 2 cis-3 \RH 3 d-4 \RH 2 e-2 \RH 3 fis8-4 \RH 2 \stopBarre d-3 \RH 3 cis-2 \RH 2 |
    s2. |
    \override Fingering.add-stem-support = ##f
    a8-0 g-2 fis ~ fis g-1 a |

    %33
    \partial 8*5
    d4.-4\3 \RH 3 ~ d4 |
    d'8 [ a-3 \RH 2 fis-1 \RH 1 ] d4-0 \RH 1 |
    d,4. ~ d4 |
  }
}

zique = {
  \clef "treble_8"
  \key d \major
  \time 6/8
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
    \tempo 4.= #60
  }
}