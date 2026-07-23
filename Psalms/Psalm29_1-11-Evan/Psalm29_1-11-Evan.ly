\version "2.24.1"
\language "english"

% force .mid extension for MIDI file output
#(ly:set-option 'midi-extension "mid")

\header {
  dedication = "For Covenant Community Church and the Glory of God"
  title = "Psalm 29:1-11 - The Psalms of David in Metre, pg 49-50"
  subtitle = "(tune: Evan - capo 1)"
  instrument = "Voice"
  composer = "Traditional"
  arranger = "Transposed. Stefan Driesner - July 2026"
  meter = ""
  copyright = "Copyright 2026 - All Rights Reserved"
}

global = {
  \key af \major
  \numericTimeSignature
  \time 3/2
}

versesVoiceOne = \lyricmode {
  % Verse 1
  GIVE ye un- to the Lord, ye sons
  that of the migh- ty be,
  All strength and glo- ry to the Lord
  with cheer- ful- ness give ye.
}

versesVoiceTwo = \lyricmode {
  % Verse 2
  Un- to the Lord the glo- ry give
  that to his name is due;
  And in'the beau- ty of ho- li- ness
  un- to JE- HO- VAH bow.
}

versesVoiceThree = \lyricmode {
  % Verse 3
  The Lord's voice on the wa- ters is;
  the God of ma- je- sty
  Doth thun- der, and on mul- ti- tudes
  of wa- ters sit- teth he.
}

versesVoiceFour = \lyricmode {
  % Verse 4
  A pow'r- ful voice it is that comes
  out from the Lord most high;
  The voice of that great Lord is full
  of glo- rious ma- je- sty.
}

versesVoiceFive = \lyricmode {
  % Verse 5
  The voice of the E- ter- nal doth
  a- sun- der ce- dars tear;
  Yea, God the Lord doth ce- dars break
  that Le- ba- non doth bear.
}

versesVoiceSix = \lyricmode {
  % Verse 6
  He makes them like a calf to skip,
  ev'n that great Le- ba- non,
  And, like to a young u- ni- corn,
  the moun- tain Si- ri- on.
}

versesVoiceSeven = \lyricmode {
  % Verse 7-8
  God's voice di- vides the flames of fire;
  The de- sert it doth shake:
  The Lord doth make the wil- der- ness
  of Ka- desh all to quake.
}

versesVoiceEight = \lyricmode {
  % Verse 9
  God's voice doth make the hinds to calf,
  it makes the for- est bare:
  And in the tem- ple e- v'ry one
  his glo- ry doth de- clare.
}

versesVoiceNine = \lyricmode {
  % Verse 10-11
  The Lord sits on the floods; the Lord
  sits King, and e- ver shall.
  The Lord will give his peo- ple strength,
  and with praise bless them all.
  A- men.
}

SAVoice = \relative c {
  \global
  \dynamicUp
  % Music follows here.
  {
    r1
    \repeat volta 2
    {
      <ef  c  >2 |
      <c   ef >4 <c   af'>4 <ef  c'>2  <df  bf'>2 | < c  af'>4 <df   f >4 < c  ef >2  < c  ef >2 |
      <c   ef >4 <c   af'>4 <c   c'>2  < c  af'>2 | <ef  bf'>1                        <ef  df'>2 |
      <ef  c '>4 <df  bf'>4 <c  af'>2  <ef  bf'>2 | <ef  c '>4 <ef  af >4 <df   f >2  <bf  ef >2 |
      <c   ef >4 <c   af'>4 <ef c '>2  <df  bf'>2 | <c   af'>1
    }
    r2
  }
  <df  af' >1. <c  af' >1.
  \bar "|."
}

TBVoice = \relative c {
  \global
  \dynamicUp
  % Music follows here.
  {
    r1
    \repeat volta 2
    {
      <af  af'>2 |
      <af  af'>4 <af  af'>4 <af  af'>2  <ef' g  >2 | <f   af >4 <df  af'>4 <af  af'>2 <af  af'>2 |
      <af  af'>4 <    af'>4 <f   af >2  <f   af >2 | <ef  g  >1                       <g   bf >2 |
      <    af >4 <ef  g  >4 <f   af >2  <ef  g  >2 | <    af >4 <c , af'>4 <df  af'>2 <ef  g  >2 |
      <af, af'>4 <f ' af >4 <ef  af >2  <ef  g  >2 | <af, af'>1
    }
    r2
  }
  <df  f  >1. <af  ef' >1.
  \bar "|."
}

Chords = \new ChordNames {
  \chordmode {
    r1 <af>2 <af>1. <df>1. <af>1. <ef>1. <af>1. <df>1 <af>2 <af>1 <ef>2 <af>1. <df>1. <af>1.
  }
}

SAVoicePart = \new Staff \with {
  instrumentName = "SA"
  midiInstrument = "Voice Oohs"
} { \clef "treble_8" \SAVoice }
\addlyrics { \versesVoiceOne }
\addlyrics { \versesVoiceTwo }
\addlyrics { \versesVoiceThree }
\addlyrics { \versesVoiceFour }
\addlyrics { \versesVoiceFive }
\addlyrics { \versesVoiceSix }
\addlyrics { \versesVoiceSeven }
\addlyrics { \versesVoiceEight }
\addlyrics { \versesVoiceNine }

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
	" Guitar w/Capo 1:"
	" Ab   => G"
	" Db   => C"
	" Eb   => D"
        }
      }
    }
  }
}
