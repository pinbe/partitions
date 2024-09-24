\version "2.24.3"

\header {
  title = "Capricho Árabe"
  composer = "Francisco Tárrega"
  tagline = "24/09/2024"
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
  s1 |
  \stemUp
  \override Fingering.direction = #UP
  \override Rest.staff-position = #4
  r8 <f-3 a-2 d-4> r <a-2 d-4> r <a-2 cis-3> r <g-4 a cis> \barre #2 #4 |
  d,4 \p f'-3 e-1 a,-0 |
  
  % 10
  s1 |
  r8 <f-3 a-2 d-4> r <a-2 d-4> r <a-2 cis-3> r a-2 |
  d,4 f'-3 e-1 a,-0 |
  
  \repeat volta 2 {
    % 11
    \override Fingering.add-stem-support = #only-if-beamed
    \stemUp
    \override Fingering.direction = #UP
    \slashedGrace{f''8\glide-1} a4-1 a ~ a8 g16-4\2 a-1 \grace{bes16-2 _( c-4} bes-2 ) a-1 bes-2 c-4 |
    \override Rest.staff-position = #2
    \stemDown
    \grace{s8} r8 <a-3 f'-2> r <a-3 f'-2> s2 | % \grace{s8} : workaround pour éviter barre de reprise à gauche parasite
    \grace{s8} d,4 \mf f'-4_\5 e-3 a,-0 |
    
    % 12
    \slashedGrace{f,8\glide-1} a4-1 a ~ a8 g16-4\2 a-1 \grace{bes16-2 _( c-4} bes-2 ) a-1 bes-2 c-4 |
    r8 <a-3 f'-2> r <a-3 f'-2> s2 |
    d,4 f'-4_\5 e-3 a,-0 |
    
    % 13
    \slashedGrace{c8-4 _( } a4-1 ) a r8 gis16-3^\2 a-4 b-1 cis-3 d-1 e-3 |
    r8 <a-3 f'-2> r <a-3 f'-2> s2 |
    d,4 f'-4_\5 e-1 a,-0 |
    
    % 14
    f8-4 f16 \startBarre #10 #3 _( e-3 ) d4-1 r16 \stopBarre cis-2 e-4 cis bes-4^\2 g-1 e-2^\3 cis-4^\4 |
    r8 <f' a> r <f a> s2 |
    d,4-0 a'-0 e'-1_\5 a,-0 |
    
    % 15
    a'-4\2 a r8  g16-4\2 f-2 e-1 _( f ) g e |
    r8 <a, d> \startBarre #7 $4 r <a d> \stopBarre s2 |
    d,4-0 f'-2 e-3 a,-0 |
    
    %16
    f4-2 fis-4 r16 \startBarre #5 #6 a,-3 c f-4 a \stopBarre c\glide-4 ees16.-4 \fermata d32-3 |
    \override Rest.staff-position = #0
    r8 <a-3\4 d-4\3> r <a-3 c-1> s2 |
    d,2-0 d'4 r |
    
    % 17
    \grace{c16-1 _( d-3} c8 )
    \override Fingering.add-stem-support = ##f
    <g-3 bes-1> a-4 \startBarre #3 #6 <e-3 g>\stopBarre
    \override Fingering.add-stem-support = #only-if-beamed
    bes'16-2 _( a-1 ) d-2 _( cis-1 ) e-3 _( d-1 ) f-2 _( e-1) |
    s1 |
    g4-0 bes a,2 |
    
    % 18
    g16-3 _( e-1 ) d-2 _( cis-1 ) e-4 _( d-2 ) bes-2 _( a-1 )
    c-4 _( bes-2 ) g-2 _( e-0 ) d-3  bes-2 cis-3 a-2 |
    s1 |
    a2..-0 a8 |
    
    % 19
    s1 |
    r8 <f-3 d'-4> r <f-3 d'-4> r <g-0 ees'-4> r <e-2 a-3 cis-4>  |
    d,4-0 bes'-1 ees,-1 a-0 |
    
    \alternative {
      \volta 1 {
      % 20
        s1 |
        r8 <f-3 d'-4> r <f-3 d'-4> r <g-0 ees'-4> r <e-2 a-3 cis-4> |
        d,4-0 bes'-1 ees,-1 a-0 |
      }
      
      \volta 2 {
        % 21
        s1 |
        r8 <f-3 d'-4> r <f-3 d'-4> r \startBarre #3 #6 <bes d> r <g-3 bes e-4> \stopBarre |
        d,4-0 bes'-1 g-3 c |
      }
    }
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