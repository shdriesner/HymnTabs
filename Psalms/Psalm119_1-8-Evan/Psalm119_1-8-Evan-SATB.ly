\version "2.24.1"
\language "english"

% force .mid extension for MIDI file output
#(ly:set-option 'midi-extension "mid")

\header {
  dedication = "For Covenant Community Church and the Glory of God"
  title = "Psalm 119:1-8 -- The Psalms of David in Metre, pg 247-248"
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
  % Verses 1
  Bless- ed are they that un- de- fil'd
  and straight are in the way;
  Who in the Lord's most ho- ly law
  do walk, and do not stray.
}

versesVoiceTwo = \lyricmode {
  % Verse 2
  Bless- ed are they who to ob- serve
  his stat- utes are in- clin'd;
  And who do seek the liv- ing God
  with their whole heart and mind.
}

versesVoiceThree = \lyricmode {
  % Verse 3-4
  Such in his ways do walk, and they
  do no in- i- qui- ty.
  Thou hast com- mand- ed us to keep
  thy pre- cepts care- ful- ly.
}

versesVoiceFour = \lyricmode {
  % Verses 5-6
  O that thy stat- utes to ob- serve
  thou would'st my ways di- rect!
  Then shall I not be sham'd, when I
  thy pre- cepts all re- spect.
}

versesVoiceFive = \lyricmode {
  % Verse 7
  Then with in- teg- ri- ty of heart
  thee will I praise and bless,
  When I the judge- ments all have learn'd
  of thy pure right- eous- ness.
}

versesVoiceSix = \lyricmode {
  % Verse 8
  That I will keep thy stat- utes all
  firm- ly re- solv'd have I:
  O do not then, most gra- cious God,
  for- sake me ut- ter- ly.
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

%\markup {
%  \fill-line {
%    {
%      \column {
%        \left-align {
%        }
%      }
%    }
%  }
