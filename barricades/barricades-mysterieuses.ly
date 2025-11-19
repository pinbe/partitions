\version "2.24.4"

\header {
  title = "Les barricades mystérieuses"
  composer = "François Couperin (1668-1733)"
  tagline = \markup{ \italic \small "Révision des doigtés du 18/11/2025 par Benoît Pin"}
  %{
  sources:
  https://youtu.be/7cmL6WpDSHY
  https://www.youtube.com/watch?v=RE4xXhuEmPA
  %}
}

\include "../commons/guitar-helpers.ly"

\parallelMusic voiceA, voiceB, voiceC {
  %\set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/8)
  \set Timing.beatStructure = 1,3,1,3
  
  %1
  r8 c'-4\3 e-0 \startBarre 3 6 c~c d g b,-2~ |
  r4 c g'-3 g,|
  s1 |

  \repeat volta 2 {
    %2
    b8 c-4 e-0 c~c d g \stopBarre b,-2~ |
    s1 |
    c4 g'-3 g, f'|
  
    %3
    b8 b-0 c-1 a-3~ a g-0 c-1 b |
    s1|
    a,4 e'-2 e, e'-2 |
    
    %4
    a8-2 \startBarre 1 6 [ c ] \stopBarre f4-1~ f8 f e \prall d-4 |
    c4\rest a'8\rest a-2 b4-0 g |
    f,4 d'-0 g,2-3 |
    
    %5
    e8-0 c-4 e-0 c~ c \startBarre 3 6 d g b,-2~ |
    s1|
    c4-1 g'-3 g, g'-3 |

    %6
    b8 c-4 e-0 c~ c d g b,-2~ \stopBarre  |
    s1|
    c,4 g'-3 g, f' |
    
    %7
    b8 b-0 c-1 a-3~ a g c-1 b-0|
    s1 |
    a,4 e'-2 e, e'-2|
    
    %8
    a8-2 [ b-0 ] c2-1 c8-1 b-0 |
    c,4.\rest g'8~ g [ g ] f4-4 |
    f,4-1 d' g,2-3 |
    
    \alternative {
      %9
      \volta 1 {
        \tag #'layout {
          c8-1 \prall c e-0 c-4\3~ c \startBarre 3 6 d g
          
         %{ bidouille pour afficher une liaison
            de prolongation, « en l’air à droite »
            pour prolonger la première note de la reprise.
          %}
          \afterGrace b,-2~ {
            s4
            \once \hideNotes
            b8 \stopBarre
          } |
          s1|
          <c-3 e-2>4 g'-0 g, g'-3 |
        }
        % idem mais avec liaison audible à la reprise
        \tag #'midi {
          c8 c e c~ c d g b,~ |
          s1|
          <c, e>4 g' g, g' |
        }
      }
      %10
      \volta 2 {
        c8 e g e~ e d g d~ |
        s1|
        <c, e>4 c' g b |
      }
    }
  }

  %11
  d8 e g e~ e d g d~ |
  s1 |
  c,4 c' g b |
  
  %12
  d8 e g e~ e d g d~ |
  s1 |
  c,4 c' b, g' |
  
  %13
  d8 e g e~ e d g d~ |
  s1 |
  c,4 c' b, g' |
  
  %14 03:55
  d8 c g' c,~ c c fis c |
  s1 |
  a,4 a' d, a' |
  
  %15
  g'8 b, d b~ b a d a~ |
  s1 |
  g,4 g' d fis |
  
  %16 04:03
  a8 b d b~ b a d a~ |
  s1 |
  g,4 g' d fis |
  
  %17
  a8 b d b~ b b d b~ |
  s1 |
  g,4 d' b g' |
  
  %18
  b8 b e b a4. \prallprall g16 ( a ) |
  s1 |
  c,4 g' d d |
  
  %19
  g8 b d b~ b a f' b,~ |
  s1 |
  g,4 g' d d |
  
  %20
  b8 c e c~ c bes g' bes,~ |
  s1 |
  a4 a' e e, |
  
  %21
  bes8 a c a~ a a f' a,~ |
  s1 |
  f4 f' d d |
  
  %22
  a8 b f' b,~ b c e c |
  s1 |
  g,4 g' c, c |
  
  %23 04:27
  d8 \prall \breathe c e c~ c d g b,~ |
  s1 |
  g4 c g' g, |
  
  %24
  b8 c e c~ c d g b,~ |
  s1 |
  c4 g' g, f' |
  
  %25
  b8 b c a~ a g c b |
  s1 |
  a,4 e' e, e' |
  
  %26 04:38
  a8 [ c ] f4~ f8 f e \prall d |
  c4\rest a'8\rest a b4 g |
  f,4 d' g,2 |
}

zique = {
  \clef "treble_8"
  \key c \major
  \time 2/2
  
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
    %\unfoldRepeats
    \keepWithTag #'layout
    \zique
  }

  \layout { }
}

\score {
  \new Staff {
    \set Staff.midiInstrument = "acoustic guitar (nylon)"
    \unfoldRepeats
    \keepWithTag #'midi    
    \zique
  }
  
  \midi {
    \tempo 4.=72
  }
}
