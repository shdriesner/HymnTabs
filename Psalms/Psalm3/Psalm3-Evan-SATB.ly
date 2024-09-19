\version "2.24.1"
\language "english"

% force .mid extension for MIDI file output
#(ly:set-option 'midi-extension "mid")

\header {
  dedication = "For Covenant Community Church and the Glory of God"
  title = "Psalm 3"
  subtitle = "(tune: Evan - Capo 1)"
  instrument = "Voice"
  composer = "Traditional"
  arranger = "Transposed. Stefan Driesner - Feb 2024"
  meter = ""
  copyright = "Copyright 2024 - All Rights Reserved"
}

global = {
  \key af \major
  \numericTimeSignature
  \time 3/2
}

versesVoice = \lyricmode {
  % Verse 1
  O LORD, how are my foes in- creas'd?
  a- gainst me ma- ny rise.
  Ma- ny say of my soul, For him
  in God no suc- cour lies.
}

SAVoice = \relative c {
  \global
  \dynamicUp
  % Music follows here.
  {
    r1                               <ef  c  >2^\markup { \fret-diagram "6-3;5-2;4-o;3-o;2-3;1-3;" } |
    % Verse 1
    <c   ef >4 <c   af'>4 <ef  c'>2  <df  bf'>2 | < c  af'>4^\markup { \fret-diagram "6-x;5-3;4-2;3-o;2-3;1-3;" } <df   f >4 < c  ef >2  < c  ef >2 |
    <c   ef >4^\markup { \fret-diagram "6-3;5-2;4-o;3-o;2-3;1-3;" } <c   af'>4 <c   c'>2  < c  af'>2 | <ef  bf'>1^\markup { \fret-diagram "6-x;5-o;4-o;3-2;2-3;1-2;" }                        <ef  df'>2 |
    <ef  c '>4^\markup { \fret-diagram "6-3;5-2;4-o;3-o;2-3;1-3;" } <df  bf'>4 <c  af'>2  <ef  bf'>2 | <ef  c '>4^\markup { \fret-diagram "6-x;5-3;4-2;3-o;2-3;1-3;" } <ef  af >4 <df   f >2  <bf  ef >2^\markup { \fret-diagram "6-3;5-2;4-o;3-o;2-3;1-3;" } |
    <c   ef >4 <c   af'>4 <ef c '>2  <df  bf'>2^\markup { \fret-diagram "6-x;5-o;4-o;3-2;2-3;1-2;" } | <c   af'>1^\markup { \fret-diagram "6-3;5-2;4-o;3-o;2-3;1-3;" }                             \bar "|."
  }
}

TBVoice = \relative c {
  \global
  \dynamicUp
  % Music follows here.
  {
    r1                                <af  af'>2 |
    % Verse 1
    <af  af'>4 <af  af'>4 <af  af'>2  <ef' g  >2 | <f   af >4 <df  af'>4 <af  af'>2 <af  af'>2 |
    <af  af'>4 <    af'>4 <f   af >2  <f   af >2 | <ef  g  >1                       <g   bf >2 |
    <    af >4 <ef  g  >4 <f   af >2  <ef  g  >2 | <    af >4 <c , af'>4 <df  af'>2 <ef  g  >2 |
    <af, af'>4 <f ' af >4 <ef  af >2  <ef  g  >2 | <af, af'>1                          \bar "|."
  }
}

Chords = \new ChordNames {
  \chordmode {
    r1 <g>2 <g>1. <c>1. <g>1. <d>1. <g>1. <c>1 <g>2 <g>1 <d>2 <g>1.
  }
}

SAVoicePart = \new Staff \with {
  instrumentName = "SA"
  midiInstrument = "Voice Oohs"
} { \clef "treble_8" \SAVoice }
\addlyrics { \versesVoice }

TBVoicePart = \new Staff \with {
  instrumentName = "TB"
  midiInstrument = "Voice Oohs"
} { \clef bass \TBVoice }

\score {
  <<
    \Chords
    \SAVoicePart
    \TBVoicePart
  >>
  \layout { }
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 100 2)
    }
  }
}

\markup {
  \fill-line {
    {
      \column {
        \left-align {
  	  "3  Yet thou my shield and glo-ry art,"
	  "     th'up-lift-er of mine head."
	  "4  I cried, and, from his ho-ly hill,"
	  "     the Lord me an-swer made."
	  "                  ---"
	  "5  I laid me down and slept; I wak'd,"
	  "     for God sus-tain-ed me."
  	  "6  I will not fear though thou-sands ten"
	  "     set round a-gainst me be."
	  "                  ---"
	  "7  A-rise, O Lord; save me, my God;"
	  "     for thou my foes hast stroke"
	  "   All on the cheek-bone, and the teeth"
	  "     of wick-ed men hast broke."
	  "                  ---"
	  "8  Sal-va-ti-on doth app-er-tain"
	  "     un-to the Lord a-lone:"
	  "   Thy bless-ing, Lord, for e-ver-more"
	  "     thy peo-ple is up-on."
        }
      }
    }
  }
}