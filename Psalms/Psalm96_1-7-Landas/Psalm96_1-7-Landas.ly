\version "2.24.1"
\language "english"

% force .mid extension for MIDI file output
#(ly:set-option 'midi-extension "mid")

\header {
  dedication = "For Covenant Community Church and the Glory of God"
  title = "Psalm 96:1-7 -- The Psalms of David in Metre, pg 196-197"
  subtitle = "(tune: Landas - NO CAPO)"
  instrument = "Voice"
  composer = "Traditional"
  arranger = "Transposed: Stefan Driesner - January 2025"
  meter = ""
  copyright = "Copyright 2025 - All Rights Reserved"
}

global = {
  \key g \major
  \numericTimeSignature
  \time 3/4
}

versesVoiceOne = \lyricmode {
  % Verse 1-3
  O SING a new song to the Lord:
  sing all the earth to God.
  To God sing, bless his name, shew still
  his sav- ing health a- broad.
  A- mong the heath- en na- - tions
  his glo- ry do de- clare;
  And un- to all the peo- ple shew
  his works that won- drous are.
}

versesVoiceTwo = \lyricmode {
  % Verse 4-5
  For great's the Lord, and great- ly he
  is to be mag- ni- fied;
  Yea, wor- thy to be fear'd is he
  a- bove all gods be- side.
  For all the gods are id- ols dumb,
  which blind- ed na- tions fear;
  But our God is the Lord, by whom
  the heav'ns cre- a- ted were.
}

versesVoiceThree = \lyricmode {
  % Verse 6-7
  Great hon- our is be- fore his face,
  and ma- je- sty di- vine;
  Strength is with- in his ho- ly place,
  and there doth beau- ty shine.
  Do ye a- scribe un- to the Lord,
  of peo- ple ev- 'ry tribe,
  Glo- ry do ye un- to the Lord,
  and migh- ty pow'r a- scribe.
  A- men
}

% G major  ^\markup { \fret-diagram "6-3;5-2;4-o;3-o;2-3;1-3;" }
% C9 major ^\markup { \fret-diagram "6-o;5-3;4-2;3-o;2-3;1-3;" }
% D major  ^\markup { \fret-diagram "6-x;5-o;4-o;3-2;2-3;1-2;" }

MelodyVoice = \relative c {
  \global
  \dynamicUp
  % Music follows here.
  {
    r2
    \repeat volta 2
    {
      <d >4 |
      % Verse 1
      <d  >8  <e  >8  <d  >4  <g  >4  |
      <fs >8  <e  >8  <e  >4  <e  >4  |
      <c' >8  <a  >8  <g  >4  <fs >4  |
      <g  >2                  <d  >4  |
      <d  >8  <e  >8  <d  >4  <g  >4  |
      <fs >8  <e  >8  <e  >4  <e  >4  |
      <c' >8  <a  >8  <g  >4  <fs >4  |
      <g  >2                  <d  >4  |
      <g  >8  <b  >8  <d  >4  <b  >4  |
      <b  >8  <a  >8  <a  >4  <b  >4  |
      <g  >8  <fs >8  <e  >4  <a  >4  |
      <g  >4         (<fs >4) <d  >4  |
      <d  >8  <e  >8  <d  >4  <g  >4  |
      <fs >8  <e  >8  <e  >4  <e  >4  |
      <c' >8  <a  >8  <g  >4  <fs >4  |
      <g  >2
    }
    r4
  }
  <g>2. <g>2.
  \bar "|."
}

SAVoiceVerse = {
}

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
    <g>2. <c>2. <c>2  <d>4 <g>2.
    <g>2. <c>2. <c>2  <d>4 <g>2.
    <g>2. <d>2. <c>2.      <d>2.
    <g>2. <c>2. <c>2  <d>4 <g>2.
    <c>  <g>
  }
}

MelodyVoicePart = \new Staff \with {
  instrumentName = "Melody"
  midiInstrument = "Voice Oohs"
} { \clef "treble_8" \MelodyVoice }
\addlyrics { \versesVoiceOne }
\addlyrics { \versesVoiceTwo }
\addlyrics { \versesVoiceThree }

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
    % \MelodyVoicePart
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

%\markup {
%  \fill-line {
%    {
%      \column {
%        \left-align {
%	  "    Amen"
%        }
%      }
%    }
%  }
%}
