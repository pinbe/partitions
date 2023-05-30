\version "2.24.1"

\header {
  title = "Vals Venezolano no 2"
  composer = "Antonio Lauro"
  tagline = ##f
}


fingeringGlobal = {
  \override Fingering.staff-padding = #'()
  \override Fingering.avoid-slur = ##t
  \override Fingering.font-size = #-5

  \override StringNumber.add-stem-support = ##f
  \override StringNumber.staff-padding = #'()
  \override StringNumber.script-priority = 110 %
}

fingeringVoiceA = {
  \fingeringGlobal
  \override Fingering.add-stem-support = #only-if-beamed
  \set fingeringOrientations = #'(left)
}

fingeringVoiceB = {
  \fingeringGlobal
  %\override Fingering.color = red
  \override Fingering.extra-offset = #'(-1.5 . -1.5)
  \override Fingering.add-stem-support = ##f
}

fingeringVoiceC = {
  \fingeringGlobal
  %\override Fingering.color = green
}

classicalGuitar = \relative c' {

  \key g \major
  \numericTimeSignature
  \time 3/4

  \parallelMusic voiceA, voiceB, voiceC {
    % anacrouse
    \fingeringVoiceA
    r8 b8 cis-1 dis-3 e-0 fis-1 |
    \fingeringVoiceB
    s2. |
    \fingeringVoiceC
    s2. |
    
    \repeat volta 2 {
      %1
      a4.-4 g8-2 _( fis-1 ) g |
      s4 <g b>2 |
      e,2. |
      
      %2
      fis8-1 _( e ) dis-4 e b-0 e-0 |
      s4 e2-1 |
      gis2.-3 |
      
      %3
      d4.-4 c8-1 _( b ) a-3 |
      s4 e2-2 |
      a2. |
      
      %4
      gis8-1 _( a-2 ) c-1 _( b-0 ) ais-2 _( b-3 ) |
      s2. |
      a2. |
      
      %5
      \override TextSpanner.bound-details.left.text = "II"
      e8-4 \startTextSpan _( dis-3 ) d-2  dis-3 g-2 _( fis ) \stopTextSpan |
      s4 a2 |
      b2. |
      
      %6
      \override TextSpanner.bound-details.left.text = "VII"
      f8-4 \startTextSpan fis c'4.-2 b8 \stopTextSpan |
      s2. |
      b2 b4 |
      
      %7
      \override TextSpanner.bound-details.left.text = "II"
      a4.-4 \startTextSpan g8-2 _( fis ) e-4 \stopTextSpan |
      s4 b2-3 |
      e2. |
      
      %8
      \override TextSpanner.bound-details.left.text = "II"
      dis8-3 \startTextSpan c-4 \stopTextSpan b-0 a-1 g-0 fis-3 |
      s2. |
      b4 s2 |
      
      %9
      a'4.-4 g8-2 _( fis-1 ) g |
      s4 <g b>2 |
      e,2. |
      
      %10
      fis8-1 _( e ) dis-4 e b-0 e-0 |
      s4 e2-1 |
      gis2.-3 |
      
      %11
      d4.-4 c8-1 _( b ) a-3 |
      s4 e2-2 |
      a2. |
      
      %12
      gis8-1 _( a-2 ) c-1 _( b-0 ) d-4 _( c-1 ) |
      s2. |
      a2. |
      
      %13
      b8-0 ais-3 b cis-2 dis-4 e-0 |
      s2. |
      b2-1 s4 |
      
      %14
      \override TextSpanner.bound-details.left.text = "VII"
      fis8 \startTextSpan g-3 a-4 b cis-3 dis-4 \stopTextSpan |
      <a dis-2>2 s4 |
      b2 b4 |
      
      %15
      e8 ais,8-1 _( b-2 ) c-3 _( b-2 ) g-3\2 |
      s2. |
      e,2. ~ |
      
      %16
      \alternative {
        {
          e8 b cis-1 dis-3 e-0 fis-1 |
          <g b>4 s2 |
          e2. |
        }
        {
          e8 e'\harmonic b\harmonic g\harmonic e b |
          <g b>4 s2 |
          e2. |
        }
      }
    }
    
    % deuxième partie
    
    \repeat volta 2 {
      %17
      d4.-2 \rightHandFinger #4 e \rightHandFinger #4 |
      s4 c4.-4 \rightHandFinger #3 c8 \rightHandFinger #2 _~ |
      fis4-1 d'\rightHandFinger #2 a |

      %18
      d4. \rightHandFinger #4 e |
      c8 c8 c4. c8 |
      fis4-1 d' a |
      
      %19
      d4. e |
      s4 b4. b8 |
      g4 d' d |
      
      %20
      d4. e |
      s4 b4. b8 |
      g,4 d' d |
      
      %21
      d8\harmonic b'\harmonic g\harmonic e b g |
      s2. |
      s2. |
      
      %22
      a4.-3 c |
      \override TextSpanner.bound-details.left.text = "I"
      s4 \stemUp dis,4. \startTextSpan dis8 \stopTextSpan |
      b4-2 dis b |
      
      %23
      b4.-0 a-2 |
      s8 dis2-1 dis8 \stemDown |
      b'4 b, b |
      
      %23
      g2. |
      s2. |
      g'8 g,-3 \rightHandFinger #1 b-1 \rightHandFinger #1 e-2 \rightHandFinger #1 g \rightHandFinger #2 b \rightHandFinger #3 |
      
      %24
      e'8 \rightHandFinger #4 b-0 cis-1 dis-3 e-0 fis-1 |
      s2. |
      s2. |
      
      %1
      a4.-4 g8-2 _( fis-1 ) g |
      s4 <g b>2 |
      e,,2. |
      
      %2
      fis8-1 _( e ) dis-4 e b-0 e-0 |
      s4 e2-1 |
      gis2.-3 |
      
      %27
      d4.-4 c8-1 _( b ) a-3 |
      s4 e2-2 |
      a2. |
      
      %28
      gis8-1 _( a-2 ) c-1 _( b-0 ) d-4 _( c-1 ) |
      s2. |
      a2. |
      
      %29
      b8-0 ais-3 b cis-2 dis-4 e-0 |
      s2. |
      b2-1 s4 |
      
      %30
      \override TextSpanner.bound-details.left.text = "VII"
      fis8 \startTextSpan g-3 a-4 b cis-3 dis-4 \stopTextSpan |
      <a dis-2>2 s4 |
      b2 b4 |
      
      %31
      e8 ais,8-1 _( b-2 ) c-3 _( b-2 ) g-3\2 |
      s2. |
      e,2. ~ |

      \alternative {
        {
          e8 e'\harmonic b\harmonic g\harmonic e b |
          <g b>4 s2 |
          e2. |
        }
        {
          e2 s4 \bar "|." |
          <g b>2 r4|
          e2 s4|
        }
      }
    }
  }
}

barrés = {
  \override TextSpanner.font-shape = #'upright
  \override TextSpanner.dash-fraction = #1
  \override TextSpanner.bound-details.right.text =
      \markup { \draw-line #'(0 . -1) }
}

merges = {
  \mergeDifferentlyHeadedOn
  \mergeDifferentlyDottedOn
  \shiftOff
}

guitarTweaks = {
  \merges
  \barrés
}

\score {
  \new Staff \with {
    midiInstrument = "acoustic guitar (nylon)"
    instrumentName = "Guitare Classique"
  } {
    \clef "treble_8"
    \key g \major \time 3/4
    
    \set Timing.beamExceptions = #'()
    \set Timing.baseMoment = #(ly:make-moment 1/4)
    \set Timing.beatStructure = 1,1,1
    <<
      \relative {
        \voiceOne
        \guitarTweaks
        \voiceA
      } \\
      \relative {
        \voiceThree \stemDown
        \guitarTweaks
        \voiceB
      } \\
      \relative {
        \voiceFour
        \guitarTweaks
        \voiceC
      }
    >>
  }
  \layout { }
  \midi {
    \tempo 2.=120
  }
}
