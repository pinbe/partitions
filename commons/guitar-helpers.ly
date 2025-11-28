\version "2.24.3"

RH = #rightHandFinger

#(define-markup-command (barreMrkp layout props fretnum numOfStr) (integer? scheme?)
   (interpret-markup layout props
                     (let ((label 
                            (cond
                             ((number? numOfStr) (number->string numOfStr))
                             ((string? numOfStr) numOfStr)
                            )))
                       (if (and (number? numOfStr) (= numOfStr 6))
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
                               \concat {
                                 { \bold
                                   #(format #f "~@r" fretnum)
                                 }
                                 \hspace #0.2
                                 \lower #0.3
                                 \fontsize #-2
                                 \italic
                                 #label
                                 \hspace #0.5
                               }
                             }
                           #}))))

barre = 
#(define-event-function (fretnum numOfStr)
   (number? scheme?)
   #{
     ^\markup \barreMrkp #fretnum #numOfStr
   #}
   )

startBarre = 
#(define-event-function (fretnum numOfStr) 
   (number? scheme?)
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
  \override StrokeFinger.staff-padding = #'()
  \override StrokeFinger.add-stem-support = ##t
  \override StrokeFinger.avoid-slur = #'around
  \override StrokeFinger.script-priority = 110 %
  
  % strings
  \override StringNumber.script-priority = 120 %
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
