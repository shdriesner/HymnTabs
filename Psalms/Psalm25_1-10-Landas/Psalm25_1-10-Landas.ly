\version "2.24.1"
\language "english"

% force .mid extension for MIDI file output
#(ly:set-option 'midi-extension "mid")

\header {
  dedication = "For Covenant Community Church and the Glory of God"
  title = "Psalm 25:1-10 -- The Psalms of David in Metre, page 42-43"
  subtitle = "(tune: Landas, Piano: Key of G major, Guitar: NO CAPO)"
  instrument = "Voice"
  composer = "Traditional"
  arranger = "Transposed: Stefan Driesner - Sep 2025"
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
  TO thee I lift my soul, O Lord:
  My God, I trust in thee:
  Let me not be a- sham'd; let not
  my foes tri- umph o'er me.
  Yea, let thou none a- sham- ed be
  that do on thee at- tend:
  A- sham- ed let them be, O Lord,
  who with- out cause of- fend.
}

versesVoiceTwo = \lyricmode {
  % Verse 4-6
  Thy ways, Lord, shew; teach me thy paths:
  Lead me in truth, teach me:
  For of my safe- ty thou art God:
  all day I wait on thee.
  Thy mer- cies, that most ten- der are,
  do thou, O Lord, re- mem-ber,
  And lov- ing- kind- ness- es; for they
  have been of old for- ev'r.
}

versesVoiceThree = \lyricmode {
  % Verse 7-8
  Let not the err- ors of my youth,
  nor sins re- mem- ber'd be:
  In mer- cy, for thy good- ness' sake,
  O Lord, re- mem- ber me.
  The Lord is good and gra- ci- ous,
  he up- right is al- so:
  He there- fore sin- ners will in- struct
  in ways that they should go.
}

versesVoiceFour = \lyricmode {
  % Verse 9-10
  The meek and low- ly he will guide
  in judge- ment just all- way:
  To meek and poor af- flict- ed ones
  he'll clear- ly teach his way.
  the whole paths of the Lord our God
  are truth and mer- cy sure,
  To such as keep his cov- e- nant,
  and tes- ti- mo- nies pure.
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
