\version "2.24.3"

\header {
  title = "Capricho Árabe"
  composer = "Francisco Tárrega"
  tagline = "21/09/2024	"
  %{
  sources:
  %}
}
\include "../commons/guitar-helpers.ly"

\parallelMusic voiceA, voiceB, voiceC {
  
  % 1
  \repeat volta 2 {
    \once \override NoteHead.style = #'harmonic-mixed
    <a, d>2. ^\markup {\italic \fontsize #-2 "harm. 7"} |
    s2.|
    \once \override NoteHead.style = #'harmonic-mixed
    d,2. \mp |
    
    % 2
    \stemNeutral
    g'''16-3 ( e-1 ) d-2 ( cis-1 ) e-4 ( d-2 ) bes-2 ( a-1 )  c-4 ( bes-2 ) g-4\2 ( e-1 ) |
    s2. |
    r2. |
    
    % 3
    \stemUp
    e2-0 d8. \startBarre #3 #4 e16-4 \stopBarre |
    s2. |
    r2 <g'-3 bes>4 |
    
    %4
    <e, a cis>2 \barre #2 #4 r4 |
    s2. |
    a,2 s4 |
  }
  
  % 5
  \stemNeutral
  \override Fingering.direction = #DOWN
  \textSpannerDown
  a,4.-0 \mf cis8-3 e-1 \startStringSpan #4 g-4 |
  s2. |
  s2. |
  
  % 6
  bes8-4 a-3 \override Fingering.direction = #UP e'4.-4 d8-2 |
  s2. |
  s2. |
  
  % 7
  \tupletNeutral
  \tuplet 6/4 4 {
    cis16-1 d-2 e-4 d-2 cis-1 bes-2
    \override Fingering.direction = #DOWN
    a-1 c-4 bes-2 a-1 g-4 f-2
  }
  e32-1 d-0 \stopStringSpan cis-4 bes-1 a-0 g-4 f-2 e-1 \glissando |
  s2. |
  s2. |
  
  % 8
  bes'2-2 a4-1 |
  s2. |
  s2.  \bar "||" |
  
  %9
  \time 4/4
  \stemUp
  \override Fingering.direction = #UP
  r8 <f'-3 a-2 d-4> r <a-2 d-4> r <a-2 cis-3> r <g-4 a cis> \barre #2 #4 |
  d,4 f'-3 e-1 a,-0 |
  s1 \p |
  
  % 10
  r8 <f-3 a-2 d-4> r <a-2 d-4> r <a-2 cis-3> r a-2 |
  d,4 f'-3 e-1 a,-0 |
  s1 |
  
  \repeat volta 2 {
    % 11
    \slashedGrace{f'8-1 \glissando} a4 a ~ a8 g16-4\2 a-1 \grace{bes16-2 _( c-4} bes-2 ) a-1 bes-2 c-4 |
    \override Rest.staff-position = #2
    % workaround pour éviter barre de reprise à gauche parasite
    \grace{s8} r8 <a'-3 f'-2> r <a-3 f'-2> s2 |
    \grace{s8} d,4 \mf f'-4_\5 e-3 a,-0 |
    
    \slashedGrace{f,8 \glissando} a4-1 a ~ a8 g16-4\2 a-1 \grace{bes16-2 _( c-4} bes-2 ) a-1 bes-2 c-4 |
    r8 <a-3 f'-2> r <a-3 f'-2> s2 |
    d,4 f'-4_\5 e-3 a,-0 |
  }
  
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