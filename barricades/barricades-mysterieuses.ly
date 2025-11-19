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
  r8 c' e c~c d g b,~ |
  r4 c g' g,|
  s1 |

  \repeat volta 2 {
    %2
    b8 c e c~c d g b,~ |
    s1 |
    c4 g' g, f'|
  
    %3
    b8 b c a~a g c b |
    s1|
    a,4 e' e, e' |
    
    %4
    a8 [ c ] f4~ f8 f e d |
    c4\rest a'8\rest a b4 g |
    f,4 d' g,2 |
    
    %5
    e8 c e c~ c d g b,~ |
    s1|
    c4 g' g, g' |

    %6
    b8 c e c~ c d g b,~  |
    s1|
    c,4 g' g, f' |
    
    %7
    b8 b c a~ a g c b|
    s1 |
    a,4 e' e, e'|
    
    %8
    a8 [ b ] c2 c8 b |
    c,4.\rest g'8~ g [ g ] f4 |
    f,4 d' g,2 |
    
    \alternative {
      \volta 1 {
        %9
        \tag #'layout {
          c8 c e c~ c d g
          
         %{ bidouille pour afficher une liaison
            de prolongation, « en l’air à droite »
            pour prolonger la première note de la reprise.
          %}
          \afterGrace b,~ {
            s4
            \once \hideNotes
            b8
          } |
          s1|
          <c e>4 g' g, g' |
        }
        % idem mais avec liaison audible à la reprise
        \tag #'midi {
          c8 c e c~ c d g b,~ |
          s1|
          <c, e>4 g' g, g' |
        }
      }
      \volta 2 {
        c8 e g e~ e d g d |
        s1|
        <c, e>4 c' g b |
      }
    }
  }
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
