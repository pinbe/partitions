\version "2.22.2"

\header {
  title = "Canarios"
  composer = "Gaspar Sanz"
  % Supprimer le pied de page par défaut
  tagline = ##f
}

global = {
  \key d \major
  \numericTimeSignature
  \time 6/8
  \partial 4
}


\parallelMusic voiceA, voiceB {
  d'8-3 e-0 |
  s4|
  
  %1
  fis8-2 _( e-0) fis-2 g-4 _( fis-2 ) g-4 |
  <d a'-1 d-3>4. <g b>4. |
  
  %2
  fis4.-2 e8-4 d-2 cis-1 |
  <d a' d>4 d ~ d |
  
  %3
  b8-0 _( cis-1 ) d-2
  \grace { e16-0 _( fis-1  }
  e8-0 ) d-2 cis-1 |
  g,4.-4 a |
  
  %4
  \grace { d16-2 _( cis-1 }
  d4.-2 ) r8 d-3 e-0 |
  d4 d, ~ d |
  
  %5
  fis8-2 _( e ) fis g _( fis ) g |
  <d' a'-1 d-3>4. <g b> |
  
  %6
  fis4.-2 e8-4 d-2 cis-1 |
  <d a' d>4 d ~ d |
  
  %7
  b8-0 _( cis-1 ) d-2 
  \grace { e16-0 _( fis-1  }
  e8-0 ) d-2 cis-1 |
  g,4.-4 a |
  
  %8
  \grace { d16-2 _( cis-1 }
  d4.-2 ) fis8-1 _( g-2 ) fis-1 |
  d4 d,8 d'4. |
  
  %9
  e8-0 _( fis-1 ) e-0 d-2 _( e-4 ) d-2 |
  cis4.-3 b |
  
  %10
  cis8-1 _( d-2 ) cis-1 a-1 _( g-0 ) a-1 |
  a4. fis-3 |
  
  %11
  b8-0 _( cis-1 ) d-2 e-0 _( fis-1 ) g-2 |
  g4.-4 a-0 |
  
  %12
  fis4 d8-2 fis8-1 _( g-2 ) fis-1 |
  d,4. d' |

  %13
  e8-0 _( fis-1 ) e-0 d-2 _( e-4 ) d-2 |
  cis4.-3 b |
  
  %14
  cis8-1 _( d-2 ) cis-1 a-1 _( g-0 ) a-1 |
  a4. fis-3 |
  
  %15
  b8-0 _( cis-1 ) d-2 e-0 _( fis-1 ) g-2 |
  g4.-4 a-0 |
  
  %16
  fis4-1 d-2 a'-4 |
  d,4 ~ d r8 d' |
  
  %17
  b4-4 b8 cis4-4 cis8 |
  r8 g4-1\4 r8 a4-1\4 |
  
  %18
  <a-3 d-4>4 <a-3 d-4> fis-2 ^\markup {"II"} |
  fis4-2\5 fis r8 a, |
  
  %19
  g4-2 g8-2 a4-4 a8-4 |
  r8 b4-1 r8 cis4-3 |
  
  %20
  fis4-1 d-2 a'-4 |
  d4 ~ d r8 d |
  
  %21
  b4-4 b8 cis4-4 cis8 |
  r8 g4-1 r8 a4-1 |
  
  %22
  <a-3 d-4>4 <a-3 d-4> fis-2 ^\markup {"II"} |
  fis4-2\5 fis r8 a, |
  
  %23
  g4-2 g8-2 a4-4 a8-4 |
  r8 b4-1 r8 cis4-3 |
  
  %24
  \override TextSpanner.bound-details.left.text = "II"
  fis4-1 d-2 r8 \startTextSpan fis8 \stopTextSpan |
  d4. r8 a'4 |
  
  %25
  r8 g4-2 r8 a4-2 |
  b4-3 b8-3 cis4-3 cis8 |
  
  %26
  fis4.-4\2 r8 a4-1 |
  d4-3\3 d4 r8 a, |
  
  %27
  g4-2 g8 e4-0 e8 |
  r8 b4-1 r8 cis4-3 |
  
  %28
  \override TextSpanner.bound-details.left.text = "II"
  d4-2 d r8 \startTextSpan fis8 \stopTextSpan |
  d4. r8 a'4 |
  
  %29
  r8 g4-2 r8 a4-2 |
  b4-3 b8-3 cis4-3 cis8 |
  
  %30
  fis4.-4\2 r8 a4-1 |
  d4-3\3 d4 r8 a, |

  %3"
  g4-2 g8 e4-0 e8 |
  r8 b4-1 r8 cis4-3 |
  
  %3«
  d4 d r8 a'-4 |
  d4 ~ d r |
  
  %33
  fis8-1 _( g-2 a-4) e-0 _( fis-1 g-2 ) |
  d4. a |
  
  %34
  d4-1 ~ d r8 d'-4 |
  r4 d r |
  
  %35
  b8-1 _( cis-3 d-4 ) e,4.-0 |
  <g-0 b-0>4. a,8-0 _( b-1 cis-3 ) |
  
  %36
  d4 d8 d cis b |
  d4. r4. |
  
  %37
  a8 b a g a g |
  s2. |
  
  %38
  r4. a'8 g fis |
  fis8 e d r4. |
  
  %39
  r8 fis-1 e-0 ~ e4. |
  g4.-0 a8-1 b-0 cis-2 |
  
  %40
  d4-2 d8 d cis b |
  d,4. r4. |
  
  %41
  a8 b a g a g |
  s2. |
  
  %42
  r4. a'8-4 g-2 fis-1 |
  fis8-1 e-4 d-0 ~ d4. |
  
  %43
  r8 fis-1 e-0 ~ e4. |
  g4.-0 a8-1 b-0 cis-2 |
  
  %44
  d4-2 d a'-3 |
  d,4. r |
  
  %45
  d,8-1 cis-4\3 d e-0 fis-4\2 e-0 |
  s2. |
  
  %46
  fis4-4\2 d8-3\3 _~ d4 e8-0 |
  d4. ~ d4 a'8-1 ~ |
  
  %47
  fis4-2 fis8 e-0 d-1 cis-4\3 |
  a8 g4-0 r4. |

  %48
  d4-2 d a'-3 |
  d,4. r |
  
  %49
  d,8-1 cis-4\3 d e-0 fis-4\2 e-0 |
  s2. |
  
  %50
  fis4-4\2 d8-3\3 _~ d4 e8-0 |
  d'4. ~ d4 a'8-1 ~ |
  
  %51
  fis4-2 fis8 e-0 d-1 cis-4\3 |
  a8 g4-0 r4. |

  
  %52
  d4-1 d8 r d'4-4 |
  d4. ~ d8 r4 |
  
  %53
  b4-2 b8 cis4-4 cis8 |
  r8 g4-0 r8 a4-1\4 |
  
  %54
  <a-3 d-4>4 <a-3 d-4> r ^\markup{"II"} |
  fis4-2\5 fis4 a-1\3 |
}

