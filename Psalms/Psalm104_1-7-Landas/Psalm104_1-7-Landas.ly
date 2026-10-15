\version "2.24.1"
\language "english"

% force .mid extension for MIDI file output
#(ly:set-option 'midi-extension "mid")

\header {
  dedication = "For Covenant Community Church and the Glory of God"
  title = "Psalm 104:1-7 -- The Psalms of David in Metre, page 212-213"
  subtitle = "(tune: Landas - NO CAPO)"
  instrument = "Voice"
  composer = "Traditional"
  arranger = "Transposed: Stefan Driesner - October 2026"
  meter = ""
  copyright = "Copyright 2026 - All Rights Reserved"
}

global = {
  \key g \major
  \numericTimeSignature
  \time 3/4
}

versesVoiceOne = \lyricmode {
  % Verse 1-2
  BLESS God, my soul. O Lord my God,
  thou art ex- cee- ding great;
  With hon- our and with ma- je- sty
  thou cloth- ed art in state.
  With light, as with a robe, thy- self
  thou cov- er- est a- bout;
  And, like un- to a cur- tain, thou
  the heav- ens stretch- est out.
}

versesVoiceTwo = \lyricmode {
  % Verse 3-5
  Who of his cham- bers doth the beams
  with- in the wa- ters lay;
  Who doth the clouds his char- iot make,
  on wings of wind make way.
  Who flam- ing fire his mi- ni- sters,
  his an- gels sp'rits, doth make:
  Who earth's found- a- - tions did lay,
  that it should nev- er shake.
}

versesVoiceThree = \lyricmode {
  % Verse 6-7
  Thou didst it cov- er with the deep,
  as with a gar- ment spread:
  The wat- ers stood a- bove the hills,
  when thou the word but said.
  But at the voice of thy re- buke
  they fled, and would not stay;
  They at thy thun- der's dread- ful voice
  did haste them fast a- way.
  A- men
}

% G major  ^\markup { \fret-diagram "6-3;5-2;4-o;3-o;2-3;1-3;" }
% C9 major ^\markup { \fret-diagram "6-o;5-3;4-2;3-o;2-3;1-3;" }
% D major  ^\markup { \fret-diagram "6-x;5-o;4-o;3-2;2-3;1-2;" }

SAVoice = \relative c {
  \global
  \dynamicUp
  % Music follows here.
  {
    r2
    \repeat volta 2
    {
      <b  d >4 |
      <b  d  >8  <c  e  >8  <b  d  >4  <b  g' >4  |
      <d  fs >8  <c  e  >8  <c  e  >4  <d  e  >4  |
      <e  c' >8  <e  a  >8  <d  g  >4  <d  fs >4  |
      <d  g  >2                        <b  d  >4  |
      <b  d  >8  <c  e  >8  <b  d  >4  <b  g' >4  |
      <d  fs >8  <c  e  >8  <c  e  >4  <d  e  >4  |
      <e  c' >8  <e  a  >8  <d  g  >4  <d  fs >4  |
      <d  g  >2                        <d     >4  |
      <d  g  >8  <g  b  >8  <g  d' >4  <d  b' >4  |
      <d  b' >8  <d  a' >8  <d  a' >4  <d  b' >4  |
      <d  g  >8  <d  fs >8  <c  e  >4  <e  a  >4  |
      <d  g  >4            (<d  fs >4) <c  d  >4  |
      <b  d  >8  <c  e  >8  <b  d  >4  <b  g' >4  |
      <d  fs >8  <c  e  >8  <c  e  >4  <d  e  >4  |
      <e  c' >8  <e  a  >8  <d  g  >4  <d  fs >4  |
      <d  g  >2
    }
    r4
  }
  <e  g  >2. <d  g  >2.
  \bar "|."
}

TBVoice = \relative c {
  \global
  \dynamicUp
  % Music follows here.
  {
    r2
    \repeat volta 2
    {
      <g  g' >4 |
      <g  g' >8  <g  g' >8  <g  g' >4  <g  g' >4  |
      <c  g' >8  <c  g' >8  <c  g' >4  <b  gs'>4  |
      <a  a' >8  <a  c' >8  <d  b' >4  <d  a' >4  |
      <g  b  >2                        <g, g' >4  |
      <g  g' >8  <g  g' >8  <g  g' >4  <g  g' >4  |
      <c  g' >8  <c  g' >8  <c  g' >4  <b  gs'>4  |
      <a  a' >8  <a  c' >8  <d  b' >4  <d  a' >4  |
      <g  b  >2                        <g  b  >4  |
      <g  b  >8  <g  d' >8  <g  b  >4  <g     >4  |
      <d  g  >8  <d  fs >8  <d  fs >4  <g     >4  |
      <b, g' >8  <b  g' >8  <c  g' >4  <c  c' >4  |
      <d  b'  >4           (<d  a' >4) <d  fs >4  |
      <g, g'  >8 <g  g' >8  <g  g' >4  <g  g' >4  |
      <c  g' >8  <c  g' >8  <c  g' >4  <b  gs'>4  |
      <a  a' >8  <a  c' >8  <d  b' >4  <d  c' >4  |
      <g  b  >2
    }
    r4
  }
  <d  c'  >2. <g,  b'  >2.
  \bar "|."
}

Chords = \new ChordNames {
  \chordmode {
    r2.
    g2. c2. a2:m  d4 g2.
    g2. c2. a2:m  d4 g2.
    g2. d2. c2.      d2.
    g2. c2. a2:m  d4 g2.
    c       g
  }
}

SAVoicePart = \new Staff \with {
  instrumentName = "SA"
  midiInstrument = "Voice Oohs"
} { \clef "treble_8" \SAVoice }
\addlyrics { \versesVoiceOne }
\addlyrics { \versesVoiceTwo }
\addlyrics { \versesVoiceThree }

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
