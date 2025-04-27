\version "2.24.1"
\language "english"

% force .mid extension for MIDI file output
#(ly:set-option 'midi-extension "mid")

\header {
  dedication = "For Covenant Community Church and the Glory of God"
  title = "Psalm 101 -- The Psalms of David in Metre, page 202-203"
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
  % Verse 1-2a
  I mer- cy will and judge- ment sing
  Lord, I will sing to thee.
  With wis- dom in a per- fect way
  shall my be- hav- ior be.
}

versesVoiceTwo = \lyricmode {
  % Verse 2b
  O when, in kind- ness un- to me,
  wilt thou be pleas'd to come?
  I with a per- fect heart will walk
  with- in my house at home
}

versesVoiceThree = \lyricmode {
  % Verse 3
  I will en- dure no wick- ed thing
  be- fore mine eyes to be:
  I hate their work that turn a- side,
  it shall not cleave to me.
}

versesVoiceFour = \lyricmode {
  % Verse 4
  A stub- born and a fro- ward heart
  de- part quite from me shall;
  A per- son giv'n to wick- ed- ness
  I will not know at all.
}

versesVoiceFive = \lyricmode {
  % Verse 5
  I'll cut him off that slan- der- eth
  his neigh- bor pri- vi- ly:
  The haught- y heart I will not bear,
  nor him that look- eth high.
}

versesVoiceSix = \lyricmode {
  % Verse 6
  Up- on the faith- ful of the land
  mine eyes shall be, that they
  May dwell with me: he shall me serve
  that walks in per- fect way.
}

versesVoiceSeven = \lyricmode {
  % Verse 7
  Who of de- ceit a work- er is,
  in my house shall not dwell;
  And in my pre- sence shall he not
  re- main that lies doth tell.
}

versesVoiceEight = \lyricmode {
  % Verse 8
  Yea, all the wick- ed of the land
  ear- ly de- stroy will I;
  All from God's ci- ty to cut off
  that work in- i- qui- ty.
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
