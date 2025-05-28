\version "2.24.1"
\language "english"

% force .mid extension for MIDI file output
#(ly:set-option 'midi-extension "mid")

\header {
  dedication = "For Covenant Community Church and the Glory of God"
  title = "Psalm 63 -- The Psalms of David in Metre, pg 120-121"
  subtitle = "(tune: Evan - Capo 1)"
  instrument = "Voice"
  composer = "Traditional"
  arranger = "Transposed. Stefan Driesner - January 2025"
  meter = ""
  copyright = "Copyright 2025 - All Rights Reserved"
}

global = {
  \key af \major
  \numericTimeSignature
  \time 3/2
}

versesVoiceOne = \lyricmode {
  % Verse 1
  LORD, thee my God, I'll ear- ly seek:
  my soul doth thirst for thee;
  My flesh longs in a dry parch'd land,
  where- in no wa- ters be:
}

versesVoiceTwo = \lyricmode {
  % Verse 2
  That I thy pow- er may be- hold,
  and bright- ness of thy face,
  As I have seen thee here- to- fore
  with- in thy ho- ly place.
}

versesVoiceThree = \lyricmode {
  % Verse 3-4
  Since bet- ter is thy love than life,
  my lips thee praise shall give.
  I in thy name will lift my hands,
  and bless thee while I live.
}

versesVoiceFour = \lyricmode {
  % Verse 5
  Ev'n as with mar- row and with fat
  my soul shall fill- ed be;
  Then shall my mouth with joy- ful lips
  sing prais- es un- to thee:
}

versesVoiceFive = \lyricmode {
  % Verse 6
  When I do thee up- on my bed
  re- mem- ber with de- light,
  And when on thee I med- i- tate
  in watch- es of the night.
}

versesVoiceSix = \lyricmode {
  % Verse 7-8
  In shad- ow of thy wings I'll joy;
  for thou mine help hast been.
  My soul thee fol- lows hard;
  and me thy right hand doth sus- tain.
}

versesVoiceSeven = \lyricmode {
  % Verse 9-10
  Who seek my soul to spill shall sink
  down to earth's low- est room.
  They by the sword shall be cut off,
  and fox- es' prey be- come.
}

versesVoiceEight = \lyricmode {
  % Verse 11
  Yet shall the king in God re- joice,
  and each one glo- ry shall
  That swear by him: but stopp'd shall be
  the mouths of li- ars all.
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
    }
    r2
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
    }
    r2
  }
  <df  f  >1. <af  ef' >1.
  \bar "|."
}

Chords = \new ChordNames {
  \chordmode {
    r1 <af>2 <af>1. <df>1. <af>1. <ef>1. <af>1. <df>1 <af>2 <af>1 <ef>2 <af>1. <df>1. <af>1.
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
\addlyrics { \versesVoiceSeven }
\addlyrics { \versesVoiceEight }

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

\markup {
  \fill-line {
    {
      \column {
        \left-align {
	" Guitar w/Capo 1:"
	" Ab   => G"
	" Db   => C"
	" Eb   => D"
        }
      }
    }
  }
}
