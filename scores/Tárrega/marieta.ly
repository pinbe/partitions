\version "2.25.81"

\header {
  title = "¡Marieta!"
  composer = "Francisco Tárrega"
  tagline = \markup{ \italic \small "Révision des doigtés du 15/04/2026 par Benoît Pin"}
  %{
  sources :
  %}
}
\include "../../commons/guitar-helpers.ly"

\parallelMusic voiceA, voiceB, voiceC {
  
  \set Timing.beamExceptions = #'()
  %\set Timing.baseMoment = #(ly:make-moment 1/8)
  %\set Timing.beatStructure = 2,2,2

  %0 anacrouse
  \partial 4
  \override Fingering.add-stem-support = ##t
  \override Glissando.thickness = #1.5
  \slashedGrace {c8-1 \glissando}
  \once \override NoteColumn.X-offset = #2
  e8. f16-2 |
  s4 |
  s4 |
  
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
  e4-4-> ~ e8. a,16-3\2 a8. \< bes16-4 |
  r4 <c-2 e-1> <c e> |
  a2. |
  
  %5
  bes2-4 \! \grace {gis16-1 _( a-2 bes-3}  a8.-2-> \glissando )
  %\once \override NoteColumn.X-offset = #2
  \slashedGrace { cis,8-2}
  cis16-2 |
  \override Rest.staff-position = #2
  r4 <cis-3 e-1> s |
  g'2-2_\5 r4 |
  
  %6
  e4-0 \> ~ e8 d-4 a-2 b-0 \! |
  \override Rest.staff-position = #0
  s4 a-2 <f,-1 d'-0> |
  f2-3 s4 |
  
  %7
  c8-1 \< d32-4 _( c-1 b c-1 d8-4 c-1 ) \! b-0 a-4 |
  s2. |
  <e, e'-2>2 <fis-3 dis'-2>4 |
  
  %8
  gis,16 e'-1 b'-0 e-0
  \once \override NoteHead.style = #'harmonic-mixed e'4
  ^\markup {\italic \fontsize #-2 "har. 12"} s |
  % mélodie à la basse
  \voiceOne
  \override Fingering.add-stem-support = ##t
  s2 \slashedGrace {c'8-3\5 \glissando}
  \once \override NoteColumn.X-offset = #1.5
  e8. f16-4 |
  gis4-3 s2 |
  
  %9
  \voiceTwo
  s4 \startBarre #5 #4 \once \stemDown <a,,-3 c> <a c> |
  f4..-4-> e16-2 e8. dis16-2 |
  a2. |
  
  %10
  b4\rest <a-2 c fis-4> \stopBarre s |
  dis2-2-> \grace {dis16-1 _( e-2 f-3} e8.-2 ^> ) c'16-4 |
  a2 r4 |
  
  %11
  e4\rest <e' gis-3\2> <e gis> |
  c4.-4 b8-2\4 ais-1  b-2 \glissando \slashedGrace{e8-2} |
  e2 e4 |
  
  %12
  g,4\rest <e' c'-1>  s |
  e2 a,8.-1\4 \< bes16-2 |
  a2 r4 |
  
  %13
  f4\rest <e g-1\2> s |
  bes2-2 \! \grace{gis16-1\3 _( a-2 bes-3} a8. ) cis,16-3\5 \glissando |
  cis2-3_\6 r4 |
  
  %14
  b4\rest <a-4 f'-2> <f-3 d'-4> |
  e4.-3 d8-1\5 c-2 b-1 |
  s2. |
  
  %15
  e'2 \once \override Fingering.direction = #UP gis,4-1 |
  <c-2 a'-1>4 \grace{b16-1 _( c-2 d-4} c4 \glissando ) <b d> \glissando |
  e,2 e4 |
  
  %16
  s2. |
  <c e>4 \once \override NoteHead.style = #'harmonic-mixed a''-4 ^\markup {\italic \fontsize #-2 "har. 7"} r|
  a4-4 \once \override NoteHead.style = #'harmonic-mixed e''-4 r \fine |
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