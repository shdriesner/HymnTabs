\version "2.24.1"
\language "english"

% force .mid extension for MIDI file output
#(ly:set-option 'midi-extension "mid")

\header {
  dedication = "For Covenant Community Church and the Glory of God"
  title = "Psalm 90:1-9 - The Psalms of David in Metre, pg 185-186"
  subtitle = "(tune: Landas - NO CAPO)"
  instrument = "Voice"
  composer = "Traditional"
  arranger = "Transposed: Stefan Driesner - November 2024"
  meter = ""
  copyright = "Copyright 2024 - All Rights Reserved"
}

global = {
  \key g \major
  \numericTimeSignature
  \time 3/4
}

versesVoiceOne = \lyricmode {
  % Verses 1-2
  LORD, thou hast been our dwell- ing place
  in gen- er- a- tions all.
  Be- fore thou ev- er hadst brought forth
  the moun- tains great or small;
  Ere ev- er thou hadst form'd the earth,
  and all the world a- broad;
  Ev'n thou from ev- er- last- ing art
  to ev- er- last- ing God.
}

versesVoiceTwo = \lyricmode {
  % Verse 3-4
  Thou dost un- to des- truct- i- on
  man that is mor- tal turn;
  and un- to them thou say'st, A- gain,
  ye sons of men re- turn.
  Be- cause a thou- sand years ap- pear
  no more be- fore thy sight
  Than yes- ter- day, when it is past,
  or than a watch by night.
}

versesVoiceThree = \lyricmode {
  % Verses 5-7
  As with an ov- er- flow- ing flood
  thou carry- 'st them a- way:
  They like a sleep are, like the grass
  that grows at morn are they.
  At morn it flour- i- shes and grows,
  cut down at ev'n doth fade.
  For by thine an- ger we're con- sum'd,
  thy wrath makes us a- fraid.
}

versesVoiceFour = \lyricmode {
  % Verses 8-9
  Our sins thou and in- i- qui- ties
  dost in thy pres- ence place,
  and sett'st our sec- ret faults be- fore
  the bright- ness of thy face.
  For in thine an- ger all our days
  do pass on to an end;
  And as a tale that hath been told,
  so we our years do spend.
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
\addlyrics { \versesVoiceFour }

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