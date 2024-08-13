\version "2.24.1"
\language "english"

% force .mid extension for MIDI file output
#(ly:set-option 'midi-extension "mid")

\header {
  dedication = "For Covenant Community Church and the Glory of God"
  title = "Psalm 40:1-5 -- The Psalms of David in Metre, pg. 75"
  subtitle = "(tune: Landas - NO CAPO)"
  instrument = "Voice"
  composer = "Traditional"
  arranger = "Transposed: Stefan Driesner - August 2024"
  meter = ""
  copyright = "Copyright 2024 - All Rights Reserved"
}

global = {
  \key g \major
  \numericTimeSignature
  \time 3/4
}

versesVoiceOne = \lyricmode {
  % Verse 1-2
  I wait- ed for the Lord my God,
  and pat- ient- ly did bear;
  At length to me he did in- cline
  my voice and cry to hear
  He took me from a fear- ful pit,
  and from the mi- ry clay,
  and on a rock he set my feet,
  es- tab- lish- ing my way.
}

versesVoiceTwo = \lyricmode {
  % Verse 3-4
  He put a new song in my mouth,
  our God to mag- ni-fy;
  Man- y shall see it, and shall fear,
  and on the Lord re- ly.
  O bless- ed is the man whose trust
  up- on the Lord re- lies;
  Re- spect- ing not the proud, nor such
  as turn a- side to lies.
}

versesVoiceThree = \lyricmode {
  % Verse 5
  O Lord my God, full man- y are
  the won- ders thou hast done;
  Thy grac- ious thoughts to us- ward far
  a- bove all thought are gone:
  In or- der none can reck- on them
  to thee: if them de- clare,
  And speak of them I would, they more
  than can be num- ber'd are.
}

% G major  ^\markup { \fret-diagram "6-3;5-2;4-o;3-o;2-3;1-3;" }
% C9 major ^\markup { \fret-diagram "6-o;5-3;4-2;3-o;2-3;1-3;" }
% D major  ^\markup { \fret-diagram "6-x;5-o;4-o;3-2;2-3;1-2;" }

MelodyVoice = \relative c {
  \global
  \dynamicUp
  % Music follows here.
  {
    r2 <d >4 |
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
    \bar "|."
  }
}

SAVoice = \relative c {
  \global
  \dynamicUp
  % Music follows here.
  {
    r2 <b  d >4 |
    % Verse 1
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
    \bar "|."
  }
}

TBVoice = \relative c {
  \global
  \dynamicUp
  % Music follows here.
  {
    r2 <g  g' >4 |
    % Verse 1
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
    \bar "|."
  }
}

Chords = \new ChordNames {
  \chordmode {
    r2.
    <g>2. <c>2. <c>2  <d>4 <g>2.
    <g>2. <c>2. <c>2  <d>4 <g>2.
    <g>2. <d>2. <c>2.      <d>2. 
    <g>2. <c>2. <c>2  <d>4 <g>2.
  }
}

MelodyVoicePart = \new Staff \with {
  instrumentName = "Melody"
  midiInstrument = "Voice Oohs"
} { \clef "treble_8" \MelodyVoice }
\addlyrics { \versesVoiceOne }

SAVoicePart = \new Staff \with {
  instrumentName = "SA"
  midiInstrument = "Voice Oohs"
} { \clef "treble_8" \SAVoice }
\addlyrics { \versesVoiceOne }

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

\markup {
  \fill-line {
    {
      \column {
        \left-align {
	  "    Amen"
        }
      }
    }
  }
}