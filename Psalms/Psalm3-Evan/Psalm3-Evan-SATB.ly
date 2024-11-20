\version "2.24.1"
\language "english"

% force .mid extension for MIDI file output
#(ly:set-option 'midi-extension "mid")

\header {
  dedication = "For Covenant Community Church and the Glory of God"
  title = "Psalm 3 -- The Psalms of David in Metre, pg 3"
  subtitle = "(tune: Evan - Capo 1)"
  instrument = "Voice"
  composer = "Traditional"
  arranger = "Transposed. Stefan Driesner - November 2024"
  meter = ""
  copyright = "Copyright 2024 - All Rights Reserved"
}

global = {
  \key af \major
  \numericTimeSignature
  \time 3/2
}

versesVoiceOne = \lyricmode {
  % Verse 1-2
  O LORD, how are my foes in- creas'd?
  a- gainst me ma- ny rise.
  Ma- ny say of my soul, For him
  in God no suc- cour lies.
}

versesVoiceTwo = \lyricmode {
  % Verse 3-4
  Yet thou my shield and glo- ry art,
  th'up- lift- er of mine head.
  I cried, and, from his ho- ly hill,
  the Lord me an- swer made.
}

versesVoiceThree = \lyricmode {
  % Verse 5-6
  I laid me down and slept; I wak'd,
  for God sus- tain- ed me.
  I will not fear though thou- sands ten
  set round a- gainst me be.
}

versesVoiceFour = \lyricmode {
  % Verse 7
  A- rise, O Lord; save me, my God;
  for thou my foes hast stroke
  All on the cheek- bone, and the teeth
  of wick- ed men hast broke.
}

versesVoiceFive = \lyricmode {
  % Verse 8
  Sal- va- ti- on doth app- er- tain
  un- to the Lord a- lone:
  Thy bless- ing, Lord, for e- ver- more
  thy peo- ple is up- on.
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
      r2
    }
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
      r2
    }
  }
  <df  f  >1. <af  ef' >1.
  \bar "|."
}

Chords = \new ChordNames {
  \chordmode {
    r1 <g>2 <g>1. <c>1. <g>1. <d>1. <g>1. <c>1 <g>2 <g>1 <d>2 <g>1. <c>1. <g>1.
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

%\markup {
%  \fill-line {
%    {
%      \column {
%        \left-align {
%        }
%      }
%    }
%  }
