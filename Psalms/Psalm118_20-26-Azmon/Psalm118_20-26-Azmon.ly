\version "2.24.1"
\language "english"

% force .mid extension for MIDI file output
#(ly:set-option 'midi-extension "mid")

\header {
  dedication = "For Covenant Community Church and the Glory of God"
  title = "Psalm 118:20-26 -- The Psalms of David in Metre, page 246"
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
  % Verse 20-21
  This is the gate of God, by it
  the just shall en- ter in.
  Thee will I praise, for thou me heard'st
  and hast my safe- ty been. 
}

versesVoiceTwo = \lyricmode {
  % Verse 22-23
  That stone is made head cor- ner- stone,
  which build- ers did de- spise:
  This is the do- ing of the Lord,
  and won- drous in our eyes.
}

versesVoiceThree = \lyricmode {
  % Verse 24-25
  This is the day God made, in it
  we'll joy tri- um- phant- ly.
  Save now, I pray thee, Lord; I pray,
  send now pros- pe- ri- ty.
}

versesVoiceFour = \lyricmode {
  % Verse 26
  Bless- ed is he in God's great name
  that com- eth us to save:
  We, from the house which to the Lord
  per- tains, you bless- ed have.
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
      <d   g  >4 <b   g '>4 <d   a '>2  <d   a '>2 | <d   b '>4 <c   a '>4 <b   g '>2 <d   a '>2 |
      <d   b '>4 <d   b '>4 <d   c '>2  <d   b '>2 | <d   a '>1                       <fs  d '>2 |
      <g   d '>4 <d   b '>4 <d   b '>2  <d   g  >2 | <e   g  >4 <c   e  >4 <c   e  >2 <e   g  >4  (<c   e  >4) |
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
      <b   d  >4 <g   g '>4 <d ' fs >2  <d   fs >2 | <g      >4  <d   fs >4 <e   g  >2  <d   fs >2 |
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
