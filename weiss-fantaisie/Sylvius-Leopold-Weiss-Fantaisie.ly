\version "2.24.4"

\header {
  title = "Fantaisie"
  composer = "Sylvius Leopold Weiss"
  tagline = ##f
}

\include "../commons/guitar-helpers.ly"


\parallelMusic voiceA, voiceB, voiceC {
  \time 3/4
  \omit Staff.TimeSignature
  \omit Staff.BarLine
  \accidentalStyle neo-modern
  
  %1
  \override Fingering.add-stem-support = ##t
  r16 g b g e' b g'-1 e-3 b'-1 g-2 c-3 e,-4\3 |
  s2. |
  e,2. |
  
  %2
  r16 \startBarre #2 #6 fis,-3 a fis dis'-4 a fis' dis \stopBarre a'-1 fis-3 b-4 dis,-1 |
  s2. |
  fis2 r4 |
  
  %3
  r16 \startBarre #3 #6 g,-3 b-2 g e'-4 b g' e \stopBarre b'-4 a-2 b d,-3\3 | 
  s2. |
  g2 r4 |
}

zique = {
  \clef "treble_8"
  \key e \minor
  
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
  
    \midi {
    \tempo 4=54
  }
}
