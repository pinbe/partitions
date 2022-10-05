\version "2.22.2"

\header {
  title = "Canarios"
  composer = "Gaspar Sanz"
  % Supprimer le pied de page par défaut
  tagline = ##f
}

global = {
  \key d \major
  \numericTimeSignature
  \time 6/8
  \partial 4
}

classicalGuitar = \relative c' {
  \global
  % En avant la musique !
  
}

\score {
  \new StaffGroup \with {
    \consists "Instrument_name_engraver"
    instrumentName = "Guitare Classique"
  } <<
    \new Staff \with {
      midiInstrument = "acoustic guitar (nylon)"
    } { \clef "treble_8" \classicalGuitar }
    \new TabStaff \with {
      stringTunings = #guitar-open-d-tuning
    } \classicalGuitar
  >>
  \layout { }
  \midi {
    \tempo 4.=76
  }
}
