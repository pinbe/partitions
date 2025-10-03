\version "2.24.4"

\header {
  title = "Mazurka-chôro"
  composer = "Heitor Villa-Lobos (1887-1959)"
  tagline = \markup{ \italic \small "Révision des doigtés du 10/10/2024 par Benoît Pin"}
  %{
  sources:
  https://youtu.be/7cmL6WpDSHY
  https://www.youtube.com/watch?v=RE4xXhuEmPA
  %}
}

\include "../commons/guitar-helpers.ly"

\parallelMusic voiceA, voiceB, voiceC {
  %0
  e'4-0 |
  r4 |
  s4 \mf |
  
  \repeat volta 2 {
    %1
    e4. a8-4^\2 c-1 e-4 |
    g4\rest <c-3_\4 e-2^\3> <c e> |
    a,2. |
    
    %2
    b2.-4 |
    b4\rest <gis-1 d'-3 f-2> <gis d' f> |
    a2. |
    
    %3
    e,4.-0 gis8-1 b\glide-4 d-4 |
    g4\rest <d'-3_\3 e-2^\2> <d e>8 f-3 |
    e2. |
    
    %4
    <e,-3 c'-2>4. \startBarre #7 #3 b'8 \stopBarre <c, a'>4 \barre #5 #3 |
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
        <c-2 e>4 \startBarre #2 #6 <c e> \stopBarre e\rest |
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
  \repeat volta 2 {
    %10
    a8-4 \startBarre #3 #6 g b,-2d f-4\2 a-3 |
    <b'-2 d>4 f b8-2 f'-4 |
    g2.|
    
    %11
    a4-3 g g \stopBarre |
    f8-4\glissando e-4 <c-3 e-4>4 <c e> |
    c2. |
    
    %12
    c8-4 d, e-0 gis-1 c-4\glissando b-4 |
    <d-3\3 e-1>4 s2 |
    gis'2-2_\4 gis4 |
    
    %13
    b4 a \startBarre #5 #3 a \stopBarre |
    d4\rest <c e> <c e> |
    a2.-3 |
    
    %14
    g8-4 f-1 a, d g f |
    <a-2 d-3>4 s <a d> |
    d,4 d2 |
    
    %15
    f8 e g, c-1 f-1 ^( e-0 ) |
    g4\rest e-2 a8-2 _( g-0 ) |
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
      \volta 2 {
        %18
        e2-0 d4 |
        g4 <f g b> <f g>|
        g2 g4 |
        
        %19
        c4 c'2-4 |
        <f g>4 <g-0 e'-1>2 |
        c4 c2-3_\6 |
      }
    }
  }
  

}

zique = {
  \clef "treble_8"
  \key c \major
  %\accidentalStyle modern
  \time 3/4
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
    }
  >>
}

\score {
  \new Staff {
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
    \tempo 4.=60
  }
}