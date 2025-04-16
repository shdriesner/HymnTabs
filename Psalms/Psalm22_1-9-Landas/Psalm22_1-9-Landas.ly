\version "2.24.1"
\language "english"

% force .mid extension for MIDI file output
#(ly:set-option 'midi-extension "mid")

\header {
  dedication = "For Covenant Community Church and the Glory of God"
  title = "Psalm 22:1-9 -- The Psalms of David in Metre, page 33-34"
  subtitle = "(tune: Landas - NO CAPO)"
  instrument = "Voice"
  composer = "Traditional"
  arranger = "Transposed: Stefan Driesner - April 2025"
  meter = ""
  copyright = "Copyright 2025 - All Rights Reserved"
}

global = {
  \key g \major
  \numericTimeSignature
  \time 3/4
}

versesVoiceOne = \lyricmode {
  % Verse 1-2
  MY God, my God, why hast thou me
  for- sa- ken? why so far
  Art thou from help- ing me, and from
  my words that roar- ing are?
  All day, my God, to thee I cry,
  yet am not heard by thee;
  And in the sea- son of the night
  I can- not sil- ent be.
}

versesVoiceTwo = \lyricmode {
  % Verse 3-5
  But thou art ho- ly, thou that dost
  in- ha- bit Is- r'el's praise.
  Our fa- thers hop'd in thee, they hop'd,
  and thou didst them re- lease.
  When un- to thee they sent their cry,
  to them de- liv- 'rance came:
  Be- cause the put their trust in thee,
  they were not put to shame.
}

versesVoiceThree = \lyricmode {
  % Verse 6-7
  But as for me, a worm I am,
  and as no man am priz'd:
  Re- proach of men I am, and by
  the peo- ple am de- spis'd.
  All that me see laugh me to scorn;
  shoot out the lip do they;
  They nod and shake their heads at me,
  and, mock- ing, thus do say,
}

versesVoiceFour = \lyricmode {
  % Verse 8-9
  This man did trust in God, that he
  would free him by his might:
  Let him de- li- ver him, sith he
  had in him such de- light.
  But thou art he out of the womb
  that didst me safe- ly take;
  When I as on my moth- er's breasts
  thou me to hope didst make.
  A- men.
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
