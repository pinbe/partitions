\version "2.24.3"

\header {
  title = "Capricho Árabe"
  composer = "Francisco Tárrega"
  tagline = ##f
  %{
  sources:
  %}
}
\include "../commons/guitar-helpers.ly"

\parallelMusic voiceA, voiceB, voiceC {
  
  % 1
  \once \override NoteHead.style = #'harmonic-mixed
  <a, d>2. ^\markup {\italic \fontsize #-2 "harm. 7"} |
  s2.|
  \once \override NoteHead.style = #'harmonic-mixed
  d,2. |
  
  % 2
  \stemNeutral
  g'''16-4 ( e-1 ) d-2 ( cis-1 ) e-4 ( d-3 ) bes-2 ( a-1 )  c-4 ( bes-2 ) g-4\2 ( e-1 ) |
  s2. |
  r2. |
  
  % 3
  \stemUp
  e2-0 d8. \startBarre #3 #4 e16 \stopBarre |
  
  
}

zique = {
  \clef "treble_8"
  \key d \minor
  \accidentalStyle modern
  \time 3/4
  \set Timing.beamExceptions = #'()
  
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
    \zique
  }

  \layout { }
  %{
  \midi {
    \tempo 4.=76
  }
  %}
}

\score {
  \new Staff {
    \set Staff.midiInstrument = "acoustic guitar (nylon)"
    \unfoldRepeats
    \zique
  }
  
  \midi {
    \tempo 4.=76
  }
}