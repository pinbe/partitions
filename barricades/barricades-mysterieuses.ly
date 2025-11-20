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
  r8 c'-4\3 e-0 \startBarre 3 6 c~c d g b,-2~ |
  r4 c g'-3 g,|
  s1 |

  \repeat segno 5 {
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
    
    \alternative {
      %9
      \volta 1 {
        \tag #'layout {
          \once \override Fingering.script-priority = #0
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
        \break
      }
      
      % Couplet 1
      \volta 2 {
        %10
        c8 e g e~ e d g d~ |
        s1|
        <c, e>4 c' g b |
        %11
        d8 e g e~ e d g d~ |
        s1 |
        c,4 c' g b |
  
        %12
        d8 e g e~ e d g d~ |
        s1 |
        c,4 c' b, g' |
  
        %13
        d8 e g e~ e d g d~ |
        s1 |
        c,4 c' b, g' |
  
        %14 03:55
        d8 c g' c,~ c c fis c |
        s1 |
        a,4 a' d, a' |
  
        %15
        g'8 b, d b~ b a d a~ |
        s1 |
        g,4 g' d fis |
  
        %16 04:03
        a8 b d b~ b a d a~ |
        s1 |
        g,4 g' d fis |
  
        %17
        a8 b d b~ b b d b~ |
        s1 |
        g,4 d' b g' |
  
        %18
        b8 b e b a4. \prallprall g16 ( a ) |
        s1 |
        c,4 g' d d |
  
        %19
        g8 b d b~ b a f' b,~ |
        s1 |
        g,4 g' d d |
  
        %20
        b8 c e c~ c bes g' bes,~ |
        s1 |
        a4 a' e e, |
  
        %21
        bes8 a c a~ a a f' a,~ |
        s1 |
        f4 f' d d |
  
        %22
        a8 b f' b,~ b c e c |
        s1 |
        g,4 g' c, c |
  
        %23 04:27
        d8 \prall \breathe c e c~ c d g
        \afterGrace b,-2~ {
          s4
          \once \hideNotes
          b8
        } |
        s1 |
        g4 c g' g, |

        \break
      }

      % Couplet 2
      \volta 3 {
        %24 04:55
        c8 c e c~ c c d b~ |
        s1|
        c8 r g'4 g, f'|
        
        %25
        b8 b c a~ a a b gis |
        s1 |
        a,4 e' e, e' |
        
        %26
        a8 f' a f~ f f g e~ |
        s1 |
        f,4 f' cis a |
        
        %27
        e8 e f d~ d d e cis |
        s1 |
        d4 g, a a |
        
        %28
        d8 a f' a,~ a g e' g,~ |
        s1 |
        d4 d e, e' |
        
        %29 05:13
        g8 e' f e d [ c b a ] |
        s1 |
        f,2 fis4 d' |
        
        %30
        b8 \prall \breathe c e c~ c d g
        \afterGrace b,-2~ {
          s4
          \once \hideNotes
          b8
        } |
        s1 |
        g,4 c g' g, |
        
        \break
      }
      
      % Couplet 3
      \volta 4 {
        
        %31 05:45
        c8 \mordent c e c~ c c f c |
        s1 |
        <c e>4 g' a, a' |
        
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
        c8 \mordent \breathe c e c~ c d g
        \afterGrace b,-2~ {
          s4
          \once \hideNotes
          b8
        } |
        s1|
        <c e>8 r c4 g' g, |
        
        
      }
      
      \volta 5 {
        %54
        s1|
        s1 |
        <c e g c>1 |
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
    \tempo 4.=72
  }
}
