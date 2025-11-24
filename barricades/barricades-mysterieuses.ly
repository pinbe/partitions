\version "2.24.4"

\header {
  title = "Les barricades mystérieuses"
  composer = "François Couperin (1668-1733)"
  tagline = \markup{ \italic \small "Révision des doigtés du 24/11/2025 par Benoît Pin"}
  %{
  sources:
  https://youtu.be/7cmL6WpDSHY
  https://www.youtube.com/watch?v=RE4xXhuEmPA
  %}
}

\include "../commons/guitar-helpers.ly"

PRIO_DOWN = \once \override Fingering.script-priority = #0

\parallelMusic voiceA, voiceB, voiceC {
  %\set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/8)
  \set Timing.beatStructure = 1,3,1,3
  
  %1
  r8 c'-4\3 e-0 \startBarre 3 6 c~c d g b,-2~ |
  r4 c g'-3 g,|
  s1 |

  \repeat volta 5 {
    \volta #'() { s1*0^\markup { "Rondeau" } }
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

    \section
    
    \alternative {
      %9
      \volta 1 {
        \tag #'layout {
          \PRIO_DOWN
          c8-1 \mordent c e-0 c-4\3~ c \startBarre 3 6 d g
          
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
        \section
        \break
      }
      
      % Couplet 1
      \volta 2 {
        \override Score.VoltaBracket.stencil = #'()
        \volta #'() { s1*0^\markup { "Couplet 1" } }
        %10
        \PRIO_DOWN
        c8-1 \mordent \breathe e-4 g \startBarre 3 6 e~ e d g d~ |
        s1|
        <c,-3 e-2>4 c'-3 g-3 b-2 |

        %11
        d8 e-4 g e~ e d g d~ |
        s1 |
        c,4 c'-3 g-3 b-2 |
  
        %12
        d8 e-4 g e~ \stopBarre e d-3 g-4 d~ |
        s1 |
        c,4 c'-3 b,-1 g' |
  
        %13
        d8 \startBarre 3 6 e-4 g e~ \stopBarre e d-3 g-4 d~ |
        s1 |
        c,4 c'-3 b,-1 g' |
  
        %14 03:55
        d8 c-1 g'-4 c,~ c c fis-3 c |
        s1 |
        a,4 a'-2 d, a' |
  
        %15
        g'8-4 b,-0 d-1 b~-2 b a-1 d-2 a |
        s1 |
        g,4-2 g'-3 d-4 fis-3 |
  
        %16 04:03
        a8\rest b-3 d-2 b~ b a-1 d-2 a~ |
        s1 |
        g,4-1 g'-4 d-4 fis-3 |
  
        %17
        a8 b-3 d-2 b~ b b d b~ |
        s1 |
        g,4-1 g'-4 b,-1 g' |
  
        %18
        b8 b-0 e-0 a,-1 a4. \prallprall g16 ( a ) |
        s1 |
        c,4-1 g'-0 d-0 d |
  
        %19
        g8 b-0 d-1 b_~\glide-2 b a-2 f'-1 b,~-0 |
        s1 |
        g,4-2 g'-3 d-0 d |
  
        %20
        b8 c-2 e c~ c bes-3 g'-4 bes,~ |
        s1 |
        a4 a'-3 e-2 e, |
  
        %21
        bes8 \startBarre 1 6 a-2 c a~ \stopBarre a a f'-1 a,~ |
        s1 |
        f4 f'-3 d-0 d |
  
        %22
        a8 b-0 f'-1 b,~ b c-1 e c |
        s1 |
        g,4-3 g'-0 c,-3 c |
  
        %23 04:27
        \tag #'layout {
          d8-3 \prall \breathe c-4 e-0 \startBarre 3 6 c~ c d g
          \afterGrace b,-2~ {
            s4
            \once \hideNotes
            b8 \stopBarre
          } |
          s1 |
          g4-2 c g'-3 g, |
        }
        
        \tag #'midi {
          d8 \prall \breathe c e c~ c d g b,~ |
          s1|
          g4 c g' g, |
        }
        \section
        \break
      }

      % Couplet 2
      \volta 3 {
        \volta #'() { s1*0^\markup { "Couplet 2" } }
        %24 04:55
        \PRIO_DOWN
        c8-1 \mordent \breathe c-4 e-0 c~ c \startBarre 3 6 c d b~-2 \stopBarre |
        s1|
        <c-3 e-2>8 r g'4-3 g,-1 f' |
        
        %25
        b8 b-0 c-1 a~-3 a a b gis-1 |
        s1 |
        a,4 e'-2 e, e' |
        
        %26
        a8-3 f'-4 a-3 f~ f f g-1 e~-3 |
        s1 |
        f,4-1 f'-1 cis-1 a |
        
        %27
        e8 e-0 f-1 d~-4 d d e-0 cis-2 |
        s1 |
        d4 g,-3 a a |
        
        %28
        d8-4 a-2 f'-1 a,~ a g e' g,~ |
        s1 |
        d4 d e, e'-2 |
        
        %29 05:13
        g8 e' f e d-4 [ c-1 b a-2 ] |
        s1 |
        f,2-1 fis4-2 d' |
        
        %30
        \tag #'layout {
          b8-1 \prall \breathe c-4 e-0 \startBarre 3 6 c~ c d g
          \afterGrace b,-2~ {
            s4
            \once \hideNotes
            b8 \stopBarre
          } |
          s1 |
          g,4-3 c g'-3 g, |
        }
        \tag #'midi {
          b8 c e c~ c d g b,~ |
          s1 |
          g,4 c g' g, |
        }
        \section
        \pageBreak
      }
      
      % Couplet 3
      \volta 4 {
        \volta #'() { s1*0^\markup { "Couplet 3" } }
        %31 05:45
        c8 \mordent c e c~ c c f c |
        s1 |
        <c' e>4 g' a, a' |
        
        %32
        r8 c d bes~ bes d g d |
        s1|
        bes,4 f' g, bes' |
        
        %33
        r8 d e c~ c c f c |
        s1|
        c,4 g' a, a' |
        
        %34
        r8 d f d~ d bes e bes |
        s1|
        bes,4 g' c, c |
        
        %35 05:59
        f'2~ f8 f a f |
        % TODO liaison avec le sib précédent
        s8 bes a c f, r s4 |
        f,2~ f8 s c''4 |
        
        %36
        r8 d a' d,~ d d a' d,~ |
        s1 |
        fis,4 c' d, c' |
        
        %37
        d8 d a' d,~ d d a' d, |
        s1 |
        g4 bes f bes |
        
        %38
        r8 c g' c,~ c c g' c,~ |
        s1 |
        e,4 bes' c, bes' |
        
        %39
        c8 c g' c,~ c c g' c,~ |
        s1 |
        f4 a e a |
        
        %40
        c8 d f d~ d d f d~ |
        s1 |
        d,4 a' b, a' |
        
        %41
        d8 b f' b,~ b b f' b,~ |
        s1 |
        e4 g d g |
        
        %42 06:24
        b8 c e c~ c c e c |
        s1 |
        c,4 g' a, g' |
        
        %43
        r8 a e' a,~ a a e' a, |
        s1|
        d4 f c f |
        
        %44
        r8 g d' g,~ g g d' g,~ |
        s1|
        b,4 f' g, f' |
        
        %45
        g8 g d' g,~ g g c g~ |
        s1|
        c4 e e, e' |
        
        %46
        g8 a c a~ a g c g~ |
        s1|
        f,4 d' g, e' |
        
        %47
        g8 a c a~ a g c g~ |
        s1|
        a,4 f' e, e' |

        %48
        g8 a c a~ a a c a~ |
        s1|
        f,4 d' a f' | 

        %49 07:36
        a8 g b g~ g g c g~ |
        s1|
        g,4 d' e, e' |
        
        %50
        g8 a c a~ a g c g~ |
        s1|
        f,4 d' g, e' |
        
        %51
        g8 a c a~ a a c a |
        s1|
        a,4 f' f, d' |
        
        %52
        r8 g c g~ g g c b |
        s1|
        g,4 d' f g, |
        
        %53
        \tag #'layout {
          c8 \mordent \breathe c e c~ c d g
          \afterGrace b,-2~ {
            s4
            \once \hideNotes
            b8
          } |
          s1|
          <c e>8 r c4 g' g, |
        }
        \tag #'midi {
          c8 c e c~ c d g b,~ |
          s1|
          <c e>8 r c4 g' g, |
        }
        \section
      }
      
      
      \volta 5 {
        %54
        s1|
        s1 |
        <c e g c>1 |
        \fine
      }
    } % \alternative end
    
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
    \tempo 2.=45
  }
}
