\version "2.25.81"

\header {
  title = "Tico-tico no Fubá"
  composer = "Zequinha de Abreu"
  tagline = \markup{ \italic \small "Édition du 14/09/2026 par Benoît Pin"}
  %{
  sources :
  Guitar dell’ arte
  https://www.youtube.com/watch?v=p87AMzjaK-M
  %}
}

\include "../../commons/guitar-helpers.ly"

\parallelMusic voiceA, voiceB {
  \key a \major
  \partial 8*3

  \set strokeFingerOrientations = #'(up)
  \override StrokeFinger.outside-staff-priority = #100
  a'8-4\2 gis-3 g-2 |
  \set strokeFingerOrientations = #'(down)
  s4. |

  %1
  fis8 \startBarre 7 3 eis-4 fis gis\glide-3 \stopBarre |
  <d d'>2 |

  %2
  b8-3 \startBarre 10 3 a gis-4 a \stopBarre |
  <d f'>2 |

  %3
  cis8 \startBarre 9 3 e, a cis \stopBarre |
  <e, ~ e'' a-2>2 |

  %4
  e8-4 dis-3 d\glide-2 cis-2 |
  e2 |

  %5
  b8 \startBarre 7 3 a-4 gis-3 fis \stopBarre |
  <e ~ d'' gis-3>2 |

  %6
  e8-0 d-2 cis-1 b-0 |
  e2 |

  %7
  a2 \barre 2 6 |
  <a-4 cis-3 e>2 |

  %8
  e'4 \fermata r16 e,-2 \RH 3 _( dis-1 ) e \RH 2 |
  <e b'-2 d gis-1 b e>4 \arpeggio r |

  \key a \minor

  \repeat volta 2 {

    %9
    f16-3 \RH 3 _( e8-2 ) <a-3 c-1 e-0 \RH 2 \RH 3 \RH 4 >16 ~ <a c e> e-2 \RH 3 _( dis-1 )  e |
    a4 a |

    %10
    f16-3 \RH 3 _( e8-2 ) <gis-1 d'-4 e>16 ~ <gis d' e>16 e-2 \RH 3 _( dis-1 ) e \RH 2 |
    e4 e |

    %11
    f16-3 \RH 3 _( e-2 ) d'-4 \RH 4 _( b-0 ) gis-1 \RH 3  e-2 \RH 2 _( d-0 ) cis-4 \RH 3 |
    e4 r |

    %12
    c16-3 \RH 1 <e-1 a-2 \RH 2 \RH 3 >8 <e a>16 r16 a-2 \RH 3 _( gis-1 ) g-0 \RH 2 |
    r4 a |

    %13
    f16-3 \RH 2 \startBarre 1 6 a8-2 \RH 3 \once \set fingeringOrientations = #'(up) <f a d-4>16 ~ <f a d> c' \RH 4 a \RH 3 f \RH 2 \stopBarre |
    f4 f |

    %14
    e16-2 \RH 2 a8-3 \RH 3 \once \set fingeringOrientations = #'(up) <e a c-1>16 ~ <e a c> c' \RH 3 _( b-0 ) ais-3 \RH 2 |
    a4 a |

    \alternative {
      \volta 1{

        %15
        b16-0 \RH 3 \set strokeFingerOrientations = #'(down) b,-2 \glide \RH 1 dis-1 \RH 1 _( fis-4 ) \set strokeFingerOrientations = #'(up) a-2 \RH 2 c-1 \RH 3 _( b-0 ) a \RH 2 |
        s2 |

        %16
        gis16-1 \RH 2 <d'-4 e \RH 3 \RH 4 >8 <d e>16 ~ <d e> e,-2 \RH 3 _( dis-1 ) e \RH 2 |
        e4 e |
      }

      \volta 2{
        %17
        b'16-0 \RH 3 e,-2 \RH 1 gis-1 \RH 2 b-0 \RH 3 e-0 \RH 4 d-4 \RH 3 _( c-1 )  b-0  \RH 3 |
        s2 |

        %18
        a8-2 \RH 2 r r16 a-1 \RH 2 cis-2 \RH 3 e \RH 2 |
        r8 e a r |
      }
    }
  }

  \break

  \repeat volta 2 {
    % 19
    \key a \major
    a16-4 \RH 4 \startBarre 2 3 a, \RH 2 cis \RH 3 gis'-3 \RH 4 ~ gis a, \RH 2 cis \RH 3 fis \RH 2 |
    a4 a |

    %20
    fis16 \RH 4 a, \RH 2 cis \RH 3 \stopBarre e-0 \RH 4 ~ e a,-1 \RH 2 cis-2 \RH 3 fis \RH 2 \startBarre 2 3 |
    a4 a |

    %21
    fis16 \RH 4 a, \RH 2 cis \RH 3 \stopBarre e-0 \RH 4 ~ e a,-1 \RH 2 cis-2 \RH 3 e \RH 2 |
    a4 a |

    %22
    fis16-1 \RH 4 b,-3 \RH 2 d-2 \RH 3 e-0 \RH 4 ~ e b \RH 2 d \RH 3 fis-1 \RH 2 |
    e4 e |

    %23
    a16-4 \RH 4 b,-3 \RH 2 d-2 \RH 3 gis-4 \RH 4 ~ gis b, \RH 2 d \RH 3 fis-1 \RH 2 |
    e4 e |

    %24
    fis16-1 \RH 4 b,-3 \RH 2 d-2 \RH 3 e-0 \RH 4 ~ e b \RH 2 d \RH 3 fis \RH 2 |
    e4 e |

    %25
    a16\glide-4 \RH 4 b,-3 \RH 2 d-2 \RH 3 gis-4 \RH 4 ~ gis b,-3 \RH 2  d-2 \RH 3 fis \RH 2 \startBarre 2 3 |
    e4 e |

    %26
    fis16 \RH 4 a, \RH 2 cis \RH 3 \stopBarre e \RH 4 ~ e a,-1 \RH 2 cis-2 \RH 3 e \RH 2 |
    a4 a |

    %27
    a16-4 \RH 4 \startBarre 2 3 a, \RH 2 cis \RH 3 gis'-3 \RH 4 ~ gis a, \RH 2 cis \RH 3 fis \RH 2 |
    a4 a |

    %28
    fis16 \RH 4 a, \RH 2 cis \RH 3 \stopBarre e-0 \RH 4  ~ e a,-1 \RH 2 cis-2 \RH 3 e \RH 2 |
    a4 a |

    %29
    fis16-2 \RH 4 _( e ) cis-2 \RH 3 ais-3 \RH 2 fis' \RH 4 _( e ) cis \RH 3 ais \RH 2 |
    fis4-1 fis |

    %30
    b16-0 \RH 3 ais-3 \RH 2 b \RH 3 cis-2 \RH 2 d4-3 \RH 3 |
    b4-1 r |

    %31
    d,16-0 \RH 3 cis-4 \RH 2 d \RH 3 e-2 \RH 2 fis-4 \RH 3 gis-1 \RH 2 a-2 \RH 3 b-0 \RH 2 |
    s2 |

    %32
    cis16-1 \RH 3 _( d-2 ) dis-3 \RH 2 _( e-4\2 ) fis-1 \RH 3 _( e-0 ) d-2 \RH 2 _( cis-1 ) |
    a4 r |

    %33
    b16-3\3 \RH 3 _( a\glide-1 ) gis-1 \RH 2 fis-4 \RH 3 _( e-2 ) d-0 \RH 2 cis-4 \RH 3 _( b-2 ) |
    e4 r |

    \alternative {
      \volta 1 {
        %34
        a8 \RH 2 r r16 a'-1 cis-2 e |
        r8 e \RH 1 a \RH 1 r |
      }

      \volta 2 {

        %35
        a,,8 \RH 2 r r16 e'-2 \RH 3 _( dis-1 ) e \RH 2 |
        r8 e \RH 1 a \RH 1  r |
      }
    }
  }

  \break

  \key a \minor
  \repeat volta 2 {
    %36
    f16-3 \RH 3 _( e8-2 ) <a-3 c-1 e-0 \RH 2 \RH 3 \RH 4 >16 ~ <a c e> e-2 \RH 3 _( dis-1 )  e |
    a4 a |

    %37
    f16-3 \RH 3 _( e8-2 ) <gis-1 d'-4 e>16 ~ <gis d' e>16 e-2 \RH 3 _( dis-1 ) e \RH 2 |
    e4 e |

    %38
    f16-3 \RH 3 _( e-2 ) d'-4 \RH 4 _( b-0 ) gis-1 \RH 3  e-2 \RH 2 _( d-0 ) cis-4 \RH 3 |
    e4 r |

    %39
    c16-3 \RH 1 <e-1 a-2 \RH 2 \RH 3 >8 <e a>16 r16 a-2 \RH 3 _( gis-1 ) g-0 \RH 2 |
    r4 a |

    %40
    f16-3 \RH 2 \startBarre 1 6 a8-2 \RH 3 \once \set fingeringOrientations = #'(up) <f a d-4>16 ~ <f a d> c' \RH 4 a \RH 3 f \RH 2 \stopBarre |
    f4 f |

    %41
    e16-2 \RH 2 a8-3 \RH 3 \once \set fingeringOrientations = #'(up) <e a c-1>16 ~ <e a c> c' \RH 3 _( b-0 ) ais-3 \RH 2 |
    a4 a |

    \alternative {
      \volta 1{

        %42
        b16-0 \RH 3 \set strokeFingerOrientations = #'(down) b,-2 \glide \RH 1 dis-1 \RH 1 _( fis-4 ) \set strokeFingerOrientations = #'(up) a-2 \RH 2 c-1 \RH 3 _( b-0 ) a \RH 2 |
        s2 |

        %43
        gis16-1 \RH 2 <d'-4 e \RH 3 \RH 4 >8 <d e>16 ~ <d e> e,-2 \RH 3 _( dis-1 ) e \RH 2 |
        e4 e |
      }

      \volta 2{
        %44
        b'16-0 \RH 3 e,-2 \RH 1 gis-1 \RH 2 b-0 \RH 3 e-0 \RH 4 d-4 \RH 3 _( c-1 )  b-0  \RH 3 |
        s2 |

        %45
        a8-2 \RH 2 r r16 b-4\3 _( \RH 2 a-2 ) aes-1 \RH 3 |
        r8 e a r |

      }
    }
  }

  %{36
    f16-3 \RH 3 e8-2 \RH 2 <a-3 c-1 e-0 \RH 2 \RH 3 \RH 4 >16 ~ <a c e> e-2 \RH 2 dis-1 e |
    a4 a |

    %37
    f16-3 e8-2 <gis-1 d'-4 e>16 ~ <gis d' e>16 e-2 dis-1 e |
    e4 e |

    %38
    f16-3 e-2 d'-4 _( b-0 ) gis-1 e-2 _( d-0 ) cis-4 |
    e4 r |

    %39
    c16-3 \RH 1 <e-1 a-2 \RH 2 \RH 3 >8 <e a>16 r16 a-2 _( gis-1 ) g-0 |
    r4 a |

    %40
    f16-3 \RH 2 \startBarre 1 6 a8-2 \RH 3 \once \set fingeringOrientations = #'(up) <f a d-4>16 ~ <f a d> c' \RH 4 a \RH 3 f \RH 2 \stopBarre |
    f4 f |

    %41
    e16-2 a8-3 \once \set fingeringOrientations = #'(up) <e a c-1>16 ~ <e a c> c' _( b-0 ) ais-3 |
    a4 a |

    \alternative {
      \volta 1{

        %42
        b16-0 b,-2 \RH 1 dis-1 \RH 1 _( fis-4 ) a-2 c-1 _( b-0 ) a |
        s2 |

        %43
        gis16-1 <d'-4 e \RH 3 \RH 4 >8 <d e>16 ~ <d e> e,-2 dis-1 e |
        e4 e |
      }

      \volta 2{
        %44
        b'16-0 \RH 3 e,-2 \RH 1 gis-1 \RH 2 b-0 \RH 3 e-0 \RH 4 d-3 c-1 _( b-0 ) |
        s2 |

        %45
        a8-2 r r16 b-4\3 _( \RH 2 a-2 ) aes-1 \RH 3 |
        r8 e a r |
      }
    }
  %}

  \break

  %46
  g16-0 \RH 2 \set strokeFingerOrientations = #'(down) c,-3 \glide \RH 1 e-2 \RH 1 \set strokeFingerOrientations = #'(up) g \RH 2 c-1 \RH 3 e \RH 4 g-1 \RH 2 gis-2 \RH 3 |
  s2 |

  %47
  a8.-3 \RH 4 <c,-2 f-4>16 r b-0 \RH 3 a-2 \RH 2 aes-1 \RH 3 |
  d4 d8 r |

  %48
  g16-0 \RH 2 b,-1 \RH 1 f'-2 \RH 2 g \RH 3 b-0 \RH 4 d \RH 2 \startBarre 3 6 f-4 \RH 3 g \RH 2 |
  s2 |

  %49
  a8.-4 \RH 4 <c,-2 e-3>16 \stopBarre r c'-4 \RH 2 c \RH 3 c \RH 2 |
  c4 r |

  %50
  c16 \RH 4 \startBarre 5 3 c, \RH 2 e \RH 3 c'\glide-4 \RH 2 b-4 \RH 4 c, \RH 2 fis-3 \RH 3 b \RH 2 |
  e4-3 ees-2 |

  %51
  a16 \RH 4 <c, f-2>8 <c f>16 \stopBarre r b'-4 \RH 2 b \RH 3 b \RH 2 |
  d4-0 d |

  %52
  b16 \RH 4 g,-0 \RH 2 b \RH 3 b'\glide-4 \RH 2 a-4 \RH 4 g, \RH 2 b \RH 3 a'\glide-4 \RH 2 |
  g4\glide-1_\4 f-1 |

  %53
  g8-4 \RH 4 _( e16 ) c-1 \RH 3 g \RH 2 e \RH 3 c-3 \RH 2 _( a ) |
  e4-2 r |

  %54
  g8-3 \RH 1 e'16-2 \RH 1 g \RH 2 c-1 \RH 3 e \RH 4 g-1 \RH 2 gis-2 \RH 3 |
  s2 |

  %55
  a8.-3 \RH 4 <c,-4 f-2>16 r b-0 \RH 3 a-2 \RH 2 aes-1 \RH 3 |
  d4 d8 r |

  %56
  g16 \RH 2 b,-1 \RH 1 f'-2 \RH 2 g \RH 3 b-0 \RH 4 d \RH 2 \startBarre 3 6 f-4 \RH 3 g \RH 2 |
  s2 |

  %57
  a8.-4 \RH 4 <c,-2 e-3>16 \stopBarre r c-1 \RH 3 b-4 \RH 2 _( bes-3 ) |
  c4 r |

  %58
  a16-2 \RH 3 \startBarre 1 6 _( gis ) a \RH 2 \stopBarre b-0 \RH 3 d-4 \RH 2 _( c-1 ) b \RH 3 c \RH 2 |
  f,4 fis-2 |

  %59
  e16 \RH 4 g, \RH 2 c-1 \RH 3 e \RH 4 g-4 \RH 2 _( fis-2 ) f-1 _( \RH 3 e ) |
  g8-3 r r4 |

  %60
  d16-4 \RH 2 _( c-1 ) b-0 \RH 3 a-2 \RH 2 g-0 \RH 3 f-4 \RH 2 e-2 \RH 3 d \RH 2 |
  r4 g-3 |

  %61
  c8-3 \RH 1 r r16 e-2 \RH 3 _( dis-1 ) e \RH 2 |
  r8 g8-2 \RH 1 c \RH 1 r |

  \break

  \repeat volta 2 {

    %62
    f16-3 \RH 3 _( e8-2 ) <a-3 c-1 e-0 \RH 2 \RH 3 \RH 4 >16 ~ <a c e> e-2 \RH 3 _( dis-1 )  e |
    a4 a |

    %63
    f16-3 \RH 3 _( e8-2 ) <gis-1 d'-4 e>16 ~ <gis d' e>16 e-2 \RH 3 _( dis-1 ) e \RH 2 |
    e4 e |

    %64
    f16-3 \RH 3 _( e-2 ) d'-4 \RH 4 _( b-0 ) gis-1 \RH 3  e-2 \RH 2 _( d-0 ) cis-4 \RH 3 |
    e4 r |

    %65
    c16-3 \RH 1 <e-1 a-2 \RH 2 \RH 3 >8 <e a>16 r16 a-2 \RH 3 _( gis-1 ) g-0 \RH 2 |
    r4 a |

    %66
    f16-3 \RH 2 \startBarre 1 6 a8-2 \RH 3 \once \set fingeringOrientations = #'(up) <f a d-4>16 ~ <f a d> c' \RH 4 a \RH 3 f \RH 2 \stopBarre |
    f4 f |

    %67
    e16-2 \RH 2 a8-3 \RH 3 \once \set fingeringOrientations = #'(up) <e a c-1>16 ~ <e a c> c' \RH 3 _( b-0 ) ais-3 \RH 2 |
    a4 a |

    \alternative {
      \volta 1{

        %68
        b16-0 \RH 3 \set strokeFingerOrientations = #'(down) b,-2 \glide \RH 1 dis-1 \RH 1 _( fis-4 ) \set strokeFingerOrientations = #'(up) a-2 \RH 2 c-1 \RH 3 _( b-0 ) a \RH 2 |
        s2 |

        %69
        gis16-1 \RH 2 <d'-4 e \RH 3 \RH 4 >8 <d e>16 ~ <d e> e,-2 \RH 3 _( dis-1 ) e \RH 2 |
        e4 e |
      }

      \volta 2{
        %70
        b'16-0 \RH 3 e,-2 \RH 1 gis-1 \RH 2 b-0 \RH 3 e-0 \RH 4 d-4 \RH 3 _( c-1 )  b-0  \RH 3 |
        s2 |

        %71
        a8-2 <gis-1 b e> <c e a> \barre 5 6 r |
        r8 e a r  \fine |
      }
    }
  }


}

zique = {
  \clef "treble_8"
  \time 2/4
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
    }
  >>
}

\score {
  \new Staff {
    %\removeWithTag #'midi
    \zique
  }

  \layout { }
}

\score {
  \new Staff {
    \set Staff.midiInstrument = "acoustic guitar (nylon)"
    \unfoldRepeats
    %\removeWithTag #'layout
    %\keepWithTag #'midi
    \zique
  }

  \midi {
    \tempo 4.= #66
  }
}