\version "2.24.1"
\language "english"

% force .mid extension for MIDI file output
#(ly:set-option 'midi-extension "mid")

\header {
  dedication = "For Covenant Community Church and the Glory of God"
  title = "Psalm 100 -- The Psalms of David in Metre, page 202"
  subtitle = "(tune: Evan - Melody Only)"
  instrument = "Voice"
  composer = "Traditional"
  arranger = "Transposed. Stefan Driesner - Nov 2023"
  meter = ""
  copyright = "Copyright 2023 - All Rights Reserved"
}

global = {
  \key af \major
  \numericTimeSignature
  \time 3/2
}

versesVoice = \lyricmode {
  % Verse 1
  O ALL ye lands, un- to the Lord
  make ye a joy- ful noise.
  Serve God with glad- ness, him be- fore
  come with a sing- ing voice.
}

SoloVoice = \relative c {
  \global
  \dynamicUp
  % Music follows here.
  {
    r1                               <    ef  >2 |
    % Verse 1
    <    ef >4 <    af >4 <    c >2  <    bf >2 | <    af >4 <     f >4 <    ef >2  <    ef >2 |
    <    ef >4 <    af >4 <    c >2  <    af >2 | <    bf >1                        <    df >2 |
    <    c  >4 <    bf >4 <   af >2  <    bf >2 | <    c  >4 <    af >4 <     f >2  <    ef >2 |
    <    ef >4 <    af >4 <   c  >2  <    bf >2 | <    af >1                             \bar "|."
  }
}

SoloVoicePart = \new Staff \with {
  midiInstrument = "Voice Oohs"
} { \clef "treble_8" \SoloVoice }
\addlyrics { \versesVoice }

\score {
  <<
    \SoloVoicePart
  >>
  \layout { }
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 80 2)
    }
  }
}

\markup {
  \fill-line {
    ""
    {
      \column {
        \left-align {
  	  "3  Know ye the Lord that he is God;"
	  "    not we, but he us made:"
	  "   We are his people, and the sheep"
	  "    within his pasture fed."
	  "                  ---"
	  "4  Enter his gates and courts with praise,"
	  "    to thank him go ye thither:"
  	  "   To him express your thankfulness,"
	  "    and bless his name together."
	  "                  ---"
	  "5  Because the Lord our God is good,"
	  "    his mercy faileth never;"
	  "   And to all generations,"
	  "    his truth endureth ever."
	  "                  ---"
	  "   Amen"
        }
      }
    }
    ""
  }
}