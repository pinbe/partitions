\version "2.25.81"

\header {
  title = "Canarios"
  composer = "Gaspar Sanz"
  tagline = \markup{ \italic \small "Révision des doigtés du 10/04/2025 par Benoît Pin"}
}

\include "../../commons/guitar-helpers.ly"


\parallelMusic voiceA, voiceB {
  d'8-3 e-0 |
  s4|
  
  %1
  fis8-2 _( e-0) fis g-4 _( fis-2 ) g |
  \once \override Arpeggio.positions = #'(-2.5 . 2.0)
  <d\RH #1 a'-1 d-3>4. \arpeggio
  \once \override Arpeggio.positions = #'(-1 . 2.5)
  <g\RH #1 b>4. \arpeggio |
  
  %2
  fis4.-2 e8-4 d-2 cis-1 |
  \once \override Arpeggio.positions = #'(-2.5 . 2.0)
  <d\RH #1 a'-1 d-3>4 \arpeggio d ~ d |
  
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
  fis8-2 _( e-0 ) fis g-4 _( fis-2 ) g |
  <d' a'-1 d-3>4.<g b> |
  
  %6
  fis4.-2 e8-4 d-2 cis-1 |
  <d a'-1 d-3>4 d ~ d |
  
  %7
  b8-0 _( cis-1 ) d-2 
  \grace { e16-0 _( fis-1  }
  e8-0 ) d-2 cis-1 |
  g,4.-4 a |
  
  %8
  \grace { d16-2 _( cis-1 }
  d4.-2 ) fis8-1 _( g-2 ) fis |
  d4 d,8 d'4. |
  
  %9
  e8-0 _( fis-1 ) e d-2 _( e-4 ) d |
  cis4.-3 b |
  
  %10
  cis8-1 _( d-2 ) cis a-1 _( g-0 ) a |
  a4. fis-3 |
  
  %11
  b8-0 _( cis-1 ) d-2 e-0 _( fis-1 ) g-2 |
  g4.-4 a-0 |
  
  %12
  fis4-1 d8-2 fis8-1 _( g-2 ) fis |
  d,4. d' |

  %13
  e8-0 _( fis-1 ) e d-2 _( e-4 ) d |
  cis4.-3 b |
  
  %14
  cis8-1 _( d-2 ) cis a-1 _( g-0 ) a |
  a4. fis-3 |
  
  %15
  b8-0 _( cis-1 ) d-2 e-0 _( fis-1 ) g-2 |
  g4.-4 a-0 |
  
  %16
  fis4-1 d-2 a'-4 |
  d,4 ~ d r8 d' |
  
  %17
  b4-4 b8 cis4-4 cis8 |
  r8 g4-1_\4 r8 a4-1_\4 |
  
  %18
  <a-3 d-4>4 <a d> fis-2\1 |
  fis4-2_\5 fis r8 a, |
  
  %19
  g4-2 g8 a4-4 a8 |
  r8 b4-1 r8 cis4-3 |
  
  %20
  fis4-1 d-2 a'-4 |
  d4 ~ d r8 d |
  
  %21
  b4-4 b8 cis4-4 cis8 |
  r8 g4-1 r8 a4-1 |
  
  %22
  <a-3 d-4>4 <a d> fis-2\1 |
  fis4-2_\5 fis r8 a, |
  
  %23
  g4-2 g8 a4-4 a8 |
  r8 b4-1 r8 cis4-3 |
  
  %24
  fis4-1 d-2 r8 \startBarre #2 #3 fis8 \stopBarre |
  d4. r8 a'4 _( |
  
  %25
  r8 g4-2 r8 a4-2 |
  b4-3 b8 cis4-3 cis8 |
  
  %26
  fis4.-4\2 r8 a4-1 ( |
  d4-3_\3 d4 ) r8 a, |
  
  %27
  g4-2 g8 e4-0 e8 |
  r8 b4-1 r8 cis4-3 |
  
  %28
  d4-2 d ) r8 \startBarre #2 #3 fis8 \stopBarre |
  d4. r8 a'4 ( |
  
  %29
  r8 g4-2 r8 a4-2 |
  b4-3 b8 cis4-3 cis8 |
  
  %30
  fis4.-4\2 r8 a4-1 ( |
  d4-3_\3 d4 ) r8 a, |

  %31
  g4-2 g8 e4-0 e8 |
  r8 b4-1 r8 cis4-3 |
  
  %32
  d4 d ) r8 a'-4 |
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
  d4-2 d8 d _( cis-1 ) b-0 |
  d4. r4. |
  
  %37
  a8-1 _( b-3 ) a g-0 _( a-1 ) g |
  s2. |
  
  %38
  r4. a'8-4 _( g-2 ) fis-1 |
  fis8-3 _( e-1 ) d-0 r4. |
  
  %39
  r8 fis-1 e-0 ~ e4. |
  g4.-0 a8-1 b-0 cis-2 |
  
  %40
  d4-2 d8 d _( cis-1 ) b-0 |
  d,4. r4. |
  
  %41
  a8-1 _( b-3 ) a g-0 _( a-1 ) g |
  s2. |
  
  %42
  r4. a'8-4 _( g-2 ) fis-1 |
  fis8-3 _( e-1 ) d-0 r4. |
  
  %43
  r8 fis-1 e-0 ~ e4. |
  g4.-0 a8-1 b-0 cis-2 |
  
  %44
  d4-2 d a'-1 |
  d,4. r |
  
  %45
  d,8-3\3 _( cis-2 ) d e-1\2 _( fis-4 ) e |
  s2. |
  
  %46
  fis4-4\2 d8-3\3 _~ d4 e8-1 |
  d4. ~ d4 a'8-3 ~ |
  
  %47
  fis4-4 fis8 e-1 d-3 cis-2 |
  a8 g4-0 r4. |

  %48
  d4-3 d a'-1 |
  d4. r |
  
  %49
  d,8-3\3 _( cis-2 ) d e-1\2 _( fis-4 ) e |
  s2. |
  
  %50
  fis4-4\2 d8-3\3 _~ d4 e8-1 |
  d4. ~ d4 a'8-3 ~ |
  
  %51
  fis4-4 fis8 e-1 d-3 cis-2 |
  a8 g4-0 r4. |
  
  %52
  d4-3 d8-1 r d'4-4 ( |
  d4. ~ d8 r4 |
  
  %53
  b4-1 b8 cis4-4 cis8 |
  r8 g4-0 r8 a4-1_\4 |
  
  %54
  <a-3 d-4>4 <a d> ) r |
  fis4-2_\5 fis4 a-1_\3 ( |
  
  %55
  r8 b,4-0 r8 cis4-2  |
  g4-0 g8 a4-1 a8 |
  
  %56
  d4.-2 r8 d'4-4 ( |
  fis4-3 d-0 ) r |
  
  %57
  b4-1 b8 cis4-4 cis8 |
  r8 g4-0 r8 a4-1_\4 |
  
  %58
  <a-3 d-4>4 <a d> ) r |
  fis4-2_\5 fis4 a-1_\3 ( |
  
  %59
  r8 b,4-0 r8 cis4-2  |
  g4-0 g8 a4-1 a8 |
  
  %60
  d4.-2 fis8-1 _( g-2 ) fis |
  fis4-3 d8 ) d4. |
  
  %61
  e8-0 _( fis-1 ) e-0 gis-4 \startBarre #2 #4 _( fis ) gis-3 \stopBarre |
  cis4.-3 e |
  
  %62
  a8-3 _( g-1 ) a a-3 _( g-1 ) a |
  a,4.-0 d-0 |
  
  %63
  b8-3 _( a-1 ) b cis-3 \startBarre #7 #4 _( b ) cis \stopBarre |
  g4. a |
  
  %64
  \once \override Arpeggio.positions = #'(-2.5 . 4.5)
  \arpeggioArrowUp
  <d, fis d'-4>4. \startBarre #7 #3 \arpeggio r |
  d,4-0\RH #1 d8\RH #2 a\RH #1 d\RH #2 a\RH #1 |
  
  %65
  \override Arpeggio.positions = #'(-2.5 . 4.5)
  \arpeggioArrowUp
  <d fis d'-4>8 \arpeggio
  \arpeggioArrowDown
  <d fis d'> \arpeggio
  \arpeggioArrowUp
  <d fis d'> \arpeggio \stopBarre
  
  \override Arpeggio.positions = #'(-1 . 4.5)
  \arpeggioArrowUp
  <g-2 d'-4> \arpeggio
  \arpeggioArrowDown
  <g d'> \arpeggio
  \arpeggioArrowUp
  <g d'> \arpeggio |
  
  
  d8 \RH #2 \f d \RH #1 d \RH #2
  \override Stem.details.beamed-lengths = #'(5.5)
  g-0 \RH #2 g \RH #1 g \RH #2 
  \override Stem.details.beamed-lengths = #'(4.5) |
  
  %66
  <d fis d'-4>4. \startBarre #7 #3 r |
  d4 d8 \RH #2 a \RH #1 d \RH #2 a \RH #1 |
  
  %67
  <d fis d'-4>8 <d fis d'> <d fis d'> \stopBarre <a-1 e'-2 a-4 cis-3> <a e' a cis> <a e' a cis> |
  d8-0 d d a a a |
  
  %68
  <d fis d'-4>4. \startBarre #7 #3 r |
  d4 d8 a d a |
  
  %69
  <d fis d'-4>8 <d fis d'> <d fis d'> \stopBarre <g-2 d'-4> <g d'> <g d'> |
  d8 d d g g g |
  
  %70
  <d fis d'-4>4. \startBarre #7 #3 r |
  d4 d8 a d a |
  
  %71
  <d fis d'-4>8 <d fis d'> <d fis d'> \stopBarre <a-1 e'-2 a-4 cis-3> <a e' a cis> <a e' a cis> |
  d8 d d a a a |
  
  %72
  <d fis d'-4>4. \startBarre #7 #3 r |
  d4 d8 a d a |

  %73
  <d fis d'-4>8 <d fis d'> <d fis d'> \stopBarre <a-1 e'-2 a-4 cis-3> <a e' a cis> <a e' a cis> |
  d8\f d d a a a |
  
  %74
  <d-2 g-4 b-3>8 <d g b> <d g b> <d-3 fis-4 a-1> <d fis a> <d fis a> |
  g'8-1 g g d-0 d d |
  
  %75
  \override TextSpanner.bound-details.left.text = "II"
  <a-1 e'-4 g-2>8 <a e' g> <a e' g> <e a cis a'-4> \startBarre #2 #4 <e a cis a'> <e a cis a'> \stopBarre |
  d8-0 d d a a a |
  
  %76
  <a d-2 fis>4. \barre #2 #3 r |
  d4 d8 a d a |
  
  %77
  <d-3\3 fis-4\2>4 <d fis>8 <cis-3 e-2>4 <cis e>8 |
  r8 d4-0 r8 a4-0 |
  
  %78
  <b-3 d-2>4 <b d>8 <a cis>4 \startBarre #2 #3 <a cis>8 \stopBarre |
  r8 d4-0 r8 a4-0 |
  
  %79
  <g-0 b-0>4 <g b>8 <a cis>4 \startBarre #2 #3 <a cis>8 |
  r8 d4-0 r8 a4-0 |
  
  %80
  <a d-2 fis>4. \stopBarre r |
  d4 d8 a d a |
  
  %81
  <d fis d'-4>8 \startBarre #7 #3 <d fis d'> <d fis d'> \stopBarre <g-2 d'-4> <g d'> <g d'> |
  <d, a' d>8 \ff <d a' d> <d a' d> <d' g> <d g> <d g> |
  
  %82
  <d fis d'-4>4. \startBarre #7 #3 r |
  <d, a' d>4 <d a' d>8 <d a' d> <d a' d> <d a' d> |
  
  %83
  <d fis d'-4>8 <d fis d'> <d fis d'> \stopBarre <a-1 e'-2 a-4 cis-3> <a e' a cis> <a e' a cis> |
  <d a' d>8 <d a' d> <d a' d> a'a a |

  %84
  <d fis d'-4>4. \startBarre #7 #3 r |
  <d, a' d>4 <d a' d>8 <d a' d> <d a' d> <d a' d> |
  
  %85
  <d fis d'-4>8 <d fis d'> <d fis d'> \stopBarre <g-2 d'-4> <g d'> <g d'> |
  <d a' d>8 \mf <d a' d> <d a' d> <d' g> <d g> <d g> |
  
  %86
  <d fis d'-4>4. \startBarre #7 #3 r |
  <d, a' d>4 <d a' d>8 <d a' d> <d a' d> <d a' d> |
  
  %87
  <d fis d'-4>8 <d fis d'> <d fis d'> \stopBarre <a-1 e'-2 a-4 cis-3> <a e' a cis> <a e' a cis> |
  <d a' d>8 <d a' d> <d a' d> a' a a |
  
  %88
  <d fis d'-4>4. \startBarre #7 #3 r |
  <d, a' d>4 <d a' d>8 <d a' d> <d a' d> <d a' d> |
  
  %89
  <d fis d'-4>8 <d fis d'> <d fis d'> \stopBarre <a-1 e'-2 a-4 cis-3> <a e' a cis> <a e' a cis> |
  <d a' d>8 \ff <d a' d> <d a' d> a' a a |
  
  %90
  <d-2 g-4 b-3>8 <d g b> <d g b> <d-3 fis-4 a-1> <d fis a> <d fis a> |
  g'8-1 g g d-0 d d |
  
  %91
  \override TextSpanner.bound-details.left.text = "II"
  <a-1 e'-4 g-2>8 <a e' g> <a e' g> <e a cis a'-4> \startBarre #2 #4 <e a cis a'> <e a cis a'> \stopBarre |
  d8-0 d d a a a |
  
  %92
  <a d-2 fis>4. \barre #2 #3 r |
  d4 d8 a d a |
  
  %93
  <d-3\3 fis-4\2>4 <d fis>8 <cis-3 e-2>4 <cis e>8 |
  r8 d4-0 r8 a4-0 |

  %94
  <b-3 d-2>4 <b d>8 <a cis>4 \startBarre #2 #3 <a cis>8 \stopBarre |
  r8 d4-0 r8 a4-0 |
  
  %95
  <g-0 b-0>4 <g b>8 <a cis>4 \startBarre #2 #3 <a cis>8 |
  r8 d4-0 r8 a4-0 |
  
  %96
  <a d-2 fis>4. \stopBarre r |
  d4 d8 a d a |
  
  %97
  d'-4 b-1 c-2 b-1 a-4\2 g-2 |
  s2. |
  
  %98
  fis4 \startBarre #7 #3 d \stopBarre r8 e |
  r4. r4 a8 |
  
  %99
  fis8-1 _( g-2 ) fis e-4 _( d-2 ) cis-1 |
  d4. a |
  
  %100
  d4.-2 r4 a'8-4 |
  d4 d,4 ~ d |
  
  %101
  d,8-2 cis-1 d-3 e fis-2 g-4 |
  d'4. ~ d |
  
  %102
  \override Arpeggio.positions = #'(-6.0 . 2.0)
  \arpeggioArrowUp
  <a,-1 d-3 fis-2>4 \arpeggio <a d fis> \arpeggio d'-4 |
  <d, a' d>4 <d a' d> r |
  
  %103
  b8-1 cis-3 d-4 cis-3 \startBarre #7 #4 d-4 cis \stopBarre |
  g'4. a |
  
  %104
  <d, fis d'-4>4. \barre #7 #3  r |
  d,4 d8 a d a |
  
  %105
  d'8-4 _( cis-3 ) d cis-3 \startBarre #7 #4 _( d-4 ) cis \stopBarre |
  d4. a' |
  
  %106
  b8-1 _( cis-3 ) b a-1 _( b-4 ) a |
  g4.-0 a-3_\4 |
  
  %107
  \override TextSpanner.bound-details.left.text = "II"
  b8-4 _( a ) b a-4 \startBarre #2 #3 _( g-2 ) a-4 \stopBarre |
  g4.-0 a |
  
  %108
  fis4-1 d8-3 r d-3 e-0 |
  d,4. ~ d8 r4 |
  
  %109
  fis8-2 _( e-0) fis g-4 _( fis-2 ) g |
  <d a'-1 d-3>4. <g b>4. |
  
  %110
  fis4.-2 e8-4 d-2 cis-1 |
  <d a'-1 d-3>4 d ~ d |
  
  %111
  b8-0 _( cis-1 ) d-2
  \grace { e16-0 _( fis-1  }
  e8-0 ) d-2 cis-1 |
  g,4.-4 a |
  
  %112
  \grace { d16-2 _( cis-1 }
  d4.-2 ) r8 d-3 e-0 |
  d4 d, ~ d |
  
  %113
  fis8-2 _( e ) fis g-4 _( fis-2 ) g |
  <d' a'-1 d-3>4. <g b> |
  
  %114
  fis4.-2 e8-4 d-2 cis-1 |
  <d a'-1 d-3>4 d ~ d |
  
  %115
  b8-0 _( cis-1 ) d-2 
  \grace { e16-0 _( fis-1  }
  e8-0 ) d-2 cis-1 |
  g,4.-4 a |
  
  %116
  \grace { d16-2 _( cis-1 }
  d4.-2 ) fis8-1 _( g-2 ) fis |
  d4 d,8 d'4. |
  
  %117
  e8-0 _( fis-1 ) e d-2 _( e-4 ) d |
  cis4.-3 b |
  
  %118
  cis8-1 _( d-2 ) cis a-1 _( g-0 ) a |
  a4. fis-3 |
  
  %119
  b8-0 _( cis-1 ) d-2 e-0 _( fis-1 ) g-2 |
  g4.-4 a-0 |
  
  %120
  fis4-1 d8-2 fis8-1 _( g-2 ) fis |
  d,4. d' |

  %121
  e8-0 _( fis-1 ) e d-2 _( e-4 ) d |
  cis4.-3 b |
  
  %122
  cis8-1 _( d-2 ) cis a-1 _( g-0 ) a |
  a4. fis-3 |
  
  %123
  b8-0 _( cis-1 ) d-2 e-0 _( fis-1 ) g-2 |
  g4.-4 a-0 |
  
  %124
  fis4-1 d-2 a'-4 |
  d,4 ~ d r8 d' |
  
  %125
  b4-4 b8 cis4-4 cis8 |
  r8 g4-1_\4 r8 a4-1_\4 |
  
  %126
  <a-3 d-4>4 <a d> fis-2\1 |
  fis4-2_\5 fis r8 a, |
  
  %127
  g4-2 g8 a4-4 a8 |
  r8 b4-1 r8 cis4-3 |
  
  %128
  fis4-1 d-2 a'-4 |
  d4 ~ d r8 d |
  
  %129
  b4-4 b8 cis4-4 cis8 |
  r8 g4-1 r8 a4-1 |
  
  %130
  <a-3 d-4>4 <a d> fis-2\1 |
  fis4-2_\5 fis r8 a, |
  
  %131
  g4-2 g8 a4-4 a8 |
  r8 b4-1 r8 cis4-3 |
  
  %132
  fis4-1 d-2 r8 \startBarre #2 #3 fis8 \stopBarre |
  d4. r8 a'4 |
  
  %133
  r8 g4-2 r8 a4-2 |
  b4-3 b8-3 cis4-3 cis8 |
  
  %134
  fis4.-4\2 r8 a4-1 |
  d4-3_\3 d4 r8 a, |
  
  %135
  g4-2 g8 e4-0 e8 |
  r8 b4-1 r8 cis4-3 |
  
  %136
  d4-2 d r8 \startBarre #2 #3 fis8 \stopBarre |
  d4. r8 a'4 |
  
  %137
  r8 g4-2 r8 a4-2 |
  b4-3 b8-3 cis4-3 cis8 |
  
  %138
  fis4.-4\2 r8 a4-1 |
  d4-3_\3 d4 r8 a, |

  %139
  g4-2 g8 e4-0 e8 |
  r8 b4-1 r8 cis4-3 |
  
  %140
  d4-2 d8 fis-1 _( g-2 ) fis |
  d4. d |
  
  %141
  e8-0 _( fis-1 ) e gis-4 \startBarre #2 #3 _( fis ) gis-3 \stopBarre |
  cis4.-3 e-1 |
  
  %142
  a8-3 _( g-1 ) a a-3 _( g-1 ) a |
  a,4.-0 d-0 |
  
  %143
  b8-3 _( a-1 ) b cis-3 \startBarre #7 #4 _( b ) cis \stopBarre |
  g4. a |
  
  %144
  <d, fis d'-4>4. \startBarre #7 #3 r |
  d,4 d8 a d a |
  
  %145
  <d fis d'-4>8 <d fis d'> <d fis d'> \stopBarre <g-2 d'-4> <g d'> <g d'> |
  d8 d d g-0 g g |
  
  %146
  <d fis d'-4>4. \startBarre #7 #3 r |
  d4 d8 a d a |
  
  %147
  <d fis d'-4>8 <d fis d'> <d fis d'> \stopBarre <a-1 e'-2 a-4 cis-3> <a e' a cis> <a e' a cis> |
  d8 d d a a a |

  %148
  <d fis d'-4>4. \startBarre #7 #3 r |
  d4 d8 a d a |
  
  %149
  <d fis d'-4>8 <d fis d'> <d fis d'> \stopBarre <g-2 d'-4> <g d'> <g d'> |
  d8 \p d d g g g |

  %150
  <d fis d'-4>4. \startBarre #7 #3 r |
  d4 d8 a d a |
  
  %151
  <d fis d'-4>8 <d fis d'> <d fis d'> \stopBarre <a-1 e'-2 a-4 cis-3> <a e' a cis> <a e' a cis> |
  d8 d d a a a |
  
  %152
  <d fis d'-4>4. \startBarre #7 #3 r |
  d4 d8 a d a |
  
  %153
  <d fis d'-4>8 <d fis d'> <d fis d'> \stopBarre <a-1 e'-2 a-4 cis-3> <a e' a cis> <a e' a cis> |
  d8 \f d d a a a |
  
  %154
  <d-2 g-4 b-3>8 <d g b> <d g b> <d-3 fis-4 a-1> <d fis a> <d fis a> |
  g'8-1 g g d-0 d d |
  
  %155
  <a-1 e'-4 g-2>8 <a e' g> <a e' g> <e a cis a'-4> \startBarre #2 #4 <e a cis a'> <e a cis a'> |
  d8-0 d d a a a |
  
  %156
  <a d-2 fis>4. \stopBarre r |
  d4 d8 a d a |

  %157
  <d-3\3 fis-4\2>4 <d fis>8 <cis-3 e-2>4 <cis e>8 |
  r8 d4-0 r8 a4-0 |

  %158
  <b-3 d-2>4 <b d>8 <a cis>4 \startBarre #2 #3 <a cis>8 \stopBarre |
  r8 d4-0 r8 a4-0 |
  
  %159
  <g-0 b-0>4 <g b>8 <a cis>4 \startBarre #2 #3 <a cis>8 |
  r8 d4-0 r8 a4-0 |
  
  %160
  <a d-2 fis>4. \stopBarre r |
  d4 d8 a d a |
  
  %161
  <d fis d'-4>8 \startBarre #7 #3 <d fis d'> <d fis d'> \stopBarre <g-2 d'-4>  <g d'> <g d'> |
  <d, a' d>8 \ff <d a' d> <d a' d> <d' g> <d g > <d g> |
  
  %162
  <d fis d'-4>4. \startBarre #7 #3 r |
  <d, a' d>4 <d a' d>8 <d a' d> <d a' d> <d a' d> |

  %163
  <d fis d'-4>8 <d fis d'> <d fis d'> \stopBarre <a-1 e'-2 a-4 cis-3> <a e' a cis> <a e' a cis> |
  <d a' d>8 <d a' d> <d a' d> a' a a  |

  %164
  <d fis d'-4>4. \startBarre #7 #3 r |
  <d, a' d>4 <d a' d>8 <d a' d> <d a' d> <d a' d> |
  
  %165
  <d fis d'-4>8 <d fis d'> <d fis d'> \stopBarre <g-2 d'-4>  <g d'> <g d'> |
  <d a' d>8 \mf <d a' d> <d a' d> <d' g> <d g > <d g> |

  %166
  <d fis d'-4>4. \startBarre #7 #3 r |
  <d, a' d>4 <d a' d>8 <d a' d> <d a' d> <d a' d> |
  
  %167
  <d fis d'-4>8 <d fis d'> <d fis d'> \stopBarre <a-1 e'-2 a-4 cis-3> <a e' a cis> <a e' a cis> |
  <d a' d>8 <d a' d> <d a' d> a' a a |
  
  %168
  <d fis d'-4>4. \startBarre #7 #3 r |
  <d, a' d>4 <d a' d>8 <d a' d> <d a' d> <d a' d> |
  
  %169
  <d fis d'-4>8 <d fis d'> <d fis d'> \stopBarre <a-1 e'-2 a-4 cis-3> <a e' a cis> <a e' a cis> |
  <d a' d>8 \ff <d a' d> <d a' d> a' a a |
  
  %170
  <d-2 g-4 b-3>8 <d g b> <d g b> <d-3 fis-4 a-1> <d fis a> <d fis a> |
  g'8-1 g g d-0 d d |
  
  %171
  <a-1 e'-4 g-2>8 <a e' g> <a e' g> <e a cis a'-4> \startBarre #2 #4 <e a cis a'> <e a cis a'> |
  d8-0 d d a a a |
  
  %172
  <a d-2 fis>4. \stopBarre r |
  d4 d8 a d a |
  
  %173
  <d-3\3 fis-4\2>4 <d fis>8 <cis-3 e-2>4 <cis e>8 |
  r8 d4-0 r8 a4-0 |

  %174
  <b-3 d-2>4 <b d>8 <a cis>4 \startBarre #2 #3 <a cis>8 \stopBarre |
  r8 d4-0 r8 a4-0 |
  
  %175
  <g-0 b-0>4 <g b>8 <a cis>4 \startBarre #2 #3 <a cis>8 \stopBarre |
  r8 d4-0 r8 a4-0 |
  
  %176
  <a d-2 fis>4. \barre #2 #3 r |
  d4 d8 a d a |
  
  r4. <d fis d'-4>8 \barre #7 #3 r r | 
  d,8 r r <d a' d> r r | \bar "|."
  
  
}

% fingeringTweaks = {
%   \override Fingering.staff-padding = #'() 
%   \override Fingering.add-stem-support = ##f
%   \override Fingering.avoid-slur = ##t
%   \override Fingering.font-size = #-5
%   \set fingeringOrientations = #'(left)
%   \set strokeFingerOrientations = #'(down)
% 
%   
%   \override StrokeFinger.add-stem-support = ##f
%   \override StrokeFinger.font-shape = #'upright
% }
% 
% barringTweaks = {
%   \override TextSpanner.font-shape = #'upright
%   \override TextSpanner.dash-fraction = #1
%   \override TextSpanner.bound-details.right.text =
%       \markup { \draw-line #'(0 . -1) }
% }

common_tweaks = \tweaks
tweaks = {
  \common_tweaks
  \override StrokeFinger.add-stem-support = ##f
  \set strokeFingerOrientations = #'(down)
  \override StrokeFinger.font-shape = #'upright
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
