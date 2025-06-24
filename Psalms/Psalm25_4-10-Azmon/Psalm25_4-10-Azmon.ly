\version "2.24.1"
\language "english"

% force .mid extension for MIDI file output
#(ly:set-option 'midi-extension "mid")

\header {
  dedication = "For Covenant Community Church and the Glory of God"
  title = "Psalm 25:4-10 -- The Psalms of David in Metre, page 39-40"
  subtitle = "(tune: Azmon -- NO CAPO)"
  instrument = "Voice"
  composer = "Traditional"
  arranger = "Transposed. Stefan Driesner - June 2025"
  meter = ""
  copyright = "Copyright 2025 - All Rights Reserved"
}

global = {
  \key g \major
  \numericTimeSignature
  \time 3/2
}

versesVoiceOne = \lyricmode {
  % Verse 4-5a
  Shew me thy ways, O Lord;
  thy paths, O teach thou me:
  And do thou lead me in thy truth,
  there- in my tea- cher be:
}

versesVoiceTwo = \lyricmode {
  % Verse 5b
  For thou art God that dost
  to me sal- va- tion send,
  And I up- on thee all the day
  ex- pect- ing do at- tend.
}

versesVoiceThree = \lyricmode {
  % Verse 6
  Thy ten- der mer- cies, Lord,
  I pray thee to re- memb'r,
  And lov- ing- kind- ness- es; for they
  have been of old for- ev'r.
}

versesVoiceFour = \lyricmode {
  % Verse 7
  My sins and faults of youth
  do thou, O Lord, for- get:
  Af- ter thy mer- cy think on me,
  and for thy good- ness great.
}

versesVoiceFive = \lyricmode {
  % Verse 8-9
  God good and up- right is:
  the way he'll sin- ners show.
  The meek in judge- ment he will guide,
  and make his path to know.
}

versesVoiceSix = \lyricmode {
  % Verse 10
  The whole paths of the Lord
  are truth and mer- cy sure,
  To those that do his cov'- nant keep,
  and tes- ti- mon- ies pure.
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
      <d      >2 |
      <d   g  >4 <b   g '>4 <d   a '>2  <d   a '>2 | <d   b '>4 (<c   a '>4 <b   g '>2) <d   a '>2 |
      <d   b '>4 <d   b '>4 <d   c '>2  <d   b '>2 | <d   a '>1                         <fs  d '>2 |
      <g   d '>4 <d   b '>4 <d   b '>2  <d   g  >2 | <e   g  >4 <c   e  >4 <c   e  >2   <e   g  >4  (<c   e  >4) |
      <b   d  >4 <b   g '>4 <b   g '>2  <c   a '>2 | <b   g '>1
    }
    r2
  }
  <e   g  >1. <d   g  >1.
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
      <d      >2 |
      <b   d  >4 <g   g '>4 <d ' fs >2  <d   fs >2 | <g      >4 (<d   fs >4 <e   g  >2) <d   fs >2 |
      <g      >4 <g      >4 <fs  a  >2  <g      >2 | <d   fs >1                         <d   a '>2 |
      <g   b  >4 <g      >4 <g      >2  <b,  g '>2 | <c   g '>4  <c   g '>4 <c   g '>2  <c   g '>2 |
      <d   g  >4 <d   g  >4 <d   g  >2  <d   fs >2 | <g , g '>1
    }
    r2
  }
  <c   c '>1. <g   b '>1.
  \bar "|."
}

Chords = \new ChordNames {
  \chordmode {
    r1 <g>2 <g>1. <g>1. <g>1. <d>1. <g>1. <c>1. <g>1 <d>2 <g>1. <c>1. <g>1.
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
