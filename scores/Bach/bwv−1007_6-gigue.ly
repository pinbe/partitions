\version "2.25.81"

\header {
  title = "Suite nr.1 für violoncello BWV 1007"
  piece = "6. Gigue"
  composer = "Johann Sebastian Bach"
  opus = "BWV 1007"
  style = "Baroque"
  license = "Creative Commons Attribution-ShareAlike 3.0"
  tagline = \markup{ \italic \small "Édition du 24/05/2026 par Benoît Pin"}
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
  d16 \RH 2 _( e-4 ) fis8 \RH 3 e-0 \RH 2 e16 \RH 3 _( fis-1 ) g8-2 \RH 2 fis \RH 3 |
  s2. |
  d4 a'8-0 cis4-3 d8 |

  %4
  fis4. \trill e4-4 e8-0 |
  a4. a4 s8 |
  d4 d,8 a'4 r8 |

  \break

  %5 (ligne 2)
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
  d4.-2 e'4-3 r8 |

  %9
  c8-2 \RH 3 b \RH 2 d-4 \RH 3 ~ d c-2 \stopStringSpan \RH 2 e-4 ~ \RH 3 \startStringSpan 2 |
  s2. |
  a,4-0 gis8-3 a4 c8\glide-1 |

  \break

  %10 (ligne 3)
  e8 d-2 \RH 2 f\glide-4 \RH 3 ~ f e-4 \RH 2 d-2 \RH 3 \stopStringSpan |
  s2.|
  \override Fingering.add-stem-support = ##t
  b4-1 d8-0 c4\glide-1 b8-1 |

  %11
  c8-4 \RH 2 \startStringSpan 3 b\glide-3 \RH 3 a-3 \RH 2 ~ a a \RH 3 gis-1 \RH 2 \stopStringSpan |
  s2. |
  a4-0 d,8 e4.-2 |

  %12
  \partial 8*5
  a4. \startBarre 2 4 ~ a4 \stopBarre |
  s4. s4 |
  a'8 e8 cis-3 a4-0

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
  \layout {
    ragged-last = ##t
  }
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