classicalGuitar = \relative c' {
  \global
  
  d8 e|
  fis e fis
  
}

fingeringTweaks = {
  \override Fingering.staff-padding = #'() 
  \override Fingering.add-stem-support = ##f
  \override Fingering.avoid-slur = ##t
  \override Fingering.font-size = #-5
  \set fingeringOrientations = #'(left)
}

barringTweaks = {
  \override TextSpanner.font-shape = #'upright
  \override TextSpanner.dash-fraction = #1
  \override TextSpanner.bound-details.right.text =
      \markup { \draw-line #'(0 . -1) }
}


tweaks = {
  \fingeringTweaks
  \barringTweaks
%   \override Stem.details = #'(
%     (lengths 3.5 3.5 3.5 4.25 5.0 6.0 7.0 8.0 9.0)
%     (beamed-lengths 6.0 7.0 8.0)
%     (beamed-minimum-free-lengths 1.83 1.5 1.25)
%     (beamed-extreme-minimum-free-lengths 2.0 1.25)
%     (stem-shorten 1.0 0.5 0.25)
%   )
  \override Stem.details.beamed-lengths = #'(4.5)
}

\score {
    \new Staff {
    \clef "treble_8"
    \key d \major \time 6/8
    \set Score.currentBarNumber = #1
    \partial 4

    \set Staff.connectArpeggios = ##t

    <<
      
      \relative {
        \tweaks
        \voiceOne
        \voiceA
      } \\
      \relative {
        \tweaks
        \voiceTwo
        \voiceB
      }
    >>
  }

  \layout { }
  \midi {
    \tempo 4.=76
  }
}
