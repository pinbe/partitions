\version "2.25.81"

\header {
  dedication = "A mi queridísimo amigo D. Santiago Gisbert"
  title = "¡Marieta!"
  subsubtitle = "Mazurka"
  composer = "Francisco Tárrega"
  tagline = \markup{ \italic \small "Révision des doigtés du 17/04/2026 par Benoît Pin"}
  %{
  sources :
  %}
}

\paper {
  %ragged-last-bottom = ##f
}

\include "../../commons/guitar-helpers.ly"

\parallelMusic voiceA, voiceB, voiceC {

  \set Timing.beamExceptions = #'()
  \tempo "Lento"

  %0 anacrouse
  \partial 4
  \override Fingering.add-stem-support = ##t
  \override Glissando.thickness = #1.5
  \slashedGrace {c8-1 \glissando}
  \once \override NoteColumn.X-offset = #2
  e8. f16-2 \section |
  s4 |
  s4 |


  \repeat segno 2 {

    %1
    f4-2-> \startBarre 5 3 ~ f8. e16 e8. \stopBarre dis16-1 |
    \override Rest.staff-position = #-2
    r4 <a-3 c> <a c>8. r16 |
    a,2. \p |

    %2
    dis2-1-> \grace {dis16-1 _( e-2 f-3} e8.->\2 ) c'16-4 |
    r4 <a-4 c-2> e' |
    a2. |

    %3
    c4.\glide-4 \startBarre #4 #6 b8-4 \stopBarre <d,-3 ais'-2> b'\glide-4 \slashedGrace {e-4} |
    r4 <b e-2> s |
    gis2 e4 |

    %4
    \override Hairpin.to-barline = ##f
    \override Hairpin.after-line-breaking = ##t
    e4-4-> ~ e8. a,16-3 \startStringSpan 2 a8.\< bes16-4 |
    r4 <c-2 e-1> <c e> |
    a2. |

    %5
    bes2-4 \!\grace {gis16-1  _( a-2 bes-3}  a8.-2-> \glissando )
    \slashedGrace { cis,8-2} cis16-2 \stopStringSpan |
    \override Rest.staff-position = #2
    r4 <cis-3 e-1> s |
    g'2-2_\5 r4 |

    %6
    e4-0 \> ~ e8 d-4 a-2 b-0 \! |
    \override Rest.staff-position = #0
    s4 a-2 <f,-1 d'-0> |
    f2-3 s4 |

    %7
    \override TextSpanner.direction = #DOWN
    \override TextSpanner.bound-details.left.text = \markup \italic "rit."
    c8-1 \< d32-4 \startTextSpan _( c-1 b c-1 d8-4 c-1 ) \! b-0 a-4 |
    s2. |
    \once \set fingeringOrientations = #'(right)
    <e, e'\glide-2>2
    \once \set fingeringOrientations = #'(down left)
    <fis\glide-3 dis'-2>4 |

    %8
    gis,16 e'-1 b'-0 e-0
    \once \override NoteHead.style = #'harmonic-mixed e'4
    ^\markup {\italic \fontsize #-2 "har. 12"} \stopTextSpan s |
    % mélodie à la basse
    \tweaks \voiceOne \merges
    \override Fingering.add-stem-support = ##f
    s2 \slashedGrace {c'8-3\5 _\markup \italic "a tempo" \glissando}
    \once \override NoteColumn.X-offset = #1.5
    e8.-3 f16-4 |
    gis4-3 s2 |

    %9
    \tweaks \voiceTwo \merges
    s4 \startBarre #5 #4 \once \stemDown <a,,-3 c> <a c> |
    f4..\tweak script-priority 0-4-> e16-2 e8. dis16-2 |
    \once \override Arpeggio.positions = #'(-4 . -1)
    a2. \arpeggio |

    %10
    \tweak extra-offset #'(-1 . 0) c4\rest <a-3 c fis-4> \stopBarre s |
    dis2\tweak script-priority 0-2-> \grace {dis16-1 _( e-2 f-3} e8.\tweak script-priority 0-2 ^> ) c'16-4\4 |
    \once \override Arpeggio.positions = #'(-4 . -2)
    a2 \arpeggio r4 |

    %11
    e4\rest
    \set fingeringOrientations = #'(left up)
    <e'-0 gis-3\2> <e gis> |
    c4.-4 b8-2\4 <ais-1>  b-2 \glissando \slashedGrace{e8-2} |
    e2 e4 |

    %12
    \override Rest.staff-position = #8
    r4 <e-0 c'-1\2>  s |
    \override Hairpin.to-barline = ##f
    \override Hairpin.after-line-breaking = ##t
    e2 a,8.-1\4 \< bes16-2 |
    \once \override Arpeggio.positions = #'(-4 . 2)
    a2 \arpeggio r4 |

    %13
    r4 <e-0 g-1\2> s |
    bes2 \! \grace{gis16-1\3 _( a-2 bes-3} a8. ) cis,16-3\5 \glissando |
    cis2-3_\6 r4 |

    %14
    b4\rest <a-4 f'-2> <f-3 d'-4> |
    \override Fingering.direction = #DOWN
    e4.-3 \> d8-1_\5 c-2 _\markup \italic "rit." b-1 \! |
    s2. |

    %15
    e'2 \once \override Fingering.direction = #UP \once \stemUp gis,4-1 |
    \override Fingering.direction = #UP
    <c-2 a'-1>4 \grace{b16-1 _( c-2 d-4}
    \once \set fingeringOrientations = #'(right)
    <c\glide-2>4 ) <b\glide-2 d-0> |
    e,2 e4-0 |

    %16
    s2. |
    <c-2 e>4 \barre 2 6
    \once \override NoteHead.style = #'harmonic-mixed a''-4\4 ^\markup {\italic \fontsize #-2 "har. 7"} r |
    a4-4 \once \override NoteHead.style = #'harmonic-mixed e''-4_\5 r \volta 2 \fine \break |


    \volta 1  {
      %17
      \tweaks \voiceOne  \merges
      r8 \startBarre 5 6 <cis-2 e>16 e <d-3 fis-4>4 \stopBarre
      \grace{b'16-1 _( cis-3} <fis, b-1 )>4 ^> \barre 7 3 |
      \tweaks \voiceTwo \merges
      s2.|
      \key a \major
      \once \override NoteColumn.X-offset = #-2
      \slashedGrace{<f,,-1 c'-3>8 \f \glissando}
      <a e'>2 <a a'>4 |

      %18
      r8 \startBarre 5 6 <cis-2 e>16 e <d-3 fis-4>4 \stopBarre
      \grace{d'16-1 _( e-4} <fis,-2 d'-1 )>4 ^> |
      s2. |
      <a e'-3>2\arpeggio <a b'-0>4|

      %19
      \override Fingering.add-stem-support = ##f
      \tuplet 3/2 4 {
        a8-2\2 \< e'-4 _( e, )
        fis \startBarre 7 6 cis'-3 _( b )
        f b a-4
      } |
      cis,4-3 d dis-2 |
      s2. |

      %20
      \tuplet 3/2 4 {
        gis8-4 \! \once \override Fingering.direction = #DOWN b-1 gis \stopBarre
      }
      e4-0 r |
      e4-3
      \tuplet 3/2 4 {
        \override Fingering.direction = #UP
        \override Staff.Stem.stemlet-length = #1
        \override StringNumber.staff-padding = #'()
        g,8\rest [ fis-3 \> ^\5 ^( e-1 ) ]
        d-4\6 _\markup \italic "rit." cis-3 b-1 \!
      }|
      s2.|

      %21
      r8 \startBarre 5 6 <cis-2 e>16 e <d-3 fis-4>4 \stopBarre
      \grace{b'16-1 _( cis-3} <fis, b-1 )>4 ^> \barre 7 6 |
      s2. |
      <a e'-3>2 \f _\markup \italic "a tempo" \arpeggio <a a'>4 |

      %22
      r8 \startBarre 5 6 <cis-2 e>16 a' <d,-3 fis-4>4 \stopBarre
      \grace{d'16-1 _( e-3}
      \tuplet 3/2 4 {
        \override Fingering.add-stem-support = ##f
        d8\tweak script-priority 0-1-> ) e-3 fis\glide-4
      } |
      s2.  |
      <a e'-3>2\arpeggio <a b'-0 fis'-2>4  \f|

      %23
      \tuplet 3/2 4 {
        e8-4 _( cis-1 ) \> a\tweak extra-offset #'(0 . 0.2)\glide-2\2
        e\tweak extra-offset #'(0 . -0.3)-0 cis-2 a \!
        fis-3 \slashedGrace{e'8-4 _( } d-2 ) _\markup \italic "rit." gis,-1
      }|
      s2. |
      e2 e4 \p  |

      %24
      <e a>4 \barre 2 6 <cis' a'-4> \barre 2 4 r |
      s2. |
      <a-4 cis-3>4 <a-0 e'> r|

      %25
      r8 \startBarre 5 6 <cis-2 e>16 e <d-3 fis-4>4 \stopBarre
      \grace{b'16-1 _( cis-3} <fis, b-1 )>4 ^> \barre 7 3 |
      s2.|
      \once \override NoteColumn.X-offset = #-2
      \slashedGrace{<f-1 c'-3>8 \glissando}
      <a e'>2 _\markup \italic "a tempo" <a a'>4 |

      %26
      r8 \startBarre 5 6 <cis-2 e>16 e <d-3 fis-4>4 \stopBarre
      \grace{d'16-1 _( e-4} <fis,-2 d'-1 )>4 ^> |
      s2. |
      <a e'-3>2\arpeggio <a b'>4|

      %27
      \override Fingering.add-stem-support = ##f
      \tuplet 3/2 4 {
        a8-2 e'-4 _( e, )
        fis \startBarre 7 6 cis'-3 _( b )
        f b a-4
      } |
      \override Fingering.direction = #DOWN
      cis'4-3 d dis-2 |
      s2. |

      %28
      \tuplet 3/2 4 {
        gis8-4 \once \override Fingering.direction = #DOWN b-1 gis \stopBarre
      }
      e4-0 r |
      e4-3
      \tuplet 3/2 4 {
        \override Fingering.direction = #UP
        \override Staff.Stem.stemlet-length = #1
        g,8\rest [ fis-3\5 ^( e-1 ) ]
        d-4\6 cis-3 b-1
      }|
      s2.|

      %29
      r8 \startBarre 5 6 <cis-2 e>16 e <d-3 fis-4>4 \stopBarre
      \grace{b'16-1 _( cis-3} <fis, b-1 )>4 ^> \barre 7 6 |
      s2. |
      <a e'-3>2 \arpeggio <a a'>4 |

      %30
      r8 \startBarre 5 6 <cis-2 e>16 a' <d,-3 fis-4>4 \stopBarre
      \grace{d'16-1 _( e-3}
      \tuplet 3/2 4 {
        \override Fingering.add-stem-support = ##f
        d8\tweak script-priority 0-1-> ) e-3 fis\glide-4
      } |
      s2.  |
      <a e'-3>2\arpeggio <a b' fis'-2>4|

      %31
      \tuplet 3/2 4 {
        e8-4 _( cis-1 ) \> a-2\2
        e cis a \!
        fis-3 \slashedGrace{e'8-4 _( } d-2 ) gis,-1
      }|
      s2. |
      e2 e4 \p |

      %32
      <e a>4 r
      \slashedGrace {c'8-1 \glissando}
      \once \override NoteColumn.X-offset = #2
      e8. f16-2 |
      s2. |
      <a-4 cis-3>4 r s \section |
    }
  }
}

zique = {
  \clef "treble_8"
  \key a \minor
  \time 3/4
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
    %\unfoldRepeats
    \zique
  }

  \layout { }
}

\score {
  \new Staff {
    \set Staff.midiInstrument = "acoustic guitar (nylon)"
    \unfoldRepeats
    \zique
  }

  \midi {
    \tempo 4.= #56
  }
}