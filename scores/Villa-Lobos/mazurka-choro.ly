\version "2.25.81"

\header {
  title = "Mazurka-chôro"
  composer = "Heitor Villa-Lobos (1887-1959)"
  tagline = \markup{ \italic \small "Révision des doigtés du 02/04/2026 par Benoît Pin"}
  %{
  sources:
  https://youtu.be/7cmL6WpDSHY
  https://www.youtube.com/watch?v=RE4xXhuEmPA
  %}
}

\include "../../commons/guitar-helpers.ly"

\parallelMusic voiceA, voiceB, voiceC {
  %0
  \set strokeFingerOrientations = #'(up)
  e'4-0 \RH #2 |
  r4 |
  s4 \mf |
  
  \repeat volta 2 {
    %1
    e4. \RH #4 a8-4^\2 \RH #4 c-1 \RH #4 e-4 \RH #2 |
    \set strokeFingerOrientations = #'(up)
    g4\rest <c-3_\4 \RH 2 e-2^\3 \RH 3> <c e> |
    a,2. |
    
    %2
    b2.-4 \RH #4 |
    b4\rest <gis-1 \RH 2 d'-3 \RH 3 f-2 \RH 4> <gis d' f> |
    a2. |
    
    %3
    e,4.-0 gis8-1 b\glide-4 d-4 |
    g4\rest <d'-3_\3 e-2^\2> <d e>8 f-3 |
    e2. |
    
    %4
    <e,-3 c'-2>4. <d b'>8 <c a'>4 \barre #5 #3 |
    g,4\rest <e' fis> e |
    a2.|
    
    %5
    e4. a8-4^\2 c-1 e-4 |
    g,4\rest <c-3_\4 e-2^\3> <c e> |
    a2. |
    
    %6
    f,4.-1 a8\glide-4 g-4 f |
    a4\rest <bes-2 d-3> a\rest |
    d2. |
    
    %7
    \set Timing.beamExceptions = #'()
    \grace{f16-1 _( g-4} f8-1 ) e d-4  c-1 b gis |
    f4\rest f8-3 e-2 <d gis-1>4 |
    e,2. |
    
    \alternative {
      \volta 1 {
        %8
        a2 e'4 |
        \shiftOn <c-2 e>4 \startBarre #2 #6 <c e> \stopBarre e\rest |
        a2-4 e4\rest |
      }
      \volta 2 {
        %9
        a,2 a'4-4 |
        <c e>4 <c e> e\rest |
        a2 e4\rest |
      }
    }
  }
  \break
  
  \repeat volta 2 {
    %10
    a8-4 \RH 4 \startBarre #3 #6 g \RH 4 b, \RH 2 \RH 3 d \RH 4 f-4\2 \RH 2 \RH 3 a-3 \RH 2 \RH 3 |
    <b'-2 d>4  f b8 f'-4 |
    g2.|
    
    %11
    a4-3 \RH 2 \RH 3 g \RH 2 \RH 3 \RH 4 g \stopBarre |
    f8\glide-4 e-4 \RH 2 <c-3 e>4 <c e> |
    c2. |
    
    %12
    c8-4 \RH 4 d, \RH 2 e-0 \RH 3 gis-1 \RH 2 c-4 \RH 3 b-4 \RH 2 |
    <d-3\3 e-1>4 s2 |
    gis'2-2_\4 gis4 |
    
    %13
    b4 \RH 4 a \startBarre #5 #3 a \stopBarre |
    d4\rest <c e> <c e> |
    a2.-3 |
    
    %14
    g8-4 f-1 a, d g f |
    <a-2 d-3>4 s <a d> |
    \set strokeFingerOrientations = #'(down)
    d,4 d2 \RH #1 |
    
    %15
    f8 e g, \RH 2 \RH 3 c-1 \RH 4 f-1 \RH 2 \RH 4 e-0 |
    g4\rest e-2 a8-2 g-0 |
    g,2.-3 |
    
    \alternative {
      \volta 1 {
        %16
        e4-4\2 d8\glide-1 cis\glide-1 d-1 a'-4 |
        <fis-2 c'-3>4 <fis c'> <fis c'> |
        a2. |
        
        %17
        a4-4 \startBarre #3 #6 g a \stopBarre |
        <b-2 d>4 <b d> b\rest |
        \acciaccatura{g8} <g f'>2. |
        
      }
      \volta 2 	{
        %18
        e2-0 d4-4 |
        \shiftOn <g-0>4 <f-3 g b> <f g>|
        g2-2 b4-1 |
        
        %19
        c4\glide-1 \once \set fingeringOrientations = #'(left up) <e-1 c'-4>2 |
        \shiftOff <e-2 g>4 <g-0 e'>2 \shiftOn |
        c4-3 c2-3_\6 |
      }
    }
  }
  \break
  
  \repeat volta 2 {
    %20
    \set Timing.beamExceptions =
      \beamExceptions {
        4. 8 [ 8 8 ]
      }
    e4. a8-4^\2 c-1 e-4 |
    g4\rest <c-3_\4 e-2^\3> <c e> |
    a2. |
    
    %21
    b2.-4 |
    b4\rest <gis-1 d'-3 f-2> <gis d' f> |
    a2. |
    
    %22
    e,4.-0 gis8-1 b\glide-4 d-4 |
    g4\rest <d'-3_\3 e-2^\2> <d e>8 f-3 |
    e2. |
    
    %23
    <e,-3 c'-2>4. <d b'>8 <c a'>4 \barre #5 #3 |
    g,4\rest <e' fis> e |
    a2.|
    
    %24
    e4. a8-4^\2 c-1 e-4 |
    g,4\rest <c-3_\4 e-2^\3> <c e> |
    a2. |
    
    %25
    f,4.-1 a8\glide-4 g-4 f |
    a4\rest <bes-2 d-3> a\rest |
    d2. |
    
    %26
    \set Timing.beamExceptions = #'()
    \grace{f16-1 _( g-4} f8-1 ) e d-4  c-1 b gis |
    f4\rest f8-3 e-2 <d gis-1>4 |
    e,2. |

    %27
    a2 e'4 |
    <c-2 e>4 \startBarre #2 #6 <c e> \stopBarre e\rest |
    a2-4 e4\rest |
    
  }
  
  \key a \major
  \repeat volta 2 {
    %28
    \set Timing.beamExceptions =
      \beamExceptions {
        4. 8 [ 8 8 ]
      }
    e4.-0 ^\markup{\italic "meno"} cis'8-4 b-3 a-1 |
    <a-3 cis-2 e-1>4 <a cis e> b\rest |
    a2.-0 |
    
    %29
    e2.-0 |
    \set fingeringOrientations = #'(up down)
    g4\rest <cis\glide-2_\3 e\glide-1^\2>  <b\glide-2 d-1> |
    a2. |
    
    %30
    cis4. \startBarre #2 #6 g'8-3 fis e-4 |
    \set fingeringOrientations = #'(left)
    <e, ais-2>4 <e ais> <e ais cis> |
    fis2. |
    
    %31
    e4 d-2 \stopBarre f,-2->  |
    g4\rest <fis-3 b-4> c'\rest |
    b2 a4 |
    
    %32
    e'4. d'8-4 b-1 gis-3\2 |
    \shiftOn <e,-1 \tweak extra-offset #'(-1 . 0) \accent b'>4 <e b'> g\rest |
    gis2.-3 |
    
    %33
    e4.-0 b'8 \barre #7 #3 gis-4 e-0 |
    g4\rest <b-3_\4 d-1> g4\rest |
    e2. |
    
    %34
    d4.-1 gis8-1 fis-4 ^\markup{\italic "rall."} \startStringSpan #2 e-2 |
    f4\rest <gis-4 b-2> g\rest |
    e2. |
    
    %35
    bis2-1 \stopStringSpan cis4 \barre #2 #4 |
    e4\rest <fis-4 a-2> <e a> |
    a2. |
    
    %36
    e4.-0 ^\markup{\italic "a tempo"} cis'8-4 b-3 a-1 |
    <a-3 cis-2 e-1>4 <a cis e> b\rest |
    a2.-0 |

    %37
    e2.-0 |
    \set fingeringOrientations = #'(up down)
    g4\rest <cis\glide-2_\3 e\glide-1^\2>  <b\glide-2 d-1> |
    a2. |

    %38
    cis4. \startBarre #2 #6 g'8-3 fis e-4 |
    \set fingeringOrientations = #'(left)
    <e, ais-2>4 <e ais> <e ais cis> |
    fis2. |
    
    %39
    e4 d-2 fis \stopBarre |
    g4\rest <fis-3 b-4> <b d> |
    b2. |

    %40
    b4.-4 a8-1 gis-1 ^\markup{\italic "rit."} fis \startStringSpan #2 |
    b4\rest <d-2 fis-3> \once \set fingeringOrientations = #'(left up) <bis-2 fis'-4> |
    d2. |
    
    %41
    \set Timing.beamExceptions =
      \beamExceptions {
        8 [ 8 ] 8 [ 8 ] 8 [ 8 ]
      }

    a8-4 ^\markup{\italic "a tempo"} e-1 e e \stopStringSpan d-4\3 cis |
    g4\rest <a-3_\4 cis-2> e\rest |
    e,2. |
    
    %42
    fis4 \barre #7 #3 fis8 gis-3 cis-4 \glissando \fermata b \fermata |
    \shiftOff d'4 d <e-2 gis>8 \glissando <d fis> |
    e2 e4 |
    
    \alternative {
      \volta 1 {
        %43
        a2 \startBarre #5 #2 e4 \stopBarre |
        <a-3 cis-2 e>4 <a cis e> <a cis e> |
        a2.|
      }
      \volta 2 {
        %44
        a4 \barre #5 #2
        \once \override NoteHead.style = #'harmonic-mixed a2
        ^\markup {\italic \fontsize #-2 "har. 7"} |
        <a-3 cis-2 e>4 e2\rest |
        a4 \once \override NoteHead.style = #'harmonic-mixed a''2_\4 |
      }
    }
  }
  \break
  \repeat volta 2 {
    %45
    \key c \major
    \set Timing.beamExceptions =
      \beamExceptions {
        4. 8 [ 8 8 ]
      }
    
    e4. ^\markup{\italic "tempo 1°"} a8-4^\2 c-1 e-4 |
    g4\rest <c-3_\4 e-2^\3> <c e> |
    a,,2. |
    
    %46
    b2.-4 |
    b4\rest <gis-1 d'-3 f-2> <gis d' f> |
    a2. |
    
    %47
    e,4.-0 gis8-1 b\glide-4 d-4 |
    g4\rest <d'-3_\3 e-2^\2> <d e>8 f-3 |
    e2. |
    
    %48
    <e,-3 c'-2>4. <d b'>8 <c a'>4 \barre #5 #3 |
    g,4\rest <e' fis> e |
    a2.|
    
    %49
    e4. a8-4^\2 c-1 e-4 |
    g,4\rest <c-3_\4 e-2^\3> <c e> |
    a2. |
    
    %50
    f,4.-1 a8\glide-4 g-4 f |
    a4\rest <bes-2 d-3> a\rest |
    d2. |
    
    %51
    \set Timing.beamExceptions = #'()
    \set Timing.beatStructure = 1,1,1
    \grace{f16-1 _( g-4} f8-1 ) e d-4  c-1 b gis |
    f4\rest f8-3 e-2 <d gis-1>4 |
    e,2. |
    
    \alternative {
      \volta 1 {
        %52
        a2 e'4 |
        \shiftOn <c-2 e>4 \startBarre #2 #6 <c e> \stopBarre e\rest |
        a2-4 e4\rest |
      }
      \volta 2 {
        %53
        a,4 \barre #2 #6 a' \barre #5 #3 b,\rest |
        <c-2 e>4 <c' e> s |
        a4-4 \f s2 |
      }
    }
    \break
  }
  \set Timing.beamExceptions = #'()
  \set Timing.beatStructure = #'()
  
  %54
  \tuplet 3/2 4 {
    \override TupletBracket.bracket-visibility = ##t
    e'8-4 ^\markup{\italic "a tempo (final)"} b-3 f-1
    \omit TupletBracket
    \omit TupletNumber
    d'-4 a-3 e-2
    e'-4 b-3 f-1
  } |
  s2. |
  a2. |
  
  %55
  \tuplet 3/2 4 {
    f'8-4 c-3 g-2
    e'-4 b-3 f-1
    d'-4 a-3 e-2
  } |
  s2. |
  d2. |
  
  %56
  \tuplet 3/2 4 {
    e'8 b f
    d' a e
    e' b f
  } |
  s2. |
  a2. |
  
  %57
  \tuplet 3/2 4 {
    f'8 c g
    e' b f
    d' a e
  } |
  s2. |
  d2. |
  
  %58
  \tuplet 3/2 4 {
    e'8-4 b-3 f-1
    d'-4 a-3 e-2
    c'-4 g-3 d-2
  } |
  s2. |
  a2. |
  
  %59
  \tuplet 3/2 4 {
    b'8-4 f-2 c-1
    a'-4 e-3 b-2
    g'-4 d-3 a-2
  } |
  s2. |
  d2. |
  
  %60
  \tuplet 3/2 4 {
    f'8-2 c-1 g-0
    e'-4 b-2 f-1
    d'-4 a-2 e-1
  } |
  s2. |
  a2. |

  %61
  \tuplet 3/2 4 {
    c'8 \startBarre #1 #3 gis e-2 \stopBarre
    b'-3 fis-2 d-4
    a'-1 f-3 c-2
  } |
  s2. |
  e2. |

  %62
  \tuplet 3/2 4 {
    gis'8-1 \mf \< e-3 b-2
    g'-0 ^\markup{\italic "rall."} e c-4
    gis' e b \!
  } |
  s2. |
  e2. |
  
  %63
  f''4\rest b,8 e
  \stemDown
  \override NoteHead.style = #'harmonic-mixed
  e''\1 ^\markup {\italic \fontsize #-2 "har. 5"} b\2 |
  s2. |
  <f-1 b-2 d-0 a'-3>2.~ |

  %64
  e,8\1 ^\markup {\italic \fontsize #-2 "har. 12"} b\2
  \stemUp
  \revert NoteHead.style e, b e,-3\5 b-2\6 |
  s2. |
  \once \hideNotes
  <f b d a'>2. |
  
  %65
  \set fingeringOrientations = #'(right)
  a'4-4\4 \tweak positions #'(-4 . -0.5)\arpeggio
  <e-3 a-4 c e a> \tweak positions #'(-4 . 3)\arpeggio \barre 5 6 r |
  s2. |
  a4-0 \RH 1 \ff a4 \RH 1 r \fine |
  
}


additionals = {
  s4 s2. s2. s2.
  %4
  s4 s8 \startBarre #7 #3 s8 \stopBarre s4 |
  
  s2. s2. s2. s2. s2. s2. s2. s2. s2.
  s2. s2. s2. s2. s2. s2. s2. s2. s2.
  
  %23
  s4 s8 \startBarre #7 #3 s8 \stopBarre s4 |
  
  s2. s2. s2. s2. s2. s2. s2. s2.
  s2. s2. s2. s2. s2. s2. s2. s2.
  s2. s2. s2. s2. s2. s2. s2. s2.
  
  %48
  s4 s8 \startBarre #7 #3 s8 \stopBarre s4 |
  
  
  
}

zique = {
  \clef "treble_8"
  \key c \major
  %\accidentalStyle modern
  \time 3/4
  %\set Score.currentBarNumber = #2
  \partial 4
  
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
    } \\
    {
      \additionals
    }
  >>
}

\score {
  \new Staff {
    \zique
  }

  \layout { }
}

\markup \justify {
  Les harmoniques naturelles en fin de morceau sont
  à exécuter comme des harmoniques artificielles
  pour laisser vibrer l’accord précédent
  le plus longtemps possible.
}

\score {
  \new Staff {
    \set Staff.midiInstrument = "acoustic guitar (nylon)"
    \unfoldRepeats
    \zique
  }
  
  \midi {
    \tempo 4.=60
  }
}