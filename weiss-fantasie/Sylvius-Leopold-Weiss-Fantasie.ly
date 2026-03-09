\version "2.24.4"

\header {
  title = "Fantasie"
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
  g2 r4 \break |
  
  %4
  r16 c-1 b c r d-4 c d r b a-2 b |
  s2. |
  a4 fis-2 g-3 |
  
  %5
  \time 2/4
  g16 g'-2 b, fis'-1 c e-4 b e |
  s2 |
  g'8-0 \once \textSpannerDown b-3 \startStringSpan #3  c-3 b-2 \stopStringSpan |
  
  %6
  \time 3/4
  r16 \startBarre #8 #3 c' e,-2 g \stopBarre r fis-2\1 c-1 d-3 b-0 d-3 g-4 g, |
  s2. |
  a,4 d s \break |
  
  %7
  \time 2/4
  r16 a \startBarre #2 #6 g'-2 fis \stopBarre r fis-4 b,-0 a-3 |
  s2 |
  cis4-3 dis-1 |
  
  %8
  e16 fis'-4 g, fis' cis e-0 b e |
  s2 |
  e8-2 g-0 cis-3 b-0 |
  
  %9
  r16 \startBarre #2 #6 e-4 ais,-2 fis-3 \stopBarre r \startBarre #3 #6 d' b-2 g-3 \stopBarre |
  s2 |
  fis,4 g |
  
  %10
  r16 cis-1 b-3 g-4 r \startBarre #2 #6 ais-2 fis' e-4 |
  s2 |
  e4 fis \break |
  
  %11
  r16 dis-3 e-4 fis \stopBarre r b-4 a-2 b |
  s2 |
  b4  b'-1_\3 |
  
  %12
  r16 gis-1 a-2 b-4 r e-4 d-2 e |
  s2 |
  e,,4 e''-1_\3 |
  
  %13
  r16 b-3\2 c-4 d-1 e-3 c-4 a-1 g-3\3 |
  s2 |
  a,,2 |
  
  %14
  r16 e-3\3 fis-1 g-2 a-4 b-1 c-2 a-4 |
  s2 |
  d2 \break |
  
  %15
  r16 a-4 b-1 c-2 d-4 b-1 g-2 fis-1 |
  s2 |
  g2 |
  
  %15
  r16 \startBarre #8 #6 dis e-2 fis-4 g a-3 b-4 g |
  s2 |
  c,2 |
  
  %16
  r16 g a-3 b-4 c g \stopBarre fis-4\3 e-2 |
  s2 |
  fis4-2 r8 a,-0 |
  
  %17
  r16 \startBarre #7 #6 dis-2 e-3 fis \stopBarre r fis-3 b-4 a-1 |
  s2 |
  b4  dis-2_\5 \break |
  
  %18
  g16-1 e-0 dis-2 e a-4 e dis-3 e |
  s2 |
  e,4 fis-1 |
  
  %19
  \time 3/4
  b'16-4 e, dis-2 e c'-4 e, dis-3\3 e c'16 e, dis e |
  s2. |
  g4-1 a a |
  
  %20
  dis16-2 \startBarre #7 #6 b-3 fis' dis a'-4 fis \stopBarre c'-1 a-3 dis-4 a-3 e'-4 a,-3\3 |
  s2. |
  b4. r8 r4 \break |
  
  %21
  \time 2/4
  r16 fis'-4 e\glide-3 dis-3 e4-4 |
  s2 |
  <b'-0 g'-2\tweak extra-offset #'(-1.5 . 0 )\3>4 r16 g'-3 fis-2 e-2 |
  
  %22
  r16 \startBarre #7 #6 e-4 dis-4 cis-3 dis-4 b a-4 fis |
  s2 |
  <b, fis''>2 |
  
  %23
  \time 3/4
  g16-2 b-1 a-4 g-2  fis a-4 g-2 fis \stopBarre e-0 g-2\1 fis-1 e-0 |
  s2. |
  b2 r4  \break |
  
  %24
  r16 \startBarre #2 #6 dis-3 e-4 fis a, c-4 b-3 a \stopBarre g b e e, \startBarre #2 #6 |
  s2 .|
  b2 r4 |
  
  \time 2/4
  r16 fis-3 a e' b dis-4 a dis \stopBarre |
  s2 |
  b4 b'8-3 a |
  
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
    \set Staff.midiInstrument = "acoustic guitar (nylon)"
    \zique
  }

  \layout {
    ragged-last = ##t
  }
  
    \midi {
    \tempo 4=54
  }
}
