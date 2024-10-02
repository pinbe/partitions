\version "2.24.3"

#(define RH rightHandFinger)

#(define-markup-command (barreMrkp layout props fretnum numOfStr) (integer? integer?)
   (interpret-markup layout props 
                     (if (= numOfStr 6)
                         #{
                           \markup { 
                             \small
                             \bold
                             \concat {
                               #(format #f "~@r" fretnum)
                               \hspace #0.2
                             }
                           }
                         #}
                         #{
                           \markup {
                             \small
                             \bold
                             \concat {
                               #(format #f "~@r" fretnum)
                               \hspace #0.2
                               \lower #0.3
                               \fontsize #-2
                               #(number->string numOfStr)
                               \hspace #0.5
                             }
                           }
                         #})))

barre = 
#(define-event-function (fretnum numOfStr)
   (number? number?)
   #{
     ^\markup \barreMrkp #fretnum #numOfStr
   #}
   )

startBarre = 
#(define-event-function (fretnum numOfStr) 
   (number? number?)
     #{
       \tweak bound-details.left.text
         \markup{
           \barreMrkp #fretnum #numOfStr
         }
       \tweak font-size -1
       \tweak font-shape #'upright
       \tweak style #'dashed-line
       \tweak dash-fraction #0.3
       \tweak dash-period #1 
       \tweak bound-details.left.stencil-align-dir-y #0.35
       \tweak bound-details.left.padding 0.25
       \tweak bound-details.left.attach-dir -1
       \tweak bound-details.left-broken.text ##f
       \tweak bound-details.left-broken.attach-dir -1
       %% adjust the numeric values to fit your needs:
       \tweak bound-details.left-broken.padding 1.5
       \tweak bound-details.right-broken.padding 0
       \tweak bound-details.right.padding 0.25
       \tweak bound-details.right.attach-dir 2
       \tweak bound-details.right-broken.text ##f
       \tweak bound-details.right.text
         \markup {
           \with-dimensions #'(0 . 0) #'(-.3 . 0) 
           \draw-line #'(0 . -1)
         }
       \tweak direction #1 % UP
       \startTextSpan 
     #})

stopBarre = \stopTextSpan

startStringSpan = 
#(define-event-function (stringNum) 
   (number?)
   #{
     \tweak font-size #-5
     \tweak bound-details.left.stencil-align-dir-y #CENTER
     \tweak bound-details.left.text
       \markup {
         \circle
         \number #(number->string stringNum)
       }
     \tweak bound-details.right.text #'()
     %\tweak style #'solid
     \tweak style #'dashed-line
     \tweak dash-fraction #0.3
     \tweak dash-period #1 
     \startTextSpan
   #})

stopStringSpan = \stopTextSpan

% Tweaks

fingeringTweaks = {
  % left hand
  \override Fingering.staff-padding = #'()
  \override Fingering.add-stem-support = ##f
  \override Fingering.avoid-slur = #'around
  \override Fingering.font-size = #-5
  \set fingeringOrientations = #'(left)

  % right hand
  %\set strokeFingerOrientations = #'(down)
  \override StrokeFinger.add-stem-support = ##t
  %\override StrokeFinger.font-shape = #'upright

  \override StringNumber.script-priority = 110 %
}

tweaks = {
  \fingeringTweaks
  \override Stem.details.beamed-lengths = #'(4.5)
}

merges = {
  \mergeDifferentlyHeadedOn
  \mergeDifferentlyDottedOn
  \shiftOff
}
