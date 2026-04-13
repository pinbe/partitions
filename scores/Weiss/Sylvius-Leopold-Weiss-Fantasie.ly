\version "2.25.81"

\header {
  title = "Fantasie"
  composer = "Sylvius Leopold Weiss"
  tagline = \markup{ \italic \small "Révision des doigtés du 29/03/2026 par Benoît Pin"}
  %{
  sources:
  Sky Guitar Youtube channel
  https://youtu.be/16KktOFaVsI
  https://drive.google.com/file/d/1L9Sj5925d0n_CoNe44jOTpnrr9Ta0fwD/view

  www.luthbaroque.fr / Manuscrit Weiss de Londres
  https://www.luthbaroque.fr/Les_fac-similes/Les_manuscrits/Londres/Fac-similes/Lbl_new/Lbl134_067v.jpg
  https://www.luthbaroque.fr/Les_fac-similes/Les_manuscrits/Londres/Fac-similes/Lbl_new/Lbl135_068r.jpg
  %}
}

\include "../../commons/guitar-helpers.ly"


\parallelMusic voiceA, voiceB, voiceC {
  \time 3/4
  \omit Staff.TimeSignature
  \omit Staff.BarLine
  \accidentalStyle neo-modern
  \tempo 4 = 54

  \override Fingering.add-stem-support = ##t


  %1
  \set strokeFingerOrientations = #'(up)
  r16 g \RH 2 b \RH "m…" g e' b g'\glide-1 e-3 b'-1 g-2 c-3 e,-0 |
  \set strokeFingerOrientations = #'(up)
  s2. |
  \set strokeFingerOrientations = #'(down)
  e,2. |

  %2
  r16 \startBarre #2 #6 fis,-3 a fis dis'-4 a fis' dis \stopBarre a'-1 fis-3 b-4 dis,-1 |
  s2. |
  fis2 r4 |

  %3
  r16 g,-3 b-2 g e'-4 b g' \startBarre #3 #6 e \stopBarre b'-4 a-2 b \RH 4 d,-3\3 \RH 2 |
  s2. |
  g2-1 r4 |

  %4
  r16 c-1 \RH 3 b c r d-4 \RH 2 c d r b \RH 3 a-2 b |
  s2. |
  a4 fis-2 g-3 |

  %5
  \time 2/4
  g16 g'-2 b, fis'-1 c e-4 b e |
  s2 |
  g'8-0 \once \textSpannerDown b\glide-3 \startStringSpan #3  c-3 b-2 \stopStringSpan |

  %6
  \time 3/4
  r16 \startBarre #8 #3 c' \RH 4  e,-2 \RH 2 g \RH 3 \stopBarre r fis-4\2 \RH 3 c-1 d-3 b-0 \RH 2 d-3 \RH 3 g-4 \RH 4 g, \RH 2 |
  s2. |
  a,4 d s |

  %7
  \time 2/4
  r16 a \RH 2 \startBarre #2 #6 g'-2 \RH 4 fis \RH 3 \stopBarre r fis-4 \RH 4 b,-0 \RH 3 a-3 \RH 2 |
  s2 |
  cis4-3 dis-1 |

  %8
  e16 fis'-4 g, fis' cis e-0 b e |
  s2 |
  e8-2 g-0 cis-3 b-0 |

  %9
  r16 \startBarre #2 #6 e-4 \RH 4 ais,-2 \RH 3 fis-3 \RH 2 \stopBarre r \startBarre #3 #6 d' \RH 4 b-2 \RH 3 g-3 \RH 2 \stopBarre |
  s2 |
  fis,4 g |

  %10
  r16 cis-1 \RH 4 b-3 \RH 3 g-4 \RH 2 r \startBarre #2 #6 ais-2 \RH 2 fis' \RH 4 e-4 \RH 3 |
  s2 |
  e4 fis |

  %11
  r16 dis-3 \RH 2 e-4 \RH 3 fis \RH 4 \stopBarre r b-4 a-2 b |
  s2 |
  b4  b'-1_\4 |

  %12
  r16 gis-1 a-2 b-4 r e-4 d-2 e |
  s2 |
  e,,4 e''-1_\3 |

  %13
  r16 b-3\2 c-4 d-1 e-3 c-4 a-1 g\glide-3\3 |
  s2 |
  a,,2 |

  %14
  r16 e-3 fis-1 g-2 a-4 b-1 c-2 a-4 |
  s2 |
  d2 |

  %15
  r16 a-4 b-1 c-2 d-4 b-1 g-2 fis-1 |
  s2 |
  g2 |

  %16
  r16 \startBarre #8 #6 dis \RH 2 e-2 \RH 3 fis-4 \RH 2 g \RH 3 a-3 \RH 2 b-4 \RH 3 g \RH 2 |
  s2 |
  c,2 |

  %17
  r16 g \RH 3 a-3 \RH 2 b-4 \RH 3 c \RH 4 g \RH 3 \stopBarre fis-4\3 \RH 2 e-2 \RH 3 |
  s2 |
  fis4-2 r8 a,-0 |

  %18
  r16 \startBarre #7 #6 dis-2 e-3 fis \stopBarre r fis-3 b-4 a-1 |
  s2 |
  b4  dis-2_\5 |

  %19
  g16-1 e-0 dis-2 e a-4 e dis-3 e |
  s2 |
  e,4 fis\glide-1 |

  %20
  \time 3/4
  b'16-4 e, dis-2 e c'-4 e, dis-3\3 e c'16 e, dis e |
  s2. |
  g4-1 a a |

  %21
  dis16-2 \startBarre #7 #6 b-3 fis' dis a'-4 fis \stopBarre c'-1 a-3 dis-4 a-3 e'\glide-4 a,-3\3 |
  s2. |
  b4. r8 r4 |

  %22
  \time 2/4
  r16 fis'-4 e\glide-3 dis-3 e4-4 |
  s2 |
  <b'-0 \RH #2 g'-2\tweak extra-offset #'(-1.5 . 0 )\3 \RH #3 >4 r16
  \override Fingering.direction = #UP
  g'-3 fis\glide-2 e-2
  \override Fingering.direction = #DOWN |

  %23
  r16 \startBarre #7 #6 e\glide-4 dis-4 cis-3 dis-4 b a-4 fis |
  s2 |
  <b, fis''>2 |

  %24
  \time 3/4
  g16-2 b-1 a-4 g-2  fis a-4 g-2 fis \stopBarre e-0 g-2\1 fis-1 e-0 |
  s2. |
  b2 r4 |

  %25
  r16 \startBarre #2 #6 dis-3 e-4 fis a, c-4 b-3 a \stopBarre g-0 \startBarre #2 "[4-6]" b-0 e-0 e, \stopBarre |
  s2 .|
  b2 r4 |

  %26
  \time 2/4
  r16 \startBarre #2 #6 fis-3 a e'-4 b dis-4 a dis \stopBarre |
  s2 |
  b4 b'8-3 a \pageBreak |

  % deuxième partie
  \undo \omit Staff.TimeSignature
  \undo \omit Staff.BarLine
  \accidentalStyle default

  \clef "treble_8"
  \time 2/2
  \set Score.tempoHideNote = ##t
  \tempo \markup {
    \concat {
      (
      \general-align #Y #DOWN \note {2} #UP
      " = "
      \general-align #Y #DOWN \note {4} #UP
      )
    }
  } 2 = 54

  %27
  e2 g-2 |
  s1 |
  <e, g'>1 |

  %28
  fis2-1 b-4 |
  s1 |
  b''2\glide-3 \RH "p…" d-3 |

  %29
  b4-4 a8-2 gis-1 a2 |
  s1 |
  cis4-3 r fis-4 e-1 |

  %30
  a2 a |
  s1 |
  dis4-1 cis8-3_\3 b-1 cis4 dis |

  %31
  a2 g-1 |
  s1 |
  e4-1 b-0 e2-3 |

  %32
  fis2 \RH 2  fis |
  s1 |
  e4.-4 \RH 1 \startBarre #2 #3 d16-2 \RH "p…" ^( cis ) d4 b-3 \stopBarre |

  %33
  e4-0 g-3 fis-1 e |
  s1 |
  cis4-1 b-0 ais2-2 |

  %34
  d4-2 \startBarre #2 #6 fis \stopBarre r b-4\2 |
  s1 |
  <b, b'-3>2 d |

  %35
  e,4 \startBarre #9 #6 b'\glide-4 \stopBarre ais2-4 |
  s1 |
  cis2 fis4-2 e\glide-1 |

  %36
  <fis-3 b-4>4 r a2\glide-2 |
  s1 |
  dis4\glide-1_\5 cis8-1 b-4 cis4-1 dis-3 |

  %37
  g4-2  e-0 b'-4 e, |
  s1 |
  e,2 g-1 |

  %38
  e4 dis8-4 cis-2 dis2 |
  s1 |
  fis4-1 r b-1 a |

  %39
  e4 fis \barre #2 #6 g-2 a-4 |
  s1 |
  g4-2 fis e c''-3 |

  %40
  fis2.-2  g4-4 |
  s1 |
  d,4 c'8-1 ^( d-3 ) b4-0 r |

  %41
  r4 a,-1 g'-4 \grace{ fis16-2 _( e-0 } fis4 ) |
  s1 |
  d,1 |

  %42
  g4-1 a\glide-2 b-2 g\glide-3\2 |
  s1 |
  g1 |

  %43
  a4-3 \RH 3 d, \RH 2 \startBarre #7 #6  d'-4 \RH 4 fis, |
  s1 |
  fis1-2 |

  %44
  g4-2 a8-4 b \stopBarre a4-4 g-1 |
  s1 |
  e2 cis-2_\6 |

  %45
  g8\glide-1 fis-1 e-3 d-1 g4-4 b,-0 |
  s1 |
  d2-0 b-2_\6 |

  %46
  c4-1\2 e d-4 c |
  s1 |
  a2 fis-2 |

  %47
  b4 g e'2 |
  s1 |
  g2.-3 a4 |

  %48
  r4 dis-3 e\glide-2 fis\glide-2 |
  s1 |
  b2\glide-1 cis4\glide-1 dis\glide-1 |

  %49
  g4-2 e-3 gis2-4 |
  s1 |
  e2-1 r4 d'\glide-1 \RH 1 |

  %50
  a4 \startBarre #5 #6 e \stopBarre b'2\glide-4 |
  s1 |
  c2-1 \RH 1 r4 b-0 |

  %51
  c4-4 a-1 cis2\glide-4 |
  s1 |
  a2-2_\4 r4 g-0 |

  %52
  d4\glide-4 a-3 dis2\glide-4 |
  s1 |
  fis2-1_\5 b4-2_\4 a-1 |

  %53
  r8 e-4 \RH 3 b-3 \RH 2 e \RH 3 g,-1 \RH 2 e' \RH 3 e,-2 \RH 2 e' \RH 4 |
  s1 |
  g2.-0 r4 |

  %54
  r8 e-3 e d-1 c-4 b-3 a\glide-1 g-1 |
  s1 |
  a,1 |

  %55
  r8 d'-4 \RH 3 a-3 \RH 2 d \RH 3 fis, \RH 2 \startBarre #7 #6 d' \RH 3 d, \RH 2 d' \RH 4 \stopBarre |
  s4 a' fis d |
  fis'1-2_\5 |

  %56
  r8 d-4 d c-2 b-1 a-4 g-2 fis-1 |
  s1 |
  g1-0 |

  %57
  r8 c'-4 \RH 3 g-3 \RH 2 c \RH 3 e, \RH 2 \startBarre #5 #6 c'-4 \RH 3 c, \RH 2 c' \RH 4 \stopBarre |
  s4 g e c |
  e1-2_\5 |

  %58
  r8 c-2 c b-1 a-4 g-2 fis-1 e-4 |
  s1 |
  fis1-3_\5 |

  %59
  r8 \startBarre #7 #6 b' \RH 3 fis \RH 2 b \RH 3 dis,-2 \RH 2 b' \RH 4 b,-3 \RH 2 b' \RH 4 \stopBarre |
  s1 |
  b,1 |

  %60
  r8 b-1 \RH 3 b \RH 2 a-4 \RH 3 g-2 \RH 2 b \RH 3 \startBarre #7 #3 d, \RH 2 b' \RH 4 \stopBarre |
  s1 |
  e,1 |

  %61
  r8 c, \RH 2 \startBarre #5 #3 e \RH 3 b'-4 \RH 4 fis-3 a e a \stopBarre |
  s2 fis4 e |
  a1 |

  %62
  r8 \startBarre #2 #6 a-4 \RH 2 fis \RH 3 dis-3 \RH 2 \stopBarre r \startBarre #3 #6 g \RH "a…" e-4 \RH "m…" c-3 \RH "i…" \stopBarre |
  s1 |
  b2 c |

  %63
  r8 fis-1 e-4 c-3 r \startBarre #2 #6 fis dis-4 b-3 \stopBarre |
  s1 |
  a2 b-1 |

  %64
  r4 e g-2 e |
  s1 |
  e,1 |

  %65
  fis2-1 b-4 |
  s1 |

  r4 \once \textSpannerDown b''\glide-3 \startStringSpan #3 d-3 b-1 |

  %66
  b4-4 a8-2 gis-1 a2-2 |
  s1 |
  cis4-3 \stopStringSpan r fis-4 e\glide-1|

  %67
  a2-2 \once \override Fingering.add-stem-support = ##f  a\glide-2 |
  s1 |
  dis4-1 cis8-3_\3 b-1 cis4 dis |

  %68
  <e-4 g-2>2  <b e> |
  s1 |
  r4 e,, g-1 e |

  %69
  <a-2 e'>2 <fis-3 dis'-4> |
  s1 |
  fis4-1 g8-3 a b4-1 a |

  %70
  e'2-0 fis-2 |
  g,8\rest b-0 b b g\rest b b b |
  g2-3 fis-1 |

  %71
  g2-2 gis-2 |
  g8\rest b-0 b b b\rest e-3 e e |
  e2 d' |

  %72
  a2-4 b |
  b8\rest e-3 e e\glide-3 b\rest \startBarre #7 #6 gis'-3 gis gis \stopBarre |
  c2-1 b |

  %73
  c8-2 b-1 a-4\2 g-2 fis4-1 e-0 |
  s1 |
  a1 |

  %74
  dis8-3 \startBarre #2 #6 cis b-3 a g4-4 fis-3 \stopBarre |
  s1 |
  b1 |

  %75
  e4-1 <g'-3 e'-4> r <fis-3 dis'-4> |
  s1 |
  e,2 b'-1_\6 |

  %76
  <g-2 b-3 e-4>1 |
  s1 |
  e,1 \fine |

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
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \zique
  }

  \layout {
    ragged-last = ##t
  }

  \midi {}
}
