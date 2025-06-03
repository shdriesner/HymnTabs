\version "2.24.1"
\language "english"

% force .mid extension for MIDI file output
#(ly:set-option 'midi-extension "mid")

\header {
  dedication = "For Covenant Community Church and the Glory of God"
  title = "Psalm 78:1-7 - The Psalms of David in Metre, pg 154-155"
  subtitle = "(tune: Evan - Capo 1)"
  instrument = "Voice"
  composer = "Traditional"
  arranger = "Transposed. Stefan Driesner - June 2025"
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
  AT- TEND my peo- ple, to my law;
  there- to give thou an ear;
  The words that  from my mouth pro- ceed
  at- ten- tive- ly do hear.
}

versesVoiceTwo = \lyricmode {
  % Verse 2-3
  My mouth shall speak a pa- ra- ble,
  and say- ings dark of old;
  The same which we have heard and known,
  and us our fa- thers told.
}

versesVoiceThree = \lyricmode {
  % Verse 4a
  We al- so will them not con- ceal
  from their pos- te- ri- ty;
  Them to the gen- e- ra- - tion
  to come de- clare will we:
}

versesVoiceFour = \lyricmode {
  % Verse 4b
  The prais- es of the Lord our God,
  and his al- might- y strength,
  The won- drous works that he hath done,
  we will shew forth at length.
}

versesVoiceFive = \lyricmode {
  % Verse 5
  His tes- ti- mo- ny and his law
  in Is- r'el he did place,
  And charg'd our fa- thers it to show
  to their suc- ceed- ing race;
}

versesVoiceSix = \lyricmode {
  % Verse 6
  That so the race which was to come
  might well them learn and know;
  And sons un- born, who should a- rise,
  might to their sons them show:
}

versesVoiceSeven = \lyricmode {
  % Verse 7
  That they might set their hope in God,
  and suf- fer not to fall
  His might- y works out of their mind,
  but keep his pre- cepts all:
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
