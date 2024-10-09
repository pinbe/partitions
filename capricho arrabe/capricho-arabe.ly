\version "2.24.3"

\header {
  title = "Capricho Árabe"
  composer = "Francisco Tárrega"
  tagline = \markup{ \italic \small "Révision des doigtés du 09/10/2024 par Benoît Pin"}
  %{
  sources :
  https://youtu.be/muhg8aCLQzU?feature=shared
  https://www.classical-guitar-school.com/en/Download/1026
  http://classical-guitar.net/v6_Tarrega_6/capricho_arabe.pdf
  %}
}
\include "../commons/guitar-helpers.ly"

\parallelMusic voiceT, voiceA, voiceB, voiceC {
  
  \repeat volta 2 {
    %1
    \time 3/4
    s2. |
    \once \override NoteHead.style = #'harmonic-mixed
    \once \override TextScript.self-alignment-X = #CENTER
    <e' a>2. ^\markup {\italic \fontsize #-2 "har. 7"} |
    s2.|
    \once \override NoteHead.style = #'harmonic-mixed
    a2. \mp |
    
    %2
    s2. |
    \stemNeutral
    \set strokeFingerOrientations = #'(up down)
    g'16-3 \RH #3 ( e-1 ) d-2 ( cis-1 ) e-4 ( d-2 ) bes-2 ( a-1 )  c-4 ( bes-2 ) g-4\2 ( e-1 ) |
    s2. |
    s2. |
    
    %3
    s2. |
    \stemUp
    e2-0-> d8. \startBarre #3 #4 e16-4 \stopBarre |
    s2. |
    s2 <g-3 bes>4 |
    
    %4
    s2. |
    <e, a cis>2 \barre #2 #4 r4 |
    s2. |
    a,2 s4 |
  }
  
  %5
  s2. |
  \stemNeutral
  \override Fingering.direction = #DOWN
  \textSpannerDown
  a,4.-0 \mf cis8-3 e-1 \startStringSpan #4 g-4 |
  s2. |
  s2. |
  
  %6
  s2. |
  bes8-4 a-3 \override Fingering.direction = #UP e'4.-4 d8-2 \RH #3 |
  s2. |
  s2. |
  
  %7
  s2. |
  \tupletNeutral
  \tuplet 6/4 4 {
    \override TupletBracket.bracket-visibility = ##t
    cis16-1 \RH #2 d-2 e-4 d-2 cis-1 bes-2
    \override Fingering.direction = #DOWN
    a-1 c-4 bes-2 a-1 g-4 f-2
  }
  e32-1 d-0 \stopStringSpan cis-4 bes-1 a-0 g-4 f-2 e-1 \glissando |
  s2. |
  s2. |
  
  %8
  s2. |
  bes'2-2\fermata a4-1 |
  s2. |
  s2.  \bar "||" |
  
  %9
  \time 4/4
  s1 |
  s1 |
  \stemUp
  \override Fingering.direction = #UP
  \override Rest.staff-position = #4
  r8 <f-3 a-2 d-4> r <a-2 d-4> r <a-2 cis-3> r <g-4 a cis> \barre #2 #4 |
  d,4 \p f'-3 e-1 a,-0 |
  
  %10
  s1 |
  s1 |
  r8 <f-3 a-2 d-4> r <a-2 d-4> r <a-2 cis-3> r a-2 |
  d,4 f'-3 e-1 a,-0 |
  
  \repeat volta 2 {
    %11
    \grace{s8}s1 |
    \override Fingering.add-stem-support = #only-if-beamed
    \stemUp
    \override Fingering.direction = #UP
    \slashedGrace{ f''8\glide-1 \RH #4 } a4-1 a4.-> g16-4\2 a-1 \grace{bes16-2 _( c-4} bes-2 ) a-1 bes-2 c-4 |
    \override Rest.staff-position = #2
    \stemDown
    \grace{s8} r8 <a-3 \RH #2 f'-2 \RH #3 > r <a-3 f'-2> s2 | % \grace{s8} : workaround pour éviter barre de reprise à gauche parasite
    \grace{s8} d,4 \mf f'-4_\5 e-3 a,-0 |
    
    %12
    s1 |
    a4-1 a4.-> g16-4\2 a-1 \grace{bes16-2 _( c-4} bes-2 ) a-1 bes-2 c-4 |
    r8 <a-3 f'-2> r <a-3 f'-2> s2 |
    d,4 f'-4_\5 e-3 a,-0 |
    
    %13
    s1 |
    \slashedGrace{c8-4 _( } a4-1 ) a r8 gis16-3^\2 a-4 b-1 cis-3 d-1 e-3 |
    r8 <a-3 f'-2> r <a-3 f'-2> s2 |
    d,4 f'-4_\5 e-1 a,-0 |
    
    %14
    s1 |
    f8-4 f16 \startBarre #10 #3 _( e-3 ) d4 r16 \stopBarre cis-2 \RH #2 e-4 \RH #3 cis \RH #2 bes-4^\2 \RH #3 g-1 \RH #4 e-2^\3 \RH #3 cis-4^\4 \RH#2 |
    r8 <f' a> r <f a> s2 |
    d,4-0 a'-0 e'-1_\5 a,-0 |
    
    %15
    s1 |
    \textSpannerUp
    a'4-4\2 a-> r8  g16-4 \startStringSpan #2 f-2 e-1 _( f ) g e |
    r8 <a, d> \startBarre #7 $4 r <a d> \stopBarre s2 |
    d,4-0 f'-2 e-3 a,-0 |
    
    %16
    s1 |
    f4-2 fis-4 \stopStringSpan r16 \startBarre #5 #6 a,-3 c fis-4 a \stopBarre c\glide-4 ees16.-4 \fermata d32-3 |
    \override Rest.staff-position = #0
    r8 <a-3\4 d-4\3> r <a-3 c-1> s2 |
    d,2-0 d'4 _\markup{\italic "poco cresc."} r |
    
    %17
    s1 |
    \grace{c16-1 _( d-3} c8 )
    \override Fingering.add-stem-support = ##f
    <g-3 bes-1> a-4 \startBarre #3 #6 <e-3 g>\stopBarre
    \override Fingering.add-stem-support = #only-if-beamed
    \override TextSpanner.bound-details.left.text = "accel."
    \textSpannerDown
    bes'16-2 \RH #3 \startTextSpan _( a-1 ) d-2 _( cis-1 ) e-3 _( d-1 ) f-2 _( e-1) |
    s1 |
    g4-0 bes a,2 |
    
    %18
    s1 |
    g16-4 _( e-1 ) d-2 _( cis-1 ) e-4 \stopTextSpan _( d-2 ) bes-2 _( a-1 )
    c-4 _( bes-2 ) g-2 _( e-0 ) d-2 \RH #3  bes-1 \RH #2 cis-2 a-1 |
    s1 |
    a2..-0 a8 |
    
    %19
    s1 |
    s1 ^\markup{\italic "a tempo"} |
    r8 <f-3 d'-4> r <f-3 d'-4> r <g-0 ees'-4> r <e-2 a-3 cis-4>  |
    d,4-0 bes'-1 ees,-1 a-0 |

    \alternative {
      \volta 1 {
        %20
        s1 |
        s1 \p |
        r8 <f-3 d'-4> r <f-3 d'-4> r <g-0 ees'-4> r <e-2 a-3 cis-4> |
        d,4-0 bes'-1 ees,-1 a-0 |
      }
      
      \volta 2 {
        %21
        s1 |
        \override TextSpanner.bound-details.left.text = "rit."
        \textSpannerDown
        s2 s4 \startTextSpan s8 s8 \stopTextSpan |
        r8 <f-3 d'-4> r <f-3 d'-4> r \startBarre #3 #6 <bes d> r <g-3 bes e-4> \stopBarre |
        d,4-0 bes'-1 g-3 c |
      }
    }
  }
  
  %22
  s1 |
  s2 r16 d e-3 f-4 \grace{e-3 _( f-4} e-3-> ) c-2 d e-3 |
  \override Rest.staff-position = #4
  r8 ^\markup{\italic "a tempo"} \startBarre #3 #6 <f'-4 a-3> r <f-4 a-3> s2 |
  <f, c''-2>4 \mp <c' c'-2> g'-2_\4 c, |
  
  %23
  s1 |
  \grace{d16 _( e-3} d8 ) s8 s4 r8 g16-4 \RH #2 a \RH #3 \grace{bes-2 \RH #2 _( c-4} bes8-2-> ) a16 \RH #3 g-4 \RH #2 |
  s8 <a,-4 c-2>4 <a-4 c-2> \stopBarre \startBarre #5 #4 s8 s4 |
  f,4 c' g' c |
  
  %24
  s1 |
  \slashedGrace{a8 \RH #4 _(} c4-4 ) f,4.-2-> d16-3 \RH #2 e \RH #3 \grace{f16-2 \RH #2 _( g-4} f8-2-> ) e16 \RH #3 d-3 \RH #2 |
  \override Rest.staff-position = #-1
  r8 <a-3 c> r <a c> \stopBarre s4 \startBarre #5 #6 s8. s16 \stopBarre |
  a,2-0 d4 g, |
  
  %25
  s1 |
  \grace{g16-1 \RH #4 _( a-3} g4-1 ) c,4-1\2 \RH #4 r16 bes-3 d-4 e-0 d-4 c-1 bes-3 c,-2 |
  \revert Rest.staff-position
  \override Fingering.direction = #DOWN
  \override Fingering.add-stem-support = #only-if-beamed
  c,8-1 \startBarre #3 #6 c'-3 \RH #2 \stopBarre r <e,-2 bes'-3> c4..-2 _\markup{\italic "rit."} c16 |
  s1 |
  
  %26
  s1 |
  s2 ^\markup{\italic "a tempo"} r16 d' e-3 f-4 \grace{e-3 _( f-4} e-3-> ) c-2 d e-3 |
  \override Rest.staff-position = #4
  r8 \startBarre #3 #6 <f'-4 a-3> r <f-4 a-3> s2 |
  <f c''-2>4 <c' c'-2> g'-2_\4 c, |
  
  %27
  s1 |
  \grace{d16 _( e-3} d8 ) s8 s4 r16 \startBarre #5 #6 bes-4 \RH #2 c d-3 e f-2 g-4 bes-2 \stopBarre |
  s8 <a,-4 c-2>4 <a-4 c-2> \stopBarre s8 s4 |
  f,4 c' g g' |
  
  %28
  s1 |
  \grace{bes16-2 \RH #4 _( c-4 bes-2} a4-1 )
  \once \override NoteHead.style = #'harmonic-mixed
  \once \override TextScript.self-alignment-X = #CENTER
  a-3\4 ^\markup {\italic \fontsize #-2 "har. 7"}
  r16 d-4 \RH #3 _( bes-1 ) g-3\2 \RH #2 e-0 \RH #4 d-2 \RH #3 bes-1 \RH #2 g-0 \RH #3 |
  \override Rest.staff-position = #0
  \grace{s16 \startBarre #5 #3 s s}  r8 <cis-2 e-1> r <cis e> \stopBarre s2 |
  a,2-0 a |
  
  %29
  s1 |
  r16 e-1 \RH #2 a-1 \RH #3 cis-2 \RH #4 e-0 \RH #3 a-2\2 \RH #2 cis-1 \RH # 3 e-4 \RH #2
  r bes-4 \RH #3 _( g-1 ) e-0 \RH #2 d-2 \RH #3 bes-1 \RH #2 g-0 \RH #3 e-1 \RH #2 |
  s1 |
  a2 a |

  %30
  s1 |
  \stemNeutral
  a,16-0 \RH #1 e'-1 \RH #2 a-1 \RH #3 cis-2 \RH #4 e-0 \RH #3 a-2\2 \RH #2 a \RH #3 a \RH #2
  a \RH #3 a,, \RH #2 \< _\markup{\italic "accel."} ais-1 b-2 c-3 cis-4 d-0 dis-1 |
  s1 |
  s1 |
  
  %31
  s1 |
  e16-2 f-3 fis-4 g-0 gis-1 a-2 ais-3 b-0 c-1 cis-2 d-3 dis-4
  \tuplet 5/4 {
    \textSpannerUp
    e-0 f-1 \startStringSpan #2 fis-2 g-3 gis-4 \!
  } |
  s1 |
  s1 |
  
  %32
  s8 s8 \startBarre #7 #5 s2. |
  \key d \major
  \stemUp
  a4-4 \RH #4 ^\markup{\italic "a tempo"} \stopStringSpan a ~ a16 b cis-3 d-4 \grace{cis-3 _( d-4} cis-3 ) a-4 b cis-3 |
  r8 <a d> r <a d> s2 |
  d,4-0 \mf fis'-3 e a |
  
  %33
  s2 s8. s16 \stopBarre s4 |
  \grace{b16 _( cis-3} b8 ) a4.-4 r8 e16-3 fis \grace{g-2 _( a-4} g8-2 ) fis16-1 e-3 |
  \override Rest.staff-position = #1
  r8 d r <a d> s2 |
  d,,4 fis'-3 e a,-0 |
  
  %34
  s8 s8 \startBarre #7 #4 s8 s8 \stopBarre s2 |
  a4-4^\2 d, r8 \startBarre #2 #6 b16-3 cis \grace{d-2 _( e-4 } d8-2 ) cis16 b-3 \stopBarre |
  \override Rest.staff-position = #-1
  r8 a \tweak extra-offset #'(1.3 . 0) r a s2 |
  d,4-0 fis'-3 e, e' |
  
  %35
  s8 s8 \startBarre #2 #4 s8 s8 \stopBarre s2 |
  e4-4^\2 a, r8 gis'16\glide-1 _( a-1 ) cis-4 b-2 g-3\2 e-0 |
  \override Rest.staff-position = #-3
  r8 e \tweak extra-offset #'(1.4 . -0.5) r e s2 |
  a,4-0 cis-3 a2-0 |
  
  %36
  s8 s8 \startBarre #7 #5 s2. |
  a4-4^\2 a-4 ~ a16 b cis-3 d-4 \grace{cis-3 _( d-4} cis-3 ) a-4 b cis-3 |
  \override Rest.staff-position = #1
  r8 <a d> r <a d> s2 |
  d,4-0 fis'-3 e a |
  
  %37
  s4. s8 \stopBarre s2 |
  \grace{b16 _( cis-3 } b8 ) a4.-4 dis,,16-1\5 _( fis-4 ) a-1\4 _( bis-4 ) dis-2\3 fis-1\2 a-4 bis-2 |
  r8 d r <a d> s2 |
  d,,4-0 fis'-3 s2 |
  
  %38
  s1 |
  cis4-4 cis r16 fis-4 \RH #3 _( e-2 ) d-2 b-4\2 gis-1 e-0 d-2\2 |
  \override Rest.staff-position = #3
  r8 \startBarre #7 #6 e'-3 r e \stopBarre s2 |
  e4 a \tweak NoteHead.style #'harmonic-mixed e'2-1_\5 _\markup {\italic \fontsize #-2 "har. 7"} |
  
  %39
  s1 |
  \override Fingering.direction = #DOWN
  \set strokeFingerOrientations = #'(down)
  \tuplet 6/4 4 {
    d16-2 \RH #3 _( cis-1 ) cis b'-4_\2 b _( a-2 )
    a\glide-2 g-2 g _( fis-1 ) fis e-3_\3
    e _( d-1 ) d\glide-1 cis-1 cis b-4_\4
    \textSpannerDown
    \override TextSpanner.bound-details.left.text = "rit."
    b _( bes-3 ) bes \startTextSpan _( a-2 ) a a'-4_\2 \RH #2 \stopTextSpan
  } |
  s1 |
  a,,1-0 |
  
  %40
  s8 s8 \startBarre #7 #5 s2. |
  \override Fingering.direction = #UP
  \set strokeFingerOrientations = #'(up down)
  a4-4 \RH #4 ^\markup{\italic "a tempo"} a ~ a16 b cis-3 d-4 \grace{cis-3 _( d-4} cis-3 ) a-4 b cis-3 |
  \override Rest.staff-position = #0
  r8 <a, d> r <a d> s2 |
  d,4-0 fis'-3 e a |
  
  %41
  s2 s8. s16 \stopBarre s4 |
  \grace{b16 _( cis-3} b8 ) a4.-4 r8 e16-3 fis \grace{g-2 _( a-4} g8-2 ) fis16-1 e-3 |
  \override Rest.staff-position = #1
  r8 d r <a d> s2 |
  d,,4-0 fis'-3 e a,-0 |
  
  %42
  s1 |
  a4-4^\2 d, r8 \startBarre #2 #6 b16-3 cis \grace{d-2 _( e-4 } d8-2 ) cis16 b-3 \stopBarre |
  \override Rest.staff-position = #-1
  r8 a \startBarre #7 #4 \tweak extra-offset #'(1.3 . 0) r a \stopBarre s2 |
  d,4-0 fis'-3 e, e'|
  
  %43
  s1 |
  e4-4^\2 a,-1 r8 gis'16\glide-1 _( a-1 ) cis-4 b-2 g-3\2 e-0 |
  \override Rest.staff-position = #-3
  r8 e-1 \startBarre #2 #4 \tweak extra-offset #'(1.4 . -0.5) r e \stopBarre s2 |
  a,4-0 cis-3 a2-0 |
  
  %44
  s8 s8 \startBarre #7 #5 s2. |
  a4-4^\2 a-4 ~ a16 b cis-3 d-4 \grace{cis-3 _( d-4} cis-3 ) a-4 b cis-3 |
  \override Rest.staff-position = #1
  r8 <a d> r <a d> s2 |
  d,4-0 fis'-3 e a |

  %45
  s4. s8 \stopBarre s2 |
  \grace{b16 _( cis-3 } b8 ) a4.-4 d,,16-0 _( fis-3 ) a-1 d-2 fis-1 a-4 e'16.-4 \fermata  d32-2 |
  r8 d r <a d> s2 |
  d,,4-0 fis'-3 s2 |
  
  %46
  s1 |
  \grace{d16-2 _( e-4 } d8-2 ) s4.
  \set strokeFingerOrientations = #'(right)
  r16 \startBarre #2 #6 b,-3 cis d-2 \stopBarre <cis-3 \RH #2 a'-2\2 \RH #4 >8. <b-3 g'-2\2>16 |
  r8 <b-0 e-0>4 <b-0 e-0>8 s2 |
  g4-0 g,-4 e r |

  %47
  s1 |
  \tuplet 3/2{
    \override Fingering.add-stem-support = ##f
    <b-3 \RH #2 g'-2 \RH #4 >8 a'-4 \RH #3 g-2 \RH #2
    
  } <a,-1\4 fis'-2\2>4 r <g-1 cis-3 e-2>
  \set strokeFingerOrientations = #'(up down) |
  s1 |
  a2-0 _\markup{\italic "molto rit."} a |
  
  %48
  s1 |
  \key d \minor
  d'4-2 ^\markup{\italic "a tempo"} s2 .|
  \override Rest.staff-position = #-2
  r8 <fis-3 a-1> r <fis-3 d'-2> r <g-0 b-0 e-0> r <g-0 cis-1> |
  d,4-0 \p b'-1 g-4 a-0 |
  
  %49
  s1 |
  s1 |
  \override Rest.staff-position = #-1
  r8 <f-3 d'-4> r <f-3 d'-4> r <g-0 ees'-4> r <e-2 a-3 cis-4>  |
  d,4-0 bes'-1 ees,-1 a-0 |
  
  %50
  s1 |
  \override Fingering.add-stem-support = #only-if-beamed
  \stemUp
  \override Fingering.direction = #UP
  \slashedGrace{ f8\glide-1 \RH #4 } a4-1 a4.-> g16-4\2 a-1 \grace{bes16-2 _( c-4} bes-2 ) a-1 bes-2 c-4 |
  \override Rest.staff-position = #2
  \stemDown
  \grace{s8} r8 <a-3 \RH #2 f'-2 \RH #3 > r <a-3 f'-2> s2 | % \grace{s8} : workaround pour éviter barre de reprise à gauche parasite
  \grace{s8} d,4 \mf f'-4_\5 e-3 a,-0 |
  
  %51
  s1 |
  a4-1 a4.-> g16-4\2 a-1 \grace{bes16-2 _( c-4} bes-2 ) a-1 bes-2 c-4 |
  r8 <a-3 f'-2> r <a-3 f'-2> s2 |
  d,4 f'-4_\5 e-3 a,-0 |
  
  %52
  s1 |
  \slashedGrace{c8-4 _( } a4-1 ) a r8 gis16-3^\2 a-4 b-1 cis-3 d-1 e-3 |
  r8 <a-3 f'-2> r <a-3 f'-2> s2 |
  d,4 f'-4_\5 e-1 a,-0 |
  
  %53
  s1 |
  f8-4 f16 \startBarre #10 #3 _( e-3 ) d4 r16 \stopBarre cis-2 \RH #2 e-4 \RH #3 cis \RH #2 bes-4^\2 \RH #3 g-1 \RH #4 e-2^\3 \RH #3 cis-4^\4 \RH#2 |
  r8 <f' a> r <f a> s2 |
  d,4-0 a'-0 e'-1_\5 a,-0 |
  
  %54
  s1 |
  \textSpannerUp
  a'4-4\2 a-> r8  g16-4 \startStringSpan #2 f-2 e-1 _( f ) g e |
  r8 <a, d> \startBarre #7 $4 r <a d> \stopBarre s2 |
  d,4-0 f'-2 e-3 a,-0 |
  
  %55
  s1 |
  f4-2 fis-4 \stopStringSpan r16 \startBarre #5 #6 a,-3 c fis-4 a \stopBarre c\glide-4 ees16.-4 \fermata d32-3 |
  \override Rest.staff-position = #0
  r8 <a-3\4 d-4\3> r <a-3 c-1> s2 |
  d,2-0 d'4 _\markup{\italic "poco cresc."} r |
  
  %56
  s1 |
  \grace{c16-1 _( d-3} c8 )
  \override Fingering.add-stem-support = ##f
  <g-3 bes-1> a-4 \startBarre #3 #6 <e-3 g>\stopBarre
  \override Fingering.add-stem-support = #only-if-beamed
  \override TextSpanner.bound-details.left.text = "accel."
  \textSpannerDown
  bes'16-2 \RH #3 \startTextSpan _( a-1 ) d-2 _( cis-1 ) e-3 _( d-1 ) f-2 _( e-1) |
  s1 |
  g4-0 bes a,2 |
  
  %57
  s1 |
  g16-4 _( e-1 ) d-2 _( cis-1 ) e-4 \stopTextSpan _( d-2 ) bes-2 _( a-1 )
  c-4 _( bes-2 ) g-2 _( e-0 ) d-2 \RH #3  bes-1 \RH #2 cis-2 a-1 |
  s1 |
  a2..-0 a8 |
  
  %58
  s1 |
  s1 ^\markup{\italic "a tempo"} |
  r8 <f-3 d'-4> r <f-3 d'-4> r <g-0 ees'-4> r <e-2 a-3 cis-4>  |
  d,4-0 bes'-1 ees,-1 a-0 |

  %59
  s1 |
  s1 |
  r8 <f-3 d'-4> r <f-3 d'-4> r <g-0 ees'-4> r <e-2 a-3 cis-4> |
  d,4-0 bes'-1 ees,-1 a-0 |
  
  
  %60
  s1 |
  \once \override NoteHead.style = #'harmonic-mixed
  \once \override TextScript.self-alignment-X = #CENTER
  <a d>2 ^\markup {\italic \fontsize #-2 "har. 12"} <f' a d> \barre #10 #3 |
  s1 |
  \once \override NoteHead.style = #'harmonic-mixed
  d2 d-0 \bar "|." |
  %}
}

zique = {
  \clef "treble_8"
  \key d \minor
  %\accidentalStyle modern
  %\time 3/4
  \tempo "Andantino"
  \set Timing.beamExceptions = #'()
  
  <<
    {\voiceT} \\
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
    \tempo 4.= #66
  }
}