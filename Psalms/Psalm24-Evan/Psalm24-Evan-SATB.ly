\version "2.24.1"
\language "english"

% force .mid extension for MIDI file output
#(ly:set-option 'midi-extension "mid")

\header {
  dedication = "For Covenant Community Church and the Glory of God"
  title = "Psalm 24 -- The Psalms of David in Metre, pages 38-39"
  subtitle = "(tune: Evan - Capo 1)"
  instrument = "Voice"
  composer = "Traditional"
  arranger = "Transposed. Stefan Driesner - December 2024"
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
  The earth be- longs un- to the Lord,
  and all that it con- tains;
  The world that is in- ha- bit- ed
  and all that there re- mains
}

versesVoiceTwo = \lyricmode {
  % Verse 2
  For the found- a- - tions there- of
  he on the seas did lay,
  And he hath it es- tab- lish- ed
  up- on the floods to stay.
}

versesVoiceThree = \lyricmode {
  % Verse 3
  Who is the man that shall a- scend
  in- to the hill of God?
  Or who with- in his ho- ly place
  shall have a firm a- bode?
}

versesVoiceFour = \lyricmode {
  % Verse 4
  Whose hands are clean, whose heart is pure,
  and un- to van- i- ty
  Who hath not lift- ed up his soul,
  nor sworn de- ceit- ful- ly.
}

versesVoiceFive = \lyricmode {
  % Verse 5
  He from th'E- ter- nal shall re- ceive
  the bless- ing him up- on,
  And right- eous- ness, ev'n from the God
  of his sal- va- - tion
}

versesVoiceSix = \lyricmode {
  % Verse 6
  This is the gen- er- a- - tion
  that af- ter him en- quire,
  O Ja- cob, who do seek thy face
  with their whole heart's de- sire.
}

versesVoiceSeven = \lyricmode {
  % Verse 7
  Ye gates, lift up your heads on high;
  ye doors that last for aye,
  Be lift- ed up, that so the King
  of glo- ry en- ter may.
}

versesVoiceEight = \lyricmode {
  % Verse 8
  But who of glo- ry is the King?
  The migh- ty Lord is this;
  Ev'n that same Lord, that great in might
  and strong in bat- tle is.
}

versesVoiceNine = \lyricmode {
  % Verse 9
  Ye gates, lift up your heads; ye doors,
  doors that do last for aye,
  Be lift- ed up, that so the King
  of glo- ry en- ter may.
}

versesVoiceTen = \lyricmode {
  % Verse 10
  But who is he that is the King
  of glo- ry? who is this?
  The Lord of hosts, and none but he
  the King of glo- ry is.
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
\addlyrics { \versesVoiceNine }
\addlyrics { \versesVoiceTen }

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
