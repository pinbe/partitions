\version "2.24.3"

\header {
  title = "Asturias (Leyenda)"
  composer = "Isaac Albéniz"
  % Supprimer le pied de page par défaut
  tagline = ##f
}

#(define RH rightHandFinger)


\parallelMusic voiceA, voiceB, voiceC {
  %1
  \repeat percent 3 {
    e16 b'-0 b b-0 c b-0 a b-0 b b-0 g b-0 |
    e8-1_\5 \p b'-3_\4 c-4 a-1 b-3 g-4_\5 |
    s2.|
  }
  
  %4
  a16 b fis b g b a b fis b g b |
  a8-1_\4 fis-3_\5 g-4 a-1 fis-3 g-4 |
  s2.|
  
  %5
  \repeat percent 3 {
    e,16 b'-0 b b-0 c b-0 a b-0 b b-0 g b-0 |
    e8-1_\5 b'-3_\4 c-4 a-1 b-3 g-4_\5 | 
    s2. |
  }
  
  %8
  a16 b fis b g b e, b' d, b' c, b' |
  a8-1_\4 fis-3_\5 g-4 e-1 d-4_\6 c-2 |
  s2. |
  
  %9
  \repeat percent 2 {
    b,16 b' b b c b a b b b fis b |
    s8 b'-3_\4 c-4 a-1 b-4 fis-3 |
    b,2.-1_\6 \mf |
  }
  
  %11
  b,16 b' fis b a b b b c b d b |
  s8 fis-3_\5 a-1_\4 b-3 c-4 d-1_\3 |
  b2._\6 |
  
  %12  
  b16 b c b a b b b g b fis b |
  b8-3_\4 c-4 a-1 b-3 g-4_\5 fis-3 |
  s2. |
  
  %13
  \repeat percent 2 {
    b,16 b' b b c b a b b b fis b |
    s8 b-3_\4 c-4 a-1 b-4 fis-3 |
    b2.-1_\6 |
  }
  
  %15
  b,16 b' a b b b c b d b b b |
  s8 a-2_\4 b-4 c-2_\4 d-4 b-1_\4 |
  b2. |

  %16
  c16 b a b b b g b a b fis b |
  c8-2 a-4_\5 b-1 g-2 a-4 fis\glide-2 |
  s2. |

  %17
  \repeat percent 3 {
    \tuplet 3/2 8 {
      \set Voice.baseMoment = #(ly:make-moment 1/8)
      \set Voice.beatStructure = 1,1,1,1,1,1
      e,16 b'-0 b'_1
      b, b b'
      c,16 b b'
      a, b b'
      b,16 b b'
      g, b b'
    } |
    e8^2  b'\glide-4_\4  c-4 a-2 b-4 g-0 |
    \override Arpeggio.positions = #'(-6 . -2)
    e,2. \arpeggio \f |
  }
  
  %20
  \tuplet 3/2 8 {
    a,16 b b' fis, b b'
    g,16 b b' a, b b'
    fis,16 b b' g, b b'
  } |
  a8-2 fis\glide-4_\5 g-4 a-2 fis\glide-4 g-4 |
  s2. |
  
  %21
  \repeat percent 3 {
    \tuplet 3/2 8 {
      e,,16 b'-0 b'_1
      b, b b'
      c,16 b b' a, b b'
      b,16 b b' g, b b'
    } |
    e8^2  b'\glide-4_\4  c-4 a-2 b-4 g-0 |
    \override Arpeggio.positions = #'(-6 . -2)
    e2. \arpeggio |
  }
  
  %24
  \tuplet 3/2 8 {
      a,16 b b' fis, b b'
      g,16 b b' e,, b' b'
      d,,16 b' b' c,, b' b'
    } |
  a8-2 fis\glide-4 \> g-4 e-2 d-0 c-3_\6 |
  s2. |
  
  %25
  \repeat percent 2 {
    <fis,-3 b-4 dis-2 fis b>8 ^\markup{"VII"}
    \tuplet 3/2 8 {
      b16 b-0 b-0
      c b b
      a b b
      b b b
      fis b b
    } |
    b8 \! \mf b'\glide-4_\4 c-4 a-1 b-4 fis-3_\5 |
    s2. |
  }
  
  %27
  <fis-3 b-4 dis-2 fis b>8 ^\markup{"VII"}
  \tuplet 3/2 8 {
    fis16 b b
    a b b
    b b b
    c b b
    d b b
  } |
  b,8 fis'-3 a-1 b-3 c-4 d-1_\3 |
  s2. |
  
  %28
  \tuplet 3/2 8 {
    b16 b b 
    c b b 
    a b b
    b b b
    g b b
    fis b b
  } |
  b8-3_\4 c-4 a-1 b-3 g-4_\5 fis-3 |
  s2. |
  
  %29
  \repeat percent 2 {
    <fis-3 b-4 dis-2 fis b>8 ^\markup{"VII"}
    \tuplet 3/2 8 {
      b16 b b
      c b b
      a b b
      b b b
      fis b b
    } |
    b,8 b'\glide-4_\4 c-4 a-1 b-4 fis-3_\5 |
    s2. |
  }
  
  %31
  <fis-3 b-4 dis-2 fis b>8 ^\markup{"VII"}
  \tuplet 3/2 8 {
    fis16 b b
    a b b
    b b b
    c b b
    d b b
  } |
  b,8 fis'-3 a-1 b-3 c-4 d-1_\3 |
  s2. |
  
  %32
  \tuplet 3/2 8 {
    b16 b b 
    c b b 
    a b b
    b b b
    g b b
    b b b
  } |
  b8-3_\4 c-4 a\glide-1_\4 b-1_\4 g-2_\5 b-1_\4 |
  s2. |

  %33
  \repeat percent 3 {
    \set fingeringOrientations = #'(left up)
    <g-2 b-1 g-0 b-0 e'-4>8 ^\markup{"IX pos"}
    \tuplet 3/2 8 {
      b16 b b
      c b b
      a b b
      b b b
      g b b
    } |
    s8  b-1_\4 c-2 a-4_\5 b-1 g-2 |
    e2. |
  }
  
  %36
  \tuplet 3/2 8 {
    a16 b b 
    fis b b 
    g b b
    a b b
    fis b b
    g b b
  } |
  a8-4_\5 fis-1 g-2 a-4 fis-1 g-3 |
  s2. |
  
  %37
  \repeat percent 3 {
    \override TextSpanner.bound-details.left.text = "VIII"
    <g-3 ais e'-2 e'-4>8 \startTextSpan
    \tuplet 3/2 8 {
      c16 e-2 c'_1
      d, e c'
      b, e c'
      c, e c'
      g, e' c'
      \stopTextSpan
    }|
    c,8-1 c'8-3 d-4 b-3 c-4 g-3 |
    s2. |
  }
  
  %40
  \override TextSpanner.bound-details.left.text = "VII"
  \tuplet 3/2 8 {
    a,16 \startTextSpan fis'-1 c'_2
    fis,, fis' c'
    g, fis' c'
    a, fis' c'
    e,, fis' c'
    fis,, fis' c' \stopTextSpan
  } |
  a8-1 fis-3 g-4 a-1 e-1 fis-3 |
  s2. |
  
  %41
  \override TextSpanner.bound-details.left.text = "VII"
  \set fingeringOrientations = #'(left)
  <fis,,-3 b-4 dis-2 fis b>8 \startTextSpan 
  \tuplet 3/2 8 {
    b16 dis-2 b'_1
    c, dis b'
    ais, dis b'
    b, dis b'
    fis, dis' b'
    \stopTextSpan
  }|
  b,8 b'\glide-4 c-4 ais-3 b-4 fis-3 |
  s2. |

  %42
  \override TextSpanner.bound-details.left.text = "VIII"
  <g,-3 ais e'-2 g c>8 \startTextSpan
  \tuplet 3/2 8 {
    c16 e-2 c'_1
    d, e c'
    b, e c'
    c, e c'
    g, e' c'
    \stopTextSpan
  }|
  c8-1 c'8-3 d-4 b-3 c-4 g-3 |
  s2. |

  %43
  \override TextSpanner.bound-details.left.text = "VII"
  \set fingeringOrientations = #'(left)
  <fis,,-3 b-4 dis-2 fis b>8 \startTextSpan 
  \tuplet 3/2 8 {
    b16 dis-2 b'_1
    c, dis b'
    ais, dis b'
    b, dis b'
    fis, dis' b'
    \stopTextSpan
  }|
  b,8 b'\glide-4 c-4 ais-3 b-4 fis-3 |
  s2. |

  %44
  \override TextSpanner.bound-details.left.text = "VIII"
  <g,-3 ais e'-2 g c>8 \startTextSpan
  \tuplet 3/2 8 {
    c16 e-2 c'_1
    d, e c'
    b, e c'
    c, e c'
    g, e' c'
    \stopTextSpan
  }|
  c8-1 c'8-3 d-4 b-3 c-4 g-3 |
  s2. |

  %45
  <fis,,-3 b-4 dis-2 fis b>8 ^\markup{"VII"}
  \tuplet 3/2 8 {
    b16 b-0 b'_1
    c, b b'
    a, b b'
    b, b b'
    g, b b'
  }|
  b,8 b'-3_\4 c-4 a-2 b-4 g-0 |
  s2. |
  
  %46
  \tuplet 3/2 8 {
    a,16 b b'
    fis, b b'
    g, b b'
    a, b b'
    fis, b b'
    g, b b'
  } |
  a8-2 fis-4 g-0 a-2 fis-4 g-0 |
  s2. |
  
  %47
  \tuplet 3/2 8 {
    e,,16 b' b'
    fis, b b'
    g, b b'
    a, b b'
    fis, b b'
    g, b b'
  } |
  e8-2 fis-4 g-0 a-2 fis-4 g-0 |
  s2. |
  
  %48
  \tuplet 3/2 8 {
    e,,16 b' b'
    fis, b b'
    g, b b'
    e,, b' b'
    d,, b' b'
    c,, b' b'
  } |
  e8-2 fis-4 \> g-0 e-2 d-0 c-2 |
  s2. |

  %49
  \set Voice.baseMoment = #(ly:make-moment 1/4)
  \set Voice.beatStructure = 1,1,1
  b,,16 b'-0 b b-0 c b-0 a b-0 b b-0 g b-0 |
  s8 \! \p b'-3_\4 c-4 a-1 b-3 g-4_\5 |
  b'2.-1_\6 |

  %50
  a16 b fis b g b a b fis b g b |
  a8-1_\4 fis-3_\5 g-4 a-1 fis-3 g-4 |
  s2.|
  
  %51
  e,16 b' fis b g b a b fis b g b |
  e8-1_\4 fis-3_\5 g-4 a-1 fis-3 g-4 |
  s2.|

  %52
  e,16 b' fis b g b e, b' d, b' c, b' |
  e8-1 \< fis-3 g-4 e-1 d-4 c-2 |
  s2. |
  
  \repeat percent 2 {
    %53
    \override TextSpanner.bound-details.left.text = "VII"
    \tuplet 3/2 8{
      \set Voice.baseMoment = #(ly:make-moment 1/8)
      \set Voice.beatStructure = 1,1,1,1,1,1
      b,16 \startTextSpan dis'-2 b'_1
      fis, dis' b'
      b, dis b'
      c, dis b'
      ais, dis b'
      b, dis b'
      \stopTextSpan
    } |
    s8 \! \mf fis-3 b\glide-4 c-4 ais-3 b-4 |
    b2. |
    
    \tuplet 3/2 8 {
      b,,16 g''_2 e-0
      fis, g' e
      c g' e
      d g e
      b g' e
      c g' e
    } |
    s8 fis-3 c'-4 d-1_\3 b-3 c-4 |
    b2.-1_\6 |
  }

  %57
  \override TextSpanner.bound-details.left.text = "VII"
  \tuplet 3/2 8{
    b,16 \startTextSpan dis'-2 b'_1
    fis, dis' b'
    b, dis b'
    c, dis b'
    ais, dis b'
    c, dis b'
    \stopTextSpan
  } |
  s8 fis,-3 b\glide-4 c-4 ais-3 c-4 |
  b2. |

  %58
  \tuplet 3/2 8 {
    b,16 dis-2 fis-1
    c dis fis
    ais, dis fis
    c dis fis
    b, dis fis
    fis, dis' fis
  } |
  b8-3 c-4 ais-3 c\glide-4 b-4 fis-3 |
  s2. |
  
  %59
  \set Voice.baseMoment = #(ly:make-moment 1/4)
  \set Voice.beatStructure = 1,1,1
  \stemNeutral
  b,,8-1\6 dis16-4 dis fis-2\5 fis b-3\4 b dis-1\3 dis fis-4 fis |
  s2. |
  s2. |
  
  %60
  b16-2\2 b dis,-3\4 dis fis-1\3 fis b-2\2 b dis-1\1 dis fis fis |
  s2. |
  s2. |
  
  %61
  <b, dis b'>2.~ \codaMark \default |
  s2. |
  s2. |
  
  %62
  <b dis b'>2. |
  s2. |
  s2. |
  
  %63
  \stemUp
  b2-1 a8 b |
  b2-3 a8 b |
  s2. |
  
  %64
  d2 \grace {b16 _( c} b8 ) a |
  d2 b8 a |
  s2. |
  
  %65
  \override TextSpanner.bound-details.left.text = "II"
  b2 <fis,-2 b-3 dis-4>4 \startTextSpan |
  b2 b,4 |
  s2. |
  
  %66
  \override Arpeggio.positions = #'(-4 . 2.5)
  <fis b dis fis>2. \arpeggio \stopTextSpan \fermata |
  b2. |
  s2. |
  
  %67
  b'2 a8 b |
  b'2 a8 b |
  s2. |
  
  %68
  d2 \grace {b16 _( c} b8 ) a |
  d2 b8 a |
  s2. |
  
  %69
  \override TextSpanner.bound-details.left.text = "III"
  b2 <d,,-3 g-4 b-2>4 \startTextSpan |
  b2 g,4-1 |
  s2. |
  
  %70
  \override Arpeggio.positions = #'(-5 . 1.5)
  <d g b d>2. \arpeggio \stopTextSpan \fermata |
  g2. |
  s2. |
  
  %71
  b''2 ais4~ |
  b'2 ais4~ |
  s2. |
  
  %72
  ais4
  \override Fingering.add-stem-support = ##t
  \grace {g16-1 _( a-4}
  \override Fingering.add-stem-support = ##f
  g8-1 ) fis-1 e-0 g-1 |
  ais4 g8-3 fis-3 e-2 g-3 |
  s2 . |
  
  %73
  \override TextSpanner.bound-details.left.text = "II"
  fis2-1 <fis,-2 b-3 dis-4>4 \startTextSpan |
  fis2-3 b,4 |
  s2. |
  
  %74 
  \override Arpeggio.positions = #'(-4 . 2.5)
  <fis b dis fis>2. \arpeggio \stopTextSpan \fermata |
  b2. |
  s2. |
  
  %75
  b'2 c8 b |
  b'2 c8 b |
  s2. |
  
  %76
  ais8 fis \grace{g16 _( a} g8 ) fis e g |
  ais8 fis g fis e g |
  s2. |
  
  %77
  fis2 <fis,-2 ais-1 e'-4>4 ^\markup{"III"} |
  fis2 c4-1 |
  s2. |
  
  %78
  <fis b dis>2. ^\markup{"II"} \fermata |
  b2. |
  s2. |
  
  %79
  r4 <b-2 d-1>2 |
  g'2.-3_\4 |
  s2. |
  
  %80
  \override TextSpanner.bound-details.left.text = "IV"
  r4 \startTextSpan
  \override Fingering.add-stem-support = ##t
  \grace{ees16-1 _( f-3 )}
  \override Fingering.add-stem-support = ##f
  ees8-1 d-4 ees-1 c'-4 \stopTextSpan |
  fis2.-1 |
  s2. |
  
  %81
  r4 <d,-3 b'-4>2 |
  g2.-1_\4 |
  s2. |
  
  %82
  r4 <ais-2 b-0>4 <a-2 b-0> |
  fis2 dis4-1 |
  s2. |
  
  %83
  r4 g-0 b-0 |
  e2.-1 |
  s2. |
  
  %84
  r4 fis-3 b-0 |
  d2.-4_\5 |
  s2. |
  
  %85
  r4 fis-3 b-0 |
  c2.-2 |
  s2. |
  
  %86
  r4 <ais-2 e-4>2 \fermata |
  fis,2.-1 |
  s2. |
  
  \repeat percent 2 {
    %87
    r4 fis-2 <b-3 dis-4> |
    b2.-1 |
    s2. |
    
    %88
    r4 e-0 e |
    a8-0 b-1 c-2 d16-4 ^( c-2 ) b8-1 a |
    s2. |
  }

  %91
  r4 fis,-2 <b-3 dis-4> |
  b2.-1 |
  s2. |
  
  %92
  a8-4\5 b-1\4 c-2 d16-4 _( c-2 ) b8\glide-1 a-1 |
  s2. |
  s2. |
  
  %93
  b8-3\4 ais-1 fis-2 a-3\4 gis-1 e-2 |
  s2. |
  s2. |
  
  %94
  g8-2 fis-1 dis-3 f-2 e-1 c-2 |
  s2. |
  s2. |
  
  %95
  r4 fis-2 <b-3 dis-4> |
  b2.-1 |
  s2. |
  
  \repeat percent 2 {
    %96
    r4 a'-4 a-4 |
    b8 c d e16 ^( d ) c8 b |
    s2. |
    
    %97
    r4 e,-1 <b'-2 e-4 gis-3> |
    e,2. |
    s2. |
  }
  
  %100
  c8-4 dis-3 e-0 b16-0 c-4 a8-1 b-0 |
  <a e'-1>4 <g-2 e'-1> fis'-3 |
  s2. |
  
  %101
  g8-0 b-0 fis-1 b g-0 b |
  e4-1_\4 dis-1_\5 e-1 |
  s2. |
  
  %102
  e8-0 fis-2 g-4 d16-3 e-0 c8-4 d-2 |
  <c-3 g'>4 <b-1 d-0 g-0> <a-0 fis'-3> |
  s2. |
  
  %103
  b8-0 d-2 ais-3 d-4 b-0 d-2 |
  <g-1 d'>4 <fis-1 d'> <g-1 d'> |
  s2. |
  
  %104
  \stemNeutral
  f8-2\2 g-4 a-1\1 c-4
  \stemUp
  \grace{bes16-2 _( c-4}
  \stemNeutral b8-2 ) a-1 |
  s2. |
  s2. |
  
  %105
  c8-4 a-1
  \stemUp
  \grace{g16 _( a}
  \stemNeutral
  g8-1 ) fis-1
  a-1 c-4 |
  s2. |
  s2. |
  
  %106
  \stemUp
  <fis,,-2 c'-3>8 d'-1 e-4 fis16-1 ( e-0 ) d8-4 c-2 |
  a2 <ais-1 e'-3 g-0>4 |
  s2. |
  
  \repeat percent 2 {
    %107
    r4 fis,-2 <b-3 dis-4> |
    b2.-1 |
    s2. |
    
    %108
    c,8 d e fis16 _( e ) d8 c |
    s2. |
    s2. |
  }
  
  %111
  r4 fis \fermata <b dis>\fermata |
  b2.-1 \fermata |
  s2. |

  
  %112
  \set Voice.baseMoment = #(ly:make-moment 1/8)
  \set Voice.beatStructure = 1,1,1,1,1,1
  \override TextSpanner.bound-details.left.text = "VII"
  \tuplet 3/2 8 {
    g16 \startTextSpan g'-2 b-1
    ais, g' b
    b, g' b
    d, g b
    ais, g' b
    b, g' b
  } |
  g'8-4_\5 ais-3_\4 b-4 d-1 a\glide-3 b-3 |
  s2. |
  
  %113
  \tuplet 3/2 8 {
    d,,16 d' fis
    eis, d' fis
    fis, d' fis
    a, d fis
    eis, d' fis
    fis, d' fis
  }
  \stopTextSpan |
  d,8-4 eis-2 fis-3 a-1 eis-2 fis-3 |
  s2. |
  
  %114
  \tuplet 3/2 8 {
    c,16 ais'-2 e'-0
    fis, ais e'
    g, ais e'
    e, ais e'
    d, ais' e'
    c, ais' e'
  } |
  c8-1_\6 fis-3 g-4 e-1 d-4 c-1 |
  s2. |
  
  %115
  \set Voice.baseMoment = #(ly:make-moment 1/4)
  \set Voice.beatStructure = 1,1,1
  b'2-1 a8 b |
  b'2-3 a8 b |
  s2. |
  
  %116
  d2 \grace {b16 _( c} b8 ) a |
  d2 b8 a |
  s2. |
  
  %117
  \override TextSpanner.bound-details.left.text = "II"
  b2 <fis,-2 b-3 dis-4>4 \startTextSpan |
  b2 b,4 |
  s2. |
  
  %118
  \override Arpeggio.positions = #'(-4 . 2.5)
  <fis b dis fis>2. \arpeggio \stopTextSpan \fermata |
  b2. |
  s2. |
  
  %119
  b'2 a8 b |
  b'2 a8 b |
  s2. |
  
  %120
  d2 \grace {b16 _( c} b8 ) a |
  d2 b8 a |
  s2. |
  
  %121
  b2 <fis,-2 ais-1 e'-4>4 ^\markup{"III"} |
  b2 c,4-1 |
  s2. |
  
  %122
  <fis-2 b-3 dis-4>2. |
  b2. |
  s2. \section |
  
  %123
  <b dis b'>2. |
  r4 r b' |
  s2. |
  
  %124
  <e, g c e>2 a4 |
  c,2. |
  s2. |
  
  %125
  <d, g b>2. |
  g2. |
  s2. |
  
  %126
  <e a c>2 fis4 |
  a2. |
  s2. |
  
  %127
  <g, e' g>2. \fermata |
  e2. |
  s2. |
  
  %128
  <c' f>2. ^\markup{"I"} |
  a'2 <bes-3 des-2>4 |
  s2. |
  
  %129
  f2 ^\markup{"I"} e4 |
  <a c>2. |
  s2. |
  
  %130
  <a,-3 c-1 e-0>2. |
  b,2.-2 |
  s2. |
  
  %131
  \stemNeutral
  <c-4 dis-3>4 <g-0 c-0> <fis-3 a-1> \fermata |
  s2. |
  s2. |
  
  %132
  \stemUp
  \repeat percent 2 {
    e16 b' b b
    c b a b
    b b g b |
    e8-2_\5 b'-3_\4 c-4 a-1 b-3 g-4 |
    s2. |
  }
  
  %134
  e,16 <b' e> c, <g' b e>
  ais, <g' b e> c, <g' b e>
  ais, <g' b e> c, <g' b e> |
  e8-2 c-3_\6 ais-1 c-3 ais-1 c-3 |
  s2. |
  
  %135
  ais,16 <g' b e> c, <g' b e>
  ais, <g' b e> c, <g' b e>
  ais, <g' b e> c, <g' b e> |
  ais8-1 c-3 ais-1 c-3 ais-1 c-3 |
  s2. |
  
  %136
  <g-2 b-1 g-0 b-0 e'-4>2. |
  e,2. |
  s2. |
  
  %137
  e2.-1\5 |
  e2.-0_\6 \fine |

}

fingeringTweaks = {
  \override Fingering.staff-padding = #'() 
  \override Fingering.add-stem-support = ##f
  \override Fingering.avoid-slur = ##t
  \override Fingering.font-size = #-5
  \set fingeringOrientations = #'(left)
  \set strokeFingerOrientations = #'(down)

  
  \override StrokeFinger.add-stem-support = ##f
  \override StrokeFinger.font-shape = #'upright
  
  \override StringNumber.script-priority = 110 %
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
  \override Stem.details.beamed-lengths = #'(4.5)
}

merges = {
  \mergeDifferentlyHeadedOn
  \mergeDifferentlyDottedOn
  \shiftOff
}

zique = {
  \clef "treble_8"
  \key g \major
  %\accidentalStyle modern
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
    \zique
  }

  \layout { }
  %{
  \midi {
    \tempo 4.=76
  }
  %}
}

\score {
  \new Staff {
    \set Staff.midiInstrument = "acoustic guitar (nylon)"
    \unfoldRepeats
    \zique
  }
  
  \midi {
    \tempo 4.=76
  }
}